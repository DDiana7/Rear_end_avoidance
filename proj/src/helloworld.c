/******************************************************************************
* Cod optimizat pentru Control LED-uri prin Divizor Hardware
******************************************************************************/

#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "xparameters.h"
#include "xadcps.h"
#include "xadcps_hw.h"
#include <unistd.h> 
#include "xgpio.h"

#define LSB_BITS_NOT_USED 4
#define VOLT_CONV_FACTOR 3.0/4096

// Canale XADC
#define XADCPS_SEQ_CH_VAUX14 (1 << 30)

static XAdcPs xadc_ctl;
XGpio startDivision, inputRst, dividend, divizor, outputDivQ, outputDivR, outputGata;

int main()
{
    init_platform();
    s32 status;

    // 1. Inițializare Periferice AXI GPIO
    XGpio_Initialize(&startDivision, XPAR_AXI_GPIO_START_BASEADDR);
    XGpio_Initialize(&inputRst, XPAR_AXI_GPIO_RESETARE_BASEADDR);
    XGpio_Initialize(&dividend, XPAR_AXI_GPIO_DIVIDEND_BASEADDR);
    XGpio_Initialize(&divizor, XPAR_AXI_GPIO_DIVISOR_BASEADDR);
    XGpio_Initialize(&outputDivQ, XPAR_AXI_GPIO_QUOTIENT_BASEADDR);
    XGpio_Initialize(&outputDivR, XPAR_AXI_GPIO_REMAINDER_BASEADDR);
    XGpio_Initialize(&outputGata, XPAR_AXI_GPIO_GATA_BASEADDR);

    // Configurare direcție (0 = Ieșire, 1 = Intrare)
    XGpio_SetDataDirection(&startDivision, 1, 0);
    XGpio_SetDataDirection(&inputRst, 1, 0);
    XGpio_SetDataDirection(&dividend, 1, 0);
    XGpio_SetDataDirection(&divizor, 1, 0);
    XGpio_SetDataDirection(&outputDivQ, 1, 0xFFF);
    XGpio_SetDataDirection(&outputDivR, 1, 0x1FFF);
    XGpio_SetDataDirection(&outputGata, 1, 1);

    // 2. Inițializare XADC
    XAdcPs_Config *xadc_cfg = XAdcPs_LookupConfig(XPAR_XADCPS_0_DEVICE_ID);
    if(NULL == xadc_cfg) return XST_FAILURE;

    status = XAdcPs_CfgInitialize(&xadc_ctl, xadc_cfg, xadc_cfg->BaseAddress);
    if(status != XST_SUCCESS) return XST_FAILURE;

    XAdcPs_SetSequencerMode(&xadc_ctl, XADCPS_SEQ_MODE_SAFE);
    XAdcPs_SetSeqChEnables(&xadc_ctl, XADCPS_SEQ_CH_VAUX14);
    XAdcPs_SetSequencerMode(&xadc_ctl, XADCPS_SEQ_MODE_CONTINPASS);

    printf("Sistem pornit. Masurare potentiometru si control LED-uri...\n\r");

    while (1) {
        // Citire valoare brută de la potențiometru (Canal 30 = Vaux14)
        u32 Vaux14Data = XAdcPs_GetAdcData(&xadc_ctl, 30);
        u16 raw = (u16)(Vaux14Data >> LSB_BITS_NOT_USED);

        // Calcul logică LED-uri bazată pe praguri (0-4095)
        u16 led_code;
        if (raw < 1229)       led_code = 0x1;   // 0-30% -> LD0
        else if (raw < 2457)  led_code = 0x3;   // 30-60% -> LD0, LD1
        else if (raw < 3686)  led_code = 0x7;   // 60-90% -> LD0, LD1, LD2
        else                  led_code = 0xF;   // 90-100% -> Toate

        // Trimite datele către IP-ul VHDL prin registrul dividend
        XGpio_DiscreteWrite(&dividend, 1, led_code);
        XGpio_DiscreteWrite(&divizor, 1, 1); // Divizor dummy
        XGpio_DiscreteWrite(&inputRst, 1, 0);

        // Impuls de Start pentru a activa procesarea în VHDL
        XGpio_DiscreteWrite(&startDivision, 1, 1);
        usleep(10);
        XGpio_DiscreteWrite(&startDivision, 1, 0);

        // Așteptăm până când hardware-ul confirmă că a preluat datele (gata = 1)
        while(XGpio_DiscreteRead(&outputGata, 1) == 0);

        // Afișare în consolă pentru debug
        printf("Pot: %u | Volts: %.2fV | LED Pattern: 0x%X\n\r", 
                raw, (float)raw * VOLT_CONV_FACTOR, led_code);

        usleep(200000); // Update la fiecare 0.2 secunde
    }

    cleanup_platform();
    return 0;
}
#include <stdint.h>
#include <stdio.h>

#include "platform.h"
#include "xparameters.h"
#include "xadcps.h"
#include "xgpio.h"
#include "xstatus.h"
#include <unistd.h>

#define LSB_BITS_NOT_USED 4
#define VOLT_CONV_FACTOR  (3.0f/4096.0f)
#define XADC_DEVICE_ID 0

// VAUX14 mask (conform driver XADC)
#define XADCPS_SEQ_CH_VAUX14 (1U << 30)

static XAdcPs xadc_ctl;

static XGpio startDivision, inputRst, dividend, divizor, outputGata;

static int xadc_init(void)
{
    XAdcPs_Config *cfg = XAdcPs_LookupConfig(XADC_DEVICE_ID);
    if (!cfg) {
        printf("ERROR: XAdcPs_LookupConfig returned NULL!\n\r");
        return XST_FAILURE;
    }

    int st = XAdcPs_CfgInitialize(&xadc_ctl, cfg, cfg->BaseAddress);
    if (st != XST_SUCCESS) {
        printf("ERROR: XAdcPs_CfgInitialize failed (%d)\n\r", st);
        return st;
    }

    // Recomandat: SAFE -> configure -> CONTINUOUS
    XAdcPs_SetSequencerMode(&xadc_ctl, XADCPS_SEQ_MODE_SAFE);

    // Activeaza explicit VAUX14
    XAdcPs_SetSeqChEnables(&xadc_ctl, XADCPS_SEQ_CH_VAUX14);

    // Porneste conversia continua
    XAdcPs_SetSequencerMode(&xadc_ctl, XADCPS_SEQ_MODE_CONTINPASS);

    return XST_SUCCESS;
}

static int gpio_init_all(void)
{
    int st;

    st = XGpio_Initialize(&startDivision, XPAR_AXI_GPIO_START_BASEADDR);
    if (st != XST_SUCCESS) return st;

    st = XGpio_Initialize(&inputRst, XPAR_AXI_GPIO_RESETARE_BASEADDR);
    if (st != XST_SUCCESS) return st;

    st = XGpio_Initialize(&dividend, XPAR_AXI_GPIO_DIVIDEND_BASEADDR);
    if (st != XST_SUCCESS) return st;

    st = XGpio_Initialize(&divizor, XPAR_AXI_GPIO_DIVISOR_BASEADDR);
    if (st != XST_SUCCESS) return st;

    st = XGpio_Initialize(&outputGata, XPAR_AXI_GPIO_GATA_BASEADDR);
    if (st != XST_SUCCESS) return st;

    // 0 = output (PS -> PL), 1 = input (PL -> PS)
    XGpio_SetDataDirection(&startDivision, 1, 0x0);
    XGpio_SetDataDirection(&inputRst,     1, 0x0);
    XGpio_SetDataDirection(&dividend,     1, 0x0);
    XGpio_SetDataDirection(&divizor,      1, 0x0);
    XGpio_SetDataDirection(&outputGata,   1, 0x1);

    // Pune START jos by default
    XGpio_DiscreteWrite(&startDivision, 1, 0);

    return XST_SUCCESS;
}

static void pulse_reset(void)
{
    // Reset HW la pornire (daca IP-ul tau foloseste reset activ pe 1)
    XGpio_DiscreteWrite(&inputRst, 1, 1);
    usleep(10);
    XGpio_DiscreteWrite(&inputRst, 1, 0);
    usleep(10);
}

int main(void)
{
    init_platform();

    int st = gpio_init_all();
    if (st != XST_SUCCESS) {
        printf("ERROR: GPIO init failed (%d)\n\r", st);
        cleanup_platform();
        return -1;
    }

    st = xadc_init();
    if (st != XST_SUCCESS) {
        printf("ERROR: XADC init failed (%d)\n\r", st);
        cleanup_platform();
        return -1;
    }

    pulse_reset();

    printf("--- Sistem Pornit (Zybo Z7-10) ---\n\r");

    const uint16_t factorScalareConstant = 14; // daca vrei ca in primul cod
    // const uint16_t factorScalareConstant = 1; // pentru test simplu

    while (1) {
        // 1) Citire VAUX14 (canal 30)
        u32 vaux14 = XAdcPs_GetAdcData(&xadc_ctl, 30);
        u16 raw = (u16)(vaux14 >> LSB_BITS_NOT_USED);
        float voltage = (float)raw * VOLT_CONV_FACTOR;

        // 2) Exemplu praguri LED (4 biti)
        u16 led_code;
        if (raw < 1229)      led_code = 0x1;
        else if (raw < 2457) led_code = 0x3;
        else if (raw < 3686) led_code = 0x7;
        else                 led_code = 0xF;

        // 3) Trimite date la IP (adaptat: tu poti pune raw, eu las led_code ca in exemplu)
        // Daca IP-ul tau de impartire asteapta dividend pe 12 biti, poti trimite raw (0..4095).
        // Alege UNA:
        // XGpio_DiscreteWrite(&dividend, 1, raw);
        XGpio_DiscreteWrite(&dividend, 1, led_code);

        XGpio_DiscreteWrite(&divizor, 1, factorScalareConstant);

        // 4) Handshake robust: START pulse (0->1)
        XGpio_DiscreteWrite(&startDivision, 1, 0);
        usleep(1);
        XGpio_DiscreteWrite(&startDivision, 1, 1);

        // 5) Asteapta GATA cu timeout (ca sa nu inghete daca PL nu raspunde)
        int timeout = 1000000; // ajusteaza dupa ceas / latenta IP
        while (XGpio_DiscreteRead(&outputGata, 1) == 0 && --timeout) { }

        if (timeout == 0) {
            printf("TIMEOUT: GATA nu a venit (PL handshake/reset?)\n\r");
            XGpio_DiscreteWrite(&startDivision, 1, 0);
            usleep(100000);
            continue;
        }

        // (Optional) mic delay pt stabilizare iesiri in PL
        usleep(1000);

        // 6) Afisare
        printf("ADC Raw: %4u | Voltage: %1.2fV | LEDs: [", raw, voltage);
        for (int i = 3; i >= 0; i--) {
            printf("%c", (led_code & (1U << i)) ? '*' : '_');
        }
        printf("] (0x%X)\n\r", led_code);

        // 7) START inapoi pe 0 ca sa revina IP-ul in IDLE
        XGpio_DiscreteWrite(&startDivision, 1, 0);

        usleep(100000); // 0.1s refresh
    }

    cleanup_platform();
    return 0;
}

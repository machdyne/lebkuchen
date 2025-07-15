# Lebkuchen Computer

Lebkuchen is an FPGA computer based on the GateMate A1.

![Lebkuchen](https://github.com/machdyne/lebkuchen/blob/690dc512b2f4a64e544b0b9bf45e46320b76bb57/lebkuchen.png)

This repo contains schematics, PCB layouts, pinouts, a 3D-printable case, example gateware and documentation.

Find more information on the [Lebkuchen product page](https://machdyne.com/product/lebkuchen-computer/).

## Programming Lebkuchen 

Lebkuchen can be programmed over USB-C or by copying gateware to a MicroSD card (not yet implemented). The FPGA is configured by the onboard RP2040, which can load the configuration from onboard flash, a FAT-formatted MicroSD card or over the USB-JTAG bridge.

### JTAG

Program the FPGA configuration SRAM:

```
openFPGALoader -c dirtyJtag image.bit
```

### 3.5mm TRRS Audio Jack

| Pin | Signal |
| --- | ------ |
| T | Left Audio |
| R1 | Right Audio |
| R2 | Composite Video |
| S | GND |

## Resources

 * [fpga-dac audio player](https://github.com/machdyne/fpga-dac)

## License

The contents of this repo are released under the [Lone Dynamics Open License](LICENSE.md).

Note: You can use these designs for commercial purposes but we ask that instead of producing exact clones, that you either replace our trademarks and logos with your own or add your own next to ours.

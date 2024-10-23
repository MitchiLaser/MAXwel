# MAXwel

**MAX ii Workbench for Education and Learning - MAXwel**

MAXwel is a cheap and simple FPGA development board made for educational purposes.
It is based in a low-cost Altera MAX ii Chip (EPM240), containing 240 logic elements, 8Kbits of RAM and 32Kbits of flash memory.
The board is equipped with 8 switches, 4 push-buttons, 16 LEDs (divided into rows A and B of 8 LEDs each) and four 7-segment displays.
It also contains a 50MHz oscillator and a 14,7456 MHz oscillator as a clock source.
The board is programmed through a USB Blaster JTAG interface with the pin-header located on the board.

![Floorplan of the MAXwel board](docs/web/Floorplan.png)

![Picture of the MAXwel Board](docs/web/MAXwel_picture.png)

All schematics and PCB files are available in the `hardware` directory.

## Documentation and project template

[The user documentation is available in the `docs` directory](docs/main.pdf) and on the [landing page](https://mitchilaser.github.io/MAXwel/).

A [template for an empty VHDL project](template/vhdl) with correct pin assignments is available [in the `template` directory](template/).
The directory also contains a [template for a schematic based circuit design](template/schematic).
All templates are intended to be used with the [Quartus](https://fpgasoftware.intel.com/) software from Intel.

## What else?

There are also some features for hardcore enthusiasts.

### Quartus Patch for EU symbols

The [Quartus](https://fpgasoftware.intel.com/) software only offers the logic symbols in the US style within the schematic editor.
There is a patch that adds the EU style symbols to the location of the symbol library in order to use them in the quartus software.

### Overlay

**This project is currently under heavy development.**

The Overlay is an open FPGA architecture for open tools and user designs that is intended to run on the MAX ii chip, in essence an "FPGA on a FPGA".
The main goal of the Overlay is to provide a simple and easy to use platform for learning and experimenting with FPGA synthesis technology. 
Once the overlay is synthesizes and loaded into the MAX ii chip, it will be possible to load user designs into the overlay, without the need to re-synthesize the overlay itself.
This allows for a high level of flexibility and experimentation, as well as a way to learn about FPGA synthesis and design without the need for the closed source tools from the FPGA manufacturer.
Emulating an FPGA inside an FPGA takes up a lot of resources. Therefore the Overlay is not made for practical use cases outside of learning and experimentation.

SYNTH = ~/work/fpga/gatemate/oss-cad-suite/bin/yosys
PR = ~/work/fpga/gatemate/oss-cad-suite/bin/nextpnr-himbaechel
PACK = ~/work/fpga/gatemate/oss-cad-suite/bin/gmpack
PROG = openFPGALoader -c dirtyJtag

RTL = rtl/blinky.v

build:
	mkdir -p output/lebkuchen
	$(SYNTH) -DBOARD_LEBKUCHEN -DGATEMATE -q -l synth.log -p \
		"read -sv $(RTL); synth_gatemate -top blinky -luttree -nomult -nomx8 -json output/lebkuchen/soc.json"
	$(PR) --device CCGM1A1 --json output/lebkuchen/soc.json \
		--vopt ccf=lebkuchen_v0.ccf --vopt out=output/lebkuchen/soc.txt \
		--router router2
	$(PACK) output/lebkuchen/soc.txt output/lebkuchen/soc.bit

prog:
	$(PROG) output/lebkuchen/soc.bit

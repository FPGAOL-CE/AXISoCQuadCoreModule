DB_DIR=/nextpnr-xilinx/xilinx/external/prjxray-db
CHIPDB=/chipdb
CHIPFAM=zync7
ADDITIONAL_SOURCES = AXISoCQuadCoreModule_TopLevel.v AXISoCQuadCoreModule_TopLevel_ws2812.v

#PART = xc7a100tcsg324-1
PART = xc7z020clg400-1

.PHONY: all
all: top.bit

.PHONY: program
program: top.bit
	openFPGALoader --board Arty Z7-20 --bitstream $<

top.json: top.v $(ADDITIONAL_SOURCES)
	yosys -p "synth_xilinx -flatten -abc9 -nobram -arch xc7 -top top; write_json top.json" $<

# The chip database only needs to be generated once
# that is why we don't clean it with make clean
${CHIPDB}/${PART}.bin:
	pypy3 /nextpnr-xilinx/xilinx/python/bbaexport.py --device ${PART} --bba ${PART}.bba
	bbasm -l ${PART}.bba ${CHIPDB}/${PART}.bin
	rm -f ${PART}.bba

top.fasm: top.json ${CHIPDB}/${PART}.bin
	nextpnr-xilinx --chipdb ${CHIPDB}/${PART}.bin --xdc Arty-Z7-20-Master.xdc --json top.json --fasm $@ --verbose --debug
	
top.frames: top.fasm
	fasm2frames --part ${PART} --db-root ${DB_DIR}/${CHIPFAM} $< > $@ #FIXME: fasm2frames should be on PATH

top.bit: top.frames
	xc7frames2bit --part_file ${DB_DIR}/${CHIPFAM}/${PART}/part.yaml --part_name ${PART} --frm_file $< --output_file $@

.PHONY: clean
clean:
	@rm -f *.bit
	@rm -f *.frames
	@rm -f *.fasm
	@rm -f *.json

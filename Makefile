all: litex-gowin.sif


litex-gowin.sif: litex-gowin.def
	apptainer build --force $@ $<

clean:
	rm litex-gowin.sif

shell: litex-gowin.sif
	apptainer shell --bind /opt/gowin:/opt/gowin $<
	#apptainer shell $<

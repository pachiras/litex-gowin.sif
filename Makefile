all: litex-gowin.sif


litex-gowin.sif: litex-gowin.def
	apptainer build --force $@ $<

clean:
	rm *.sif *.tar

shell: litex-gowin.sif
	apptainer shell --bind ${HOME}/workspace/gowin:/opt/gowin $<

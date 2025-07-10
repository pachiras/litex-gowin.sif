all: gowin.sif


gowin.sif: gowin.def
	apptainer build $@ $<

clean:
	rm *.sif *.tar

#shell2: gowin.sif
#	sudo apptainer shell \
#	  --writable-tmpfs \
#	  --net \
#	  --add-caps=ALL \
#	  --keep-privs \
#	  --bind /dev:/dev,/usr/lib/x86_64-linux-gnu/dri:/usr/lib/dri,/dev/dri \
		$<

shell: gowin.sif
	apptainer shell $<

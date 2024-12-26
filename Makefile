all: openmpi-osu-micro-benchmarks.sif
.PHONY: all

%.sif: %.def
	apptainer build --force $@ $<

clean:
	rm -rf *.sif
.PHONY: clean

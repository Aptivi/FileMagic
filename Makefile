OUTPUTS = FileMagic.*/bin FileMagic.*/obj FileMagic/bin FileMagic/obj FileMagic.Bin FileMagic.Console.Bin

.PHONY: all

# General use

all: all-online

all-online:
	$(MAKE) -C tools invoke-build

dbg:
	$(MAKE) -C tools invoke-build ENVIRONMENT=Debug

doc:
	$(MAKE) -C tools invoke-doc-build

clean:
	rm -rf $(OUTPUTS)

# This makefile is just a wrapper for tools scripts.

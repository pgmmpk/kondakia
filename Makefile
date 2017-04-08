TOPTARGETS := all bw clean install

SUBDIRS := christmas epiphany meeting annunciation palm easter

$(TOPTARGETS): $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: $(TOPTARGETS) $(SUBDIRS)

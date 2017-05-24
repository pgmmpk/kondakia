TOPTARGETS := all bw clean install

SUBDIRS := christmas epiphany meeting annunciation palm easter ascention

$(TOPTARGETS): $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: $(TOPTARGETS) $(SUBDIRS)

TOPTARGETS := all bw clean install

SUBDIRS := christmas epiphany meeting annunciation

$(TOPTARGETS): $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: $(TOPTARGETS) $(SUBDIRS)

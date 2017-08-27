TOPTARGETS := all bw clean install

SUBDIRS := christmas epiphany meeting annunciation palm easter ascention pentecost transfiguration dormition

$(TOPTARGETS): $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: $(TOPTARGETS) $(SUBDIRS)

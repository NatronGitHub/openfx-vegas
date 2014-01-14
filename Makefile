SUBDIRS = Generator-Checkerboard KitchenSink TimeSlice

all: subdirs

.PHONY: subdirs clean distclean $(SUBDIRS)

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

clean :
	for i in $(SUBDIRS) ; do \
	  $(MAKE) -C $$i clean; \
	done

SonyOfxPIDK: video_plugin_kit_OFX.zip
	unzip -a $<

distclean: clean
	for i in $(SUBDIRS) ; do \
	  $(MAKE) -C $$i distclean; \
	done
	rm -rf SonyOfxPIDK

video_plugin_kit_OFX.zip:
	@echo "Downloading the 'Video Plug-In Development Kit (OFX)' from Sony Development Kits Download Page <http://www.sonycreativesoftware.com/download/devkits>"
	curl -O http://dspcdn.sonycreativesoftware.com/dev/video_plugin_kit_OFX.zip

TEMPLATE_BUILDER=/usr/lib/cgi-bin/templatizer
HTML_PAGES=$(patsubst %.tmpl,%.html,$(shell ls *.tmpl snacks-and-sanity/*.tmpl charlie/*.tmpl my-setup/*.tmpl birch-pollen/*.tmpl mind-bending/*.tmpl dr-glutamate/*.tmpl server-location-and-seo/*.tmpl proper-microcode/*.tmpl electromagnetism-health/*.tmpl family-spies/*.tmpl doorbell-chip-implant/*.tmpl doorbell-chip-implant-chapter2/*.tmpl blockchain-economist-oas/*.tmpl blockchain-economist-oas-chapter2/*.tmpl jack-porphyria-oas-boycott/*.tmpl albumin/*.tmpl))

all: $(HTML_PAGES)

%.html: %.tmpl
	PATH_TRANSLATED="$<" $(TEMPLATE_BUILDER) > $@

clean:
	rm -f $(HTML_PAGES)



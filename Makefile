TEMPLATE_BUILDER=/usr/lib/cgi-bin/templatizer
HTML_PAGES=$(patsubst %.tmpl,%.html,$(shell ls *.tmpl snacks-and-sanity/*.tmpl charlie/*.tmpl my-setup/*.tmpl))

all: $(HTML_PAGES)

%.html: %.tmpl
	PATH_TRANSLATED="$<" $(TEMPLATE_BUILDER) > $@

clean:
	rm -f $(HTML_PAGES)



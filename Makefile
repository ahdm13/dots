SRCROOT = .
DESTDIR = $(HOME)

src_files = $(shell find $(SRCROOT) -type f | grep -v '\.git' | grep -v Makefile)
dst_files = $(patsubst $(SRCROOT)/%,$(DESTDIR)/.%,$(src_files))

.PHONY: install reset
install: $(dst_files) $(SRCROOT)/Makefile
$(DESTDIR)/.%: $(SRCROOT)/% $(SRCROOT)/Makefile
	install -Dm 644 $< $@

reset:
	rm -rf $(DESTDIR)/.config
	rm -rf $(DESTDIR)/.profile
	find $(DESTDIR) -maxdepth 1 -type f -name ".*" -delete

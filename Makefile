#!/usr/bin/make -f
SHELL:=/bin/bash
PY=python3
FAMILY=Malini
STYLES=$(shell $(PY) tools/read_config.py styles)
SOURCEDIR=sources
FONTSDIR=fonts
PROOFDIR=proofs
TESTSDIR=tests
TTFDIR=${FONTSDIR}/ttf
OTFDIR=${FONTSDIR}/otf
WEBFONTSDIR=${FONTSDIR}/webfonts
UFODIR=${SOURCEDIR}/ufo
INSTALLDIR=~/.fonts/$(FAMILY)

UFO=$(STYLES:%=$(UFODIR)/$(FAMILY)-%.ufo)

.PHONY: $(STYLES) ufo clean glyphs build proofs autobuild update-deps init update


default: build

help:
	@echo "Build targets"
	@echo
	@echo " make build: Builds the fonts and places them in the fonts/ directory"
	@echo " make test:  Tests the fonts with fontbakery"
	@echo " make proof: Creates HTML proof documents in the proof/ directory"
	@echo

build: ufo Malini
# Recursively watch the file changes and make the (debug) svgs.
# Useful in design workflow.
# Package inotify-tools are available in linux distros
autobuild:
	while inotifywait -e MODIFY $(SOURCEDIR)/glyphs/; do $(MAKE) -C $(SOURCEDIR); done;

# Targets for preparing the glyphs from metapost and preparing master UFOs.
glyphs: $(STYLES)

$(STYLES):
	@mkdir -p $(SOURCEDIR)/svgs/$@
	VARIANT=$@ $(MAKE) -C $(SOURCEDIR)

$(UFODIR)/$(FAMILY)-%.ufo: %
	@echo " BUILD UFO  $(@F)"
	@mkdir -p ${UFODIR}
	$(PY) tools/builder.py --style $* --source $(SOURCEDIR)/svgs/$* --output $@
	@ufonormalizer -q -m $@
	@# remove dangling semicolons in features.fea which font editors cannot handle
	@sed -i 's/ ;$\//g' $@/features.fea

ufo: glyphs $(UFO)

# Build targets for prepating the fonts from master UFO sources.
Malini: $(FONTSDIR)/Malini/ttf-variable\
	$(FONTSDIR)/Malini/otf-variable \
	$(FONTSDIR)/Malini/otf \
	$(FONTSDIR)/Malini/ttf \
	$(FONTSDIR)/Malini/webfonts \
	$(FONTSDIR)/Malini/ufo

# Create ttf instances if a designspace exist
$(FONTSDIR)/%/ttf: %.designspace
	fontmake --mm-designspace $*.designspace \
		--filter DecomposeTransformedComponentsFilter  \
		--filter "ufo2ft.filters.dottedCircle::DottedCircleFilter(pre=True, dots=10)" \
		--interpolate \
		--flatten-components  \
		--verbose WARNING \
		--output-dir $@  \
		--output ttf  \
		--optimize-cff 0
	$(PY) tools/fix_font.py $(FONTSDIR)/$*/ttf/*.ttf

# Create otf instances if a designspace exist
$(FONTSDIR)/%/otf : %.designspace
	fontmake --mm-designspace $*.designspace \
		--verbose WARNING \
		--filter DecomposeTransformedComponentsFilter  \
		--flatten-components  \
		--interpolate  \
		--optimize-cff 1 \
		--output-dir $@ \
		--output otf
	$(PY) tools/fix_font.py $@/*.otf


# Create ttf variablefont from the given designspace
$(FONTSDIR)/%/ttf-variable: %.designspace
	fontmake --mm-designspace $*.designspace \
		--filter DecomposeTransformedComponentsFilter \
		--flatten-components \
		--verbose WARNING \
		--output-dir $@ \
		--output variable
	$(PY) tools/fix_font.py $@/*.ttf
	$(PY) tools/stat.py $* $@/*.ttf

# Create otf variablefont from the given designspace
$(FONTSDIR)/%/otf-variable : %.designspace
	fontmake --mm-designspace $*.designspace \
		--filter DecomposeTransformedComponentsFilter  \
		--flatten-components \
		--output-dir $@ \
		--verbose WARNING \
		--optimize-cff 1 \
		--output variable-cff2

	$(PY) tools/fix_font.py $@/*.otf
	$(PY) tools/stat.py $* $@/*.otf

# Create UFO instances from the given designspace
# Note that ufo instance created for multi layer color fonts will be invalid
# See # See https://github.com/googlefonts/fontmake/issues/928#issuecomment-1227311804
$(FONTSDIR)/%/ufo: %.designspace
	fontmake --mm-designspace $*.designspace \
		--interpolate \
		--output ufo

# Compile otf from UFO file. This target will be picked up only if designspace is missing for the variant
$(FONTSDIR)/%/otf: ${UFODIR}/%.ufo
	fontmake --validate-ufo \
		--verbose=WARNING \
		--optimize-cff 1 \
		--flatten-components \
		--filter DecomposeTransformedComponentsFilter  \
		--output otf \
		--output-dir $@ \
		--ufo-paths $(UFODIR)/$*.ufo
	$(PY) tools/fix_font.py $@/*

# Compile ttf from UFO file. This target will be picked up only if designspace is missing for the variant
$(FONTSDIR)/%/ttf: ${UFODIR}/%.ufo
	@fontmake --verbose=WARNING \
		--output ttf \
		--flatten-components \
		--filter DecomposeTransformedComponentsFilter \
		--optimize-cff 1 \
		--output-dir $@ \
		--ufo-paths $(UFODIR)/$*.ufo
	$(PY) tools/fix_font.py $@/*.ttf

# Package the ufo in fonts directory, directly from the source UFO.
$(FONTSDIR)/%/ufo: ${UFODIR}/%.ufo
	@cp -r $</ $@/

# Create woff2 formatted webfonts for all the otfs available
# Could be done using fonttools but using a python script to avoid hassles of loop
# and filename mangling in Makefile
$(FONTSDIR)/%/webfonts:
	@mkdir -p  $@
	$(PY) tools/gen_webfonts.py $(FONTSDIR)/$*/**/*.otf

clean:
	@find -iname "*.pyc" -delete
	@rm -rf $(FONTSDIR) $(PROOFDIR)

proofs:
	@mkdir -p ${PROOFDIR}
	hb-view $(FONTSDIR)/Malini/otf/Malini-Regular.otf \
		--font-ptem 10 \
		--margin 100 \
		--line-space 2.4 \
		--foreground=333333 \
		--text-file $(TESTSDIR)/ligatures.txt \
		--output-file $(PROOFDIR)/ligatures.pdf;
	hb-view $(FONTSDIR)/Malini/otf/Malini-Regular.otf \
		--font-ptem 10 \
		--margin 100 \
		--line-space 2.4 \
		--foreground=333333 \
		--text-file $(TESTSDIR)/content.txt \
		--output-file $(PROOFDIR)/content.pdf;

	hb-view $(FONTSDIR)/Malini/otf/Malini-Regular.otf \
		--font-ptem 10 \
		--margin 100 \
		--line-space 2.4 \
		--foreground=333333 \
		--text-file $(TESTSDIR)/kerning.txt \
		--output-file $(PROOFDIR)/kerning.pdf ;
	cat $(TESTSDIR)/paragraphs.english.txt | fold -sw 80 | hb-view $(FONTSDIR)/Malini/otf/Malini-Regular.otf \
		--font-ptem 10 \
		--margin 100 \
		--line-space 2.4 \
		--foreground=333333 \
		--output-file $(PROOFDIR)/paragraphs.english.pdf ;

test: proofs
	# fontbakery check-fontval $(FONTSDIR)/$(FAMILY)-Regular.ttf <- enable when https://github.com/microsoft/Font-Validator/issues/62 fixed
	fontbakery check-ufo-sources $(FONTSDIR)/Malini/ufo/$(FAMILY)-Regular.ufo
	fontbakery check-opentype $(FONTSDIR)/Malini/otf/Malini-Regular.otf
	fontbakery check-googlefonts --full-lists --config fontbakery.yaml --html tests/fontbakery-report.html --ghmarkdown tests/fontbakery-report.md $(FONTSDIR)/Malini/ttf-variable/Malini-VF.ttf

install: build
	@mkdir -p $(INSTALLDIR);
	@cp $(FONTSDIR)/Malini/otf-variable/Malini-VF.otf $(INSTALLDIR);
	@fc-cache -fr

release:
	# Tar files - Malini
	tar czvf $(FONTSDIR)/Malini.tar.gz *.conf OFL.txt README.md $(FONTSDIR)/Malini
	sha256sum $(FONTSDIR)/Malini.tar.gz > $(FONTSDIR)/Malini.tar.gz.sha256
	md5sum $(FONTSDIR)/Malini.tar.gz > $(FONTSDIR)/Malini.tar.gz.md5
	# Zip files
	zip -r $(FONTSDIR)/Malini.zip README.md OFL.txt $(FONTSDIR)/Malini
	sha256sum $(FONTSDIR)/Malini.zip > $(FONTSDIR)/Malini.zip.sha256
	md5sum $(FONTSDIR)/Malini.zip > $(FONTSDIR)/Malini.zip.md5

init:
	pip-sync
	pip check

update: update-deps init

update-deps:
	export PIP_REQUIRE_VIRTUALENV=true
	pip install --upgrade pip-tools pip wheel
	pip-compile --upgrade --extra=tests,dev -o requirements.txt pyproject.toml


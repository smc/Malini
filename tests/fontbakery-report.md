## FontBakery report

fontbakery version: 0.11.2

<h2>Check results</h2><details><summary><b>[19] Malini-VF.ttf</b></summary><div><details><summary>⚠ <b>WARN:</b> Checking file is named canonically. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/canonical_filename">com.google.fonts/check/canonical_filename</a>)</summary><div>

>
>A font's filename must be composed as "<familyname>-<stylename>.ttf":
>
>- Nunito-Regular.ttf
>
>- Oswald-BoldItalic.ttf
>
>Variable fonts must list the axis tags in alphabetical order in square brackets and separated by commas:
>
>- Roboto[wdth,wght].ttf
>
>- Familyname-Italic[wght].ttf
>
* ⚠ **WARN** Expected "Malini[opsz,slnt,wdth,wght].ttf. Got Malini-VF.ttf. [code: bad-filename]
</div></details><details><summary>⚠ <b>WARN:</b> Check for codepoints not covered by METADATA subsets. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/unreachable_subsetting">com.google.fonts/check/metadata/unreachable_subsetting</a>)</summary><div>

>
>This check ensures that all encoded glyphs in the font are covered by a subset declared in the METADATA.pb. Google Fonts splits the font into a set of subset fonts based on the contents of the `subsets` field and the subset definitions in the `glyphsets` repository.
>
>Any encoded glyphs which are not by any of these subset definitions will not be served in the subsetted fonts, and so will be unreachable to the end user.
>
* ⚠ **WARN** The following codepoints supported by the font are not covered by
    any subsets defined in the font's metadata file, and will never
    be served. You can solve this by either manually adding additional
    subset declarations to METADATA.pb, or by editing the glyphset
    definitions.

 * U+02C7 CARON: try adding one of: tifinagh, yi, canadian-aboriginal
 * U+02D8 BREVE: try adding one of: yi, canadian-aboriginal
 * U+02D9 DOT ABOVE: try adding one of: yi, canadian-aboriginal
 * U+02DB OGONEK: try adding one of: yi, canadian-aboriginal
 * U+02DD DOUBLE ACUTE ACCENT: not included in any glyphset definition
 * U+0302 COMBINING CIRCUMFLEX ACCENT: try adding one of: tifinagh, coptic, math, cherokee
 * U+0306 COMBINING BREVE: try adding one of: tifinagh, old-permic
 * U+030A COMBINING RING ABOVE: try adding syriac
 * U+030B COMBINING DOUBLE ACUTE ACCENT: try adding one of: cherokee, osage
 * U+030C COMBINING CARON: try adding one of: tai-le, cherokee
 * U+0312 COMBINING TURNED COMMA ABOVE: not included in any glyphset definition
 * U+0326 COMBINING COMMA BELOW: not included in any glyphset definition
 * U+0327 COMBINING CEDILLA: not included in any glyphset definition
 * U+0328 COMBINING OGONEK: not included in any glyphset definition
 * U+2E42 DOUBLE LOW-REVERSED-9 QUOTATION MARK: not included in any glyphset definition

Or you can add the above codepoints to one of the subsets supported by the font: `cyrillic-ext`, `greek-ext`, `latin`, `latin-ext`, `malayalam` [code: unreachable-subsetting]
</div></details><details><summary>⚠ <b>WARN:</b> Shapes languages in all GF glyphsets. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/glyphsets/shape_languages">com.google.fonts/check/glyphsets/shape_languages</a>)</summary><div>

>
>This check uses a heuristic to determine which GF glyphsets a font supports. Then it checks the font for correct shaping behaviour for all languages in those glyphsets.
>
* ⚠ **WARN** GF_Latin_Core glyphset:

| Language | FAIL messages |
| :--- | :--- |
| nl_Latn (Dutch) | Shaper didn't attach acutecmb to J |
|  ^  | Shaper didn't attach acutecmb to j |

 [code: failed-language-shaping]
</div></details><details><summary>⚠ <b>WARN:</b> Check variable font instances (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/fvar_instances">com.google.fonts/check/fvar_instances</a>)</summary><div>

>
>Check a font's fvar instance coordinates comply with our guidelines: https://googlefonts.github.io/gf-guide/variable.html#fvar-instances
>
* ⚠ **WARN** fvar instances are incorrect:
- Add missing instances
- Delete additional instances

| Name | current | expected |
| :--- | :--- | :--- |
| ExtraBold Display | wght=800.0, wdth=100.0, slnt=0.0, opsz=48.0 | N/A |
| Thin Text | wght=100.0, wdth=100.0, slnt=0.0, opsz=12.0 | N/A |
| Medium Display | wght=500.0, wdth=100.0, slnt=0.0, opsz=48.0 | N/A |
| Condensed Light | wght=300.0, wdth=75.0, slnt=0.0, opsz=12.0 | N/A |
| SemiBold Display | wght=500.0, wdth=100.0, slnt=0.0, opsz=48.0 | N/A |
| Condensed Bold | wght=700.0, wdth=75.0, slnt=0.0, opsz=12.0 | N/A |
| Thin Display | wght=100.0, wdth=100.0, slnt=0.0, opsz=48.0 | N/A |
| Expanded Bold | wght=700.0, wdth=125.0, slnt=0.0, opsz=12.0 | N/A |
| Expanded Thin | wght=100.0, wdth=125.0, slnt=0.0, opsz=12.0 | N/A |
| Condensed Thin | wght=100.0, wdth=75.0, slnt=0.0, opsz=12.0 | N/A |
| Light Display | wght=300.0, wdth=100.0, slnt=0.0, opsz=48.0 | N/A |
| Light Oblique | wght=300.0, wdth=100.0, slnt=-12.0, opsz=12.0 | N/A |
| Medium Oblique | wght=500.0, wdth=100.0, slnt=-12.0, opsz=12.0 | N/A |
| SemiCondensed Bold | wght=700.0, wdth=87.5, slnt=0.0, opsz=12.0 | N/A |
| Black Oblique | wght=900.0, wdth=100.0, slnt=-12.0, opsz=12.0 | N/A |
| Bold Oblique | wght=700.0, wdth=100.0, slnt=-12.0, opsz=12.0 | N/A |
| Oblique Thin Display | wght=100.0, wdth=100.0, slnt=-12.0, opsz=48.0 | N/A |
| Oblique | wght=400.0, wdth=100.0, slnt=-12.0, opsz=12.0 | N/A |
| Expanded Medium | wght=500.0, wdth=125.0, slnt=0.0, opsz=12.0 | N/A |
| Text | wght=400.0, wdth=100.0, slnt=0.0, opsz=10.0 | N/A |
| ExtraLight Display | wght=200.0, wdth=100.0, slnt=0.0, opsz=48.0 | N/A |
| Expanded | wght=400.0, wdth=125.0, slnt=0.0, opsz=12.0 | N/A |
| SemiBold Oblique | wght=600.0, wdth=100.0, slnt=-12.0, opsz=12.0 | N/A |
| Condensed | wght=400.0, wdth=75.0, slnt=0.0, opsz=12.0 | N/A |
| ExtraBold Oblique | wght=800.0, wdth=100.0, slnt=-12.0, opsz=12.0 | N/A |
| Expanded ExtraLight | wght=200.0, wdth=125.0, slnt=0.0, opsz=12.0 | N/A |
| Display | wght=400.0, wdth=100.0, slnt=0.0, opsz=48.0 | N/A |
| Condensed Medium | wght=500.0, wdth=75.0, slnt=0.0, opsz=12.0 | N/A |
| Condensed ExtraLight | wght=200.0, wdth=75.0, slnt=0.0, opsz=12.0 | N/A |
| SemiCondensed | wght=400.0, wdth=87.5, slnt=0.0, opsz=12.0 | N/A |
| Bold Display | wght=700.0, wdth=100.0, slnt=0.0, opsz=48.0 | N/A |
| Condensed Oblique | wght=400.0, wdth=75.0, slnt=-12.0, opsz=12.0 | N/A |
| SemiExpanded | wght=400.0, wdth=112.5, slnt=0.0, opsz=12.0 | N/A |
| Oblique Thin | wght=100.0, wdth=100.0, slnt=-12.0, opsz=12.0 | N/A |
| Expanded Light | wght=300.0, wdth=125.0, slnt=0.0, opsz=12.0 | N/A |
| Black Display | wght=800.0, wdth=100.0, slnt=0.0, opsz=48.0 | N/A |
| ExtraLight Oblique | wght=200.0, wdth=100.0, slnt=-12.0, opsz=12.0 | N/A |
| Thin Italic | N/A | wght=100.0, wdth=100.0, slnt=-12.0, opsz=12.0 |
| Thin | wght=100.0, wdth=100.0, slnt=0.0, opsz=12.0 | wght=100.0, wdth=100.0, slnt=0.0, opsz=12.0 |
| ExtraLight Italic | N/A | wght=200.0, wdth=100.0, slnt=-12.0, opsz=12.0 |
| ExtraLight | wght=200.0, wdth=100.0, slnt=0.0, opsz=12.0 | wght=200.0, wdth=100.0, slnt=0.0, opsz=12.0 |
| Light Italic | N/A | wght=300.0, wdth=100.0, slnt=-12.0, opsz=12.0 |
| Light | wght=300.0, wdth=100.0, slnt=0.0, opsz=12.0 | wght=300.0, wdth=100.0, slnt=0.0, opsz=12.0 |
| Italic | N/A | wght=400.0, wdth=100.0, slnt=-12.0, opsz=12.0 |
| Regular | wght=400.0, wdth=100.0, slnt=0.0, opsz=12.0 | wght=400.0, wdth=100.0, slnt=0.0, opsz=12.0 |
| Medium Italic | N/A | wght=500.0, wdth=100.0, slnt=-12.0, opsz=12.0 |
| Medium | wght=500.0, wdth=100.0, slnt=0.0, opsz=12.0 | wght=500.0, wdth=100.0, slnt=0.0, opsz=12.0 |
| SemiBold Italic | N/A | wght=600.0, wdth=100.0, slnt=-12.0, opsz=12.0 |
| SemiBold | wght=600.0, wdth=100.0, slnt=0.0, opsz=12.0 | wght=600.0, wdth=100.0, slnt=0.0, opsz=12.0 |
| Bold Italic | N/A | wght=700.0, wdth=100.0, slnt=-12.0, opsz=12.0 |
| Bold | wght=700.0, wdth=100.0, slnt=0.0, opsz=12.0 | wght=700.0, wdth=100.0, slnt=0.0, opsz=12.0 |
| ExtraBold Italic | N/A | wght=800.0, wdth=100.0, slnt=-12.0, opsz=12.0 |
| ExtraBold | wght=800.0, wdth=100.0, slnt=0.0, opsz=12.0 | wght=800.0, wdth=100.0, slnt=0.0, opsz=12.0 |
| Black Italic | N/A | wght=900.0, wdth=100.0, slnt=-12.0, opsz=12.0 |
| Black | wght=900.0, wdth=100.0, slnt=0.0, opsz=12.0 | wght=900.0, wdth=100.0, slnt=0.0, opsz=12.0 | [code: bad-fvar-instances]
</div></details><details><summary>⚠ <b>WARN:</b> Are there caret positions declared for every ligature? (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/ligature_carets">com.google.fonts/check/ligature_carets</a>)</summary><div>

>
>All ligatures in a font must have corresponding caret (text cursor) positions defined in the GDEF table, otherwhise, users may experience issues with caret rendering.
>
>If using GlyphsApp or UFOs, ligature carets can be defined as anchors with names starting with 'caret_'. These can be compiled with fontmake as of version v2.4.0.
>
* ⚠ **WARN** This font lacks caret position values for ligature glyphs on its GDEF table. [code: lacks-caret-pos]
</div></details><details><summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences? (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences">com.google.fonts/check/kerning_for_non_ligated_sequences</a>)</summary><div>

>
>Fonts with ligatures should have kerning on the corresponding non-ligated sequences for text where ligatures aren't used (eg https://github.com/impallari/Raleway/issues/14).
>
* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:

	- f + f

	- f + t

	- t + i

	- i + j

	- t + t [code: lacks-kern-info]
</div></details><details><summary>⚠ <b>WARN:</b> Validate STAT particle names and values match the fallback names in GFAxisRegistry. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/STAT/gf_axisregistry">com.google.fonts/check/STAT/gf_axisregistry</a>)</summary><div>

>
>Check that particle names and values on STAT table match the fallback names in each axis entry at the Google Fonts Axis Registry, available at https://github.com/google/fonts/tree/main/axisregistry
>
* ⚠ **WARN** On the font variation axis 'slnt', the name 'Upright' is not among the expected ones (Default) according to the Google Fonts Axis Registry. [code: invalid-name]
* ⚠ **WARN** On the font variation axis 'slnt', the name 'Italic' is not among the expected ones (Default) according to the Google Fonts Axis Registry. [code: invalid-name]
</div></details><details><summary>⚠ <b>WARN:</b> Ensure variable fonts include an avar table. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/mandatory_avar_table">com.google.fonts/check/mandatory_avar_table</a>)</summary><div>

>
>Most variable fonts should include an avar table to correctly define axes progression rates.
>
>For example, a weight axis from 0% to 100% doesn't map directly to 100 to 1000, because a 10% progression from 0% may be too much to define the 200, while 90% may be too little to define the 900.
>
>If the progression rates of axes is linear, this check can be ignored. Fontmake will also skip adding an avar table if the progression rates are linear. However, we still recommend designers visually proof each instance is at the expected weight, width etc.
>
* ⚠ **WARN** This variable font does not have an avar table. [code: missing-avar]
</div></details><details><summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags">com.google.fonts/check/meta/script_lang_tags</a>)</summary><div>

>
>The OpenType 'meta' table originated at Apple. Microsoft added it to OT with just two DataMap records:
>
>- dlng: comma-separated ScriptLangTags that indicate which scripts, or languages and scripts, with possible variants, the font is designed for.
>
>- slng: comma-separated ScriptLangTags that indicate which scripts, or languages and scripts, with possible variants, the font supports.
>
>The slng structure is intended to describe which languages and scripts the font overall supports. For example, a Traditional Chinese font that also contains Latin characters, can indicate Hant,Latn, showing that it supports Hant, the Traditional Chinese variant of the Hani script, and it also supports the Latn script.
>
>The dlng structure is far more interesting. A font may contain various glyphs, but only a particular subset of the glyphs may be truly "leading" in the design, while other glyphs may have been included for technical reasons. Such a Traditional Chinese font could only list Hant there, showing that it’s designed for Traditional Chinese, but the font would omit Latn, because the developers don’t think the font is really recommended for purely Latin-script use.
>
>The tags used in the structures can comprise just script, or also language and script. For example, if a font has Bulgarian Cyrillic alternates in the locl feature for the cyrl BGR OT languagesystem, it could also indicate in dlng explicitly that it supports bul-Cyrl. (Note that the scripts and languages in meta use the ISO language and script codes, not the OpenType ones).
>
>This check ensures that the font has the meta table containing the slng and dlng structures.
>
>All families in the Google Fonts collection should contain the 'meta' table. Windows 10 already uses it when deciding on which fonts to fall back to. The Google Fonts API and also other environments could use the data for smarter filtering. Most importantly, those entries should be added to the Noto fonts.
>
>In the font making process, some environments store this data in external files already. But the meta table provides a convenient way to store this inside the font file, so some tools may add the data, and unrelated tools may read this data. This makes the solution much more portable and universal.
>
* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]
</div></details><details><summary>⚠ <b>WARN:</b> Check that legacy accents aren't used in composite glyphs. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/legacy_accents">com.google.fonts/check/legacy_accents</a>)</summary><div>

>
>Legacy accents should not be used in accented glyphs. The use of legacy accents in accented glyphs breaks the mark to mark combining feature that allows a font to stack diacritics over one glyph. Use combining marks instead as a component in composite glyphs.
>
>Legacy accents should not have anchors and should have non-zero width. They are often used independently of a letter, either as a placeholder for an expected combined mark+letter combination in MacOS, or separately. For instance, U+00B4 (ACUTE ACCENT) is often mistakenly used as an apostrophe, U+0060 (GRAVE ACCENT) is used in Markdown to notify code blocks, and ^ is used as an exponential operator in maths.
>
* ⚠ **WARN** Glyph "acircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "ccircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "ecircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "gcircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "hcircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "icircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "jcircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "ocircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "scircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "ucircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "wcircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "ycircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Acircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Ccircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Ecircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Gcircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Hcircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Icircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Jcircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Ocircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Scircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Ucircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Wcircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Ycircumflex" has a legacy accent component  (circumflex). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "aacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "cacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "eacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "iacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "lacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "nacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "oacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "racute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "sacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "uacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "wacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "yacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "zacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Aacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Cacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Eacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Iacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Lacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Nacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Oacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Racute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Sacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Uacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Wacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Yacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Zacute" has a legacy accent component  (acute). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "ccedilla" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "kcedilla" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "lcedilla" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "rcedilla" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "scedilla" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Ccedilla" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Gcedilla" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Kcedilla" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Ncedilla" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Rcedilla" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Scedilla" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "aring" has a legacy accent component  (ring). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "uring" has a legacy accent component  (ring). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Aring" has a legacy accent component  (ring). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Uring" has a legacy accent component  (ring). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "amacron" has a legacy accent component  (macron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "emacron" has a legacy accent component  (macron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "imacron" has a legacy accent component  (macron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "omacron" has a legacy accent component  (macron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "umacron" has a legacy accent component  (macron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Amacron" has a legacy accent component  (macron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Emacron" has a legacy accent component  (macron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Imacron" has a legacy accent component  (macron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Omacron" has a legacy accent component  (macron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Umacron" has a legacy accent component  (macron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "agrave" has a legacy accent component  (grave). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "egrave" has a legacy accent component  (grave). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "igrave" has a legacy accent component  (grave). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "ograve" has a legacy accent component  (grave). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "ugrave" has a legacy accent component  (grave). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "wgrave" has a legacy accent component  (grave). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "ygrave" has a legacy accent component  (grave). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Agrave" has a legacy accent component  (grave). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Egrave" has a legacy accent component  (grave). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Igrave" has a legacy accent component  (grave). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Ograve" has a legacy accent component  (grave). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Ugrave" has a legacy accent component  (grave). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Wgrave" has a legacy accent component  (grave). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Ygrave" has a legacy accent component  (grave). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "acaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "ccaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "dcaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "ecaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "jcaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "ncaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "rcaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "scaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "zcaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Acaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Ccaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Dcaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Ecaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Ncaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Rcaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Scaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Tcaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Zcaron" has a legacy accent component  (caron). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "adieresis" has a legacy accent component  (dieresis). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "edieresis" has a legacy accent component  (dieresis). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "idieresis" has a legacy accent component  (dieresis). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "odieresis" has a legacy accent component  (dieresis). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "udieresis" has a legacy accent component  (dieresis). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "wdieresis" has a legacy accent component  (dieresis). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "ydieresis" has a legacy accent component  (dieresis). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Adieresis" has a legacy accent component  (dieresis). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Edieresis" has a legacy accent component  (dieresis). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Idieresis" has a legacy accent component  (dieresis). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Odieresis" has a legacy accent component  (dieresis). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Udieresis" has a legacy accent component  (dieresis). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Wdieresis" has a legacy accent component  (dieresis). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Ydieresis" has a legacy accent component  (dieresis). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "cdotaccent" has a legacy accent component  (dotaccent). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "edotaccent" has a legacy accent component  (dotaccent). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "gdotaccent" has a legacy accent component  (dotaccent). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "zdotaccent" has a legacy accent component  (dotaccent). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Cdotaccent" has a legacy accent component  (dotaccent). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Edotaccent" has a legacy accent component  (dotaccent). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Gdotaccent" has a legacy accent component  (dotaccent). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Idotaccent" has a legacy accent component  (dotaccent). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Zdotaccent" has a legacy accent component  (dotaccent). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "atilde" has a legacy accent component  (tilde). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "itilde" has a legacy accent component  (tilde). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "ntilde" has a legacy accent component  (tilde). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "otilde" has a legacy accent component  (tilde). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "utilde" has a legacy accent component  (tilde). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Atilde" has a legacy accent component  (tilde). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Itilde" has a legacy accent component  (tilde). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Ntilde" has a legacy accent component  (tilde). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Otilde" has a legacy accent component  (tilde). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Utilde" has a legacy accent component  (tilde). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "abreve" has a legacy accent component  (breve). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "gbreve" has a legacy accent component  (breve). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "ubreve" has a legacy accent component  (breve). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Abreve" has a legacy accent component  (breve). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Gbreve" has a legacy accent component  (breve). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Ubreve" has a legacy accent component  (breve). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "aogonek" has a legacy accent component  (ogonek). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "eogonek" has a legacy accent component  (ogonek). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "iogonek" has a legacy accent component  (ogonek). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "uogonek" has a legacy accent component  (ogonek). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Aogonek" has a legacy accent component  (ogonek). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Eogonek" has a legacy accent component  (ogonek). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Iogonek" has a legacy accent component  (ogonek). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Uogonek" has a legacy accent component  (ogonek). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "ohungarumlaut" has a legacy accent component  (hungarumlaut). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "uhungarumlaut" has a legacy accent component  (hungarumlaut). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Ohungarumlaut" has a legacy accent component  (hungarumlaut). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Uhungarumlaut" has a legacy accent component  (hungarumlaut). It needs to be replaced by a combining mark. [code: legacy-accents-component]
</div></details><details><summary>⚠ <b>WARN:</b> Check correctness of STAT table strings (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/STAT_strings">com.google.fonts/check/STAT_strings</a>)</summary><div>

>
>On the STAT table, the "Italic" keyword must not be used on AxisValues for variation axes other than 'ital'.
>
* ⚠ **WARN** The following AxisValue entries on the STAT table should not contain "Italic":
['nameID 311: Italic'] [code: bad-italic]
</div></details><details><summary>⚠ <b>WARN:</b> Glyph names are all valid? (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames">com.google.fonts/check/valid_glyphnames</a>)</summary><div>

>
>Microsoft's recommendations for OpenType Fonts states the following:
>
>'NOTE: The PostScript glyph name must be no longer than 31 characters, include only uppercase or lowercase English letters, European digits, the period or the underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter, except the special glyph name ".notdef" which starts with a period.'
>
>https://learn.microsoft.com/en-us/typography/opentype/otspec181/recom#-post--table
>
>In practice, though, particularly in modern environments, glyph names can be as long as 63 characters.
>
>According to the "Adobe Glyph List Specification" available at:
>
>https://github.com/adobe-type-tools/agl-specification
>
* ⚠ **WARN** The following glyph names may be too long for some legacy systems which may expect a maximum 31-characters length limit:
ml_da_virama_dha_virama_ra_sign_u, ml_da_virama_dha_virama_ra_sign_uu, ml_fraction_one_one_hundred_and_sixtieth, ml_ga_virama_da_virama_dha_sign_u, ml_ga_virama_da_virama_dha_sign_uu, ml_ga_virama_da_virama_dha_virama_ra, ml_ga_virama_da_virama_dha_virama_ra_sign_u, ml_ga_virama_da_virama_dha_virama_ra_sign_uu, ml_ka_virama_ka_virama_ra_sign_u, ml_ka_virama_ka_virama_ra_sign_uu, ml_ka_virama_ta_virama_ra_sign_u, ml_ka_virama_ta_virama_ra_sign_uu, ml_ma_virama_pa_virama_ra_sign_u, ml_ma_virama_pa_virama_ra_sign_uu, ml_na_virama_da_virama_ra_sign_u, ml_na_virama_da_virama_ra_sign_uu, ml_na_virama_dha_virama_ra_sign_u, ml_na_virama_dha_virama_ra_sign_uu, ml_na_virama_ta_virama_ra_sign_u, ml_na_virama_ta_virama_ra_sign_uu, ml_nga_virama_ka_virama_ra_sign_u, ml_nga_virama_ka_virama_ra_sign_uu, ml_nna_virama_tta_virama_ra_sign_u, ml_nna_virama_tta_virama_ra_sign_uu, ml_ta_virama_sa_virama_ra_sign_u, ml_ta_virama_sa_virama_ra_sign_uu, ml_ta_virama_ta_virama_ra_sign_u and ml_ta_virama_ta_virama_ra_sign_uu [code: legacy-long-names]
</div></details><details><summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs">com.google.fonts/check/unreachable_glyphs</a>)</summary><div>

>
>Glyphs are either accessible directly through Unicode codepoints or through substitution rules.
>
>In Color Fonts, glyphs are also referenced by the COLR table.
>
>Any glyphs not accessible by either of these means are redundant and serve only to increase the font's file size.
>
* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:

	- nonmarkingreturn
 [code: unreachable-glyphs]
</div></details><details><summary>⚠ <b>WARN:</b> Does the font contain a soft hyphen? (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/soft_hyphen">com.google.fonts/check/soft_hyphen</a>)</summary><div>

>
>The 'Soft Hyphen' character (codepoint 0x00AD) is used to mark a hyphenation possibility within a word in the absence of or overriding dictionary hyphenation.
>
>It is sometimes designed empty with no width (such as a control character), sometimes the same as the traditional hyphen, sometimes double encoded with the hyphen.
>
>That being said, it is recommended to not include it in the font at all, because discretionary hyphenation should be handled at the level of the shaping engine, not the font. Also, even if present, the software would not display that character.
>
>More discussion at: https://typedrawers.com/discussion/2046/special-dash-things-softhyphen-horizontalbar
>
* ⚠ **WARN** This font has a 'Soft Hyphen' character. [code: softhyphen]
</div></details><details><summary>⚠ <b>WARN:</b> Check math signs have the same width. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/math_signs_width">com.google.fonts/check/math_signs_width</a>)</summary><div>

>
>It is a common practice to have math signs sharing the same width (preferably the same width as tabular figures accross the entire font family).
>
>This probably comes from the will to avoid additional tabular math signs knowing that their design can easily share the same width.
>
* ⚠ **WARN** The most common width is 424 among a set of 5 math glyphs.
The following math glyphs have a different width, though:

Width = 326:
greater, less

Width = 488:
multiply

Width = 535:
divide
 [code: width-outliers]
</div></details><details><summary>⚠ <b>WARN:</b> Check accent of Lcaron, dcaron, lcaron, tcaron (derived from com.google.fonts/check/alt_caron) (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/alt_caron">com.google.fonts/check/alt_caron</a>)</summary><div>

>
>Lcaron, dcaron, lcaron, tcaron should NOT be composed with quoteright or quotesingle or comma or caron(comb). It should be composed with a distinctive glyph which doesn't look like an apostrophe.
>
>Source: https://ilovetypography.com/2009/01/24/on-diacritics/ http://diacritics.typo.cz/index.php?id=5 https://www.typotheque.com/articles/lcaron
>
* ⚠ **WARN** dcaron uses component caron. [code: wrong-mark]
* ⚠ **WARN** lcaron uses component quoteright. [code: bad-mark]
* ⚠ **WARN** tcaron uses component quotesingle. [code: bad-mark]
* ⚠ **WARN** Lcaron uses component quoteright. [code: bad-mark]
</div></details><details><summary>⚠ <b>WARN:</b> Check glyphs in mark glyph class are non-spacing. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks">com.google.fonts/check/gdef_spacing_marks</a>)</summary><div>

>
>Glyphs in the GDEF mark glyph class should be non-spacing.
>
>Spacing glyphs in the GDEF mark glyph class may have incorrect anchor positioning that was only intended for building composite glyphs during design.
>
* ⚠ **WARN** The following spacing glyphs may be in the GDEF mark glyph class by mistake:
	 acutecmb (U+0301), brevecmb (U+0306), caroncmb (U+030C), cedillacmb (U+0327), circumflexcmb (U+0302), commaaccent (U+0326), commaturnedabovecmb (U+0312), dieresiscmb (U+0308), dotaccentcmb (U+0307), gravecmb (U+0300), hungarumlautcmb (U+030B), macroncmb (U+0304), ml_candrabindu (U+0D01), ml_circular_virama (U+0D3C), ml_combining_anusvara_above (U+0D00), ml_vertical_bar_virama (U+0D3B), ml_virama (U+0D4D), ogonekcmb (U+0328), ringcmb (U+030A) and tildecmb (U+0303) [code: spacing-mark-glyphs]
</div></details><details><summary>⚠ <b>WARN:</b> Check mark characters are in GDEF mark glyph class. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars">com.google.fonts/check/gdef_mark_chars</a>)</summary><div>

>
>Mark characters should be in the GDEF mark glyph class.
>
* ⚠ **WARN** The following mark characters could be in the GDEF mark glyph class:
	 ml_sign_u (U+0D41), ml_sign_uu (U+0D42), ml_sign_vocalic_l (U+0D62), ml_sign_vocalic_ll (U+0D63), ml_sign_vocalic_r (U+0D43), ml_sign_vocalic_rr (U+0D44), uni951 (U+0951) and uni952 (U+0952) [code: mark-chars]
</div></details><details><summary>⚠ <b>WARN:</b> Check GDEF mark glyph class doesn't have characters that are not marks. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars">com.google.fonts/check/gdef_non_mark_chars</a>)</summary><div>

>
>Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned if they have mark anchors.
>
>Only combining mark glyphs should be in that class. Any non-mark glyph must not be in that class, in particular spacing glyphs.
>
* ⚠ **WARN** The following non-mark characters should not be in the GDEF mark glyph class:
	 U+0D4E [code: non-mark-chars]
</div></details><br></div></details>

### Summary

| 💔 ERROR | ☠ FATAL | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|
| 0 | 0 | 0 | 19 | 97 | 8 | 132 | 0 |
| 0% | 0% | 0% | 7% | 38% | 3% | 52% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**

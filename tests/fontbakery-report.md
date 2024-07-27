## FontBakery report

fontbakery version: 0.12.9



## Experimental checks

These won't break the CI job for now, but will become effective after some time if nobody raises any concern.


<details><summary>[1] Malini-VF.ttf</summary>
<div>
<details>
    <summary>⚠️ <b>WARN</b> Validate size, and resolution of article images, and ensure article page has minimum length and includes visual assets. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.article.html#"></a></summary>
    <div>


> 
> The purpose of this check is to ensure images (either raster or vector files)
> are not excessively large in filesize and resolution.
> 
> These constraints are loosely based on infrastructure limitations under
> default configurations.
> 
> It also ensures that the article page has a minimum length and includes
> at least one visual asset.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/4594





* ⚠️ **WARN** <p>Family metadata at fonts/Malini/ttf-variable does not have an article.</p>
 [code: lacks-article]



</div>
</details>
</div>
</details>




## All other checks



<details><summary>[17] Malini-VF.ttf</summary>
<div>
<details>
    <summary>⚠️ <b>WARN</b> Check glyphs in mark glyph class are non-spacing. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/opentype.gdef.html#"></a></summary>
    <div>


> 
> Glyphs in the GDEF mark glyph class should be non-spacing.
> 
> Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
> positioning that was only intended for building composite glyphs during design.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/2877





* ⚠️ **WARN** <p>The following spacing glyphs may be in the GDEF mark glyph class by mistake:
acutecmb (U+0301), brevecmb (U+0306), caroncmb (U+030C), cedillacmb (U+0327), circumflexcmb (U+0302), commaaccent (U+0326), commaturnedabovecmb (U+0312), dieresiscmb (U+0308), dotaccentcmb (U+0307), gravecmb (U+0300), hungarumlautcmb (U+030B), macroncmb (U+0304), ml_candrabindu (U+0D01), ml_circular_virama (U+0D3C), ml_combining_anusvara_above (U+0D00), ml_vertical_bar_virama (U+0D3B), ml_virama (U+0D4D), ogonekcmb (U+0328), ringcmb (U+030A) and tildecmb (U+0303)</p>
 [code: spacing-mark-glyphs]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check mark characters are in GDEF mark glyph class. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/opentype.gdef.html#"></a></summary>
    <div>


> 
> Mark characters should be in the GDEF mark glyph class.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/2877





* ⚠️ **WARN** <p>The following mark characters could be in the GDEF mark glyph class:
ml_sign_u (U+0D41), ml_sign_uu (U+0D42), ml_sign_vocalic_l (U+0D62), ml_sign_vocalic_ll (U+0D63), ml_sign_vocalic_r (U+0D43), ml_sign_vocalic_rr (U+0D44), uni951 (U+0951) and uni952 (U+0952)</p>
 [code: mark-chars]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check GDEF mark glyph class doesn't have characters that are not marks. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/opentype.gdef.html#"></a></summary>
    <div>


> 
> Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
> if they have mark anchors.
> 
> Only combining mark glyphs should be in that class. Any non-mark glyph
> must not be in that class, in particular spacing glyphs.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/2877





* ⚠️ **WARN** <p>The following non-mark characters should not be in the GDEF mark glyph class:
U+0D4E</p>
 [code: non-mark-chars]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check accent of Lcaron, dcaron, lcaron, tcaron <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.html#"></a></summary>
    <div>


> 
> Lcaron, dcaron, lcaron, tcaron should NOT be composed with quoteright
> or quotesingle or comma or caron(comb). It should be composed with a
> distinctive glyph which doesn't look like an apostrophe.
> 
> Source:
> https://ilovetypography.com/2009/01/24/on-diacritics/
> http://diacritics.typo.cz/index.php?id=5
> https://www.typotheque.com/articles/lcaron
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/3308







* ⚠️ **WARN** <p>dcaron is decomposed and therefore could not be checked. Please check manually.</p>
 [code: decomposed-outline]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check math signs have the same width. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.html#"></a></summary>
    <div>


> 
> It is a common practice to have math signs sharing the same width
> (preferably the same width as tabular figures accross the entire font family).
> 
> This probably comes from the will to avoid additional tabular math signs
> knowing that their design can easily share the same width.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/3832





* ⚠️ **WARN** <p>The most common width is 424 among a set of 5 math glyphs.
The following math glyphs have a different width, though:</p>
<p>Width = 324:
less, greater</p>
<p>Width = 488:
multiply</p>
<p>Width = 446:
divide</p>
 [code: width-outliers]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check correctness of STAT table strings <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.stat.html#"></a></summary>
    <div>


> 
> On the STAT table, the "Italic" keyword must not be used on AxisValues
> for variation axes other than 'ital'.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/2863





* ⚠️ **WARN** <p>The following AxisValue entries on the STAT table should not contain &quot;Italic&quot;:
['nameID 282: Italic']</p>
<p><em>Overridden</em>: This check was originally a FAIL but was
overridden by the configuration file.</p>
 [code: bad-italic]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Glyph names are all valid? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/universal.glyphnames.html#"></a></summary>
    <div>


> 
> Microsoft's recommendations for OpenType Fonts states the following:
> 
> 'NOTE: The PostScript glyph name must be no longer than 31 characters,
> include only uppercase or lowercase English letters, European digits,
> the period or the underscore, i.e. from the set `[A-Za-z0-9_.]` and
> should start with a letter, except the special glyph name `.notdef`
> which starts with a period.'
> 
> https://learn.microsoft.com/en-us/typography/opentype/otspec181/recom#-post--table
> 
> 
> In practice, though, particularly in modern environments, glyph names
> can be as long as 63 characters.
> 
> According to the "Adobe Glyph List Specification" available at:
> 
> https://github.com/adobe-type-tools/agl-specification
> 




> Original proposal: legacy:check/058
> See also: https://github.com/fonttools/fontbakery/issues/2832





* ⚠️ **WARN** <p>The following glyph names may be too long for some legacy systems which may expect a maximum 31-characters length limit:
ml_da_virama_dha_virama_ra_sign_u, ml_da_virama_dha_virama_ra_sign_uu, ml_fraction_one_one_hundred_and_sixtieth, ml_ga_virama_da_virama_dha_sign_u, ml_ga_virama_da_virama_dha_sign_uu, ml_ga_virama_da_virama_dha_virama_ra, ml_ga_virama_da_virama_dha_virama_ra_sign_u, ml_ga_virama_da_virama_dha_virama_ra_sign_uu, ml_ka_virama_ka_virama_ra_sign_u, ml_ka_virama_ka_virama_ra_sign_uu, ml_ka_virama_ta_virama_ra_sign_u, ml_ka_virama_ta_virama_ra_sign_uu, ml_ma_virama_pa_virama_ra_sign_u, ml_ma_virama_pa_virama_ra_sign_uu, ml_na_virama_da_virama_ra_sign_u, ml_na_virama_da_virama_ra_sign_uu, ml_na_virama_dha_virama_ra_sign_u, ml_na_virama_dha_virama_ra_sign_uu, ml_na_virama_ta_virama_ra_sign_u, ml_na_virama_ta_virama_ra_sign_uu, ml_nga_virama_ka_virama_ra_sign_u, ml_nga_virama_ka_virama_ra_sign_uu, ml_nna_virama_tta_virama_ra_sign_u, ml_nna_virama_tta_virama_ra_sign_uu, ml_ta_virama_sa_virama_ra_sign_u, ml_ta_virama_sa_virama_ra_sign_uu, ml_ta_virama_ta_virama_ra_sign_u and ml_ta_virama_ta_virama_ra_sign_uu</p>
 [code: legacy-long-names]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check the direction of the outermost contour in each glyph <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/outline.html#"></a></summary>
    <div>


> 
> In TrueType fonts, the outermost contour of a glyph should be oriented
> clockwise, while the inner contours should be oriented counter-clockwise.
> Getting the path direction wrong can lead to rendering issues in some
> software.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/2056





* ⚠️ **WARN** <p>The following glyphs have a counter-clockwise outer contour:</p>
<pre><code>* Cdotaccent (U+010A) has a counter-clockwise outer contour

* Edotaccent (U+0116) has a counter-clockwise outer contour

* Gdotaccent (U+0120) has a counter-clockwise outer contour

* Idotaccent (U+0130) has a counter-clockwise outer contour

* Lcaron (U+013D) has a counter-clockwise outer contour

* Lcedilla (U+013B) has a counter-clockwise outer contour

* Lcedilla (U+013B) has a counter-clockwise outer contour

* Scommaaccent (U+0218) has a counter-clockwise outer contour

* Scommaaccent (U+0218) has a counter-clockwise outer contour

* Tcommaaccent (U+021A) has a counter-clockwise outer contour

* Tcommaaccent (U+021A) has a counter-clockwise outer contour

* Zdotaccent (U+017B) has a counter-clockwise outer contour

* caroncmbalt has a counter-clockwise outer contour

* cdotaccent (U+010B) has a counter-clockwise outer contour

* comma (U+002C) has a counter-clockwise outer contour

* comma (U+002C) has a counter-clockwise outer contour

* commaaccent (U+0326) has a counter-clockwise outer contour

* commaaccent (U+0326) has a counter-clockwise outer contour

* dotaccent (U+02D9) has a counter-clockwise outer contour

* dotaccentcmb (U+0307) has a counter-clockwise outer contour

* edotaccent (U+0117) has a counter-clockwise outer contour

* gdotaccent (U+0121) has a counter-clockwise outer contour

* lcaron (U+013E) has a counter-clockwise outer contour

* ml_dot_reph (U+0D4E) has a counter-clockwise outer contour

* ncedilla (U+0146) has a counter-clockwise outer contour

* ncedilla (U+0146) has a counter-clockwise outer contour

* quotedblleft (U+201C) has a counter-clockwise outer contour

* quotedblleft (U+201C) has a counter-clockwise outer contour

* quotedblleft (U+201C) has a counter-clockwise outer contour

* quotedblleft (U+201C) has a counter-clockwise outer contour

* quotedblright (U+201D) has a counter-clockwise outer contour

* quotedblright (U+201D) has a counter-clockwise outer contour

* quotedblright (U+201D) has a counter-clockwise outer contour

* quotedblright (U+201D) has a counter-clockwise outer contour

* quoteleft (U+2018) has a counter-clockwise outer contour

* quoteleft (U+2018) has a counter-clockwise outer contour

* quoteright (U+2019) has a counter-clockwise outer contour

* quoteright (U+2019) has a counter-clockwise outer contour

* quotesinglbase (U+201A) has a counter-clockwise outer contour

* quotesinglbase (U+201A) has a counter-clockwise outer contour

* scommaaccent (U+0219) has a counter-clockwise outer contour

* scommaaccent (U+0219) has a counter-clockwise outer contour

* semicolon (U+003B) has a counter-clockwise outer contour

* semicolon (U+003B) has a counter-clockwise outer contour

* semicolon (U+003B) has a counter-clockwise outer contour

* tcaron (U+0165) has a counter-clockwise outer contour

* tcommaaccent (U+021B) has a counter-clockwise outer contour

* tcommaaccent (U+021B) has a counter-clockwise outer contour

* zdotaccent (U+017C) has a counter-clockwise outer contour
</code></pre>
 [code: ccw-outer-contour]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check for codepoints not covered by METADATA subsets. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.subsets.html#"></a></summary>
    <div>


> 
> This check ensures that all encoded glyphs in the font are covered by a
> subset declared in the METADATA.pb. Google Fonts splits the font into
> a set of subset fonts based on the contents of the `subsets` field and
> the subset definitions in the `glyphsets` repository.
> 
> Any encoded glyphs which are not by any of these subset definitions
> will not be served in the subsetted fonts, and so will be unreachable to
> the end user.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/4097
> See also: https://github.com/fonttools/fontbakery/pull/4273





* ⚠️ **WARN** <p>The following codepoints supported by the font are not covered by
any subsets defined in the font's metadata file, and will never
be served. You can solve this by either manually adding additional
subset declarations to METADATA.pb, or by editing the glyphset
definitions.</p>
<ul>
<li>U+02C7 CARON: try adding one of: yi, tifinagh, canadian-aboriginal</li>
<li>U+02D8 BREVE: try adding one of: yi, canadian-aboriginal</li>
<li>U+02D9 DOT ABOVE: try adding one of: yi, canadian-aboriginal</li>
<li>U+02DB OGONEK: try adding one of: yi, canadian-aboriginal</li>
<li>U+02DD DOUBLE ACUTE ACCENT: not included in any glyphset definition</li>
<li>U+0302 COMBINING CIRCUMFLEX ACCENT: try adding one of: cherokee, tifinagh, coptic, math</li>
<li>U+0306 COMBINING BREVE: try adding one of: tifinagh, old-permic</li>
<li>U+030A COMBINING RING ABOVE: try adding syriac</li>
<li>U+030B COMBINING DOUBLE ACUTE ACCENT: try adding one of: cherokee, osage</li>
<li>U+030C COMBINING CARON: try adding one of: cherokee, tai-le</li>
<li>U+0312 COMBINING TURNED COMMA ABOVE: not included in any glyphset definition</li>
<li>U+0326 COMBINING COMMA BELOW: not included in any glyphset definition</li>
<li>U+0327 COMBINING CEDILLA: not included in any glyphset definition</li>
<li>U+0328 COMBINING OGONEK: not included in any glyphset definition</li>
<li>U+03A9 GREEK CAPITAL LETTER OMEGA: try adding one of: math, elbasan, greek</li>
<li>U+03C0 GREEK SMALL LETTER PI: try adding one of: math, yi, greek</li>
<li>U+2E42 DOUBLE LOW-REVERSED-9 QUOTATION MARK: not included in any glyphset definition</li>
</ul>
<p>Or you can add the above codepoints to one of the subsets supported by the font: <code>latin</code>, <code>latin-ext</code>, <code>malayalam</code></p>
 [code: unreachable-subsetting]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Shapes languages in all GF glyphsets. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.glyphset.html#"></a></summary>
    <div>


> 
> This check uses a heuristic to determine which GF glyphsets a font supports.
> Then it checks the font for correct shaping behaviour for all languages in
> those glyphsets.
> 




> Original proposal: https://github.com/googlefonts/fontbakery/issues/4147





* ⚠️ **WARN** <p>GF_Latin_Core glyphset:</p>
<table>
<thead>
<tr>
<th align="left">Language</th>
<th align="left">FAIL messages</th>
</tr>
</thead>
<tbody>
<tr>
<td align="left">nl_Latn (Dutch)</td>
<td align="left">Shaper didn't attach acutecmb to j</td>
</tr>
<tr>
<td align="left">^</td>
<td align="left">Shaper didn't attach acutecmb to J</td>
</tr>
</tbody>
</table>
<p><em>Overridden</em>: This check was originally a FAIL but was
overridden by the configuration file.</p>
 [code: failed-language-shaping]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Checking file is named canonically. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.html#"></a></summary>
    <div>


> 
> A font's filename must be composed as "<familyname>-<stylename>.ttf":
> 
> - Nunito-Regular.ttf
> 
> - Oswald-BoldItalic.ttf
> 
> 
> Variable fonts must list the axis tags in alphabetical order in
> square brackets and separated by commas:
> 
> - Roboto[wdth,wght].ttf
> 
> - Familyname-Italic[wght].ttf
> 




> Original proposal: legacy:check/001





* ⚠️ **WARN** <p>Expected &quot;Malini[opsz,slnt,wdth,wght].ttf. Got Malini-VF.ttf.</p>
<p><em>Overridden</em>: This check was originally a FAIL but was
overridden by the configuration file.</p>
 [code: bad-filename]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Check variable font instances <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.varfont.html#"></a></summary>
    <div>


> 
> Check a font's fvar instance coordinates comply with our guidelines:
> https://googlefonts.github.io/gf-guide/variable.html#fvar-instances
> 




> Original proposal: https://github.com/fonttools/fontbakery/pull/3800





* ⚠️ **WARN** <p>fvar instances are incorrect:</p>
<ul>
<li>Add missing instances</li>
<li>Delete additional instances</li>
</ul>
<table>
<thead>
<tr>
<th align="left">Name</th>
<th align="left">current</th>
<th align="left">expected</th>
</tr>
</thead>
<tbody>
<tr>
<td align="left">Expanded</td>
<td align="left">wght=400.0, wdth=125.0, slnt=0.0, opsz=12.0</td>
<td align="left">N/A</td>
</tr>
<tr>
<td align="left">Display</td>
<td align="left">wght=400.0, wdth=100.0, slnt=0.0, opsz=48.0</td>
<td align="left">N/A</td>
</tr>
<tr>
<td align="left">Oblique</td>
<td align="left">wght=400.0, wdth=100.0, slnt=-12.0, opsz=12.0</td>
<td align="left">N/A</td>
</tr>
<tr>
<td align="left">Black Oblique</td>
<td align="left">wght=900.0, wdth=100.0, slnt=-12.0, opsz=12.0</td>
<td align="left">N/A</td>
</tr>
<tr>
<td align="left">Text</td>
<td align="left">wght=400.0, wdth=100.0, slnt=0.0, opsz=10.0</td>
<td align="left">N/A</td>
</tr>
<tr>
<td align="left">SemiCondensed</td>
<td align="left">wght=400.0, wdth=87.5, slnt=0.0, opsz=12.0</td>
<td align="left">N/A</td>
</tr>
<tr>
<td align="left">Condensed</td>
<td align="left">wght=400.0, wdth=75.0, slnt=0.0, opsz=12.0</td>
<td align="left">N/A</td>
</tr>
<tr>
<td align="left">SemiExpanded</td>
<td align="left">wght=400.0, wdth=112.5, slnt=0.0, opsz=12.0</td>
<td align="left">N/A</td>
</tr>
<tr>
<td align="left">Thin Italic</td>
<td align="left">N/A</td>
<td align="left">wght=100.0, wdth=100.0, slnt=-12.0, opsz=12.0</td>
</tr>
<tr>
<td align="left">Thin</td>
<td align="left">wght=100.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
<td align="left">wght=100.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
</tr>
<tr>
<td align="left">ExtraLight Italic</td>
<td align="left">N/A</td>
<td align="left">wght=200.0, wdth=100.0, slnt=-12.0, opsz=12.0</td>
</tr>
<tr>
<td align="left">ExtraLight</td>
<td align="left">wght=200.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
<td align="left">wght=200.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
</tr>
<tr>
<td align="left">Light Italic</td>
<td align="left">N/A</td>
<td align="left">wght=300.0, wdth=100.0, slnt=-12.0, opsz=12.0</td>
</tr>
<tr>
<td align="left">Light</td>
<td align="left">wght=300.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
<td align="left">wght=300.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
</tr>
<tr>
<td align="left">Italic</td>
<td align="left">N/A</td>
<td align="left">wght=400.0, wdth=100.0, slnt=-12.0, opsz=12.0</td>
</tr>
<tr>
<td align="left">Regular</td>
<td align="left">wght=400.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
<td align="left">wght=400.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
</tr>
<tr>
<td align="left">Medium Italic</td>
<td align="left">N/A</td>
<td align="left">wght=500.0, wdth=100.0, slnt=-12.0, opsz=12.0</td>
</tr>
<tr>
<td align="left">Medium</td>
<td align="left">wght=500.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
<td align="left">wght=500.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
</tr>
<tr>
<td align="left">SemiBold Italic</td>
<td align="left">N/A</td>
<td align="left">wght=600.0, wdth=100.0, slnt=-12.0, opsz=12.0</td>
</tr>
<tr>
<td align="left">SemiBold</td>
<td align="left">wght=600.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
<td align="left">wght=600.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
</tr>
<tr>
<td align="left">Bold Italic</td>
<td align="left">N/A</td>
<td align="left">wght=700.0, wdth=100.0, slnt=-12.0, opsz=12.0</td>
</tr>
<tr>
<td align="left">Bold</td>
<td align="left">wght=700.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
<td align="left">wght=700.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
</tr>
<tr>
<td align="left">ExtraBold Italic</td>
<td align="left">N/A</td>
<td align="left">wght=800.0, wdth=100.0, slnt=-12.0, opsz=12.0</td>
</tr>
<tr>
<td align="left">ExtraBold</td>
<td align="left">wght=800.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
<td align="left">wght=800.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
</tr>
<tr>
<td align="left">Black Italic</td>
<td align="left">N/A</td>
<td align="left">wght=900.0, wdth=100.0, slnt=-12.0, opsz=12.0</td>
</tr>
<tr>
<td align="left">Black</td>
<td align="left">wght=900.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
<td align="left">wght=900.0, wdth=100.0, slnt=0.0, opsz=12.0</td>
</tr>
</tbody>
</table>
<p><em>Overridden</em>: This check was originally a FAIL but was
overridden by the configuration file.</p>
 [code: bad-fvar-instances]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Is there kerning info for non-ligated sequences? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.gpos.html#"></a></summary>
    <div>


> 
> Fonts with ligatures should have kerning on the corresponding non-ligated
> sequences for text where ligatures aren't used
> (eg https://github.com/impallari/Raleway/issues/14).
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/1145





* ⚠️ **WARN** <p>GPOS table lacks kerning info for the following non-ligated sequences:</p>
<pre><code>- f + f

- f + i

- f + t

- i + j

- t + t
</code></pre>
 [code: lacks-kern-info]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Are there caret positions declared for every ligature? <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.gdef.html#"></a></summary>
    <div>


> 
> All ligatures in a font must have corresponding caret (text cursor) positions
> defined in the GDEF table, otherwhise, users may experience issues with
> caret rendering.
> 
> If using GlyphsApp or UFOs, ligature carets can be defined as anchors with
> names starting with `caret_`. These can be compiled with fontmake as of
> version v2.4.0.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/1225





* ⚠️ **WARN** <p>This font lacks caret position values for ligature glyphs on its GDEF table.</p>
 [code: lacks-caret-pos]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Ensure variable fonts include an avar table. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.varfont.html#"></a></summary>
    <div>


> 
> Most variable fonts should include an avar table to correctly define
> axes progression rates.
> 
> For example, a weight axis from 0% to 100% doesn't map directly to 100 to 1000,
> because a 10% progression from 0% may be too much to define the 200,
> while 90% may be too little to define the 900.
> 
> If the progression rates of axes is linear, this check can be ignored.
> Fontmake will also skip adding an avar table if the progression rates
> are linear. However, we still recommend designers visually proof each
> instance is at the expected weight, width etc.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/3100





* ⚠️ **WARN** <p>This variable font does not have an avar table.</p>
 [code: missing-avar]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Ensure fonts have ScriptLangTags declared on the 'meta' table. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.meta.html#"></a></summary>
    <div>


> 
> The OpenType 'meta' table originated at Apple. Microsoft added it to OT with
> just two DataMap records:
> 
> - dlng: comma-separated ScriptLangTags that indicate which scripts,
> or languages and scripts, with possible variants, the font is designed for.
> 
> - slng: comma-separated ScriptLangTags that indicate which scripts,
> or languages and scripts, with possible variants, the font supports.
> 
> 
> The slng structure is intended to describe which languages and scripts the
> font overall supports. For example, a Traditional Chinese font that also
> contains Latin characters, can indicate Hant,Latn, showing that it supports
> Hant, the Traditional Chinese variant of the Hani script, and it also
> supports the Latn script.
> 
> The dlng structure is far more interesting. A font may contain various glyphs,
> but only a particular subset of the glyphs may be truly "leading" in the design,
> while other glyphs may have been included for technical reasons. Such a
> Traditional Chinese font could only list Hant there, showing that it’s designed
> for Traditional Chinese, but the font would omit Latn, because the developers
> don’t think the font is really recommended for purely Latin-script use.
> 
> The tags used in the structures can comprise just script, or also language
> and script. For example, if a font has Bulgarian Cyrillic alternates in the
> locl feature for the cyrl BGR OT languagesystem, it could also indicate in
> dlng explicitly that it supports bul-Cyrl. (Note that the scripts and languages
> in meta use the ISO language and script codes, not the OpenType ones).
> 
> This check ensures that the font has the meta table containing the
> slng and dlng structures.
> 
> All families in the Google Fonts collection should contain the 'meta' table.
> Windows 10 already uses it when deciding on which fonts to fall back to.
> The Google Fonts API and also other environments could use the data for
> smarter filtering. Most importantly, those entries should be added
> to the Noto fonts.
> 
> In the font making process, some environments store this data in external
> files already. But the meta table provides a convenient way to store this
> inside the font file, so some tools may add the data, and unrelated tools
> may read this data. This makes the solution much more portable and universal.
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/3349





* ⚠️ **WARN** <p>This font file does not have a 'meta' table.</p>
 [code: lacks-meta-table]



</div>
</details>

<details>
    <summary>⚠️ <b>WARN</b> Validate STAT particle names and values match the fallback names in GFAxisRegistry. <a href="https://fontbakery.readthedocs.io/en/stable/fontbakery/checks/googlefonts.axisregistry.html#"></a></summary>
    <div>


> 
> Check that particle names and values on STAT table match the fallback names
> in each axis entry at the Google Fonts Axis Registry, available at
> https://github.com/google/fonts/tree/main/axisregistry
> 




> Original proposal: https://github.com/fonttools/fontbakery/issues/3022





* ⚠️ **WARN** <p>On the font variation axis 'slnt', the name 'Upright' is not among the expected ones (Default) according to the Google Fonts Axis Registry.</p>
<p><em>Overridden</em>: This check was originally a FAIL but was
overridden by the configuration file.</p>
 [code: invalid-name]



* ⚠️ **WARN** <p>On the font variation axis 'slnt', the name 'Italic' is not among the expected ones (Default) according to the Google Fonts Axis Registry.</p>
<p><em>Overridden</em>: This check was originally a FAIL but was
overridden by the configuration file.</p>
 [code: invalid-name]



</div>
</details>
</div>
</details>




### Summary

| 💥 ERROR | ☠ FATAL | 🔥 FAIL | ⚠️ WARN | ⏩ SKIP | ℹ️ INFO | ✅ PASS | 🔎 DEBUG | 
| ---|---|---|---|---|---|---|---|
| 0 | 0 | 0 | 18 | 90 | 8 | 133 | 0 | 
| 0% | 0% | 0% | 7% | 36% | 3% | 53% | 0% | 



**Note:** The following loglevels were omitted in this report:


* SKIP
* INFO
* PASS
* DEBUG

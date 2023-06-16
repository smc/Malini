% DEVANAGARI STRESS SIGN ANUDATTA
input glyph;
beginglyph;
% This glyph does not slant. Reset slant value
slant := 0;
paths[0] = (-mw, -descent)--(0, -descent);
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(infinity)
)(paths[0])(strokes[0]);

lbearing:=0;
rbearing:=0;
endglyph;

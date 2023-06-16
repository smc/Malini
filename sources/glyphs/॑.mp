% DEVANAGARI STRESS SIGN UDATTA
input glyph;
beginglyph;
% This glyph does not slant. Reset slant value
slant := 0;
z0= (-rbearing, 1.2X);
z1=( x0, y0 - 0.4X);
paths[p] = z0..z1;
pen_stroke(
    nib(thinterminalnib rotated terminalangle 0 of paths[p])(0)
    nib(thinterminalnib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

rbearing:=0;
lbearing:=0;
endglyph;

input glyph;
beginglyph;

input ./glyphs/include/ഗ;

paths[p] := subpath (0, 4) of paths[p];
clearxy;
z6 = (xpart point infinity of paths[p] + mw/2.5, (m-overshoot+y7)/2);
z7 = (x6 - mw/3, (y6+y8)/2);
z8 = (x7 + mw/2.5, (y7+y9)/2);
z9 = (x8 - mw/2, undershoot);
paths[p] := paths[p] .. z6{down}..{left}z7{right}..z8{down}..{dir 150}z9;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_up_nib scaled 1.2 rotated 30)(1)
   nib(down_nib rotated -20)(2)
   nib(middle_down_nib)(3, 5)
   nib(top_nib)(4)
   nib(end_nib rotated 90)(6)
   nib(middle_down_nib)(7)
   nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

anchor( "vc", point 3 of paths[p]);
anchor( "right", point 7.5 of paths[p]);
endglyph;

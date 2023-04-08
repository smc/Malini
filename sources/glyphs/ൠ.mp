input glyph;
beginglyph;
input ./glyphs/include/ഋ;

clearxy;
z0 = (xpart(point 1 of paths[0]), -m/6);
z1 = (xpart(point 1 of paths[2]), y0);
z2 = (xpart(point 1 of paths[1]), y0);
paths[4] = z0{dir 110}..{dir -70}z1{dir 70}..{dir -110}z2;
pen_stroke(
 nib(end_nib)(0,1, 2)
)(paths[4])(strokes[4]);
endglyph;

input glyph;
beginglyph;
input ./glyphs/include/ശ;

p:=p+1;
input ./glyphs/include/ശ;
paths[p] := paths[p-1]  shifted (0.35mw, -1.1m) xscaled 0.8 yscaled 0.75;
strokes[p] := strokes[p-1]  shifted (0.35mw, -1.1m) xscaled 0.8 yscaled 0.75;

p:=p+1;
clearxy;
z0 = point 8.8 of paths[p-1];
z1 = (x0 + mw/2.25, (y0 + y2)/2);
z2 = (x1 - mw/2, y1 - m/3);
z3 = (x4 + mw/3, y2);
z4 = (xpart point 1 of paths[p-1], (y3+y5)/2);
z5 = (x3, y3- m/4);
z6 = (x1, y5);
paths[p]:= z0{dir angle(direction 8.8 of paths[p-1])}..z1{down}..z2---z3..z4..z5---z6;
pen_stroke(
   nib(end_nib scaled 0.8 rotated terminalangle 0 of paths[p])(0)
   nib(middle_down_nib scaled 0.8)(1)
   nib(down_nib scaled 0.8)(2,3)
   nib(down_nib scaled 0.8 rotated 90)(4)
   nib(thick_horizontal_nib scaled 0.8)(5,6)
)(paths[p])(strokes[p]);
endglyph;

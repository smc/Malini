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
z2 = (x1 - mw/4, (y0 + y4)/2);
z3 = (x2 + mw/3, (y2 + y4)/2);
z4 = (x3 - mw/3, y0 - 0.7m);
z5 = (x6 + mw/3, y4);
z6 = (xpart point 1 of paths[p-1], (y5+y7)/2);
z7 = (x5, y5 - m/4);
z8 = (x1+thick/2, y7);
paths[p]:= z0{dir angle(direction 8.8 of paths[p-1])}..z1{down}..{left}z2{right}..z3..z4---z5..z6..z7---z8;
pen_stroke(
   nib(end_nib scaled 0.8 rotated terminalangle 0 of paths[p])(0)
   nib(middle_down_nib scaled 0.8)(1, 3)
   nib(end_nib scaled 0.8 rotated 90)(2)
   nib(down_nib scaled 0.8) (4, 5)
   nib(down_nib scaled 0.8 rotated 90)(6)
   nib(thick_horizontal_nib scaled 0.8)(7,8)
)(paths[p])(strokes[p]);
rbearing:=-3rbearing;
endglyph;

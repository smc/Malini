input glyph;
beginglyph;
z0=(x1 + Xw/3, X-thick/2);
z1=(x3  , 0.8X);
z2=(x3, 3/4s);
z3=(sw/4, 0);
paths[0] = z0{dir 150}..{down}z1 ..{down}z2---z3;

%bar
z4 = (0, s);
z5 = (x4 + 0.85Xw, y4);

paths[1] = z4--z5;
pen_stroke(
    nib(thick_vertical_nib)(2,3)
    nib(thick_vertical_nib)(1)
    nib(end_nib rotated terminalangle 0 of paths[0])(0)
)(paths[0])(strokes[0]);
pen_stroke(
   nib(end_nib rotated 90)(0,1)
)(paths[1])(strokes[1]);

paths[2] := paths[0] shifted(xpart(point 3 of paths[0]) + sw/3, 0);
pen_stroke(
    nib(thick_vertical_nib)(2,3)
    nib(thick_vertical_nib)(1)
    nib(end_nib rotated terminalangle 0 of paths[0])(0)
)(paths[2])(strokes[2]);
rbearing:=-1*rbearing;
lbearing:=0;
endglyph;

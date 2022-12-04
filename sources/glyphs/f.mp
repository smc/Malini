input glyph;
beginglyph;
z0=(x1 + sw/4, 0.9X);
z1=(x3 + sw/6, X-thick/4);
z2=(x3, 3/4s);
z3=(sw/6, 0);
paths[0] = z0{dir 130}..z1{dir 200}..{down}z2---z3;

%bar
z4 = (0, 0.9s);
z5 = (x0, y4);

paths[1] = z4--z5;
pen_stroke(
    nib(thick_vertical_nib)(2,3)
    nib(top_nib)(1)
    nib(end_nib rotated terminalangle 0 of paths[0])(0)
)(paths[0])(strokes[0]);
pen_stroke(
   nib(end_nib rotated 90)(0,1)
)(paths[1])(strokes[1]);
rbearing:=-1*rbearing;
endglyph;

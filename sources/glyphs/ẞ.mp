input glyph;
beginglyph;

clearxy;
r = 0.5;
z0 = (0, 0.1X);
z1 = (x0 + Xw*r, .25X);
z2 = ((x0 + x1)/2, y1 + .25X);
z3=  (x0 + thick/4, y2 + .25X);
z4=  (1.5x2, X-overshoot);

paths[1] = z0{dir -40}..z1{up}..z2..z3{up}..{right}z4 ;
paths[1]:= paths[1] shifted(Xw/4, 0);
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[1])(0)
    nib(middle_down_nib)(1,3)
    cut(top_nib, 90)(infinity)
)(paths[1])(strokes[1]);
clearxy;
z0=(0,0);
z1=(0,0.8X);
z3=point infinity of paths[1];
paths[0]=z0---z1..{right}z3;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
    nib(top_nib)(2)
)(paths[0])(strokes[0]);
endglyph;

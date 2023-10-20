input glyph;
beginglyph;
z0= (0.7Xw, 0.5X);
z1 =((x0+x2)/2.5, undershoot);
z2 =(0, (y1+y3)/2);
z3 =(0.8x1, 0.55X);

paths[p] =z0..z1{left}..z2{up}..z3{right};
pen_stroke(
    cut(thick_nib rotated terminalangle 0 of paths[0], rel 90)(0)
    nib(down_nib)(1)
    nib(middle_down_nib)(2)
    cut(top_nib, -45)(3)
)(paths[p])(strokes[p]);
p:=p+1;

clearxy;
z0 =(Xw/2, 0.9X);
z6 =(0.25x0, 0.9y0);
z7 =(0.5x0, 0.6y0);
z8 =(1.5x0, 0);
paths[p] =z0{dir 150}..z6..z7---z8;
pen_stroke(
    cut(thick_nib rotated terminalangle 0 of paths[p], rel 90)(0)
    nib(middle_up_nib)(1)
    nib(thick_nib rotated terminalangle 3 of paths[p])(2,3)
)(paths[p])(strokes[p]);

endglyph;

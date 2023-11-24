input glyph;
beginglyph;
r = 0.8;
z0 = (Xw*r/3, 0);
z1 = (x0 + Xw*r/3, .25X);
z2 = (x0, y1 + .25X);
z3=  (x0 - Xw*r/3, y2 + .25X);
z4=  ((x3+x5)/2, X);
z5=  (x1*0.9, y3);
z6=  (x2, y2);

paths[0] =  z2..(x3, y1){down}..z0{right}..z1{up}..z2..z3{up}..z4{right}..z5{down}..z6 ;

pen_stroke(
    nib(middle_down_nib)(1, 3,5)
    nib(down_nib)(2)
    nib(top_nib)(6)
    cut(end_nib rotated terminalangle 0 of paths[p], 60)(0)
    cut(end_nib rotated terminalangle 8 of paths[0], 60)(8)
)(paths[0])(strokes[0]);

endglyph;

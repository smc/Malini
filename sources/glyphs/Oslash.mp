input glyph;
beginglyph;
z0=(0, X/2);
z1=(x0 + 0.4Xw, y0 + 0.5X - thick/4);
z2=(x1 + 0.4Xw, y0);
z3=(x1, undershoot);
z4=(x0, y0);

paths[0] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;

pen_stroke(
   nib(middle_down_nib)(0, 2, 4)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[0])(strokes[0]);

clearxy;
z0= (xpart(point 2 of paths[0]), X);
z1=( xpart(point 0 of paths[0]), -X*0.05);

paths[1] = z0--z1 ;


pen_stroke(
    nib(thick_vertical_nib rotated terminalangle 0 of paths[1])(0,1)
)(paths[1])(strokes[1]);

endglyph;

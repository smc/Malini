input glyph;
beginglyph;

clearxy;
z0= (0, 0);
z1= (x0, m/2);
z2= ((x1+x3)/2, m);
z3= (x0+ mw, y1);
z4= (x3, y0);
paths[0] = z0---z1..z2..z3---z4;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,4)
)(paths[0])(strokes[0]);

clearxy;
z0=point 0 of paths[0] + (0, thick*0.6/2);
z1=(xpart(point 4 of paths[0]), y0);
paths[1] = z0---z1;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[1])(strokes[1]);

clearxy;
z0= point 1.8 of paths[0];
z1= point 0 of paths[1];
paths[2] = z0{dir -20}..{dir 190}z1;
pen_stroke(
    nib(middle_down_nib rotated 20)(0)
    nib(end_nib rotated -45)(1)
)(paths[2])(strokes[2]);

anchor( "right", point 1 of paths[1] - (mw/5,0));


endglyph;

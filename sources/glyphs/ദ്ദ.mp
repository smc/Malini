input glyph;
beginglyph;

paths[p] =da;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib rotated 90)(4)
    nib(middle_down_nib)(5)
    nib(end_nib rotated 60)(6)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0 = point 5.7 of paths[0];
z1 = (x0 + mw/3.5, (y0 + y2)/2);
z2 = (x0, -descent);
z3 = (x2 - mw/4, y2 + mw/8);

paths[p] = z0{right}..z1..z2..z3 ;

pen_stroke(
    nib(top_nib)(0)
    nib(middle_down_nib)(1)
    nib(down_nib)(2)
    nib(end_nib rotated 60)(3)
)(paths[p])(strokes[p]);

anchor( "vc", point 2 of paths[0]);
anchor( "right", point 1.5 of paths[p]);

endglyph;

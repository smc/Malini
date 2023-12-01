input glyph;
beginglyph;
z0 = (x1 + mw*0.1, 0.4m);
z1 = (0, (y0+y2)/2);
z2 = ((x1 + x3)/2, m-overshoot);
z3 = (x1 + mw*0.56, .6m);
z4 = (x3, .4m);

paths[p] = z0..z1{up}..z2{right}..{down}z3---z4 ;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    cut(middle_down_nib, 0)(4)
)(paths[p])(strokes[p]);

clearxy;
p:= p+1;
z0 = point 4 of paths[p-1] +(thick/2-thin/2*middle_up_nib_scale, 0) ;
z1= (x0, 0.6m);
z1 = (x0, m*0.6);
z2 = ((x1 + x3)/2, m-overshoot);
z3 = (x1 + 0.6mw, (y2+y4)/1.75);
z4 = (x3 - 0.8mw, m/10);

paths[p] = z0 --- z1 ..z2{right}..z3{down}..{dir 150}z4;

pen_stroke(
    cut(middle_up_nib, 0)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

endglyph;

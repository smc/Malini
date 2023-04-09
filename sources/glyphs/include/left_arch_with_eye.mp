
z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, undershoot);
z4=(x0, y0);

paths[p] = z0{up}..z1{right}..z2{down}..z3{left}..{up}z4;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0 = point 4 of paths[p-1];
z1 = ( x0, (y0+y2)/2.5);
z2 = ( (x1 + x3)/2, m - overshoot); % top
z3 = ( x1 + 0.9mw, 0.6m);
z4 = ( x3, 0);

paths[p]= z0{up}..z1{up}..z2{right}..z3---z4 ;

pen_stroke(
    nib(middle_up_nib rotated terminalangle 4 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3,4)
)(paths[p])(strokes[p]);


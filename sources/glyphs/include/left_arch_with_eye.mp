
z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, undershoot);
z4=(x0, y0);

paths[p] := z0{up}..z1{right}..z2{down}..z3{left}..{up}z4;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0 = point 3.8 of paths[p-1];
z1 = ( (x0 + x2)/1.8, m - overshoot); % top
z2 = ( x0 + 0.9mw, 0.6m);
z3 = ( x2, 0);

paths[p] := z0{dir angle(direction 3.8 of paths[p-1])}..z1{right}..z2---z3 ;

pen_stroke(
    nib(middle_up_nib rotated terminalangle 4 of paths[p])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[p])(strokes[p]);


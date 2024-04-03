
z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, undershoot);
z4=(x0, y0);

paths[p]:=z0{up}..z1{right}..z2{down}..z3{left}..{up}z4;
paths[p]:=harmonize(paths[p]);
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
start_t = 3;
z0 = point start_t of paths[p-1];
z1 = (xpart point 9 of strokes[p-1], (y0+y2)/2);
z2 = ( (x1 + x3)/1.8, m - overshoot); % top
z3 = ( x1 + 0.9mw, 0.6m);
z4 = ( x3, 0);

paths[p]:=z0{dir angle(direction start_t of paths[p-1])}..z1{up} .. z2{right}..z3---z4 ;
paths[p]:=harmonize(paths[p]);
pen_stroke(
    nib(down_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[p])(strokes[p]);

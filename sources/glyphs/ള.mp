input glyph;
beginglyph;

z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.45m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, thick*0.6/2);
z4=(x0, y0);

paths[p] = z0{up}..z1{right}..z2{down}..z3{left}..{up}z4;
paths[p]:=paths[p] shifted (0, m/8);
paths[p]:=harmonize(paths[p]);
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)

)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0 = point 3.8 of paths[p-1];
z1 = ( x0, (y0 + y2)/2);
z2 = ( x1 + mw/1.66, m - overshoot); % top
z3 = ( x2 + mw/3, y2 - m/4);
z4 = ( x3 - mw/3, y3 - m/4); % <
z5 = ( x3+ mw/10, y4-m/4);
z6 = ( x4, 0);
z7 = ( xpart(point 1 of paths[p-1]), y6);
z8 = (xpart(point 0 of paths[p-1]), (y7+y9)/2);
z9= (x7, -descent*0.75);
z10 = (x5+ thick/2, y9);
paths[p]= z0..z1..z2..z3..{left}z4{right}..z5..z6---z7..z8..z9---z10;
paths[p]:=harmonize(paths[p]);
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib rotated 90)(4)
    nib(middle_down_nib)(5)
    nib(down_nib)(6)
    nib(down_nib)(7)
    nib(down_nib rotated 70)(8)
    nib(thick_horizontal_nib)(9,10)
)(paths[p])(strokes[p]);


anchor( "vc", (xpart(point 0 of paths[p]),0));

anchor( "right", (xpart point 11 of paths[p] - u_drop_sign_radius, ypart point 11 of strokes[p] + u_drop_sign_vshift));
endglyph;

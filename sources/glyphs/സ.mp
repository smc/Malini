input glyph;
beginglyph;
p=0;
z0=(x1+mw/4, 0);
z1=(0, m-m/1.6);
z2=((x1+x3)/2, 0.975m);
x3-x1 = mw*0.75;
z3=(x3, 2/3m);
z4=(x3,  y0); % bottom of piller
paths[p] = z0..z1..z2..{down}z3---z4 ;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3,4)
    ignore_directions(1,2)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=point infinity of paths[p-1] + (thin/2, 0);
z1=(x0, 2/3m);
z2=((x1+x3)/2, 0.975m); % Top of arch
x3-x1 = mw*0.6;
z3=(x3, m-m/3);
z4=(x3, m/3);
z5= ( x4+ mw/3, thick*0.6/2);
z6= ( x5 + mw/3, (y5+y7)/2);
z7= ( x2 + 3/4mw, m);

paths[p] = z0---z1..z2..z3---z4..z5..z6..z7;

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(middle_down_nib)(4)
    nib(down_nib)(5)
    nib(middle_up_nib)(6)
    nib(end_nib rotated terminalangle 7 of paths[p])(7)
    ignore_directions(2,5,6)
)(paths[p])(strokes[p]);


anchor( "vc", (x3,0));
anchor( "bottom", point 5 of paths[p]);
anchor( "right", point 5 of paths[p]);

endglyph;

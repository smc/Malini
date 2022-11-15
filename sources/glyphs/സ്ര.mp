input glyph;
beginglyph;

z0=(x1+mw/4, 0);
z1=(0, m-m/1.6);
z2=((x1+x3)/2, m);
x3-x1 = mw*0.75;
z3=(x3, m*0.6);
z4=(x3,  y0); % bottom of piller
paths[0] = z0..z1..z2..{down}z3---z4 ;
paths[0] := paths[0] shifted (mw/3,0);
pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[0])(strokes[0]);

clearxy;
z0=point 4 of paths[0] + (thick*0.60/2, 0);
z1=(x0, m*0.6);
z2=((x1+x3)/2, m); % Top of arch
x3-x1 = mw*0.6;
z3=(x3, m-m/3);
z4=(x3, m/3);
z5= ( x4+ mw/3, 0);
z6= ( x5 + mw/3, (y5+y7)/2);
z7= ( x2 + 3/4mw, y2);

paths[1] = z0---z1..z2..{down}z3---z4..z5..z6..z7;

pen_stroke(
   nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(middle_down_nib)(4)
    nib(down_nib)(5)
    nib(middle_up_nib)(6)
    nib(top_nib rotated -45)(7)
)(paths[1])(strokes[1]);


clearxy;
z0 = point 6 of paths[1];
z1 = (xpart(point 4 of paths[1]), -descent - thick/2 );
z2 = (xpart(point 2.25 of paths[0]), -descent - thick/2);
z3 = (xpart(point 1 of paths[0]) - mw/3, ypart(point 1 of paths[0]));
z4 = (x3 + mw/10, m);
paths[2] =  z0{dir -80}..{dir 190}z1..z2{dir 170}..z3..z4;

pen_stroke(
    nib(middle_up_nib)(0)
    nib(thicknib)(1,2)
    nib(middle_up_nib)(3)
    nib(top_nib rotated 90)(4)
)(paths[2])(strokes[2]);


anchor( "vc", (x3,0));
anchor( "right", point .6 of paths[2]);

endglyph;

input glyph;
beginglyph;

z0=(x1+mw/4, 0);
z1=(0, m-m/1.6);
z2=((x1+x3)/2, m);
x3-x1 = mw*0.75;
z3=(x3, m*0.6);
z4=(x3,  y0); % bottom of piller
paths[0] = z0..z1..z2..{down}z3---z4 ;
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
z0= (x1 + mw/3, 0);
z1= (0, y0 + mw/2);
z2 = ( x1 + mw/2, y1 + m/2); % top
z3 = ( x2 + mw/2, y2 - m/2);
z4 = ( x3 - mw/3, y3 - m/2 + thick/2); % bottom middle
z5 = ( x4 - mw/3, y4 + m/2 - thick/2);
z6 = ( x5 + mw/2, y2); % second top
z7 = ( x6 + mw/2, y1);
z8 = ( x7 - mw/3, y0); %
paths[2] = (z0..z1..z2{right}..z3..{left}z4) slanted tand(-8);
paths[2] := paths[2] && (z4{left}..z5..z6{right}..z7..z8) slanted tand(8);
paths[2] := paths[2] shifted(m*0.75,-0.9m) xscaled 0.8 yscaled 0.7;

pen_stroke(
    nib(thicknib)(0, 2, 4,6,)
    nib(thinnib)(1, 3, 5, 7)
    nib(terminalnib rotated terminalangle 0 of paths[2])(0)
    nib(terminalnib rotated terminalangle infinity of paths[2])(infinity)
)(paths[2])(strokes[2]);

anchor( "vc", (x3,0));
anchor( "bottom", point 3.3 of paths[1]);
anchor( "right", point 3.3 of paths[1]);

endglyph;

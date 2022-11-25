input glyph;
beginglyph;
z0=(x1 + mw/6 , 0);
y2 - y1 = y2/1.6;
z1=(0, y1);
z2=((x1+x3)/2, m/2);
x3-x1 = mw*0.5;
z3=(x3, y1);
z4=(x3 - mw/6, 0);
paths[0] := z0..z1..z2..z3..z4;
paths[0] := paths[0] shifted (mw/3,0);
pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated 45)(4)
)(paths[0])(strokes[0]);

clearxy;
z0=  (0,0);
z1=(x0 + 0.75mw, y0);
z2=(x1, m);

paths[1]:= z0--z1 ;
paths[1]:= paths[1] shifted ( point 4 of paths[0] + ( thick*0.5, (thick*0.60)/2) );

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[1])(strokes[1]);

clearxy;
z0=(0, 0);
z1=(x0, m);

paths[2]:= z0--z1;
paths[2]:= paths[2] shifted (xpart(point 1 of paths[1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[2])(strokes[2]);


clearxy;
z0 = point 1 of paths[1];
z1 = (xpart(point 0.5 of paths[1]), -descent  );
z2 = (xpart(point 2 of paths[0]), y1);
z3 = (xpart(point 1 of paths[0]) - mw/3, ypart(point 1 of paths[0]));
z4 = (xpart(point 1 of paths[0]), m);
paths[3] =  z0{down}..{dir 190}z1..z2{dir 170}..z3..z4;

pen_stroke(
    nib(middle_down_nib)(0)
    nib(thicknib)(1,2)
    nib(middle_up_nib)(3)
    nib(top_nib rotated 45)(4)
)(paths[3])(strokes[3]);

anchor( "vc", point 3 of paths[0]);
anchor( "right", (point .6 of paths[3]));
endglyph;

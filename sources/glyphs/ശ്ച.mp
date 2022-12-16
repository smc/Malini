input glyph;
beginglyph;
p:=0;
z0 = (x1 + mw/4, m);
z1 = (0, y0 - m/2);
z2 = (x1 + mw/3, thick*0.5/2);
z3 = (x2 + mw/3, 0.4m);
z4 = (x3, y5-0.4m);
z5 = (x4 + mw/3, y0-thick*0.5/2);
z6 = (x5 + mw/2, y1);
z7 = (x6 - mw/4, y2);
z8 = (x7 - mw/4, y6);
z9 = (x8 + mw/2, y5 - m/4);
z10 = (x9 + mw/4, thick*0.5/2);

paths[p] = z0{dir 215}..z1..z2..z3 --- z4..z5.. z6.. z7..{dir 60}z8..z9..{dir -165}z10;

pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(down_nib)(2)
    nib(middle_down_nib)(3,4, 6)
    nib(top_nib)(5)
    nib(down_nib)(7)
    nib(middle_up_nib)(8)
    nib(top_nib)(9)
    nib(down_nib rotated 90)(10)
)(paths[p])(strokes[p]);
p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0 + 0.75mw, y0);
paths[p] := z0--z1;
paths[p] := paths[p] shifted (point infinity of paths[p-1] - (mw/4,0));
pen_stroke(
    nib(thin_horizontal_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]), 0);
z1=(x0, m);
paths[p] := z0--z1;

pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

anchor( "vc", point 9 of paths[0]);
anchor( "right", point 1 of paths[p-1] - (mw/5, 0) );

endglyph;

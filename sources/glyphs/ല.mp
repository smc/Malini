input glyph;
beginglyph;
p=0;
clearxy;
z0=(0, 0.45m);
z1=(x0 + 0.75mw, y0);

paths[p] = z0 --z1 ;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[0]), ypart(point 1 of paths[0]) - thick*0.6/2);
z1=(x0, 0.6m);
z2=(xpart(point 0.5 of paths[0]), m);
z3=(0, y1);
z4=(0, 0);

paths[p]:= z0{up}..z1..{left}z2...z3---z4;
pen_stroke(
    nib(middle_up_nib )(0,1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3, 4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0, thick*0.6/2);
z1=(x0 + mw*1.2, y0);
paths[p]:= z0--z1;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0, 0);
z1=(x0, m);

paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point infinity of paths[p-1]), 0) ;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[p-1]);
anchor( "bottom", point 0 of paths[p]);
anchor( "right", point 0 of paths[p] - (mw/5,0) );

endglyph;
input glyph;
beginglyph;

input ./glyphs/include/സ;

p:=p+1;
clearxy;
z0=(0, thick*sind(45)/2);
z1=(mw*1.4, y0);
paths[p]:= z0--z1 ;
paths[p]:=paths[p] shifted (xpart point 5.4 of paths[p-1]  +  thick*0.5, 0) ;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]), 0);
z1=(x0, m/2);
z2=((x1+x3)/2, m);
z3=(x0 - mw*0.8, y1);
z4=(x3, ypart(point infinity of paths[p-1]));
paths[p]:= z0---z1..z2..z3---z4 ;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,4)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart( point 4 of paths[p]),0));
anchor( "right", (xpart(point 0 of paths[p]) - mw/5,0));

endglyph;

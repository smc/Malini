input glyph;
beginglyph;

input ./glyphs/include/സ;

p:=p+1;
clearxy;
z0=(0, thick*thin_horizontal_nib_scale/2);
z1=(mw*1.4, y0);
paths[p]:= z0--z1 ;
paths[p]:=paths[p] shifted (xpart point 5.25 of paths[p-1], 0) ;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]), 0);
z1=(x0, (y0+ y2)/1.75);
z2=((x1+x3)/2, m-overshoot);
z3=(x0 - mw*0.8, (y2+ y4)/2);
z4=(x3, ypart(point infinity of paths[p-1]));
paths[p]:= z0---z1..z2..z3---z4 ;
paths[p]:=harmonize(paths[p]);
pen_stroke(
    cut(middle_up_nib, 0)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,4)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart( point 4 of paths[p]),0));
anchor( "right", (xpart(point 0 of paths[p]) - mw/5,0));

endglyph;

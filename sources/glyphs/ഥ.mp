input glyph;
beginglyph;
z0=(0, m);
z1=(x0, 0);
paths[0] = z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[0])(strokes[0]);

p:=p+1;
clearxy;
z0=(0,thick*thin_horizontal_nib_scale/2);
z1=(m*1.25, y0);
paths[p]:= z0--z1 ;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]), 0);
z1=(x0, m/2);
z2=((x1+x3)/2, m-overshoot);
z3=(x0 - mw*0.8, y1);
z4=(x3,ypart(point infinity of paths[p-1]));
paths[p]:= z0---z1..z2..z3---z4 ;
pen_stroke(
    nib(thin_vertical_nib)(0,1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,4)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart( point 4 of paths[p]),0));

anchor( "right", point infinity of paths[p-1] - (mw/5,0) );
endglyph;

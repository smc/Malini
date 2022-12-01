input glyph;
beginglyph;
p=0;
z0=(x1+mw/4, 0);
z1=(0, m-m/1.6);
z2=((x1+x3)/2, 0.975m);
x3-x1 = mw*0.75;
z3=(x3, m*0.6);
z4=(x3,  y0); % bottom of piller
paths[p] = z0..z1..z2..{down}z3---z4 ;
pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=point infinity of paths[p-1] + (thick*0.60/2, 0);
z1=(x0, m*0.6);
z2=((x1+x3)/2, 0.975m); % Top of arch
x3-x1 = mw*0.6;
z3=(x3, m-m/3);
z4=(x3, m/3);
z5= ( x4+ mw/3, thick*0.6/2);
z6= ( x5 + mw/3, (y5+y7)/2);
z7= ( x2 + 3/4mw, y2);

paths[p] = z0---z1..z2..z3---z4..z5..z6..z7;

pen_stroke(
   nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(middle_down_nib)(4)
    nib(down_nib)(5)
    nib(middle_up_nib)(6)
    nib(top_nib rotated -45)(7)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, thick*0.60/2);
z1=(m*1.5, y0);
paths[p]:= z0--z1 ;
paths[p]:=paths[p] shifted (point 5 of paths[p-1]  + ( thick*0.5, 0)) ;
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
z4=(x3,ypart(point infinity of paths[p-1]));
paths[p]:= z0---z1..z2..z3---z4 ;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart( point 4 of paths[p]),0));
anchor( "right", (xpart(point 0 of paths[p]) - mw/5,0));

endglyph;

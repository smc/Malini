input glyph;
beginglyph;

p=0;
paths[p] := left_arch_with_eye;
pen_stroke(
    nib(middle_up_nib scaled 0.6)(0)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
    nib(thick_vertical_nib)(6,7,8)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = right_arch shifted point infinity of paths[p-1];

pen_stroke(
   nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 0.7mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[2] shifted ( xpart(point 4 of paths[p-1]) +  thick*0.5, thick*sind(45)/2);

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0, m);
paths[p] = z0--z1;
paths[p] := paths[3] shifted (xpart(point 1 of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);


% Shoe
clearxy;
p:=p+1;
z0 = point .5 of paths[p-2];
z1 = (x0 - mw/3, -descent*0.8) ;
z2 = (xpart(point 2 of paths[p-2]), y1) ;
paths[p] := z0{down}..z1--z2;
pen_stroke(
    nib(top_nib rotated 45)(0,1,2)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=point infinity of paths[p-1] - (0, thick*0.5/2);
z1 = point 1.6 of paths[p-2];
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point 5 of paths[0]),0));
anchor( "right", point 2 of paths[p-1] - (mw/5, 0));
endglyph;

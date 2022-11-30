input glyph;
beginglyph;
p:=0;
clearxy;
z0=(x1 + mw/12, y2-m/2);
z1=(mw/4, y0 + m/4);
z2=((x1 + x3)/2, 0.8m);
z3=(x0 + mw/2, 0.6y2);
z4=(x1, thick*0.6/2);

paths[0] = z0..z1..z2..z3..{left}z4 ;

pen_stroke(
    nib(start_up_nib)(0 )
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib rotated 45)(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, ypart(point infinity of paths[p-1]));
z1=(x0 + 1.25mw, y0);
paths[p] := z0--z1;

pen_stroke(
    nib(down_nib)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(xpart(point infinity of paths[1]), 0);
z1=(x0, m);
paths[p] := z0--z1;

pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% Shoe
clearxy;
p:=p+1;
z0 = (xpart(point 3 of paths[0]), thick*0.6/2);
z1 = (x0 - mw/3, -descent) ;
z2 = (xpart(point 1 of paths[1]), y1) ;
paths[p] := z0{down}..z1--z2;
pen_stroke(
    nib(top_nib rotated 45)(0,1,2)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=point infinity of paths[p-1] - (0, thick*0.6/2);
z1 = point 1.6 of paths[1];
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);
anchor( "vc", point 2 of paths[0]);
anchor( "right", point 2 of paths[p-1] - (mw/5, 0));
endglyph;

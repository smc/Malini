input glyph;
beginglyph;
p:=0;
paths[p] := pa_mouth;
strokes[p] := va_mouth_stroke(paths[p]);

clearxy;
p:=p+1;
z0=point infinity of paths[0];
z1=z0 + (mw*0.75,0);
z2=(x1 + mw*0.2, -thin*1.2/4);
paths[p] := z0--z1--z2;
paths[p] := paths[1] shifted (0, thick*sind(45)/2);

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
    nib(end_nib scaled 0.5 rotated 90)(2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := subpath(0, 3) of ra shifted (xpart(point 1 of paths[p-1]) - mw/8, thin/2);
clearxy;
z4 = ( xpart point 2 of paths[p],  -m/8);
z5 = (  xpart point 3 of paths[0], y4);
z6 = ( xpart point 1 of paths[0], (y5+y7)/2);
z7 = ( x5, -descent);
z8 = ( xpart point infinity of paths[p]+thick, y7);
paths[p] := paths[p] ..z4---z5..z6{down}..z7---z8;

pen_stroke(
    nib(start_up_nib rotated 90)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(down_nib)(5)
    nib(down_nib rotated 90)(6)
    nib(thick_horizontal_nib)(7,8)
    ignore_directions(1, 2, 6)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);

endglyph;

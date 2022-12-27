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
paths[p] := subpath(0, 2) of ra shifted (xpart(point 1 of paths[p-1]) - mw/8, thin/2);
clearxy;
z3 = ( xpart point 2 of paths[p] + mw/2, (ypart point 2 of paths[p]+y4)/2);
z4 = (x3 - mw/3, (ypart point 2 of paths[p]+y6)/2);
z5 =(x4 + mw/2.5, (y4+y6)/2);
z6 = ( xpart point 2 of paths[p],  -m/8);
z7 = (  xpart point 3 of paths[0], y6);
z8 = ( xpart point 1 of paths[0], (y7+y9)/2);
z9 = ( x7, -descent);
z10 = ( x5+thick/2, y9);
paths[p] := paths[p] ..z3..{left}z4{right}..z5..z6---z7..z8{down}..z9---z10;

pen_stroke(
    nib(start_up_nib rotated 90)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3, 5)
    nib(end_nib rotated 90)(4)
    nib(down_nib)(6)
    nib(down_nib)(7)
    nib(down_nib rotated 90)(8)
    nib(thick_horizontal_nib)(9,10)
    ignore_directions(1, 2,3,5, 8)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);

endglyph;

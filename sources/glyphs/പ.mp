input glyph;
beginglyph;
p=0;
paths[p] := pa_mouth;
strokes[p] := va_mouth_stroke(paths[p]);

p:=p+1;
clearxy;
z0 = (0,0);
z1 = (x0 + 0.9mw, y0);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thick/4, thick*sind(45)/2 );

pen_stroke(
    cut(thin_horizontal_nib, 45)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, thin/2);
z1=(x0, m);


paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point 1 of paths[p-1])-thick/2, 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "bottom", point 1 of paths[1]);
anchor( "right", point 1 of paths[1] - (mw/5,0));

endglyph;

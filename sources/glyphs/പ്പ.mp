input glyph;
beginglyph;
paths[p] := pa_mouth shifted (0, thick/4);
strokes[p] := va_mouth_stroke(paths[p]);

p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 0.9mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thick/4, thick/4+ thick*sind(45)/2 );

pen_stroke(
    cut(thin_horizontal_nib, 45)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, thin/2);
z1=(x0, m);

paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point 1 of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);


paths[3] := paths[0] shifted (0.33mw, -0.75m) xscaled 0.8 yscaled 0.75;
paths[4] := paths[1] shifted (0.33mw, -0.75m+thin/4) xscaled 0.8 yscaled 0.75;
paths[5] := paths[2] shifted (0.333mw, -0.75m) xscaled 0.8 yscaled 0.75;
strokes[3] := va_mouth_stroke(paths[3]);
pen_stroke(
    cut(thin_horizontal_nib, 45)(0)
    nib(thin_horizontal_nib)(1)
)(paths[4])(strokes[4]);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[5])(strokes[5]);

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "bottom", point 1 of paths[4]);
anchor( "right", point 1 of paths[4] - (mw/5, 0));

endglyph;

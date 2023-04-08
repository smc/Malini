input glyph;
beginglyph;
input ./glyphs/include/ഷ;

p:=p+1;
paths[p] := pa_mouth;


p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 0.75mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1]) + thick/2, thick*sind(45)/2 );

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0, m);

paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point 1 of paths[p-1]), 0);

paths[p-2] := paths[p-2] shifted (0.87mw, -0.8m) xscaled 0.8 yscaled 0.75 ;
strokes[p-2] := va_mouth_stroke(paths[p-2]);
paths[p-1] := paths[p-1] shifted (0.87mw, -0.8m) xscaled 0.8 yscaled 0.75 ;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p-1])(strokes[p-1]);
paths[p] := paths[p] shifted (0.87mw, -0.8m) xscaled 0.8 yscaled 0.75 ;

pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);

endglyph;

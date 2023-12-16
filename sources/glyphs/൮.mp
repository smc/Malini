input glyph;
beginglyph;
paths[p] := va_mouth;
strokes[p] := pa_mouth_stroke(paths[p]);
% Horizontal stem
p:=p+1;
clearxy;
z0=(0,0);
z1=(x0 + 0.7mw, y0);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thin/2 , thick*thin_horizontal_nib_scale/2);

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0, m);

paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point 1 of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
% bottom tail
z0 = point 1 of paths[p-2];
z1 = (x0 - mw/2, -descent);
paths[p] = z0{down}.. {left}z1;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(down_nib)(1)
)(paths[p])(strokes[p]);


endglyph;

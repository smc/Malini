
paths[p] := va_mouth;
strokes[p] := va_mouth_stroke(paths[p]);
% Horizontal stem
p:=p+1;
clearxy;
z0=(0,0);
z1=(x0 + 0.8mw, y0);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thick/4, thick*sind(45)/2 );

pen_stroke(
    cut(thin_horizontal_nib, 45)(0)
    cut(thin_horizontal_nib, 135)(1)
)(paths[p])(strokes[p]);
strokes[p]:= (xpart point infinity of strokes[p-1], ypart(point 0 of strokes[p])) -- subpath( 1, 3) of strokes[p]--cycle;

p:=p+1;
clearxy;
z0=(xpart point 1 of strokes[p-1] - thick/2, thick*tand(45)/2);
z1=(x0, m);

paths[p]:= z0--z1;
pen_stroke(
    cut(thick_vertical_nib, -45)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);

% Clean joint
strokes[p] :=  subpath(0,2) of strokes[p]
    -- (xpart point 2 of strokes[p], ypart  point 2 of strokes[p-1])
    --cycle;
input glyph;
beginglyph;
z0= (thick/2, X-thick/4);
z1=( x0, 0);


paths[p] = z0--z1 ;
pen_stroke(
    nib(thin_vertical_nib)(0,1)
)(paths[0])(strokes[0]);
p:=p+1;

z3 = (x0, X-thick*sind(45)/2);
z4 = (x3 + 0.66*X, thick*sind(60)/2);
paths[p] = z3--z4;
pen_stroke(
    cut(thick_nib rotated 45, 45)(0)
    cut(thick_nib rotated 45, 60)(1)

)(paths[1])(strokes[1]);

cutd = angle(direction 1 of paths[1]);
p:=p+1;
z6 = ((xpart point 1 of strokes[1])+ thin/2,  ypart point 1 of strokes[1]);
z7 = (x6, X-thick/4);
paths[p] = z6--z7;
pen_stroke(
    cut(thin_vertical_nib, 0)(0)
    nib(thin_vertical_nib)(1)
)(paths[2])(strokes[2]);

% Serifs
p:=p+1;
paths[p] := serif_top_thin shifted (xpart point 0 of paths[0] , X);
strokes[p] := point 3 of strokes[1] -- subpath(3, 6) of serif_stroke_top_thin(paths[p])--cycle;

p:=p+1;
paths[p] := serif_bottom_thin shifted (point infinity of paths[0]);
strokes[p] := serif_stroke_bottom_thin(paths[p]);

p:=p+1;
paths[p] := serif_top_thin shifted (xpart point infinity of paths[2], X);
strokes[p] := serif_stroke_top_thin(paths[p]);

anchor( "top", (xpart(point 0.5 of paths[1]), 1.2X));
anchor( "bottom", (xpart(point 1 of paths[1]), 0));
endglyph;

input glyph;
beginglyph;
paths[p] := pa_mouth;
strokes[p] := pa_mouth_stroke(paths[p]);

clearxy;
p:=p+1;
z0=(0,0);
z1=z0 + (0.8mw,0);
paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thick/4, thick*thin_horizontal_nib_scale/2 );

pen_stroke(
    cut(thin_horizontal_nib, 30)(0)
    cut(thin_horizontal_nib, -45)(1)
)(paths[p])(strokes[p]);
strokes[p]:= (xpart point infinity of strokes[p-1], ypart(point 0 of strokes[p])) -- subpath( 1, 3) of strokes[p]--cycle;

p:=p+1;
input ./glyphs/include/റ;
xshift = xpart(point 1 of paths[p-1]) - mw/4;
paths[p] := paths[p]  shifted (xshift, 0);
strokes[p] := strokes[p]   shifted (xshift, 0);

anchor( "vc", point 0.5 of paths[1]);
anchor( "bottom",(xpart(point 3 of paths[2]), 0));
anchor( "right",  point infinity of paths[2]);
endglyph;

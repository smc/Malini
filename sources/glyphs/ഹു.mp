input glyph;
beginglyph;
paths[p] := pa_mouth;
strokes[p] := pa_mouth_stroke(paths[p]);

clearxy;
p:=p+1;
z0=(0,0);
z1=z0 + (0.8mw,0);
paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thick/4, thick*sind(45)/2 );

pen_stroke(
    cut(thin_horizontal_nib, 30)(0)
    cut(thin_horizontal_nib, -45)(1)
)(paths[p])(strokes[p]);
strokes[p]:= (xpart point infinity of strokes[p-1], ypart(point 0 of strokes[p])) -- subpath( 1, 3) of strokes[p]--cycle;


p:=p+1;
input ./glyphs/include/റ;
xshift = xpart(point 1 of paths[p-1]) - mw/4;
paths[p] := subpath(0, 3) of paths[p] shifted (xpart(point 1 of paths[p-1]) - mw/4, 0);
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
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);

endglyph;

input glyph;
beginglyph;
input ./glyphs/include/സ;

p:=p+1;
paths[p] := pa_mouth;

p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 0.75mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1]) +thick/4, thick*thin_horizontal_nib_scale/2 );

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0, m);

paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point 1 of paths[p-1]), 0);

paths[p-2] := paths[p-2] shifted (mw, -0.8m) xscaled 0.9 yscaled 0.75 ;
pen_stroke(
    nib(start_up_nib scaled 0.8 rotated terminalangle 0 of paths[p-2])(0)
    nib(middle_up_nib scaled 0.8)(1)
    nib(top_nib scaled 0.8)(2)
    nib(middle_down_nib scaled 0.8)(3)
    nib(end_nib scaled 0.8)(4,5)
)(paths[p-2])(strokes[p-2]);

paths[p-1] := paths[p-1] shifted (mw, -0.8m) xscaled 0.9 yscaled 0.75 ;
pen_stroke(
    cut(thin_horizontal_nib scaled 0.8, 45)(0)
    nib(thin_horizontal_nib scaled 0.8)(1)
)(paths[p-1])(strokes[p-1]);

paths[p] := paths[p] shifted (mw, -0.8m) xscaled 0.9 yscaled 0.75 ;
pen_stroke(
    nib(thick_vertical_nib scaled 0.8)(0, 1)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);

endglyph;

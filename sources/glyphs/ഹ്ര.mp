input glyph;
beginglyph;
paths[p] := pa_mouth shifted (mw/3, 0);
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

pen_stroke(
    nib(start_up_nib rotated 90)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
)(paths[p])(strokes[p]);

clearxy;
z8 = (xpart point 1 of paths[p-1], reph_sign_depth); % ra sign starts
z9 = (xpart point 0 of paths[p-1], y8); % ra sign starts
z10 = (xpart point 1 of paths[p-2]- mw/6, m);

paths[p] := (subpath(0, 3) of paths[p]) .. z8---z9.. {dir 50}z10;
dt = directiontime dir 270 of subpath( 2, 4) of paths[p];
paths[p] := insert_nodes(paths[p])(2 + dt );
dt := directiontime dir 90 of subpath( 5, 6) of paths[p];
paths[p] := insert_nodes(paths[p])(5 + dt);

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(thick_nib rotated terminalangle 2 of paths[p] scaled 0.8)(4,5)
    nib(end_nib)(6)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);
anchor( "right", point 0.75 of paths[p]);

endglyph;

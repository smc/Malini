input glyph;
beginglyph;

z0=(0, X+serif_height);
z1=(x0, 0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% Serifs
strokes[0] := top_left_serif(strokes[0], 0);
strokes[0] := bottom_serif(strokes[0], 3);

lbearing:=sw/3*0.2;
rbearing:=sw/3*0.2;
anchor( "top", (xpart(point 0 of paths[0]), 1.2X));
endglyph;

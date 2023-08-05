z0=(0, s);
z1=(x0, 0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% Serifs
strokes[p] := top_left_serif(strokes[p], 0);
strokes[p] := bottom_serif(strokes[p], 3);

input glyph;
beginglyph;
z0=(mw/10, s);
z1=(x0, 0);
paths[p] = z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[0]);
strokes[p] := bottom_serif(strokes[p], 1);

% Top left slanted serif
z3 = (xpart point 0 of strokes[p] - serif_width, ypart point 0.155 of strokes[p]);
z4 = (x3 + 0.02Xw, y3 - 0.8serif_height);
strokes[p] := point 0 of paths[p]{dir 220}
    .. z3 -- z4 -- point 0.2 of strokes[p]
    -- subpath (1, 7 ) of strokes[p]
    -- cycle;

lbearing:=2*lbearing;
rbearing:=2*rbearing;

endglyph;
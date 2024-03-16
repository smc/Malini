input glyph;
beginglyph;
z0=(thick/2, X);
z1=(x0,0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% Serifs

strokes[0] := top_serif(strokes[0], 0);
strokes[0] := bottom_serif(strokes[0], 3);


clearxy;
p:=p+1;
z0 = (xpart (point 0 of paths[0]), X-thin/2);
z1 = ((x0 + x2)/2, y0);
z2 = (x0 + 0.56Xw, (y1+y3)/2);
z3 = (x1, y4);
z4 = point 0.6 of paths[0];
paths[p]  = z0--z1{right}..z2{down}..{left}z3--z4;

pen_stroke(
    nib(thin_nib rotated 90)(0,1)
    nib(end_nib rotated 90)(3,4)
    nib(middle_down_nib)(2)

)(paths[p])(strokes[p]);
strokes[p]:=subpath(0, 8) of strokes[p]
    -- point 0 of strokes[0]
    -- cycle;

endglyph;

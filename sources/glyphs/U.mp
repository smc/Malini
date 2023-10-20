input glyph;
beginglyph;
w_ := 0.66X;
z0=(x1 + 0.01s, X);
z1=(0, X/3);
z2=(x1 + w_/2, 0);
z3=(x2 + w_/2, y1);
z4=(x3 - 0.01s, y0);
paths[p] = z0---z1..z2..z3---z4 ;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
    nib(thin_vertical_nib)(3,4)
    nib(down_nib)(2)
    ignore_directions(2l)
)(paths[p])(strokes[p]);

% Serifs


strokes[p] := top_serif(strokes[p], 0);
strokes[p] := top_serif(strokes[p], 6);

anchor( "top", (xpart(point 2 of paths[0]), 1.1X));
endglyph;

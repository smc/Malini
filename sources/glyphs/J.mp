input glyph;
beginglyph;
clearxy;
z0=(x2, X);
z2=(x3 + sw/4, y3+ X/3);
z3=(x4 + sw/4, undershoot);
z4=(0, y3 + s/4);
paths[p] = z0---z2..z3{left}..z4;

pen_stroke(
    nib(thick_vertical_nib)(0,1)
    nib(down_nib)(2)
    cut(thick_nib scaled 1.1 rotated terminalangle 3 of paths[p], 20)(3)
)(paths[p])(strokes[p]);

%serif
strokes[0] := top_serif(strokes[0], 0);

anchor( "top", (xpart(point 0 of paths[0]), 1.1X));
endglyph;

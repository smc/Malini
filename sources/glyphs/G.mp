input glyph;
beginglyph;
save r;
r=0.75;
z0 = (r*Xw, s);
z1 = ((x0 + x2)/1.75, X - overshoot);
z2 = (0, (y1+y3)/2.5);
z3 = ((x2+x4)/1.75, undershoot);
z4 = (x0, 0.1X);

paths[p]:=z0{dir 90}..z1{left}..z2{down}..z3{right} ..{dir 30}z4;
paths[p] := harmonize(paths[p]);
pen_stroke(
    cut(thick_nib scaled 1.2, 10)(0)
    nib(middle_down_nib)(2)
    nib(top_nib  rotated 10)(1)
    nib(down_nib rotated -40)(3)
    cut(thick_vertical_nib, 15)(4)
)(paths[p])(strokes[p]);



clearxy;
p:=p+1;
z0 = (x1, 0.5X);
z1 =point infinity of paths[0];
paths[1]:=z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0, 1)
)(paths[p])(strokes[p]);
strokes[p] := top_serif(strokes[p], 0);

strokes[0] :=  subpath(0, 3) of strokes[0]{right}
    .. point 4 of strokes[1]
    -- point 3 of strokes[1]
    .. {left}subpath(6, 9) of strokes[0]
    -- cycle;

% strokes[0] := subpath(0, 10) of strokes[0]{right} .. cycle;
strokes[0] := harmonize(strokes[0]);

anchor( "top", (xpart(point 1 of paths[0]), 1.2X));
anchor( "bottom", (xpart(point 3 of paths[0]), 0));
endglyph;

input glyph;
beginglyph;
p:=0;
save r;
r=0.75;
z0 = (r*Xw, y1 - X/4);
z1 = ((x0 + x2)/1.75, X - overshoot);
z2 = (0, X/2);
z3 = ((x2+x4)/1.75, undershoot);
z4 = (x0, 0.2X);

paths[p]:=z0{dir 90}..z1{left}..z2{down}..z3{right} ..{dir 80}z4;

pen_stroke(
     nib(serif_nib)(0)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0 = point infinity of paths[0];
z1 = (x0, 0.55X);
paths[1]:=z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0, 1)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
clearxy;
z0 = point (length(paths[p-2])*2 + 1 ) of strokes[p-2];
z1 = (x0 + serif_height, y0);
z2 = (x1, X);
z3 = (x2 - (x1-x0), y2);
z4 = point 0.5 of paths[p-2];
paths[p] = z0--z1--z2--z3--z4..{down}cycle;
strokes[p] := paths[p];

p:=p+1;
clearxy;
paths[p] := serif_top_thick shifted (point infinity of paths[1]);
strokes[p] := serif_stroke_top(paths[p]);

anchor( "top", (xpart(point 1 of paths[0]), 1.2X));
anchor( "bottom", (xpart(point 3 of paths[0]), 0));
endglyph;

input glyph;
beginglyph;
clearxy;
p:=0;
z0=(x2, X-thick/4);
z2=(x3 + sw/4, y3+ X/3);
z3=(x4 + sw/4, undershoot);
z4=(0, y3 + s/4);
paths[p] = z0---z2..z3{left}..z4;

pen_stroke(
    nib(thick_vertical_nib)(0,1)
    nib(down_nib)(2)
    nib(thicknib scaled 1.2 rotated terminalangle 3 of paths[p])(3)
)(paths[p])(strokes[p]);

%serif
p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[p-1], X);
strokes[p] := serif_stroke_top(paths[p]);

anchor( "top", (xpart(point 0 of paths[0]), X));
endglyph;

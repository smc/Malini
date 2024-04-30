input glyph;
beginglyph;
clearxy;

paths[1]:= p_loop xyscaled(-1, -1) shifted (xpart(point 2 of p_loop), m);

clearxy;
z0=(0, X+serif_height);
z1=(x0, 0);

paths[p] := z0--z1;
paths[p] :=paths[p] shifted (xpart(point 0 of paths[1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

strokes[p] := top_left_serif(strokes[p], 0);
% Leave some extra gap at bottom, near serif
strokes[p] :=  subpath(0, 2.75) of strokes[p]{down}
    .. {dir -80}subpath(3.15, 6) of strokes[p]
    --  cycle;
strokes[p] := bottom_right_serif(strokes[p], 4);

p:=p+1;
pen_stroke(
    nib(middle_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[0])(4)

)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0 = (xpart point 6 of strokes[p-2], ypart point 9 of strokes[p-2]);
z1 = (x0, y0-s/3);
paths[p] = z0{dir -75}..z1;
pen_stroke(
    cut(thick_nib, rel 90)(0)
    nib(thin_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

lbearing:=sw/3*0.2;
rbearing:=sw/3*0.1;

endglyph;

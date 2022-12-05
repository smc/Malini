input glyph;
beginglyph;
paths[1] := a_loop;
z0=(0, s);
z1=(x0, y2 + thick);
z2=(x1+thick, 0);
paths[0] := z0---z1{down}..{right}z2;
paths[0] := paths[0] shifted(xpart(point 0 of paths[1]),0);

pen_stroke(
    nib(thin_vertical_nib rotated terminalangle 0 of paths[0])(0)
    nib(thin_vertical_nib)(1)
    nib(end_nib scaled 0.5 rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(middle_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[0])(4)
)(paths[1])(strokes[1]);
anchor( "top", (xpart(point 1 of paths[1]), X));
endglyph;

input glyph;
beginglyph;
paths[1] := a_loop;
z0=(0, s);
z1=(0, y2 + s/4);
z2=(x0+2/3thick, -descent);
paths[0] := z0---z1{down}..{dir -45}z2;
paths[0] := paths[0] shifted(xpart(point 0 of paths[1]),0);

pen_stroke(
    nib(thin_vertical_nib rotated terminalangle 0 of paths[0])(0)
    nib(thin_vertical_nib)(1)
    nib(end_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(middle_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[0])(4)
)(paths[1])(strokes[1]);
endglyph;

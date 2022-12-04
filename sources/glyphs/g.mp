input glyph;
beginglyph;
paths[1] := p_loop;
z0=(0, s);
z1=(0, y0-X/2);
z2=(x0, 0);
z3=(x2 - sw/3, -descent);
z4=(x3 - sw/2, y3 + s/4);
paths[0] := z0--z1---z2..{left}z3..z4;
paths[0] := paths[0] shifted(xpart(point 2 of paths[1]),0);

pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
    nib(down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[0])(4)
)(paths[0])(strokes[0]);
pen_stroke(
   nib(middle_up_nib)(2)
   nib(middle_down_nib)(0,4)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[1])(strokes[1]);
endglyph;

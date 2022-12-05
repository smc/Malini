input glyph;
beginglyph;
paths[1] := a_loop;
z0=(x1 + 2/3thick, s);
z1=(0, 3/4s);
z2=(x1+1/3thick, 0);
z3=(x2 - sw/3, -descent);
z4=(x3 - sw/2, y3 + s/6);
paths[0] := z0{dir 225}..z1---z2..{left}z3..z4;
paths[0] := paths[0] shifted(xpart(point 0 of paths[1]),0);

pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[0])(0)
    nib(thin_vertical_nib)(1,2)
    nib(down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[0])(4)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(middle_up_nib rotated terminalangle 0 of paths[1])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[0])(4)
)(paths[1])(strokes[1]);
endglyph;

input glyph;
beginglyph;
z0=(x1-2/3thick, X);
z1=(0, 3/4X);
z2=(0, X/4);
z3=(x1  ,0);
paths[0] := z0{dir -45}..{down}z1---z2--z3;
paths[1] := p_loop shifted(xpart(point 1 of paths[0]),0);
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[0])(0)
    nib(thick_vertical_nib)(1,2)
    nib(thick_vertical_nib)(infinity)
)(paths[0])(strokes[0]);
pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(middle_down_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[1])(strokes[1]);
anchor( "top", (xpart(point 1 of paths[1]), X));
endglyph;

input glyph;
beginglyph;
% This glyph does not slant. Reset slant value
slant := 0;

z0 = (thick/4, -m/6);
z1 = (x0, y0 + m/2);
paths[0] = z0{dir 45}..z1;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_down_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
anchor( "bottom", point 0 of paths[0]);
endglyph;

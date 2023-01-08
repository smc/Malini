input glyph;
beginglyph;
z0=(0+thick/4, 0.9X);
z1=(0, s);
z2=(x1 ,  y3 + s/4);
z3=((x2+x4)/2, thick/4);
z4=(x1 + sw/2.5, y3+s/6);
paths[0] = z0---z1---z2{down}..z3..{dir 60}z4;
pen_stroke(
     nib(end_nib scaled 2/3)(0)
     nib(thick_vertical_nib)(1,2)
     nib(down_nib)(3)
     nib(end_nib scaled 0.75 rotated terminalangle 4 of paths[0])(4)
)(paths[0])(strokes[0]);
%bar

z5 = (x0 - thick*1.25, s-thin*1.2/2);
z6 = (x5 + sw*1.25, y5);


paths[1] = z5--z6;

pen_stroke(
     nib(end_nib rotated 90)(0,1)
)(paths[1])(strokes[1]);

paths[2] := paths[0] shifted(xpart(point 4 of paths[0]) + sw/3, 0);
pen_stroke(
     nib(end_nib scaled 2/3)(0)
     nib(thick_vertical_nib)(1,2)
     nib(down_nib)(3)
     nib(end_nib scaled 0.75 rotated terminalangle 4 of paths[0])(4)
)(paths[2])(strokes[2]);

lbearing:=serif_width/2;

endglyph;

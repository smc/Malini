input glyph;
beginglyph;

save r,e;
r=0.75;
z0 = (r*sw, .8s);
z1 = ((x0 + x2)/2, s - overshoot);
z2 = (0, s/2);
z3 = (x1, undershoot);
z4 = (x0+thin*1.2/2, y3+ s/4);
paths[0]:=z0{dir 120}..{dir 190}z1..z2..z3..z4;

pen_stroke(
    nib(thicknib rotated terminalangle 0 of paths[0])(0)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
    nib(end_nib scaled 2/3 rotated terminalangle 4 of paths[0])(4)

)(paths[0])(strokes[0]);

clearxy;
z0=(xpart(point 0.8 of paths[0]), s*1.3);
z1=(x0, ypart(point 0.8 of paths[0]));
paths[1] =z0--z1;
pen_stroke(
    nib(thin_nib rotated terminalangle 0 of paths[1])(0)
    nib(thin_nib rotated terminalangle infinity of paths[1])(infinity)
)(paths[1])(strokes[1]);
clearxy;
z0=(xpart(point 3.2 of paths[0]), -s*0.3);
z1=(x0, ypart(point 3.2 of paths[0]));
paths[2] =z0--z1;
pen_stroke(
    nib(thin_nib rotated terminalangle 0 of paths[2])(0)
    nib(thin_nib rotated terminalangle infinity of paths[2])(infinity)
)(paths[2])(strokes[2]);
endglyph;

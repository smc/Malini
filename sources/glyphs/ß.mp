input glyph;
beginglyph;

clearxy;

r = 0.75;
z0 = (0, 0.2s);
z1 = (x0 + sw*r, .25s);
z2 = ((x0 + x1)/2, y1 + .25s);
z3=  (x0 + thick/4, y2 + .25s);
z4=  (1.5x2, 0.85s);

paths[1] = z0{dir -40}..z1..z2..z3..{dir -40}z4 ;
paths[1]:= paths[1] shifted(s/4, 0);
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[1])(0)
    nib(middle_down_nib)(1,3)
    cut(top_nib, 0)(4)
)(paths[1])(strokes[1]);
clearxy;
z0=(0,0);
z1=(0,0.75X);
z2=((x1+x3)/2,X);
z3=point infinity of paths[1];
paths[0]=z0---z1..z2..{down}z3;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
    nib(top_nib)(2)
    cut(end_nib, 0)(3)
)(paths[0])(strokes[0]);
endglyph;

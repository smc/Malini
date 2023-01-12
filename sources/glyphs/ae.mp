input glyph;
beginglyph;
paths[0] := a_loop;
pen_stroke(
    nib(middle_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[0])(4)
)(paths[0])(strokes[0]);
clearxy;
save r,e;
r=0.85;
z0=(sw*r, 0.75s);
z1=(0.5sw*r,s-thick/4);
z2=(0, s/3);
z3=( 0.4*sw*r, undershoot);
z4= (sw*r, s/4);

paths[1]:=z0{dir 100}..{dir 190}z1..z2{dir -80}..z3{dir -10}..{dir 60}z4;
z5 = point 1.8 of paths[1];
paths[1]:=z5{dir -20}..paths[1];
paths[1]:=paths[1] shifted(xpart(point 0 of paths[0])-thick/2,0);

pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[1])(0)
    nib(middle_down_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(end_nib rotated terminalangle infinity of paths[1])(infinity)
)(paths[1])(strokes[1]);
endglyph;

input glyph;
beginglyph;
z0 =(0, (y1 + y3)/2);
z1 =(x0 + Xw/3.8, y3+0.6X);
z2=(x1 + Xw/3.8, y0);
z3=(x2 - Xw/3.8, thick*0.6/2);
z4=(x0, y0);
paths[0] = z0{up}..z1{right}..z2{down}..z3{left}..{up}z4;
pen_stroke(
    nib(middle_down_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_down_nib)(4)
)(paths[0])(strokes[0]);
clearxy;
z0=(point 3.8 of paths[0]);
z1=((x0 + x2)/2, 0.975X);
z2=(x0 + Xw/1.8, 0.9X);
paths[1]= z0{dir 100}..z1..z2;
pen_stroke(
    nib(middle_down_nib)(0)
    nib(top_nib)(1)
    nib(end_nib rotated terminalangle 2 of paths[1])(2)
)(paths[1])(strokes[1]);
endglyph;

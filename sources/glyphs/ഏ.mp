input glyph;
beginglyph;
paths[0] :=pa_mouth;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4)
)(paths[0])(strokes[0]);

clearxy;
z0=  (0,0);
z1=(x0 + 0.9mw, y0);
z2=(x1, m);

paths[1]:= z0--z1 ;
paths[1]:= paths[1] shifted ( point 4 of paths[0] + ( thick*0.5, thick*sind(45)/2) );

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[1])(strokes[1]);

clearxy;
z0=(0, 0);
z1=(x0, 0.8m);

paths[2]:= z0--z1;
paths[2]:= paths[2] shifted (xpart(point 1 of paths[1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[2])(strokes[2]);


clearxy;
z0=(0, 0);
z1=((x0  + x2)/2, -descent*0.9);
z2=(x0 - mw/1.8, (y1+y3)/2);
z3=(x0, m*0.975); % top
z4=(x0 + mw/1.8, y3 - m/3);
z5=(x4 - mw/3, y4 - m/3); % <
z6=(x4, y5 - m/3);
z7=(x5, y1);

paths[3]:= z0{down}..z1..{up}z2..z3{dir 10}..z4..{left}z5{right}..z6..z7;
paths[3]:= paths[3] shifted (xpart(point 0 of paths[2]), 0);
pen_stroke(
    nib(middle_down_nib)(0,4)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
    nib(top_nib)(3)
    nib(end_nib rotated 90)(5)
    nib(middle_down_nib)(4,6)
    nib(end_nib rotated terminalangle 7 of paths[3])(infinity)
)(paths[3])(strokes[3]);

endglyph;

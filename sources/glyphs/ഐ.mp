input glyph;
beginglyph;
z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, undershoot);
z4=(x0, y0);
z5=(x4 + mw/2, m-overshoot);
z6=(x5 + mw/2, (y5+y7)/2);
z7=(x6 - mw/4, 0);
% Dummy path
paths[0] = z0{dir 80}..z1..z2..z3..z4{dir 100}..z5{right}..{down}z6..z7;
% Get the point for extrema
z8=point 4.1 of paths[0];
paths[0] := z0{dir 80}..z1..z2..z3..z8{up}..z5{right}..{down}z6..z7;
pen_stroke(
   nib(middle_up_nib)(0,4)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_down_nib )(6)
    nib(end_nib rotated terminalangle 7 of paths[0])(7)
)(paths[0])(strokes[0]);

% എ
clearxy;
paths[3] :=pa_mouth;
paths[3]:=paths[3] shifted (xpart(point 6 of paths[0]) + lbearing + 2rbearing,0);


strokes[3] := va_mouth_stroke(paths[3]);

clearxy;
z0=  (0,0);
z1=(x0 + mw, y0);
z2=(x1, m);

paths[4]:= z0--z1 ;
paths[4]:= paths[4] shifted (xpart point 4 of paths[3] + thin*1.2/2, thick*sind(45)/2);

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[4])(strokes[4]);

clearxy;
z0=(0, 0);
z1=(x0, 0.8m);

paths[5]:= z0--z1;
paths[5]:= paths[5] shifted (xpart(point 1 of paths[4]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[5])(strokes[5]);


clearxy;
z0=(0, 0);
z1=((x0  + x2)/2, -descent*0.8);
z2=(x0 - mw/1.8, (y1+y3)/2.5);
z3=(x0, m-overshoot);
z4=(x0 + mw/2, y2);
z5=(x4 - mw/4, y1);

paths[6]:= z0{down}..z1{left}..{up}z2..z3{right}..z4{down}..z5;
paths[6]:= paths[6] shifted (xpart(point 0 of paths[5]), 0);
pen_stroke(
    nib(middle_down_nib)(0,4)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
    nib(top_nib)(3)
    nib(end_nib rotated terminalangle infinity of paths[6])(infinity)
)(paths[6])(strokes[6]);

endglyph;

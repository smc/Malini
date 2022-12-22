input glyph;
beginglyph;
z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, thick*0.6/2);
z4=(x0, y0);
paths[0] = z0{up}..z1{right}..z2{down}..z3{left}..{up}z4;
pen_stroke(
    nib(middle_up_nib scaled 0.5)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
)(paths[0])(strokes[0]);
clearxy;
z4=(point 3.8 of paths[0]);
z5=(0, m/2);
z6=(x5 + mw/2, m);
z7=(x6 + mw/2, m/2);
z8=(x7 - mw/4, 0);
paths[1]= z4..z5 ..z6..{down}z7..z8;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated -45)(4)
)(paths[1])(strokes[1]);

% എ
clearxy;
paths[3] :=pa_mouth;
paths[3]:=paths[3] shifted (xpart(point 3 of paths[1]) + lbearing + 2rbearing,0);


strokes[3] := va_mouth_stroke(paths[3]);

clearxy;
z0=  (0,0);
z1=(x0 + 1.2mw, y0);
z2=(x1, m);

paths[4]:= z0--z1 ;
paths[4]:= paths[4] shifted ( point 4 of paths[3]   );

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
z2=(x0 - mw/1.8, (y1+y3)/2);
z3=(x0, m*0.975);
z4=(x0 + mw/2, y2);
z5=(x4 - mw/4, y1);

paths[6]:= z0{down}..z1..{dir 85}z2..z3{right}..z4..z5;
paths[6]:= paths[6] shifted (xpart(point 0 of paths[5]), 0);
pen_stroke(
    nib(middle_down_nib)(0,4)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
    nib(top_nib)(3)
    nib(end_nib)(infinity)
)(paths[6])(strokes[6]);

endglyph;

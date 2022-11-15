input glyph;
beginglyph;
% Eye

z0=(0, m/8);
z1=((x2+x0)/2, y0 + m/8);
z2=(x1 + mw/8, y0);
z3=(x1, 0);
z4=(x0, y0);

paths[0] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;
paths[0]:= paths[0] shifted (0, 1.1m);


clearxy;
z0=point 4 of paths[0];
z1=((x0+x2)/2, y0+m/4);
z2=(x1 + mw/3, m);
z3=(x2, 0);

paths[1] =  z0{dir 90}..z1..z2 --- z3;
paths[0] := paths[0] shifted (-x2 + thick/2, 0);
paths[1] := paths[1] shifted (-x2 + thick/2, 0);

pen_stroke(
   nib(middle_up_nib)(0,4)
   nib(middle_up_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[0])(strokes[0]);

pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(thick_vertical_nib)(2)
    nib(thick_vertical_nib)(3)
)(paths[1])(strokes[1]);

endglyph;

input glyph;
beginglyph;

z0=(x1 + mw/4, 2/3m + thick*0.6/2);
x1=mw*0.45;
z1=(x1, m-y3);
z2=(0, y1 - m/2);
z3=(x1, thick*0.6/2);
z4=(x3 + mw/4, m-y0);
paths[0] =  z0{up}..z1..z2..z3..{up}z4;

pen_stroke(
   nib(middle_up_nib)(0,4)
   nib(middle_down_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[0])(strokes[0]);

clearxy;
% eye
z0=(0, m/8);
z1=((x2+x0)/2, y0 + m/8);
z2=(x1 + mw/8, y0);
z3=(x1, 0);
z4=(x0, y0);

paths[1] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;
paths[2] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;
paths[1] := paths[1] shifted (point 0 of paths[0] - (mw/4, m/8) );
paths[2] := paths[2] shifted (point 4 of paths[0] - (mw/4, m/8) );
pen_stroke(
   nib(middle_up_nib)(0,4)
   nib(middle_up_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[1])(strokes[1]);
pen_stroke(
   nib(middle_up_nib)(0,4)
   nib(middle_up_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[2])(strokes[2]);

clearxy;

z0=(0, 2/3m);
z1=(x0 + mw/3, m-y3);
z2=(x1 + mw/3, (y1+y3)/2);
z3=(x1, thick*0.6/2);
z4=(x0, m-y0);
paths[3] = z0..z1..z2..z3..z4;
paths[3]:= paths[3] shifted(xpart(point 4 of paths[0]) + thick, 0);
pen_stroke(
    nib(middle_up_nib)(0,4)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
)(paths[3])(strokes[3]);

endglyph;

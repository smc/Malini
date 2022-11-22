input glyph;
beginglyph;

z0=(mw/2, 0.5m);
z1=(x0 + mw/3, m);
z2=(x1 + mw/3, y1 - m/2);
z3=(x2 - mw/3, y2 - m/2);
z4=(x3 - mw/3, y3 + 0.5m);
paths[0] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4;
pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(top_nib)(1)
   nib(middle_down_nib)(2)
   nib(down_nib)(3)
)(paths[0])(strokes[0]);

clearxy;
z0 = point 3.75 of paths[0];
z1=(x0 - mw/4, ypart(point 3 of paths[0]));
z2=(x1 - mw/4, y1 + 0.25m);
z3=(x2 + mw/3, y2 + 0.3m);
z4=(xpart(point 2 of paths[0])  + mw/6, y3);
z5=(x4 + mw/4, y2);
z6=(x5 - mw/3, y1 + thick/2);
paths[1] :=z0{down}..z1..z2..z3{dir 0}..z4{dir 0}..z5..{dir 135}z6;
pen_stroke(
   nib(middle_up_nib)(0)
   nib(down_nib)(2)
   nib(middle_down_nib)(2, 5)
   nib(thin_vertical_nib rotated 90)(3, 4)
   nib(end_nib rotated 120)(6)
)(paths[1])(strokes[1]);

anchor( "vc", point 1 of paths[0]);
anchor( "bottom", (xpart(point 5.5 of paths[1]), 0));

endglyph;

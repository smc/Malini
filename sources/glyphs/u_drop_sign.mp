input glyph;
beginglyph;
z0=(0, (y1 + y3)/2);
z1=((x2+x0)/2, 0);
z2=(x1 + mw/5, y0);
z3=(x1, -descent);
z4=(x0, y0);

paths[0] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;
paths[0]:= paths[0] shifted (0, -y1);
pen_stroke(
   nib(middle_up_nib)(0,4)
   nib(middle_down_nib)(2)
   nib(top_nib scaled 0.75)(1)
   nib(down_nib)(3)
)(paths[0])(strokes[0]);

anchor( "right", (xpart(point 1 of paths[0]), ypart(point 1 of paths[0])));

endglyph;

input glyph;
beginglyph;
z0=(0, (y1 + y3)/2);
z1=((x2+x0)/2, 0);
z2=(x1 + mw/5, y0);
z3=(x1, -descent*1.1);
z4=(x0, y0);

paths[0] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;
paths[0]:= paths[0] shifted (0, -y1);
pen_stroke(
   nib(middle_up_nib scaled 0.8)(0,4)
   nib(middle_down_nib scaled 0.8)(2)
   nib(top_nib scaled 0.8)(1)
   nib(down_nib scaled 0.8)(3)

)(paths[0])(strokes[0]);

clearxy;
z0=point 0.3 of paths[0];
z1=(xpart(point 1 of paths[0]), ypart(point 2.1 of paths[0]));
z2=point 1.7 of paths[0];

paths[1] = z0{down}..z1..{up}z2;

pen_stroke(
   cut(start_up_nib, 0)(0)
   nib(down_nib scaled 0.75)(1)
   cut(start_up_nib, 0)(2)
)(paths[1])(strokes[1]);

anchor( "right", (xpart(point 1 of paths[0]), ypart(point 1 of paths[0])));

endglyph;

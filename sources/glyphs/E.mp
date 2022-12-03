input glyph;
beginglyph;

z0= (0, X);
z1=( x0, y0 - 0.5X);
z2=( x1, y1 - 0.5X);
z3 = (x0, y0 - thick*0.8/2);
z4 = (x3 + Xw/1.6, y3);
z5 = (x0, y1);
z6 = (x5 +  Xw/2, y5);


paths[0] = z0{dir -90}..z1..{dir -90}z2; ;
paths[1] = z3--z4;
paths[2] = z5--z6;
z7 = (xpart(point 2 of paths[0]), thick*0.8/2);
z8 = (x4, y7);
paths[3] = z7--z8;
pen_stroke(
   nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(end_nib rotated 90)(0,1)
)(paths[1])(strokes[1]);
pen_stroke(
   nib(end_nib rotated 90)(0,1)
)(paths[2])(strokes[2]);
pen_stroke(
    nib(end_nib rotated 90)(0,1)
)(paths[3])(strokes[3]);
anchor( "top", (xpart(point 0.5 of paths[1]), 1.2X));
endglyph;

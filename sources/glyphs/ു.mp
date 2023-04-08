input glyph;
beginglyph;
z0=(mw/12, m-overshoot);
z1=(x0 + mw/4, (y0+y2)/2);
z2=(x1 - 0.1mw, 0);
paths[0] = z0 ..z1{down}..z2;
pen_stroke(
   nib(middle_down_nib rotated terminalangle 0 of paths[p])(0)
   nib(down_nib rotated 90 )(1)
   nib(end_nib rotated terminalangle 2 of paths[p])(2)

)(paths[0])(strokes[0]);

clearxy;
p:=p+1;
z0=(x1-mw/4, (y1 + y3)/2);
z1=(xpart point infinity of paths[0], 0);
z2=(x1 + mw/4, y0);
z3=(x1, -descent);
z4=(x0, y0);

paths[p] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;

pen_stroke(
   nib(middle_up_nib)(0,4)
   nib(middle_down_nib scaled 0.8)(2)
   nib(top_nib scaled 0.75)(1)
   nib(down_nib)(3)

)(paths[p])(strokes[p]);

lbearing:=lbearing/2;
rbearing:=rbearing/2;
endglyph;

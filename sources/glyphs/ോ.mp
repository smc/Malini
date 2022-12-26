input glyph;
beginglyph;
p:=0;
z0=(mw*0.45, m-y2);
z1=(0, (y0 + y2)/2);
z2=(x0, 0);
paths[p] = z0{dir 170}..z1{down}..{dir 10}z2;

pen_stroke(
   nib(top_nib scaled 0.75)(0)
   nib(middle_down_nib)(1)
   nib(down_nib scaled 0.75)(2)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
% Eye
z0=(0, m/6);
z1=((x2+x0)/2, y0 + m/6);
z2=(x1 + mw/6, y0);
z3=(x1, 0);
z4=(x0, y0);

paths[p] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;

p:=p+1;
clearxy;
paths[p] = paths[p-1] ;

paths[p-1] := paths[p] shifted (point 0 of paths[0] - (mw/6, m/3) );
paths[p] := paths[p] shifted (point 2 of paths[0] - (mw/6, 0) );

pen_stroke(
   nib(middle_up_nib scaled 0.9)(0,4)
   nib(middle_down_nib scaled 0.9)(2)
   nib(top_nib scaled 0.75)(1)
   nib(down_nib scaled 0.75)(3)
)(paths[p-1])(strokes[p-1]);
pen_stroke(
   nib(middle_up_nib scaled 0.9)(0,4)
   nib(middle_down_nib scaled 0.9)(2)
   nib(top_nib scaled 0.75)(1)
   nib(down_nib scaled 0.75)(3)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, 0.75m);
z1=(x0 + mw/3, m-y3);
z2=(x1 + mw/3, (y1+y3)/2);
z3=(x1,  0);
z4=(x0, m-y0);
paths[p] = z0..z1..z2..z3..z4;
paths[p]:= paths[p] shifted(xpart(point 2 of paths[0]) + mw/2, 0);
pen_stroke(
   cut(end_nib, rel 90)(0)
    cut(end_nib, rel 90)(4)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
)(paths[p])(strokes[p]);

endglyph;

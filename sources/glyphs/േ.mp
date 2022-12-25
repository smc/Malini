input glyph;
beginglyph;
p:=0;
z0=(mw*0.45, m-y2);
z1=(0, (y0 + y2)/2.1);
z2=(x0, thick*0.6/2);
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
   nib(middle_down_nib scaled 0.8)(2)
   nib(top_nib scaled 0.75)(1)
   nib(down_nib scaled 0.75)(3)
)(paths[p-1])(strokes[p-1]);
pen_stroke(
   nib(middle_up_nib scaled 0.9)(0,4)
   nib(middle_down_nib scaled 0.8)(2)
   nib(top_nib scaled 0.75)(1)
   nib(down_nib scaled 0.75)(3)
)(paths[p])(strokes[p]);

endglyph;

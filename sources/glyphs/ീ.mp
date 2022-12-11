input glyph;
beginglyph;
% Eye
p:=0;
z0=(0, m/6);
z1=((x2+x0)/2, y0 + m/6);
z2=(x1 + mw/6, y0);
z3=(x1, 0);
z4=(x0, y0);

paths[0] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;
paths[0]:= paths[0] shifted (0, 1.1m);

p:=p+1;
clearxy;
z0=point 1 of paths[p-1];
z1=(x0 + 0.5mw, ypart(point 3 of paths[0]));
z2=(x1, 0);

paths[p] =  z0{dir 5}..{down}z1 --- z2;

paths[p-1] := paths[p-1] shifted (-xpart(point 2 of paths[p]), 0);
paths[p] := paths[p] shifted (-xpart(point 2 of paths[p]), 0);

pen_stroke(
   nib(middle_up_nib)(0,4)
   nib(middle_up_nib)(2)
   nib(top_nib scaled 0.75)(1)
   nib(down_nib)(3)
)(paths[p-1])(strokes[p-1]);
pen_stroke(
    nib(top_nib scaled 0.75)(0)
    nib(thick_vertical_nib)(2,3)
)(paths[p])(strokes[p]);

endglyph;

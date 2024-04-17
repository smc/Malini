input glyph;
beginglyph;
r=u_drop_sign_radius;
z0=(0, (y1 + y3)/2);
z1=((x2+x0)/2, 0);
z2=(x1 + r, y0);
z3=(x1, y0-r*1.2);
z4=(x0, y0);

paths[p] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;
paths[p]:= paths[p] shifted (0, -y1);
paths[p]:=harmonize(paths[p]);
pen_stroke(
   nib(middle_up_nib scaled 0.8)(0,4)
   nib(middle_down_nib scaled 0.8)(2)
   nib(top_nib scaled 0.8)(1)
   nib(down_nib scaled 0.8)(3)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=point 0.3 of paths[0];
z1=(xpart(point 1 of paths[0]), ypart(point 2.1 of paths[0]));
z2=point 1.7 of paths[0];
paths[p] = z0{down}..z1..{up}z2;

pen_stroke(
   cut(start_up_nib scaled 0.75, 45)(0)
   nib(down_nib scaled 0.75)(1)
   cut(start_up_nib scaled 0.75, -45)(2)
)(paths[p])(strokes[p]);

anchor( "right", point 1 of paths[p-1]);

endglyph;

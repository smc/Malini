input glyph;
beginglyph;
r=u_drop_sign_radius;
z0=(0, (y1 + y3)/2);
z1=((x2+x0)/2, 0);
z2=(x1 + r, y0);
z3=(x1, y0-r);
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

anchor("right", point 1 of paths[0] );

endglyph;

input glyph;
beginglyph;
% This glyph does not slant. Reset slant value
slant := 0;
p:=0;
z0=(0, X/6);
z1=((x2+x0)/2, y0 + X/6);
z2=(x1 + Xw/6, y0);
z3=(x1, 0);
z4=(x0, y0);

paths[p] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;
paths[p] := paths[p] shifted (0, X-2X/6);

pen_stroke(
   nib(middle_down_nib scaled 0.75)(0,4)
   nib(middle_up_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[p])(strokes[p]);
clearxy;
p:=p+1;
z0=(0.55X,X);
z1=(X/6,0);
paths[p] := z0--z1;

pen_stroke(
   nib(thin_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := paths[0] shifted (0.4X, -X + 2X/6);

pen_stroke(
   nib(middle_down_nib scaled 0.75)(0,4)
   nib(middle_up_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[p])(strokes[p]);

endglyph;

input glyph;
beginglyph;
% This glyph does not slant. Reset slant value
slant := 0;
z0=(0, y2);
z1=((x2+x0)/2, 0.4X);
z2=(x1 + Xw/6, (y1 + y3)/2);
z3=(x1, 0);
z4=(x0, y0);

paths[p] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;
paths[p] := paths[p] shifted (0, X-0.4X);

pen_stroke(
   nib(middle_down_nib scaled 0.75)(0,4)
   nib(middle_up_nib scaled 0.75)(2)
   nib(top_nib scaled 0.75)(1)
   nib(down_nib scaled 0.75)(3)
)(paths[p])(strokes[p]);
clearxy;
p:=p+1;
z0=(0.6X,X);
z1=(0.1X,0);
paths[p] := z0--z1;

pen_stroke(
   cut(thin_nib rotated terminalangle 0 of paths[p], 0)(0)
   cut(thin_nib rotated terminalangle 0 of paths[p], 0)(1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := paths[0] shifted (0.4X, -X + 0.4X);

pen_stroke(
   nib(middle_down_nib scaled 0.75)(0,4)
   nib(middle_up_nib scaled 0.75)(2)
   nib(top_nib scaled 0.75)(1)
   nib(down_nib scaled 0.75)(3)
)(paths[p])(strokes[p]);

% Connector
p:=p+1;
clearxy;
z0=point 1.25 of paths[0];
z1=point 0 of paths[1];
paths[p] = z0{dir -45}..z1;
pen_stroke(
   nib(end_nib scaled 0.75 rotated terminalangle 0 of paths[p])(0)
   cut(thin_nib rotated terminalangle 1 of paths[p], 0)(1)
)(paths[p])(strokes[p]);
endglyph;

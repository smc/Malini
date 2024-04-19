input glyph;
beginglyph;
z0=(0.5Xw, X-thin/2);
z1=(0, 0.5X);
z2=(x0, thin/2);

paths[p] = z0{left}..{down}z1..{right}z2;

pen_stroke(
   nib(middle_down_nib)(1)
   nib(thin_nib rotated 90)(0)
   nib(thin_nib rotated 90)(2)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0= (xpart point 0 of paths[p-1], X);
z1=( x0, (y0+y2)/2);
z2=( x1, 0);

paths[p] = z0--z2 ;
pen_stroke(
   nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

% Top bar
p:=p+1;
clearxy;
z0 = (xpart point 8 of strokes[p-1] , ypart point 8 of strokes[p-1]  -thin/2*1.2);
z1 = (x0 + Xw*0.6, y0);

paths[p] = z0--z1 ;

pen_stroke(
    nib(thin_nib scaled 1.2 rotated 90)(0,1)
)(paths[p])(strokes[p]);
% Hanging serif
clearxy;
z0 = (x1- serif_height , s);
z1 = (xpart point 1 of strokes[p] + serif_height, s);
% Control points
z3 = (xpart point 0.8 of strokes[p] , ypart point 0 of strokes[p] );
z4 = (xpart point 0.9 of strokes[p] , 0.95y3);
strokes[p] := subpath(0, 0.5) of strokes[p]
 ..controls z3 and z4 .. z0
 -- z1
 -- subpath(2, length(strokes[p])-1) of strokes[p]
 -- cycle;

% Middle bar
p:=p+1;
clearxy;
z0 = point 0.5 of paths[1];
z1 = (x0 + sw*0.6, y0);
paths[p] = z0--z1;
pen_stroke(
    nib(thin_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Bottom bar
p:=p+1;
clearxy;
z0 = point 1 of paths[1] + (0, thin/2*1.2);
z1 = (x0 + sw*0.9, y0);

paths[p] = z0--z1 ;

pen_stroke(
    nib(thin_nib scaled 1.2 rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Standing serif
clearxy;
z0 = (xpart point 1 of strokes[p]+0.04Xw, X-s-0.01Xw);
z1 = (x0 - serif_height, X-s);
% Control points for joint
z3 = (x1 - 0.08Xw,  ypart point 3 of strokes[p]*1.8);
z4 = (x1 - 0.1Xw,  ypart point 3 of strokes[p]);
strokes[p] := subpath(0, 1) of strokes[p]{right}
   -- z0---z1.. controls z3 and z4 .. subpath(2.4, length(strokes[p])-1) of strokes[p]  -- cycle;


endglyph;

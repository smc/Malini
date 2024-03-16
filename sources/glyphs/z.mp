input glyph;
beginglyph;

% Top bar
z0=(0, s - thin/2);
z1=(x0 + .75sw, y0);
z2=((x1-x0)/2, s/2);
z3=(x0,  thick/4);
z4=(x1, y3);

paths[p] = z0--z1;
pen_stroke(
  nib(thin_nib rotated 90)(0,1,2)
)(paths[0])(strokes[0]);

% Slant - top to bottm left
clearxy;
p:=p+1;
z0=(0.75sw, s);
z1=(0, 0);
paths[1] = z0--z1 ;
pen_stroke(
 nib(thick_vertical_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);

% Bottom bar

% Bottom bar
p:=p+1;
clearxy;
z0 = point 1 of paths[1] + (0, thin/2*1.2);
z1 = (x0 + sw*0.75, y0);

paths[p] = z0--z1 ;

pen_stroke(
    nib(thin_nib scaled 1.2 rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Standing serif
clearxy;
z0 = (xpart point 1 of strokes[p]+0.04sw, 0.4s-0.01sw);
z1 = (x0 - serif_height, 0.4s);
% Control points for joint
z3 = (x1 - 0.08sw,  ypart point 3 of strokes[p]*1.8);
z4 = (x1 - 0.1sw,  ypart point 3 of strokes[p]);
strokes[p] := subpath(0, 1) of strokes[p]{right}
   -- z0---z1.. controls z3 and z4 .. subpath(2.4, length(strokes[p])-1) of strokes[p]  -- cycle;

% Drop serif
clearxy;
z0 = (0, 0.7s-0.01s);
z1 = (-serif_height, 0.7s);
% Control points for joint
z3 = (x0+ 0.1sw, ypart point 0 of strokes[0] - 0.1s);
z4 = (x3, ypart point 0 of strokes[0] );
strokes[0] := subpath(0.4, 3) of strokes[0]
   -- z1 --z0  .. controls z3 and z4 ..cycle;

anchor( "top", (xpart(point 0.5 of paths[0]), 1.1X));
endglyph;

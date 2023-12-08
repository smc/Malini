input glyph;
beginglyph;

% Vertical bar
twidth=Xw*0.8;
z0=(twidth/2, X-0.4thick);
z1=(x0, 0);

paths[0] = z0--z1;

pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);
strokes[p] := bottom_serif(strokes[p], 1);

% Horizontal bar
clearxy;
p:=p+1;
z0 = (0, X - thin/2*1.2) ;
z1 = (x0+twidth, y0) ;
paths[p] = z0{dir -3}..{dir 3}z1;
pen_stroke(
   nib(end_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Hanging serif Right
clearxy;
z0 = (xpart point 2 of strokes[p] - serif_height, 0.85X-thick);
z1 = (xpart point 2 of strokes[p] + 0.01Xw, y0);
% Control points for joint
z3 = (x0 - 1/4thick,  ypart point 0.5 of strokes[p]);
z4 = (x3,  y3);
strokes[p] := subpath(0, 0.7) of strokes[p]
 .. controls z3 and z4 .. z0
 -- z1
 -- subpath(2, length(strokes[p])) of strokes[p]
 -- cycle;

% Hanging serif left
clearxy;
z0 = (xpart point 5 of strokes[p] - 0.01Xw, 0.85X-thick);
z1 = (xpart point 5 of strokes[p] + serif_height, y0);
% Control points for joint
z3 = (x1 + 1/4thick, ypart point 0.5 of strokes[p]);
z4 = (x3,  y3);
strokes[p] := subpath(0.4, 5) of strokes[p]{right}
   --  z0
   -- z1 .. controls z3 and z4 .. cycle ;

lbearing:=sw/3*0.4;
rbearing:=sw/3*0.4;
anchor( "top", (xpart(point 0 of paths[0]), 1.1X));
anchor( "bottom", (xpart(point 0 of paths[0]), 0));
endglyph;

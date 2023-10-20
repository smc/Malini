input glyph;
beginglyph;

% Vertical bar
twidth=Xw*0.8;
z0=(twidth/2, X-thick/4);
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
   nib(thin_nib scaled 1.2 rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Hanging serif Right
clearxy;
z0 = (xpart point 2 of strokes[p] - serif_height, s);
z1 = (xpart point 2 of strokes[p]+0.01Xw, s);
% Control points for joint
z3 = (x1 - 0.1Xw,  ypart point 0.5 of strokes[p]);
z4 = (x3,  y3);
strokes[p] := subpath(0, 0.7) of strokes[p]
 .. controls z3 and z4 .. z0
 -- z1
 -- subpath(2, length(strokes[p])) of strokes[p]
 -- cycle;

% Hanging serif left
clearxy;
z0 = (xpart point 5 of strokes[p]-0.01Xw, s);
z1 = (xpart point 5 of strokes[p]+serif_height, s);
% Control points for joint
z3 = (x1 + 0.04Xw, ypart point 0.5 of strokes[p]);
z4 = (x3,  y3);
strokes[p] := subpath(0.4, 5) of strokes[p]{right}
   --  z0
   -- z1 .. controls z3 and z4 .. cycle ;

lbearing:=sw/3*0.4;
rbearing:=sw/3*0.4;
anchor( "top", (xpart(point 0 of paths[0]), 1.1X));
anchor( "bottom", (xpart(point 0 of paths[0]), 0));
endglyph;

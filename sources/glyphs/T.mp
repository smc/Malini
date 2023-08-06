input glyph;
beginglyph;
twidth=Xw;
z0=(twidth/2, X-thick/4);
z1=(x0, 0);

paths[0] = z0--z1;

pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);
strokes[p] := bottom_serif(strokes[p], 1);

clearxy;
p:=p+1;
z0 = (0, X - thin/2*1.2) ;
z1 = (x0+twidth, y0) ;
paths[p] = z0--z1;
pen_stroke(
   nib(thin_nib scaled 1.2 rotated 90)(0,1)
)(paths[p])(strokes[p]);
% Hanging serif Right
strokes[p] := subpath(0, 0.7) of strokes[p]{right}
 ..{down}(xpart point 2 of strokes[p] - serif_height, s)
 -- (xpart point 2 of strokes[p]+0.01Xw, s)
 -- subpath(2, length(strokes[p])) of strokes[p]
 -- cycle;
% Hanging serif left
strokes[p] := subpath(0.4, 5) of strokes[p]{right}
   --  (xpart point 5 of strokes[p]-0.01Xw, s)
   --  (xpart point 5 of strokes[p]+serif_height, s){up}
  .. {right}cycle ;

lbearing:=lbearing/2;
anchor( "top", (xpart(point 0 of paths[0]), 1.1X));
anchor( "bottom", (xpart(point 0 of paths[0]), 0));
endglyph;

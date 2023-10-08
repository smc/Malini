input glyph;
beginglyph;
z0= (0, X);
z1=( x0, (y0+y2)/2);
z2=( x1, 0);

paths[0] = z0--z2 ;
pen_stroke(
   nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

strokes[p] := top_left_serif(strokes[p], 0);
strokes[p] := bottom_serif(strokes[p], 3);

% Top bar
p:=p+1;
clearxy;
z0 = point 0 of paths[0] - (0, thin/2*1.2);
z1 = (x0 + sw*0.9, y0);

paths[1] = z0--z1 ;

pen_stroke(
    nib(thin_nib scaled 1.2 rotated 90)(0,1)
)(paths[p])(strokes[p]);
% Hanging serif
strokes[p] := subpath(0, 0.7) of strokes[p]{right}
 ..{down}(xpart point 2 of strokes[p] - serif_height, s)
 -- (xpart point 2 of strokes[p]+0.01Xw, s)
 -- subpath(2, length(strokes[p])) of strokes[p]
 -- cycle;

% Middle bar
p:=p+1;
clearxy;
z0 = point 0.5 of paths[0];
z1 = (x0 + Xw*0.45, y0);
paths[p] = z0--z1;
pen_stroke(
    nib(thin_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);
lbearing:=serif_width/2;
endglyph;

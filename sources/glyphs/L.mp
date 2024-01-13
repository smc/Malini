input glyph;
beginglyph;

z0=(thick/2, X);
z1=(x0, 0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z3=(xpart(point 0 of paths[p-1]), thin*1.2/2);
z4=(x3 + sw*0.8, y3);

paths[p] = z3--z4;

pen_stroke(
   nib(thin_nib scaled 1.2 rotated 90)(0,1)
)(paths[p])(strokes[p]);



% Serifs
strokes[0] := top_serif(strokes[0], 0);
strokes[0] := bottom_left_serif(strokes[0], 3);


% Bottom bar serif
clearxy;
z0 = (xpart point 1 of strokes[p]+0.04Xw, X-s-0.01Xw);
z1 = (x0 - serif_height, X-s);
% Control points for joint
z3 = (x1 - 0.08Xw,  ypart point 3 of strokes[p]*1.8);
z4 = (x1 - 0.1Xw,  ypart point 3 of strokes[p]);
strokes[p] := subpath(0, 1) of strokes[p]{right}
   -- z0---z1.. controls z3 and z4 .. subpath(2.4, length(strokes[p])-1) of strokes[p]  -- cycle;


anchor( "top", (xpart(point 0 of paths[0]), 1.2X));
anchor( "bottom", (xpart(point 0.5 of paths[1]), 0));
endglyph;

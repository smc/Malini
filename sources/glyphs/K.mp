input glyph;
beginglyph;
z0=(thick/2, X);
z1=(x0, 0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% /
clearxy;
p:=p+1;
z0= (xpart(point 1 of paths[0]), X/3);
z1= ( x0 + 0.6Xw, X);

paths[p] = z1--z0;
pen_stroke(
  nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% \
p:=p+1;
clearxy;
z0 = point .7 of paths[p-1];
z1 = (xpart point 0 of paths[p-1] + thick/2, 0);
paths[p] = z0--z1;


pen_stroke(
  nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);


% Serifs
strokes[0] := top_serif(strokes[0],0);
strokes[0] := bottom_serif(strokes[0], 3);
strokes[1] := top_right_slanted_serif(strokes[1], 0);
strokes[2] :=  bottom_right_slanted_serif(strokes[2], 1);

endglyph;

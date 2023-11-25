input glyph;
beginglyph;


z0=(thick/2, X+serif_height);
z1=(x0, 0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0= point 0.66 of paths[p-1] + (0.75thin, 0);
z1= ( x0 + 2/3*sw, s);

paths[p] = z1--z0;
pen_stroke(
  cut(thin_nib scaled 1.25 rotated terminalangle 0 of paths[p], rel 145)(0)
  cut(thin_nib scaled 1.25 rotated terminalangle 1 of paths[p], 0)(1)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
z0 = point 0.6 of paths[p-2] + (0.75thick, 0);
z1 = (xpart point 0 of paths[p-1], 0);

paths[p] = z0--z1;

pen_stroke(
  cut(thick_vertical_nib rotated terminalangle 0 of paths[p], rel 75)(0)
  cut(thick_vertical_nib rotated terminalangle 1 of paths[p], rel 45)(1)
)(paths[p])(strokes[p]);


% Serifs
strokes[0] := top_left_serif(strokes[0], 0);
strokes[0] := bottom_serif(strokes[0], 3);

strokes[1] := top_right_slanted_serif(strokes[1], 0);
strokes[2] := bottom_right_slanted_serif(strokes[2], 1);

lbearing:=sw/3*0.25;
rbearing:=sw/3*0.1;

endglyph;

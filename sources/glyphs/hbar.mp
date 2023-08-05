input glyph;
beginglyph;


z0=(0, X+serif_height);
z1=(x0  ,0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := n_arch shifted(xpart(point 0 of paths[p-1]),0);
pen_stroke(
    nib(end_nib scaled 2/3 rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(1)
    nib(thick_vertical_nib)(2,3)

)(paths[p])(strokes[p]);

% bar
p:=p+1;
clearxy;
z0=(-sw/4, ypart(point 0.2 of paths[0]));
z1=(sw/2, y0);
paths[p]=z0--z1;
pen_stroke(
    nib(thin_nib rotated terminalangle 0 of paths[p])(0)
    nib(thin_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);


% Serifs
strokes[0] := top_left_serif(strokes[0], 0);
strokes[0] := bottom_serif(strokes[0], 3);
strokes[1] := bottom_serif(strokes[1], 3);

lbearing:=serif_width/2;

endglyph;

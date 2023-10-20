input glyph;
beginglyph;
z0=(0, X+serif_height);
z1=(x0, 0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);
show X;
p:=p+1;
paths[p] := n_arch shifted(xpart(point 0 of paths[p-1]),0);
pen_stroke(
    cut(end_nib scaled 0.9, rel 90)(0)
    nib(top_nib)(1)
    nib(thick_vertical_nib)(2,3)
    ignore_directions(1r )
)(paths[p])(strokes[p]);

lbearing:=sw/3*0.1;
rbearing:=sw/3*0.1;

% Serifs
strokes[0] := top_left_serif(strokes[0], 0);
strokes[0] := bottom_serif(strokes[0], 3);
strokes[1] := bottom_serif(strokes[1], 3);

endglyph;

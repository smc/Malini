input glyph;
beginglyph;
z0=(0, 1.05X);
z1=(x0, 0);
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


% Serifs
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[0] ;
strokes[p] := serif_stroke_slanted(paths[p]);


strokes[0] := bottom_serif(strokes[0], 1);
strokes[1] := bottom_serif(strokes[1], 3);

lbearing:=serif_width/2;
endglyph;

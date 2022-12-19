input glyph;
beginglyph;
p:=0;
z0=(0, X);
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
    nib(middle_down_nib)(2,3)
    ignore_directions(1)
)(paths[p])(strokes[p]);


% Serifs
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[0] ;
strokes[p] := serif_stroke_slanted(paths[p]);


p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[1]);
strokes[p] := serif_stroke(paths[p]);

lbearing:=2lbearing;
rbearing:=0;
endglyph;

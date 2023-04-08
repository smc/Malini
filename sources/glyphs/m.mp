input glyph;
beginglyph;

z0=(0, s-serif_height/2);
z1=(x0, serif_height/4);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := n_arch shifted(xpart(point 1 of paths[p-1]), 0) xyscaled(0.9, 1);
pen_stroke(
    nib(end_nib scaled 2/3 rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2,3, 4)

)(paths[p])(strokes[p]);
p:=p+1;
paths[p] := n_arch xscaled 0.9 shifted(xpart(point 3 of paths[p-1]), 0);
pen_stroke(
    nib(end_nib scaled 2/3 rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(1)
   nib(middle_down_nib)(2,3, 4)

)(paths[p])(strokes[p]);


% Serifs
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[0];
strokes[p] := serif_stroke_slanted(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[0], 0);
strokes[p] := serif_stroke_bottom(paths[p]);


p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[1], 0);
strokes[p] := serif_stroke_bottom(paths[p]);


p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[2], 0);
strokes[p] := serif_stroke_bottom(paths[p]);
lbearing:=serif_width/2;
endglyph;

input glyph;
beginglyph;


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
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[0] ;
strokes[p] := serif_stroke_slanted(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke_bottom(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[1]);
strokes[p] := serif_stroke_bottom(paths[p]);

lbearing:=2lbearing;
rbearing:=0;

endglyph;

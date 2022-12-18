input glyph;
beginglyph;
p:=0;
z0=(0, s);
z1=(x0  ,0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);


p:=p+1;
paths[p] = fullcircle scaled (thick*1.5) shifted(x1, 1.33s);

strokes[p] = paths[p];

% Serifs
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[0] ;
strokes[p] := serif_stroke_slanted(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke(paths[p]);

lbearing:=2lbearing;
rbearing:=0;
endglyph;

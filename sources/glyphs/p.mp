input glyph;
beginglyph;

p:=0;
z0=(0, s-thin);
z1=(x0  ,-descent);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
paths[p]:= p_loop;
pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(middle_down_nib)(2)
   nib(down_nib)(1)
   nib(down_nib)(3)
   ignore_directions(1, 2, 3)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[0];
strokes[p] := serif_stroke_slanted(paths[p]);


p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke(paths[p]);

lbearing:=2lbearing;
endglyph;

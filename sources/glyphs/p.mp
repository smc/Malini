input glyph;
beginglyph;

z0=(0, s-serif_height/2);
z1=(x0  ,-descent);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
paths[p]:= p_loop;
pen_stroke(
   nib(middle_up_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_down_nib)(2)
   nib(down_nib)(1)
   nib(down_nib)(3)
   nib(middle_up_nib rotated terminalangle 4 of paths[p])(4)

)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[0];
strokes[p] := serif_stroke_slanted(paths[p]);


p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke_bottom(paths[p]);

lbearing:=serif_width/2;
endglyph;

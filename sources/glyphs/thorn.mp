input glyph;
beginglyph;

z0=(0, X);
z1=(x0  ,-descent);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
paths[p] = p_loop;
pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(middle_down_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)

)(paths[p])(strokes[p]);

% Serifs
strokes[0] := top_left_serif(strokes[0], 0);
strokes[0] := bottom_serif(strokes[0], 3);


lbearing:=2lbearing;
endglyph;

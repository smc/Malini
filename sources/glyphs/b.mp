input glyph;
beginglyph;
p:=0;
z0=(0, X);
z1=(x0  ,0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := p_loop shifted(xpart(point 1 of paths[0]),0);

pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(middle_down_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] = serif_top_left_slanted shifted point 0 of paths[0];
pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(end_nib scaled 3/4 rotated terminalangle 1 of paths[p])(1)
)(paths[p])(strokes[p]);

lbearing:=2lbearing;

anchor( "top", (xpart(point 1 of paths[1]), X));
endglyph;

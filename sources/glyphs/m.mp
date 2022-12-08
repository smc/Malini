input glyph;
beginglyph;

p:=0;
z0=(thick/2, s);
z1=(x0, 0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := n_arch shifted(xpart(point 1 of paths[p-1]), 0) xyscaled(0.8, 1);
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2,3, 4)
)(paths[p])(strokes[p]);
p:=p+1;
paths[p] := n_arch xscaled 0.8 shifted(xpart(point 3 of paths[p-1]), 0);
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
   nib(middle_down_nib)(2,3, 4)
)(paths[p])(strokes[p]);


% Serifs
p:=p+1;
strokes[p]:=paths[p] := serif_top_left shifted point 0 of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted point 1 of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point 1 of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted point infinity of paths[1];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point infinity of paths[1];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted point infinity of paths[2];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point infinity of paths[2];

endglyph;

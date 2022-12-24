input glyph;
beginglyph;
p:=0;
z0=(0, s-serif_height/2);
z1=(x0, 1/3s);
z2=(0.4*x3, thin*1.2/4);
z3=(x0 + 0.75sw, 0.4s);
paths[p] := z0---z1..{right}z2..{dir 60}z3;
pen_stroke(
    nib(end_nib scaled 2/3 rotated terminalangle infinity of paths[p])(infinity)
    nib(down_nib)(2)
    nib(thick_vertical_nib)(0,1)
    ignore_directions(2)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, s-serif_height/2);
z1=(x0, serif_height/2);
paths[p] := z0--z1;
paths[p] := paths[p] shifted(xpart(point infinity of paths[0]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);


% Serifs
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[0];
strokes[p] := serif_stroke_slanted(paths[p]);

p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[1];
strokes[p] := serif_stroke_slanted(paths[p]);

p:=p+1;
paths[p] := serif_bottom_slanted shifted point infinity of paths[1];
strokes[p] := serif_stroke_slanted(paths[p]);

lbearing:=serif_width-lbearing;
anchor( "top", (xpart(point 2.25 of paths[0]), X));
endglyph;

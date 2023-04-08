input glyph;
beginglyph;
z0=(0, s-thin);
z1=(x0, 1/3s);
z2=(0.4*x3, thick/4);
z3=(x0 + 0.75sw, 0.4s);
paths[p] := z0---z1..{right}z2..{dir 60}z3;
pen_stroke(
    nib(end_nib scaled 2/3 rotated terminalangle infinity of paths[p])(infinity)
    nib(down_nib)(2)
    nib(thick_vertical_nib)(0,1)

)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, s-thin);
z1=(x0, thin);
paths[p] := z0--z1;
paths[p] := paths[p] shifted(xpart(point infinity of paths[0]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
z0=(point 1 of paths[0]);
z1=(x0, -descent);
paths[p] := z0--z1;
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

lbearing:=2lbearing;
rbearing:=0;

endglyph;

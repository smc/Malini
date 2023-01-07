input glyph;
beginglyph;
p:=0;
z0=(0, s-serif_height/2);
z1=(x0, 0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0, 1)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0=(0, s/2);
z1=(0.5sw, s-thick/2);

paths[p]:= z0{dir 60}..z1{dir -20};
paths[p] := paths[p] shifted(xpart(point 0 of paths[p-1]), 0);

pen_stroke(
    nib(end_nib scaled 2/3 rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(1)
    nib(thicknib rotated terminalangle 2 of paths[1])(2)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[0];
strokes[p] := serif_stroke_slanted(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke(paths[p]);

lbearing:=serif_width/2;

anchor( "top", (xpart(point 0.5 of paths[1]), X));
anchor( "bottom", (xpart(point 0.5 of paths[1]), 0));
endglyph;

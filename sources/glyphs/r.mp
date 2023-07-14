input glyph;
beginglyph;
z0=(0, s-serif_height/2);
z1=(x0, serif_height/4);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0, 1)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0=(thick/4, ypart point 0.5 of paths[p-1]);
z1=(x2-0.125sw, s-1.5overshoot);
z2=(x0 + 0.5sw, y1-0.1s);

paths[p]:= z0{dir 75}..{right}z1.. {dir -80}z2;
paths[p] := paths[p] shifted(xpart(point 0 of paths[p-1]), 0);

pen_stroke(
    nib(end_nib scaled 2/3 rotated terminalangle 0 of paths[p])(0)
    nib(thicknib scaled 0.8)(1)
    nib(thicknib scaled 1.2 rotated terminalangle 2 of paths[p])(2)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[0];
strokes[p] := serif_stroke_slanted(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[0], 0);
strokes[p] := serif_stroke_bottom(paths[p]);

lbearing:=serif_width/2;

anchor( "top", (xpart(point 0.5 of paths[1]), 0.9X));
anchor( "bottom", (xpart(point 0.5 of paths[1]), 0));
endglyph;

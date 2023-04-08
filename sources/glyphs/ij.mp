input glyph;
beginglyph;
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
strokes[p] := serif_stroke_bottom(paths[p]);

% j
clearxy;
p:=p+1;
z0=(0, s);
z1=(x0, 0);
z2=(x1 - sw/4, -descent);
z3=(x2 - sw/4, y2 + s/10);
paths[p] = z0--z1{down}..z2..z3;
paths[p] := paths[p] shifted (3*thick, 0);
pen_stroke(
    nib(thick_vertical_nib)(0,1)
    nib(down_nib )(2)
    nib(thicknib scaled 1.2 rotated terminalangle 3 of paths[p])(3)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = fullcircle scaled (thick*1.5) shifted(xpart(point 0 of paths[p-1]), 1.33s);
strokes[p] = paths[p];


% Serifs
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[p-2] ;
strokes[p] := serif_stroke_slanted(paths[p]);

lbearing:=2lbearing;

endglyph;

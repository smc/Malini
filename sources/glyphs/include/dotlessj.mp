z0=(0, s);
z1=(x0, 0);
z2=(x1 - sw/4, -descent);
z3=(x2 - sw/4, y2 + s/4);
paths[p] = z0--z1{down}..z2..z3;
paths[p] := paths[p] shifted (thick, 0);
pen_stroke(
    nib(thick_vertical_nib)(0,1)
    nib(down_nib )(2)
    cut(thick_nib scaled 1.1 rotated terminalangle 3 of paths[p], 15)(3)
)(paths[p])(strokes[p]);

% Serifs
strokes[p] := top_left_serif(strokes[p], 0);

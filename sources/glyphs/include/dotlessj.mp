z0=(0, s);
z1=(x0, 0);
z2=(x1 - sw/4, -descent);
z3=(x2 - sw/4, y2 + s/10);
paths[p] = z0--z1{down}..z2..z3;
paths[p] := paths[p] shifted (thick, 0);
pen_stroke(
    nib(thick_vertical_nib)(0,1)
    nib(down_nib )(2)
    nib(thicknib scaled 1.2 rotated terminalangle 3 of paths[p])(3)
)(paths[p])(strokes[p]);

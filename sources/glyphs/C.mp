input glyph;
beginglyph;

save r,e;
r=0.75;
z0 = (r*Xw, .9X);
z1 = ((x0 + x2)/2, X - thick/4);
z2 = (0, X/2);
z3 = (x1, thick/4);
z4 = (x0+thick*sind(50)/2, 0.1X);
paths[0]:=z0..z1..z2..z3..z4;

pen_stroke(
    nib(middle_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
    nib(end_nib scaled 2/3 rotated terminalangle 4 of paths[0])(4)
)(paths[0])(strokes[0]);

anchor( "top", (xpart(point 1 of paths[0]), 1.2X));
anchor( "bottom", (xpart(point 3 of paths[0]), 0));
endglyph;

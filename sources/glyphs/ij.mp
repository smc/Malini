input glyph;
beginglyph;
z0= (0.05sw, s);
z1=(0,  s/2);
z2=(x0 + 0.05sw, 0);

paths[0] = z0..z1{down}..{dir -60}z2;
paths[1] := fullcircle scaled (thick*1.5) shifted(x0, 1.33s);

pen_stroke(
    nib(thinnib)(1)
    nib(terminalnib rotated terminalangle 0 of paths[0])(0)
    nib(terminalnib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
strokes[1] = paths[1];

% j

clearxy;
z0=(0, s);
z1=(0, y0-X/2);
z2=(x0, 0);
z3=(x2 - sw/4, -descent);
z4=(x3 - sw/3, y3 + s/4);

paths[2] =  z0--z1{down}..z2..z3..z4;

pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
    nib(down_nib rotated( 90 + terminalangle 3 of paths[0]))(3)
    nib(end_nib rotated terminalangle 4 of paths[0])(4)
)(paths[2])(strokes[2]);

paths[3] := paths[1] shifted(x0, 0);
strokes[3] = paths[3];
endglyph;

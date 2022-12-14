input glyph;
beginglyph;
save r,e;
r=0.8;
z0 = (r*sw, 0.5s);
z1 = ((x0 + x2)/2, s - thick/4);
z2 = (0, s/2);
z3 = (x1, thick/4);
z4 = (x0+thick*sind(50)/2, y3+ s/4);
paths[0]:=z0{up}..{left}z1..{down}z2..z3{right}..z4;

pen_stroke(
    nib(middle_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
    nib(end_nib scaled 2/3 rotated terminalangle 4 of paths[0])(4)
    ignore_directions(1, 2, 3)
)(paths[0])(strokes[0]);
clearxy;
z0= point 0 of paths[0] + (0, thick*sind(50)/2);
z1=(xpart(point 2 of paths[0]), y0-thick*sind(50)/2);
paths[1]:=z0--z1;
pen_stroke(
    nib(end_nib rotated 90)(0,1)
)(paths[1])(strokes[1]);
lbearing:=0.75lbearing;
anchor( "top", (xpart(point 1 of paths[0]), X));
endglyph;

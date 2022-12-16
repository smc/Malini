input glyph;
beginglyph;
p:=0;
save r;
r=0.85;
z0 = (0, s/2);
z1 = ((x0 + x2)/2, s - thick/4);
z2 = (x0 + r*sw, y0);
z3 = (x1, thick/4);
z4 = (x0, y0);
paths[p]:= z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;

pen_stroke(
   nib(middle_down_nib)(0, 2, 4)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
r:=0.8;
z0 = (r*sw, 0.5s);
z1 = ((x0 + x2)/2, s - thick/4);
z2 = (0, s/2);
z3 = (x1, thick/4);
z4 = (x0+thick*sind(50)/2, y3+ s/4);
paths[p]:=z0{up}..{left}z1..{down}z2..z3{right}..z4;
paths[p]:=paths[p] shifted (xpart point 2 of paths[p-1],0);
pen_stroke(
    nib(middle_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
    nib(end_nib scaled 2/3 rotated terminalangle 4 of paths[0])(4)
    ignore_directions(1, 2, 3)
)(paths[p])(strokes[p]);
clearxy;
p:=p+1;
z0= point 0 of paths[p-1] + (0, thick*sind(50)/2);
z1=(xpart(point 2 of paths[p-1]), y0-thick*sind(50)/2);
paths[p]:=z0--z1;
pen_stroke(
    nib(end_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);
endglyph;

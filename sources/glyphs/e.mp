input glyph;
beginglyph;
p:=0;
save r,e;
r=0.8;
z0 = (r*sw, 0.5s);
z1 = ((x0 + x2)/2.2, s - thin*1.2/4);
z2 = (0, 0.45s);
z3 = (x1, thin*1.2/4);
z4 = (x0+thick/3, y3+ s/4);
paths[p]:=z0{up}..{left}z1..z2..z3..z4;

pen_stroke(
    nib(middle_down_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
    nib(end_nib scaled 2/3 rotated terminalangle 4 of paths[0])(4)
    ignore_directions(1, 2, 3)
)(paths[p])(strokes[p]);
clearxy;
p:=p+1;
z0= point 0 of paths[p-1] + (0, thin*1.2/2);
z1=(xpart(point 2 of paths[p-1]), y0);
paths[p]:=z0--z1;
pen_stroke(
    nib(end_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

anchor( "top", (xpart(point 1 of paths[0]), X));
endglyph;

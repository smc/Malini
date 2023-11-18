input glyph;
beginglyph;
save r;
r=0.85;
z0 = (0, s/2);
z1 = ((x0 + x2)/2, s - overshoot);
z2 = (x0 + r*sw, y0);
z3 = (x1, undershoot);
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
z0 = (r*sw, (y1+y3)/1.9);
z1 = ((x0 + x2)/2, s - overshoot);
z2 = (0, (y1+y3)/2);
z3 = ((x2+x4)/2, undershoot*1.5);
z4 = (x0+thick/3, y3+ 0.2s);
paths[p]:=z0{dir 85}..{left}z1..{down}z2..z3 ..z4;
paths[p]:=paths[p] shifted (xpart point 2 of paths[p-1],0);
pen_stroke(
    cut(middle_down_nib, 0)(0)
    nib(top_nib)(1)
    nib(middle_down_nib  )(2)
    nib(down_nib scaled 1.2  )(3)
    nib(end_nib scaled 2/3 rotated terminalangle 4 of paths[p])(4)
    ignore_directions(0,1l,2,3,4)
)(paths[p])(strokes[p]);


% Middle bar
clearxy;
p:=p+1;
z0= point 0 of paths[p-1] + (0, thin*1.2/2);
z1=(xpart(point 2 of paths[p-1]), y0);
paths[p]:=z0--z1;
pen_stroke(
    nib(end_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

lbearing:=sw/3*0.2;
rbearing:=sw/3*0.2;

endglyph;

input glyph;
beginglyph;

p:=0;

z0=(thick/4, 0.75s);
z1=((x0+x2)/2, s-overshoot);
z2=(x0+0.75sw, 2/3s);
z3=(x2, s/2);
paths[p] := z0{up}..z1{right}..z2--z3;

pen_stroke(
    nib(thicknib scaled 1.2 rotated terminalangle 0 of paths[p] )(0)
    nib(top_nib scaled 0.8)(1)
    nib(middle_down_nib)(2)
    nib(middle_down_nib)(3)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=point 2.5 of paths[p-1];
z1=(x3, y3 + 0.5s);
z2=(0, (y1 + y3)/2.5) ;
z3=((x2+x4)/3, undershoot);
z4=(x0, y3+s/3);
paths[p] := z0{dir 185}..{down}z2..z3{right}..z4;
pen_stroke(
    nib(end_nib scaled 0.9 rotated terminalangle 0 of paths[p])(0)
    nib(middle_down_nib)(1)
    nib(down_nib)(2)
    cut(end_nib scaled 0.9 rotated terminalangle 3 of paths[p], 0)(3)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
save r;
r=0.8;
z0 = (r*sw, (y1+y3)/1.85);
z1 = ((x0 + x2)/2, s - overshoot);
z2 = (0, (y1+y3)/2);
z3 = ((x2+x4)/2, undershoot);
z4 = (x0+thick/3, y3+ 0.2s);
paths[p]:=z0{up}..{left}z1..{down}z2..z3{right}..z4;
paths[p]:=paths[p] shifted (xpart point 2 of paths[0], 0);
pen_stroke(
    nib(middle_down_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
    nib(end_nib scaled 2/3 rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);
clearxy;
p:=p+1;
z0= point 0 of paths[p-1] + (0, thin*1.2/2);
z1=(xpart(point 2 of paths[p-1]), y0);
paths[p]:=z0--z1;
pen_stroke(
    nib(end_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

endglyph;

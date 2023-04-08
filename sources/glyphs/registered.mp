input glyph;
beginglyph;

z0=(thick/2, X);
z1=(x0  ,0);
paths[p] := z0--z1;

clearxy;
p:=p+1;
z0 = (xpart (point 0 of paths[0]), X-thin*1.6/2);
z1 = ((x0 + x2)/2, y0);
z2 = (x0 + 0.56Xw, (y1+y3)/2);
z3 = (x1, y4);
z4 = point 0.55 of paths[0];
paths[p]  = z0--z1{right}..z2{down}..{left}z3--z4;

p:=p+1;
clearxy;
z0 =  point 2.9 of paths[p-1];
z1 = (xpart(point 2 of paths[p-1])+thick/2,0);
paths[p] = z0..{dir -45}z1;

p:=0;
paths[p]:=paths[p] xscaled 0.6 yscaled 0.6 shifted (0.45sw, sw/3);
p:=p+1;
paths[p]:=paths[p] xscaled 0.6 yscaled 0.6 shifted (0.45sw, sw/3);
p:=p+1;
paths[p]:=paths[p] xscaled 0.6 yscaled 0.6 shifted (0.45sw, sw/3);

p:=0;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);
p:=p+1;
pen_stroke(
    nib(thin_nib rotated 90)(0,1)
    nib(end_nib rotated 90)(3,4)
    nib(middle_down_nib)(2)
)(paths[p])(strokes[p]);
p:=p+1;
pen_stroke(
     nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
soften := 0;
z0=(0, X/2);
z1=(x0 + 0.5Xw, X - overshoot);
z2=(x1 + 0.5Xw, y0);
z3=(x1, undershoot);
z4=(x0, y2);

paths[p] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;

pen_stroke(
    nib(middle_down_nib)(0,2,4)
    nib(top_nib)(1)
    nib(down_nib)(3)
)(paths[p])(strokes[p]);
endglyph;

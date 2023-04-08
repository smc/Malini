input glyph;
beginglyph;
z0=(thick/2, X);
z1=(x0  ,0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0= (0, 0.8X);
z1=(X/2, (y0+y2)/2);
z2=(x0 , X-y0);

paths[p] := z0{right}..z1..{left}z2;

pen_stroke(
    nib(top_nib)(0)
    nib(middle_down_nib rotated terminalangle 1 of paths[p])(1)
    nib(down_nib)(2)
)(paths[p])(strokes[p]);
endglyph;

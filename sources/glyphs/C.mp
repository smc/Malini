input glyph;
beginglyph;
p:=0;
save r,e;
r=0.75;
z0 = (r*Xw, .8X);
z1 = ((x0 + x2)/2, X - thick/4);
z2 = (0, X/2);
z3 = (x1, thick/4);
z4 = (x0+thick*sind(50)/2, 0.2X);
paths[p]:=z0{dir 120}..z1..z2..z3..z4;

pen_stroke(
    nib(middle_down_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
    nib(end_nib scaled 2/3 rotated terminalangle 4 of paths[0])(4)
)(paths[p])(strokes[p]);

% Serif
p:=p+1;
clearxy;
z0=(xpart(point 0 of paths[0]), X);
z1=(x0, ypart(point 0 of paths[0])-thick/4);
paths[p]=z0--z1;
pen_stroke(
    nib(end_nib scaled 0.8)(0)
    nib(middle_down_nib scaled 0.8)(1)
)(paths[p])(strokes[p]);
anchor( "top", (xpart(point 1 of paths[0]), 1.2X));
anchor( "bottom", (xpart(point 3 of paths[0]), 0));
endglyph;

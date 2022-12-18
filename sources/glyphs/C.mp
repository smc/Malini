input glyph;
beginglyph;
p:=0;
save r,e;
r=0.75;
z0 = (r*Xw, y1 - 0.15X);
z1 = ((x0 + x2)/2, X - thick/2);
z2 = (0, X/2);
z3 = (x1, thick/4);
z4 = (x0+thin*1.2/2, 0.2X);
paths[p]:=z0{dir 120}..z1..z2..z3..z4;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
    nib(end_nib scaled 2/3 rotated terminalangle 4 of paths[0])(4)
    ignore_directions(1, 2, 3)
)(paths[p])(strokes[p]);

% Serif
p:=p+1;
clearxy;
z0=(x1 - sw/10, (y1+y2)/2);
z1=(xpart(point 0 of paths[0]), X);
z2=(x1, ypart(point 0 of paths[0])  - thin/4);
paths[p]=z0{right}..{up}z1--z2;
pen_stroke(
    nib(serif_nib rotated terminalangle 0 of paths[p])(0 )
    nib(serif_nib )(1,2 )
)(paths[p])(strokes[p]);


anchor( "top", (xpart(point 1 of paths[0]), 1.2X));
anchor( "bottom", (xpart(point 3 of paths[0]), 0));
endglyph;

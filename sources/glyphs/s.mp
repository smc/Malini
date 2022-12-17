input glyph;
beginglyph;

p:=0;
z0 = (2/3sw, y1 - 0.15s);
z1 = ((x0+x2)/1.5, s-thick/3);
z2 = (x6+0.05sw, y1 - .2s);
z3 = ((x2+x4)/2, (y2 + y4)/2);
z4 = (x0, y5 + .2s);
z5 = ((x4+x6)/2.5, thick/4);
z6 = (0, y5+0.15s);

paths[p] = z0{dir 120}..z1..z2{down}..z3..z4{down}..z5..{dir 120}z6;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[0])(0)
   nib(top_nib)(1)
   nib(middle_down_nib)(2,4)
   nib(down_nib)(5)
   nib(thick_vertical_nib rotated 90)(3)
   nib(end_nib rotated terminalangle 6 of paths[0])(6)
)(paths[0])(strokes[0]);

% Serif

p:=p+1;
clearxy;
z0=(x1 - sw/10, (y1+y2)/2);
z1=(xpart(point 0 of paths[0]), s);
z2=(x1, ypart(point 0 of paths[0])  - thin/4);
paths[p]=z0{right}..{up}z1--z2;
pen_stroke(
    nib(thin_vertical_nib rotated terminalangle 0 of paths[p])(0 )
    nib(thin_vertical_nib )(1,2 )
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(x1 + sw/10, (y1+y2)/2);
z1=(xpart(point infinity of paths[0]), 0);
z2=(x1, ypart(point infinity of paths[0])+thick/5);
paths[p]=z0{left}..{down}z1--z2;
pen_stroke(
    nib(thin_vertical_nib rotated terminalangle 0 of paths[p])(0 )
    nib(thin_vertical_nib )(1,2 )
)(paths[p])(strokes[p]);

anchor( "top", (xpart(point 1 of paths[0]), X));
anchor( "bottom", (xpart(point 1 of paths[0]), 0));
endglyph;

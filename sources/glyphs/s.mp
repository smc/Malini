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
z0=(xpart(point 0 of paths[0]) , s);
z1=(x0, ypart(point 0 of paths[0])  - thick/5);
paths[p]=z0---z1;
pen_stroke(
    nib(middle_down_nib scaled 2/3 rotated terminalangle 1 of paths[p])(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[0]), 0);
z1=(x0, ypart(point infinity of paths[0])+thick/5);
paths[p]=z0---z1;
pen_stroke(
    nib(middle_down_nib scaled 2/3 rotated terminalangle 1 of paths[p])(0,1)
)(paths[p])(strokes[p]);


anchor( "top", (xpart(point 1 of paths[0]), X));
anchor( "bottom", (xpart(point 1 of paths[0]), 0));
endglyph;

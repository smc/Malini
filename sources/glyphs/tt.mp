input glyph;
beginglyph;

z0=(sw/4, s);
z1=(x0, s/4);
z2=(x1 + sw/2.5,s/10);
paths[0] = z0---z1{down}.. z2;
pen_stroke(
     nib(thick_vertical_nib)(0,1)
     nib(end_nib scaled 0.75 rotated terminalangle 2 of paths[0])(2)
)(paths[0])(strokes[0]);
%bar
clearxy;
z0 = (0, s-thick/4);
z1 = (x0+1.5sw, y0);

paths[1] =  z0--z1;

pen_stroke(
     nib(thick_nib scaled 0.5 rotated 90)(0,1)
)(paths[1])(strokes[1]);

% Serif
clearxy;
z0= point 0 of paths[0] + (thick/2, 0);
z1=(x0, 0.9X);
z2=(x1-thick/2, y1);
z3= point 0 of paths[1] + (0, thick/4);
paths[2] =  z0--z1--z2{down}..{left}z3--cycle;
strokes[2] = paths[2];


paths[3] := paths[0] shifted(xpart(point 2 of paths[0]) + sw/8 , 0);
pen_stroke(
     nib(thick_vertical_nib)(0,1)
     nib(down_nib)(2)
     nib(end_nib scaled 0.75 rotated terminalangle 3 of paths[3])(3)
)(paths[3])(strokes[3]);

% Serif
clearxy;
paths[4] :=  paths[2] shifted (xpart(point 0 of paths[3]) - sw/3 + thick/2,0);
strokes[4] := paths[4];

lbearing:=lbearing/4;

endglyph;

input glyph;
beginglyph;
clearxy;
p:=0;
z0=(0, s);
z1=(0, y0-X/2);
z2=(x0, 0);
z3=(x2 - sw/4, -descent);
z4=(x3 - sw/3, y3 + s/10);
paths[p] = z0--z1---z2{down}..z3..z4;
paths[p] := paths[p] shifted (thick, 0);
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
    nib(down_nib rotated( 90 + terminalangle 3 of paths[0]))(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = fullcircle scaled (thick*1.5) shifted(xpart(point 0 of paths[0]), 1.33s);
strokes[p] = paths[p];


% Serifs
p:=p+1;
paths[p] := serif_top_left_slanted shifted point 0 of paths[0];
pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(end_nib scaled 3/4 rotated terminalangle 1 of paths[p])(1)
)(paths[p])(strokes[p]);

lbearing:=2lbearing;

anchor( "top", (xpart(point 0 of paths[0]), X));
endglyph;

input glyph;
beginglyph;
p:=0;
z0=(0, s);
z1=(x0  ,0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);


p:=p+1;
paths[p] = fullcircle scaled (thick*1.5) shifted(x1, 1.33s);

strokes[p] = paths[p];

% Serifs
p:=p+1;
paths[p] := serif_top_left_slanted shifted point 0 of paths[0];
pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(end_nib scaled 3/4 rotated terminalangle 1 of paths[p])(1)
)(paths[p])(strokes[p]);

p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted point 1 of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point 1 of paths[0];

% j
clearxy;
p:=p+1;
z0=(0, s);
z1=(0, y0-X/2);
z2=(x0, 0);
z3=(x2 - sw/4, -descent);
z4=(x3 - sw/3, y3 + s/10);
paths[p] = z0---z1---z2{down}..z3..z4;
paths[p] := paths[p] shifted (2.5*thick, 0);
pen_stroke(
    nib(thick_vertical_nib)(0,1, 2)
    nib(down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = fullcircle scaled (thick*1.5) shifted(xpart(point 0 of paths[p-1]), 1.33s);
strokes[p] = paths[p];


% Serifs
p:=p+1;
paths[p] := serif_top_left_slanted shifted point 0 of paths[p-2];
pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(end_nib scaled 3/4 rotated terminalangle 1 of paths[p])(1)
)(paths[p])(strokes[p]);

lbearing:=2lbearing;

endglyph;

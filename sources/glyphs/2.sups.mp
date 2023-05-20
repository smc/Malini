input glyph;
beginglyph;
z0 = (0, 3/4y1);
z1 = ((x0+ x2)/2, X-overshoot);
z2 = (x0+ Xw/2.5, 0.85y1);
z3 = (thin/2, 0.45m+thick*sind(45)*0.75);
paths[p] := z0..z1{right}..z2..{dir 210}z3;

pen_stroke(
    nib(end_nib scaled 0.8rotated terminalangle 0 of paths[p])(0)
    nib(top_nib scaled 0.8)(1)
    nib(middle_down_nib scaled 0.8)(2)
    nib(end_nib scaled 0.8 rotated terminalangle 3 of paths[p])(3)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z4 = (0, 0.45m + thick*sind(45)/2) ;
z5 = (xpart(point 2 of paths[p-1]) + thick, y4) ;
paths[p] = z4--z5 ;

pen_stroke(
   nib(thick_horizontal_nib scaled 0.8)(0,1)
)(paths[p])(strokes[p]);

% Bottom bar serif
p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[p-1]), ypart(point infinity of strokes[p-1]));
z1=(x0 + 0.08sw, y0  + serif_width);
z2=(x1 - serif_height, y1);
z3=point 4.5 of strokes[p-1];
paths[p] :=z0--z1--z2{dir -115}..{dir 200}z3--cycle;
strokes[p] := paths[p];

endglyph;
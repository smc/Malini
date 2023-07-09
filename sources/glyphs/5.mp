input glyph;
beginglyph;
z0=(0.05Xw , X - 0.05X);
z1=(x0 + .55Xw, y0);
paths[0] = z0--z1;
pen_stroke(
    nib(thick_horizontal_nib)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(xpart point 0 of paths[0]+thin/2, ypart point 0 of paths[0]);
z1=(0, 0.45X);

paths[p] = z0--z1;
pen_stroke(
    nib(thin_vertical_nib)(0,1)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0=(xpart point 1 of paths[p-1], ypart point 1 of paths[p-1]);
z1=(x0 + Xw/4, y0+ Xw/6);
z2=(x1 + Xw/3, (y1  + y3)/2);
z3=(x2 - Xw/4, 0);
z4=(0, X/6);
paths[p] = z0{dir 60}..z1..z2..z3..z4;
pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(thicknib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

% Top bar hanging serif
p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[p-3]), ypart(point 2 of strokes[p-3]));
z1=(x0 + 0.025sw, y0 - 1.5serif_width);
z2=(x1 - serif_height, y1);
z3=point 4.8 of strokes[p-3];
paths[p] :=z0--z1--z2--z3--cycle;
strokes[p] := reverse paths[p];

endglyph;
input glyph;
beginglyph;
z0=(0.05Xw , X - 0.05X);
z1=(x0 + .55Xw, y0  );
paths[0] = z0{dir -5}..z1;
pen_stroke(
    nib(thick_horizontal_nib scaled 0.8)(0)
    cut(thick_horizontal_nib, rel 90)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(xpart point 0 of paths[0]+thin/2, ypart point 0 of strokes[0]);
z1=(0, 0.45X);

paths[p] = z0--z1;
pen_stroke(
    cut(thin_vertical_nib, -15)(0)
    nib(thin_vertical_nib)(1)
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

endglyph;
input glyph;
beginglyph;
p:=0;
z0=(thick/2, X-overshoot);
z1=(x0,undershoot);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(xpart point 0 of paths[0], X-thick*sind(45)/2);
z1=(x0+Xw/4, y0);
z2=(x1+Xw/4, (y0+y3)/2);
z3=(x1, y4);
z4=(x0, 0.525X);
paths[p] := z0---z1..{down}z2..z3---z4;
pen_stroke(
    nib(thin_horizontal_nib)(0,1,3,4)
    nib(middle_down_nib)(2)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=point 4 of paths[p-1];
z1=(x0+Xw/4, y0);
z2=(x1+Xw/3, (y0+y3)/2);
z3=(x1, y4);
z4=(xpart point 1 of paths[0], thick*sind(45)/2);
paths[p] := z0---z1..{down}z2..z3---z4;
pen_stroke(
    nib(thin_horizontal_nib)(0,1,3,4)
    nib(middle_down_nib)(2)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[0], X);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[0], 0);
strokes[p] := serif_stroke(paths[p]);

endglyph;

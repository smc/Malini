input glyph;
beginglyph;

% Vertical stroke
z0=(thick/2, X-overshoot);
z1=(x0,undershoot);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% Top curl
clearxy;
p:=p+1;
z0=(xpart point 0 of paths[0], X-thick*sind(45)/2);
z1=((x0+x2)/2, y0);
z2=(x0+0.56Xw, (y0+y3)/2);
z3=(x1, y4);
z4=(x0, ypart point 0.5 of paths[0]);
paths[p] := z0---z1..{down}z2..z3---z4;
pen_stroke(
    nib(thin_horizontal_nib)(0,3,4)
    nib(thin_horizontal_nib rotated -10)(1)
    nib(middle_down_nib)(2)
)(paths[p])(strokes[p]);

% Bottom curl
clearxy;
p:=p+1;
z0=point 4 of paths[p-1];
z1=(xpart point 3 of paths[p-1], y0);
z2=(x0+0.56Xw + thick/2, (y0+y3)/2);
z3=((x0+ x2)/1.82, y4);
z4=(xpart point 1 of paths[0], thick*sind(45)/2);
paths[p] := z0---z1..{down}z2..{left}z3---z4;
pen_stroke(
    nib(thin_horizontal_nib)(0,1, 4)
    nib(thin_horizontal_nib rotated 20)(3)
    nib(middle_down_nib)(2)
)(paths[p])(strokes[p]);

showcontrols:=0;
% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[0], X);
path serif_stroke;
serif_stroke := serif_stroke_top(paths[p]);
strokes[1] := subpath(3, 5) of serif_stroke -- subpath(0, 8) of strokes[1] -- cycle;

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[0], 0);
strokes[p] := serif_stroke_bottom(paths[p]);

endglyph;

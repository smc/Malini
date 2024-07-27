input glyph;
beginglyph;
z0=(thick/2, X);
z1=(x0,0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% Serifs

strokes[p] := top_serif(strokes[p], 0);
strokes[p] := bottom_left_serif(strokes[p], 3);

% Top curl
clearxy;
p:=p+1;
z0 = (xpart (point 0 of paths[0]), X-thick*sind(45)/2);
z1 = ((x0 + x2)/2, y0);
z2 = (x0 + 0.56Xw, (y1+y3)/2);
z3 = (x1, y4);
z4 = point 0.55 of paths[0];
paths[p]  = z0---z1{right}..z2{down}..{left}z3--z4;

pen_stroke(
    nib(thin_horizontal_nib)(0,1)
    nib(thin_horizontal_nib)(3,4)
    nib(middle_down_nib)(2)
)(paths[p])(strokes[p]);

% Leg

p:=p+1;
clearxy;
z0 =  point 3 of paths[p-1];
z1 = (x0+0.3Xw ,0);
paths[p] = z0--z1;

pen_stroke(
     nib(thick_nib)(0)
     cut(thick_nib, 0)(2)
)(paths[p])(strokes[p]);

rbearing:=0;
anchor( "top", (xpart(point 1 of paths[1]), 1.1X));
anchor( "bottom", (xpart(point 1 of paths[1]), 0));
endglyph;

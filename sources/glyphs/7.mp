input glyph;
beginglyph;
z0=(0, X - thick*0.7/2);
z1=(x0 + .5Xw, y0);

paths[0] = z0--z1;
pen_stroke(
    nib(top_nib)(0)
    nib(top_nib)(1)
)(paths[0])(strokes[0]);

p:=p+1;
clearxy;
z0=(.5Xw - thick*0./2, X);
z1=(x0 - Xw/4, 0);
paths[p] = z0--z1;
pen_stroke(
   nib(middle_up_nib)(0)
   nib(thick_nib)(1)
)(paths[p])(strokes[p]);
strokes[p]:=point 0 of strokes[p]--point 1 of strokes[p]--point 2 of strokes[p]--point 3 of strokes[p]--cycle;

clearxy;
p:=p+1;
z0=(xpart(point 0 of paths[0]) , y1 - thick/2 - u);
z1=(x0+thick/2, ypart(point 0 of paths[1]));
paths[p]=z0--z1;
pen_stroke(
    cut(serif_nib rotated terminalangle 0 of paths[p], 0)(0 )
    cut(thick_nib rotated terminalangle 1 of paths[p], 0)(1 )
)(paths[p])(strokes[p]);
strokes[p]:=point 0 of strokes[p]--point 1 of strokes[p]--point 2 of strokes[p]--point 3 of strokes[p]--cycle;

endglyph;
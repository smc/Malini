input glyph;
beginglyph;

% Top bar
z0=(0, X - thick*0.7/2);
z1=(x0 + .5Xw, y0);

paths[p] = z0--z1;
pen_stroke(
    nib(top_nib)(0)
    nib(top_nib)(1)
)(paths[p])(strokes[p]);

% Vertical bar
p:=p+1;
clearxy;
z0= point 2 of strokes[p-1];
z1=(x0 - Xw/3, 0);
paths[p] = z0..{dir -100}z1;
pen_stroke(
   nib(middle_up_nib rotated 10)(0)
   cut(thick_nib scaled 1.1 rotated terminalangle infinity of paths[p], 0)(1)
)(paths[p])(strokes[p]);
% strokes[p]:=point 0 of strokes[p]--point 1 of strokes[p]--point 2 of strokes[p]--point 3 of strokes[p]--cycle;

% Hanging serif
clearxy;
p:=p+1;
z0=(xpart(point 0 of strokes[p-2]) , y1 - thick/2 - u);
z1=point 3 of strokes[p-2];
paths[p]=z0--z1;
pen_stroke(
    cut(serif_nib rotated terminalangle 0 of paths[p], 0)(0 )
    cut(thick_nib rotated terminalangle 1 of paths[p], 0)(1 )
)(paths[p])(strokes[p]);
strokes[p]:=point 0 of strokes[p]--point 1 of strokes[p]--point 2 of strokes[p]--point 3 of strokes[p]--cycle;

endglyph;
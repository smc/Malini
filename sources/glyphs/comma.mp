input glyph;
beginglyph;

% This glyph does not slant. Reset slant value
slant := 0;

soften:=0;
paths[0] = fullcircle scaled (thick*1.5) shifted(thick, thick);
strokes[0] = paths[0];

p:=p+1;
z0 = point 0.1 of strokes[0] - (thick/2 , 0);
z1 = (x0 - mw/6, -m/4);

paths[p] = z0{dir -70} ..{dir -150}z1;
pen_stroke(
    nib(thick_nib rotated terminalangle 0 of paths[p])(0)
    cut(thin_nib rotated terminalangle 1 of paths[p], rel 90)(1)
)(paths[p])(strokes[p]);
anchor( "bottom", point 0 of paths[0]);
endglyph;

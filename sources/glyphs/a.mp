input glyph;
beginglyph;
p:=0;
z0=(0, y1-s/6);
z1=((x0+x2)/2, s-thick*sind(45)/4);
z2=(x0+0.75sw, 2/3s);
z3=(x2, y4+thick);
z4=(x3+thick/4, 0);
paths[p] := z0..z1..z2---z3---z4;

pen_stroke(
    nib(thicknib rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2,3)
    nib(thick_vertical_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=point 2 of paths[p-1];
z1=(x3, y3 + 0.45s);
z2=(0, y3 + s/6);
z3=(xpart(point 1 of paths[p-1]), thick*sind(45)/2);
z4=(xpart(point 2 of paths[p-1]), y3+s/4);
paths[p] := z0{down}..{left}z1..z2..z3..z4;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(end_nib rotated terminalangle 3 of paths[p])(4)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right rotated 14 shifted point infinity of paths[0];

anchor( "top", (xpart(point 1 of paths[0]), X));
endglyph;

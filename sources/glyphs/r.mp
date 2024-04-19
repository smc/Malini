input glyph;
beginglyph;

% Vertical stem
z0=(0, s);
z1=(x0, 0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0, 1)
)(paths[p])(strokes[p]);

% Arm
clearxy;
p:=p+1;
z0=(0, ypart point 0.6 of paths[p-1]);
z1=((x0+x2)/1.5, y2*0.95);
z2=(x0 + 0.5sw, s-thick/2);

paths[p]:= z0{dir 80}..z1.. {dir -5}z2;
paths[p] := paths[p] shifted(xpart(point 0 of paths[p-1]), 0);

pen_stroke(
    nib(thin_nib rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(1)
    cut(thick_nib scaled 1.2 rotated terminalangle 2 of paths[p], rel 90)(2)
    ignore_directions(1)
)(paths[p])(strokes[p]);

% Top hanging serif styling
strokes[p] :=  subpath(0, 3) of strokes[p]{left}
    .. (xpart point 4 of strokes[p], s*0.99){dir 200}
    .. {dir 250}point 5 of strokes[p]
    -- cycle;

% Serifs
strokes[0] := top_left_serif(strokes[0], 0);
strokes[0] := bottom_serif(strokes[0], 3);

strokes[p] := soften_nodes(strokes[p], u/5, 3);

lbearing:=sw/3*0.1;
rbearing:=sw/3*0.1;

anchor( "top", (xpart(point 0.5 of paths[1]), 1.2s));
anchor( "bottom", (xpart(point 0.5 of paths[1]), 0));
endglyph;

input glyph;
beginglyph;
z0=(0, s-serif_height/2);
z1=(x0, 0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0, 1)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0=(0, ypart point 0.6 of paths[p-1]);
z1=((x0+x2)/1.75, s-1overshoot);
z2=(x0 + 0.5sw, y1-0.2s);

paths[p]:= z0{dir 80}..{right}z1.. {down}z2;
paths[p] := paths[p] shifted(xpart(point 0 of paths[p-1]), 0);

pen_stroke(
    nib(thin_nib rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(1)
    nib(thick_nib scaled 1.25 rotated terminalangle 2 of paths[p])(2)
)(paths[p])(strokes[p]);

% Top hanging serif styling
strokes[p] :=  subpath(0, 2) of strokes[p]{right}
    ..subpath(3.5, 5) of strokes[p]
    -- cycle;

% Serifs
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[0];
strokes[p] := serif_stroke_slanted(paths[p]);

strokes[0] := bottom_serif(strokes[0], 1);

lbearing:=serif_width/2;

anchor( "top", (xpart(point 0.5 of paths[1]), 0.9X));
anchor( "bottom", (xpart(point 0.5 of paths[1]), 0));
endglyph;

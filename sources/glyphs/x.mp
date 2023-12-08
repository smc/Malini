input glyph;
beginglyph;
r := 0.8;
z0=(0, s);
z1=(x0 + r*sw, 0);

%\
paths[p] = z0--z1;
pen_stroke(
    cut(thick_vertical_nib rotated terminalangle 0 of paths[p], 0)(0)
    cut(thick_vertical_nib rotated terminalangle 1 of paths[p], 0)(1)
)(paths[0])(strokes[0]);

% Serifs
strokes[0] := top_left_slanted_serif(strokes[0], 0);
strokes[0] := bottom_right_slanted_serif(strokes[0], 3);

%/
p:=p+1;
clearxy;
z0=(xpart point 1.5 of strokes[0], 0);
z1= point 0.5 of paths[p-1];

paths[p] = z1--z0;
pen_stroke(
    cut(thin_vertical_nib rotated terminalangle 0 of paths[p], 0)(0)
    cut(thin_vertical_nib rotated terminalangle 1 of paths[p], 0)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart point 7.5 of strokes[0], s );
z1= point 0.515 of paths[p-2];
paths[p] = z0--z1;
pen_stroke(
    cut(thin_vertical_nib rotated terminalangle 0 of paths[p], 0)(0)
    cut(thin_vertical_nib rotated terminalangle 1 of paths[p], 0)(1)
)(paths[p])(strokes[p]);

strokes[1] := bottom_left_slanted_serif(strokes[1], 1);
strokes[2] := top_right_slanted_serif(strokes[2],0 );

lbearing:=sw/3*0.2;
rbearing:=sw/3*0.2;

endglyph;

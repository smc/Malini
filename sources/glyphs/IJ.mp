input glyph;
beginglyph;

z0=(0, X);
z1=(x0,  0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% Serifs
strokes[0] := top_serif(strokes[0], 0);
strokes[0] := bottom_serif(strokes[0], 1+2);

% J
p:=p+1;
clearxy;
z0=(0, X);
z1=(0, y0-s/2);
z2=(x0, s/2);
z3=(x2 - sw/4, undershoot);
z4=(x3 - sw/3, y3 + s/4);
paths[p] = z0--z1{down}..z2..z3..z4;
paths[p] := paths[p] shifted (sw, 0);
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
    nib(down_nib rotated( 90 + terminalangle 3 of paths[p]))(3)
    cut(thick_nib rotated terminalangle 4 of paths[p], 15)(4)
)(paths[p])(strokes[p]);

%serif
strokes[1] := top_serif(strokes[1], 0);
endglyph;

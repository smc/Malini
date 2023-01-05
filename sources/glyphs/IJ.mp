input glyph;
beginglyph;

p:=0;
z0=(0, X);
z1=(x0,  0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (point 0 of paths[0]);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point 1 of paths[0]);
strokes[p] := serif_stroke(paths[p]);

% J
p:=p+1;
clearxy;
z0=(0, X);
z1=(0, y0-s/2);
z2=(x0, s/2);
z3=(x2 - sw/4, 0);
z4=(x3 - sw/3, y3 + s/10);
paths[p] = z0--z1{down}..z2..z3..z4;
paths[p] := paths[p] shifted (sw, 0);
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
    nib(down_nib rotated( 90 + terminalangle 3 of paths[p]))(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

%serif
p:=p+1;
paths[p] := serif_top_thick shifted (point 0 of paths[p-1]);
strokes[p] := serif_stroke(paths[p]);
endglyph;

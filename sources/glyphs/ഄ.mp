input glyph;
beginglyph;

z0 = (0, y1 + m/2);
z1=(x0 + mw/3, undershoot);
z2=(x1 + mw/3, y0);
paths[p] = z0{down}..{right}z1..{up}z2;

pen_stroke(
    cut(middle_down_nib rotated terminalangle 0 of paths[p], 0)(0)
    nib(down_nib rotated -30)(1)
    cut(middle_up_nib rotated terminalangle infinity of paths[p], 0)(infinity)
)(paths[p])(strokes[p]);

% Vertical bar
clearxy;
p:=p+1;
z0 =(xpart(point 1 of paths[p-1]), y1 + m/2);
z1 =(x0, m/3);
paths[p] = z0--z1;
pen_stroke(
    nib(terminalnib rotated terminalangle 0 of paths[p])(0)
    nib(thinterminalnib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

strokes[p] :=
    point 0 of strokes[p]--
    point 1 of strokes[p]--
    point 2 of strokes[p]--
    point 3 of strokes[p]--
    cycle;

absolute_position := 1;
endglyph;

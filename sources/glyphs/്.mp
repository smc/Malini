input glyph;
beginglyph;

z0 = (0, m + m/3+thick/2);
z1=(x0 + 0.3mw, y0 - m/3);
z2=(x1 + 0.3mw, y1 + m/3);

paths[p] = z0{down}..{right}z1..{up}z2;
paths[p] := paths[p] shifted (-x1, 0);

pen_stroke(
    cut(middle_down_nib, 0)(0)
    % Apply rotation correction as this glyph is drawn in anti-clockwise direction
    nib(down_nib rotated -30)(1)
    cut(middle_up_nib, 0)(2)
)(paths[p])(strokes[p]);

absolute_position := 1;
rbearing:= -x1 - thick;

endglyph;

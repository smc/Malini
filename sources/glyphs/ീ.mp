input glyph;
beginglyph;

clearxy;
z0=(0,  1.5m);
z1=(x0 + mw/5, (y0+y2)/2);
z2=(x1 - mw/5, y0-2*m/5);
z3=(x2 - mw/5, y1);
z4=(x2, y0);
z5=(x4+mw/2, 1.1m);
z6=(x5, 0);

paths[p] =  z0 .. z1.. z2..z3..z4 ..z5---z6;
paths[0] := paths[0] shifted (-x5 + 3/4thick, 0);
pen_stroke(
    nib(end_nib scaled 0.8rotated terminalangle 0 of paths[p])(0)
    nib(middle_down_nib  scaled 0.8)(1)
    nib(middle_up_nib)(3)
    nib(top_nib)(2)
    nib(top_nib)(4)
    nib(thick_vertical_nib)(5,6)
    ignore_directions(2,3,4)
)(paths[p])(strokes[p]);

absolute_position := 1;

endglyph;

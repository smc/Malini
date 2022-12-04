input glyph;
beginglyph;
paths[1] := p_loop;
z0=(0, s);
z1=(0, s/2);
z2=(x0, 0);
paths[0] := z0--z1--z2;
paths[0] := paths[0] shifted(xpart(point 2 of paths[1]),0);

pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(middle_up_nib)(2)
    nib(middle_down_nib)(0,4)
    nib(top_nib)(1)
    nib(down_nib)(3)
)(paths[1])(strokes[1]);
endglyph;

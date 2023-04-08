input glyph;
beginglyph;
input ./glyphs/include/ണ;

xshift := 0.6mw;
yshift := -m;
paths[3] = paths[0] shifted (xshift , yshift) xscaled 0.8 yscaled 0.75;
paths[4] = paths[1] shifted (xshift , yshift) xscaled 0.8 yscaled 0.75;
paths[5] = paths[2] shifted (xshift , yshift) xscaled 0.8 yscaled 0.75;
pen_stroke(
    nib(middle_up_nib)(0,4)
    nib(top_nib)(1,5)
    nib(middle_down_nib xscaled 0.8)(2)
    nib(down_nib)(3)
    nib(thick_vertical_nib scaled 0.8)(6,7)
)(paths[3])(strokes[3]);
pen_stroke(
    cut(thin_vertical_nib xscaled 0.8, -45)(0)
    nib(thin_vertical_nib xscaled 0.8)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib xscaled 0.8)(3)
    nib(thick_vertical_nib xscaled 0.8)(4)
)(paths[4])(strokes[4]);
pen_stroke(
    cut(thin_vertical_nib xscaled 0.8, -45)(0)
    nib(thin_vertical_nib xscaled 0.8)(1)
    nib(top_nib)(2)
    nib(middle_down_nib xscaled 0.8)(3)
    nib(end_nib  rotated terminalangle 4 of paths[5])(4)
)(paths[5])(strokes[5]);
rbearing:=0;
endglyph;

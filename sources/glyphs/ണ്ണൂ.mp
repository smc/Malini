input glyph;
beginglyph;
input ./glyphs/include/ണ;

xshift := 0.6mw;
yshift := -m;
p:=p+1;
paths[p] = paths[p-4] shifted (xshift , yshift) xscaled 0.8 yscaled 0.75;
pen_stroke(
    nib(middle_up_nib  scaled 0.8)(0)
    nib(top_nib  scaled 0.8)(1)
    nib(middle_down_nib  scaled 0.8)(2)
    nib(down_nib scaled 0.8)(3)
    nib(middle_up_nib scaled 0.8)(4)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = paths[p-4] shifted (xshift , yshift) xscaled 0.8 yscaled 0.75;
pen_stroke(
    nib(middle_up_nib  scaled 0.8 rotated terminalangle 4 of paths[p])(0)
    nib(top_nib  scaled 0.8)(1)
    nib(thick_vertical_nib  scaled 0.8)(2, 3)
)(paths[p])(strokes[p]);



p:=p+1;
paths[p] = paths[p-4] shifted (xshift , yshift) xscaled 0.8 yscaled 0.75;
pen_stroke(
    cut(thin_vertical_nib  scaled 0.8, -45)(0)
    nib(thin_vertical_nib  scaled 0.8)(1)
    nib(top_nib  scaled 0.8)(2)
    nib(thick_vertical_nib  scaled 0.8)(3)
    nib(thick_vertical_nib  scaled 0.8)(4)
)(paths[p])(strokes[p]);


p:=p+1;
paths[p] := right_arch_with_tail shifted (xpart(point infinity of paths[2]), 0);
paths[p] := paths[p] shifted (xshift, yshift) xscaled 0.8 yscaled 0.75;
pen_stroke(
    cut(thin_vertical_nib xscaled 0.8, -45)(0)
    nib(thin_vertical_nib xscaled 0.8)(1)
    nib(top_nib  scaled 0.8)(2)
    nib(middle_down_nib xscaled 0.8)(3)
    nib(down_nib  scaled 0.8)(4)
    nib(middle_up_nib  scaled 0.8)(5)
    nib(top_nib  scaled 0.8)(6)
    nib(middle_down_nib scaled 0.8)(7)
    nib(end_nib scaled 0.8 rotated terminalangle 8 of paths[p])(8)
)(paths[p])(strokes[p]);

rbearing:=-3rbearing;

endglyph;

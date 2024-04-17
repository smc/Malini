input glyph;
beginglyph;
input ./glyphs/include/ത_;

clearxy;
paths[p] := subpath(0, 7) of paths[p];
z8=(xpart point infinity of paths[p] + mw/4, undershoot);
z9=(x8+mw/4, 0.4m);
z10=(x9, m-thin/2);
paths[p] := paths[p]..{right}z8{right}..z9---z10;
paths[p]:=harmonize(paths[p]);
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(middle_down_nib rotated -10)(7)
    nib(down_nib rotated -20)(8)
    nib(thin_vertical_nib)(9)
    cut(thin_vertical_nib, -45)(10)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
input ./glyphs/include/right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p]:=strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

anchor( "vc", (xpart( point infinity of paths[0]),0));
anchor( "right", point 2.2 of paths[p]);
endglyph;

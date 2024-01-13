input glyph;
beginglyph;

input ./glyphs/include/ക;


paths[p] := subpath(0, 3) of paths[p]
   -- point 4 of paths[p] + (mw/8,0);
pen_stroke(
    nib(middle_up_nib)(0)
    nib(down_nib)(1)
    nib(middle_down_nib scaled 0.9)(2, 5)
    nib(thin_vertical_nib rotated 90)(3, 4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
input ./glyphs/include/തു;

for i=2 upto p:
    paths[i] := paths[i] shifted (xpart(point infinity of paths[p-1]), 0);
    strokes[i] := strokes[i] shifted (xpart(point infinity of paths[p-1]), 0);
endfor;

anchor( "vc", point infinity of paths[0]);
anchor( "right", (xpart(point 9.25 of paths[0]), 0));

endglyph;

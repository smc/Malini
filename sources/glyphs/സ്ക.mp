input glyph;
beginglyph;

input ./glyphs/include/സ;
p:=p+1;
clearxy;
input ./glyphs/include/ക;

paths[p]:=paths[p] shifted (0.8mw, -1m) scaled 0.8 ;
pen_stroke(
   nib(middle_up_nib scaled 0.8)(0, 4)
   nib(top_nib scaled 0.8)(1)
   nib(middle_down_nib scaled 0.8)(2)
   nib(down_nib scaled 0.8)(3)
   nib(middle_up_nib scaled 0.8)(4)
   nib(down_nib scaled 0.8)(5)
   nib(middle_down_nib scaled 0.9)(6, 9)
   nib(thin_vertical_nib rotated 90)(7, 8)
   nib(end_nib scaled 0.8 rotated 90)(10)
)(paths[p])(strokes[p]);

anchor( "vc", (x3,0));

anchor( "right", point 5 of paths[p]);

endglyph;

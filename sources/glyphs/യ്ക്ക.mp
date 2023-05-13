input glyph;

beginglyph;
input ./glyphs/include/യ;

p:=p+1;
clearxy;
input ./glyphs/include/ക്ക;
paths[p]:=paths[p] shifted (-0.2mw, -1.1m) scaled 0.75 ;

pen_stroke(
   nib(middle_up_nib scaled 0.8)(0, 4)
   nib(top_nib scaled 0.8)(1)
   nib(middle_down_nib scaled 0.8)(2)
   nib(down_nib scaled 0.8)(3)
   nib(middle_up_nib scaled 0.8)(4)
   nib(down_nib scaled 0.8)(5)
   nib(middle_down_nib scaled 0.9)(6, 9)
   nib(thin_vertical_nib scaled 0.8 rotated 90)(7, 8)
   nib(middle_down_nib scaled 0.8)(9)
   nib(down_nib scaled 0.8)(10)
   nib(middle_up_nib scaled 0.8)(11)
   nib(top_nib scaled 0.8)(12)
   nib(middle_down_nib scaled 0.8)(13)
   nib(end_nib scaled 0.8 rotated terminalangle 14 of paths[p])(14)
)(paths[p])(strokes[p]);

rbearing:=0;
anchor( "vc", (x1,0));
anchor( "right", point 8.25 of paths[0]);

endglyph;

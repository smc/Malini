input glyph;
beginglyph;
paths[p] = ga;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[0])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3, 5)
   nib(top_nib)(4)
   nib(end_nib rotated terminalangle 7 of paths[0])(7)
)(paths[p])(strokes[p]);

anchor( "vc", point 3 of paths[p]);
anchor( "bottom", (xpart(point 6 of paths[p]),0));
endglyph;

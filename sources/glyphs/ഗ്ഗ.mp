input glyph;
beginglyph;

paths[p] = ga;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[0])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3,5)
   nib(top_nib)(4)
   nib(end_nib rotated 120)(6)
)(paths[p])(strokes[p]);

p:=p+1;

paths[p]:=paths[p-1] shifted(0.45m, -m) xscaled 0.75 yscaled 0.7;
pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[0])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib scaled 0.8)(3,5)
   nib(top_nib)(4)
   nib(end_nib rotated 120)(6)
)(paths[p])(strokes[p]);

anchor( "vc", point 3 of paths[0]);

endglyph;

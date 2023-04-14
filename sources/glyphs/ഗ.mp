input glyph;
beginglyph;

vardef ga =
    clearxy;
    z0 = (x1 + mw/3.5, m);
    z1 = (0, (y0+y2)/2);
    z2 = (x1 + mw/3, undershoot);
    z3 = (x2 + mw/3, 0.5m);
    z4 = (x3 + mw/3, m-overshoot);
    z5 = (x4 + mw/2.5, (y4+y6)/2);
    z6 = (x5 - mw/3, 0);
    z0{dir 215}..z1{down}..z2{right}..z3{dir 100 }..z4{right}.. z5{down}.. {dir 210}z6
enddef;

paths[p] = ga;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3, 5)
   nib(top_nib)(4)
   nib(end_nib rotated terminalangle 7 of paths[p])(7)
)(paths[p])(strokes[p]);

anchor( "vc", point 3 of paths[p]);
anchor( "bottom", (xpart(point 5 of paths[p]),0));
endglyph;

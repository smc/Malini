input glyph;
beginglyph;

z0 = (x4, y1 - X/4);
z1 = ((x0 + x2)/2, X-overshoot);
z2 = (x6 + thick/2, (y1 + y3)/2);
z3 = ((x2 + x4)/2, (y2 + y4)/2);
z4 = (0.7Xw, (y3 + y5)/2);
z5 = ((x4 + x6)/1.8, undershoot);
z6 = (0, y5 + X/3.5);

paths[p] = z0{dir 90}  ..z1{left}..z2{down} ..z3..z4{down} ..z5{left} ..  z6;

pen_stroke(
   nib(thick_nib scaled 1.1 rotated terminalangle 0 of paths[0] )(0)
   nib(top_nib scaled 0.85)(1)
   nib(middle_down_nib)(2,4)
   nib(middle_down_nib scaled 0.85 rotated 90)(3)
   nib(down_nib  scaled 0.85)(5)
   nib(thick_nib scaled 1.1  rotated terminalangle 6 of paths[0] )(6)
)(paths[p])(strokes[p]);


% Serif styling

strokes[p] :=  subpath(0.25, 6) of strokes[p]{left}
    ..subpath(7.25, 13) of strokes[p]{right}
    .. cycle;



anchor( "top", (xpart(point 1 of paths[0]), 1.1X));
anchor( "bottom", (xpart(point 1 of paths[0]), 0));
endglyph;

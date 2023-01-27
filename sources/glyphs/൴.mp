input glyph;
beginglyph;

z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, undershoot);
z4=(x0, y0);
z5=((x4 + x6)/2, m-overshoot);
z6=(x5 + 0.7mw, (y5+y7)/2.5);
z7=(x6 - mw/4, undershoot);
% Dummy path
paths[0] = z0{dir 80}..z1..z2..z3..z4{dir 100}..z5{right}..{down}z6..z7;
% Get the point for extrema
z8=point 4.1 of paths[0];
z9=(x7 - mw/3, y6);
z10= ((x7 + x6)/2, 0.95(y7 + y11));
z11= (x10 - mw/2, 0.9ascent);
paths[0] := z0{dir 80}..z1..z2..z3..z8{up}..z5{right}..z6{down}..z7{left}..z9..z10{dir 115}..{dir 225}z11;
pen_stroke(
   nib(middle_up_nib)(0,4)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_down_nib )(6)
    nib(down_nib)(7)
    nib(middle_up_nib)(8)
    nib(middle_down_nib rotated terminalangle 9 of paths[0])(9)
    nib(end_nib scaled 2/3 rotated terminalangle 10 of paths[0])(10)
)(paths[0])(strokes[0]);

endglyph;

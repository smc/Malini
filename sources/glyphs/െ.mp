input glyph;
beginglyph;
z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, undershoot);
z4=(x0, y0);
z5=(x4 + mw/2, m-overshoot);
z6=(x5 + mw/2, (y5+y7)/2);
z7=(x6 - mw/4, 0);
% Dummy path
paths[0] = z0{dir 80}..z1..z2..z3..z4{dir 100}..{curl 10} z5{right}..{down}z6..z7;
% Get the point for extrema
z8=point 4.1 of paths[0];
paths[0] := z0{dir 80}..z1..z2..z3..z8{up}..z5{right}..{down}z6..z7;
pen_stroke(
   nib(middle_up_nib)(0,4)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_down_nib )(6)
    nib(end_nib rotated terminalangle 7 of paths[0])(7)
    ignore_directions(6)
)(paths[0])(strokes[0]);

rbearing:=rbearing/2;
endglyph;

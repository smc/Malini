clearxy;

z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4.5, y3+0.55m);
z2=(x1 + mw/4.5, y0);
z3=(x2 - mw/4.5, thick*0.6/2);
z4=(x0, y0);
z5=(x4 + mw/2, m-overshoot);
z6=(x5 + mw/3, (y5+y7)/2);
z7=(x6 + mw/3, y3);
z8=(x7 + mw/3, (y7+y9)/2);
z9=(x8 - mw/4, m);

paths[p] = z0{dir 90}..z1..z2..z3..z4..z5{right}..{down}z6..z7{right}..z8{up}..z9;
paths[p] := harmonize(paths[p]);
paths[p] := paths[p] shifted(0,-m*1.1) xscaled 0.8 yscaled 2/3;
pen_stroke(
    nib(middle_up_nib scaled 0.8)(0,4, 8)
    nib(top_nib scaled 0.8)(1,5)
    nib(middle_down_nib scaled 0.8)(2,6)
    nib(down_nib scaled 0.8)(3,7)
    nib(end_nib scaled 0.8 rotated terminalangle 10 of paths[p])(9)
)(paths[p])(strokes[p]);
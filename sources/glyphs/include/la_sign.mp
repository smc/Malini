clearxy;
path l;
z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, thick*0.6/2);
z4=(x0, y0);
z5=(x4 + mw/3, m-overshoot);
z6=(x5 + mw/2, 0.6m);
z7=(x6, 0.4m);
z8=(x7 + mw/3, y3);
z9=(x8 + mw/3, (y8+y10)/2);
z10=(x9 - mw/4, m);

l=z0{dir 80}..z1..z2..z3..z4..z5..{down}z6..z7..z8..z9{up}..z10;
paths[p] = l shifted(0,-m*1.1) xscaled 0.8 yscaled 2/3;
pen_stroke(
    nib(middle_up_nib scaled 0.8)(0,4, 9)
    nib(top_nib scaled 0.8)(1,5)
    nib(middle_down_nib scaled 0.8)(2,6,7)
    nib(down_nib scaled 0.8)(3,8)
    nib(end_nib scaled 0.8 rotated terminalangle 10 of paths[p])(10)
)(paths[p])(strokes[p]);

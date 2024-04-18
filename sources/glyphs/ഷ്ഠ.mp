input glyph;
beginglyph;

input ./glyphs/include/ഷ.mp;

clearxy;
p:=p+1;
z0=(0, y2);
z1=((x0 + x2)/2, m-overshoot);
z2=(x0 + 0.9mw, (y1+y3)/2);
z3=(x1, undershoot);
z4=z0;

paths[p] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4;
paths[p] := paths[p] shifted(xpart(point .7 of paths[1]), -1.1m) xscaled 0.8 yscaled 0.8;
paths[p]:=harmonize(paths[p]);
pen_stroke(
    nib(middle_up_nib scaled 0.8)(0,4)
    nib(middle_down_nib scaled 0.8)(2)
    nib(top_nib scaled 0.8)(1)
    nib(down_nib scaled 0.8)(3)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);

anchor( "right", (xpart(point 1 of paths[1]) - u_drop_sign_radius,0));

endglyph;

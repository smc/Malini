input glyph;
beginglyph;
p=0;
paths[p] = subpath(0, 3) of left_arch;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p]:=point infinity of paths[p-1]--subpath(1, infinity) of left_arch_dha xscaled 0.9 shifted (xpart(point infinity of paths[p-1]), 0);
pen_stroke(
    nib(middle_down_nib)(0,1)
    nib(down_nib)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
paths[p]= subpath(0, 2) of right_arch_dha;
z0 = (xpart point infinity of paths[p]+ mw/2, y2);
z1 = (x0-mw/4, m);
z2 = (x1-mw/4, y1 - m/4);
z3 = (x2+mw/4, y2 - m/4);
z4 = (x3+mw/4, y3 + m/4);
paths[p]:=paths[p]{right} ..z0{dir 100}..z1..z2..z3..{up}z4;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
    nib(down_nib)(2)
    nib(middle_up_nib)(3)
    nib(top_nib)(4)
    nib(middle_down_nib)(5)
    nib(down_nib)(6)
    nib(end_nib scaled 0.8 rotated terminalangle 7 of paths[p])(7)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart( point infinity of paths[0]),0));
anchor( "right", point 2.2 of paths[p]);
endglyph;

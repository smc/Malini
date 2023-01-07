input glyph;
beginglyph;
p:=0;
paths[0] = left_arch;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
clearxy;
z0=(thick*(1 - sind(50)), 0);
z1=(x0, m*0.6);
z2=(x1+mw/3, m - overshoot); % Top of arch
z3=(x2+mw/2, 0.4m);
z4= (x3 - mw/4, 0.125m); % Make room for റ
z5= (x4 - mw/4, (y4 + y7)/3);
z6= ((x3 + x4)/2, 3(y4 + y7)/4);
z7= (x6 - mw/2, 0.95ascent);

paths[p] := z0---z1..z2..z3..z4..z5..z6{dir 80}..{dir 210}z7;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(middle_down_nib)(6)
    nib(end_nib rotated terminalangle 7 of paths[p])(7)
    ignore_directions(2,4,5)
)(paths[p])(strokes[p]);

paths[2] = ra shifted (mw*1.2, -m ) xscaled 0.75 yscaled 0.75;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[2])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib  rotated terminalangle 4 of paths[2])(4)
)(paths[2])(strokes[2]);

anchor( "vc", (xpart(point 4 of paths[0]),0));
anchor( "bottom", point 4 of paths[2]);
anchor( "right", point 4 of paths[2]);
endglyph;

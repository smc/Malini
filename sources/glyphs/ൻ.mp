input glyph;
beginglyph;

input ./glyphs/include/left_arch;

p:=p+1;
clearxy;
z0=(thick/2-thin/2*middle_up_nib_scale, thin/2);
z1=(x0, m*0.6);
z2=(x1 + mw/3, m - overshoot); % Top of arch
z3=(x2 + mw/2, (y2+y4)/2.5);
z4= ((x3+x5)/2, undershoot);
z5= (x3 - mw/1.9, (y4 + y7)/4);
z6= ((x3 + x4)/1.8, 0.85(y4 + y7));
z7= (x6 - mw/2, 0.9ascent);

paths[p] := z0---z1..z2..z3{down}..z4..z5{up}..z6{up}..{dir 225}z7;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    cut(middle_up_nib, -45)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(middle_down_nib)(6)
    nib(end_nib scaled 2/3 rotated terminalangle 7 of paths[p])(7)
)(paths[p])(strokes[p]);

endglyph;

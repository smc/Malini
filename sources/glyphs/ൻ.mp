input glyph;
beginglyph;

input ./glyphs/include/left_arch;

p:=p+1;
clearxy;
z0=(thick/2-thin/2*middle_up_nib_scale, thin/2*middle_up_nib_scale);
z1=(x0, m*0.6);
z2=(x1 + mw/3, m - overshoot); % Top of arch
z3=(x2 + mw/2, (y2+y4)/2.5);
z4= ((x3+x5)/2, undershoot);
z5= (x3 - mw/1.9, m/3);
z6= (x5 + mw/2.5, y7 - m/4);
z7= ((x6 +x8)/2, m + m/3);
z8 = (x6 - mw/2, m + m/4);

paths[p] := z0---z1..z2..z3{down}..z4{left}..z5{up}..z6{dir 75}..{left}z7..z8;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    cut(middle_up_nib, -45)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(middle_down_nib)(6)
    nib(top_nib)(7)
    nib(end_nib scaled 2/3 rotated terminalangle infinity of paths[p])(infinity)
    ignore_directions(7l)
)(paths[p])(strokes[p]);

endglyph;

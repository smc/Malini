input glyph;
beginglyph;
input ./glyphs/include/ണ;

for i=0 upto 2:
    paths[i] := paths[i] yscaled 0.9 shifted (0, 0.1m);
    strokes[i] := strokes[i] yscaled 0.9 shifted (0, 0.1m);
endfor;

clearxy;
p:=3;
z0=(thick/2-thin/2,   thin/2 + 0.1m);
z1=(x0, 0.6m);
z2=((x1+x3)/2.2, m-overshoot); % Top of arch
x3-x1 = 0.75*mw;
z3=(x3, (y2+y4)/2);
z4= (x3 - mw/2, 0);

paths[p] := z0---z1..z2{right}..z3{down}..{left}z4;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
z5= (xpart point 1 of paths[0], 0);
z6= (xpart point 0 of paths[0], (y5+y7)/2);
z7= (x5, -descent*0.75);
z8 = (xpart point 3 of paths[p]+ thick/2, y7);
paths[p] := paths[p] ---z5..z6..z7---z8;
pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(down_nib)(5)
    nib(down_nib rotated 90)(6)
    nib(thick_horizontal_nib)(7,8)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point 0 of paths[2]),0));
anchor( "right", point infinity of paths[p] - (mw/5,0));

endglyph;

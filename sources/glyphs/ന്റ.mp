input glyph;
beginglyph;
input ./glyphs/include/left_arch;

clearxy;
p:=p+1;
clearxy;
z0=(thick/2-thin/2, thin/2);
z1=(x0, m*0.6);
z2=(x1 + mw/3, m - overshoot); % Top of arch
z3=(x2 + mw/2, (y2+y4)/2.5);
z4= ((x3+x5)/2, 2*undershoot); % Room for റ
z5= (x3 - mw/1.9, (y4 + y7)/3.75);
z6= ((x3 + x4)/1.8, 0.88(y4 + y7));
z7= (x6 - mw/2, 0.85ascent);

paths[p] := z0---z1..z2..z3{down}..z4..z5..z6{dir 80}..{dir 260}z7;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(middle_down_nib)(6)
    nib(end_nib scaled 2/3 rotated terminalangle 7 of paths[p])(7)
)(paths[p])(strokes[p]);

p:=p+1;
xshift = 1.3mw;
yshift = -1.05m;
input ./glyphs/include/റ;
paths[p] := paths[p] shifted (xshift, yshift ) xscaled 0.75 yscaled 0.7;
strokes[p] := strokes[p] shifted (xshift, yshift ) xscaled 0.75 yscaled 0.7;

rbearing:=rbearing/2;

anchor( "vc", (xpart(point 4 of paths[0]),0));
anchor( "right", point 4 of paths[2]);

endglyph;

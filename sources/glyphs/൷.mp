input glyph;
beginglyph;
paths[p] := pa_mouth;
strokes[p] := pa_mouth_stroke(paths[p]);

clearxy;
p:=p+1;
z0=point infinity of paths[0];
z1=z0 + (mw,0);
paths[p] := z0--z1;
paths[p] := paths[p] shifted (0, thick*sind(45)/2);

pen_stroke(
    cut(thin_horizontal_nib, 45)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

% ന part
clearxy;
p:=p+1;
input ./glyphs/include/left_arch;

paths[p] := subpath(0.1, 3.5) of paths[p]  shifted (xpart point infinity of paths[p-1]-mw/4, 0);
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3,4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(thick/2-thin/2*middle_up_nib_scale, ypart point infinity of paths[p-1]+thin/2);
z1=(x0, m*0.6);
z2=(x1+mw/3, m - overshoot); % Top of arch
z3=(x2+mw/2, 0.4m);
z4= (x3 - mw/4,thin/2);
z5= (x4 - mw/4, (y4 + y7)/3);
z6= (x5 + mw/3, (y5+y7)/2);
z7= (x3 + mw/3, m);

paths[p] := z0---z1..z2{right}..z3{down}..z4{left}..z5{up}..z6{right}..{up}z7;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    cut(middle_up_nib, -45)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
    nib(end_nib rotated terminalangle 7 of paths[p])(7)
)(paths[p])(strokes[p]);

endglyph;

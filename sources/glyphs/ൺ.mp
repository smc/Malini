input glyph;
beginglyph;
p:=0;
paths[p] :=left_arch_with_eye;
pen_stroke(
    nib(middle_up_nib)(0,4)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(thick_vertical_nib)(6,7,8)
)(paths[p])(strokes[p]);

% Second arch
p:=p+1;
paths[p] = middle_arch shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[p])(strokes[p]);
% Third arch

p:=p+1;
clearxy;
z0=(thick*(1 - sind(50)), 0);
z1=(x0, m*0.6);
z2=(x1+mw/3, m); % Top of arch
z3=(x2+mw/2, 0.4m);
z4= (x3 - mw/4,thin/2);
z5= (x4 - mw/4, (y4 + y7)/3);
z6= ((x3 + x4)/2, 3(y4 + y7)/4);
z7= (x6 - mw/2, ascent-thick/2);

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

anchor( "vc", point 1 of paths[1]);

endglyph;

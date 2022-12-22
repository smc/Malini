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
z0 = ( 0 , 0);
z1 = ( x0, 2/3m);
z2 = ( x1 + mw/2.2, m); % top
z3 = ( x2 + mw/3, y4 + m/8);
z4= ( x3 - mw/5, y5 + m/6);
z5= ( x4 - mw/5, m/2);
z6= ( x5 + mw/5, y7 + m/6);
z7 = ( x6 + mw/4, y8 + m/8);
z8 = ( x2 - mw/8, thick*0.6);

paths[p] := z0---z1..z2{right}..z3{dir -80}..z4{dir 170}..z5..z6{dir 10}..z7{down}..{dir 150}z8;
paths[p] := paths[p] shifted (point infinity of paths[p-1] + (thick*(1 - sind(50)), 0));
pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,5, 7)
    nib(top_nib)(4, 6)
    nib(end_nib rotated 60)(8)
)(paths[p])(strokes[p]);

anchor( "vc", point 1 of paths[1]);
anchor( "right", point 7.5 of paths[2]);

endglyph;

input glyph;
beginglyph;
p:=0;
clearxy;
paths[p] :=left_arch_with_eye;
pen_stroke(
    nib(middle_up_nib)(0,4)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(thin_vertical_nib)(6,7,8)
)(paths[p])(strokes[p]);


% Second arch
p:=p+1;
clearxy;
paths[1] = middle_arch shifted (xpart(point infinity of paths[0]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[p])(strokes[p]);

% the connector curve
clearxy;
p:=p+1;
z0=point infinity of paths[1] + (thick*0.5/2, 0);
z1=(x0, ypart(point 3 of paths[1]));
z2=(x1 + mw/4, 0.95m);
z3=(x2 + mw/4, m/2);
z4=(x3 + mw/4, 0.05m);
z5=(x4 + mw/4, mw/2);
z6=(x5, m);
paths[p] = z0---z1..z2..z3{down}..z4{right}..z5---z6;
pen_stroke(
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(thin_vertical_nib)(0, 1,5,6)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
paths[p]=right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(down_nib)(2)
    nib(middle_up_nib)(3)
    nib(top_nib)(4)
)(paths[p])(strokes[p]);
anchor( "vc", (xpart(point 1 of paths[2]),0));
anchor( "right", point 2.25 of paths[3]);
endglyph;

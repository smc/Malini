input glyph;
beginglyph;

p:=0;
paths[p] = da;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib rotated 90)(4)
    nib(middle_down_nib)(5)
    nib(end_nib rotated 60)(6)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=point 5.75 of paths[0];
z1=(x0 + 0.68mw, 0.4m);
z2=(x1, m);
paths[1] = z0{dir -10}..{up}z1---z2;
pen_stroke(
    nib(down_nib scaled 0.75)(0)
    nib(thin_vertical_nib)(1)
    nib(thin_vertical_nib)(2)
)(paths[1])(strokes[1]);

% Connector
clearxy;
p:=p+1;
z0=(xpart(point infinity of paths[1]), m-m/6); % top of piller
z1=(x0, m/2);
z2=(x1 +  mw/3, y1 - m/2); % Top of second arch
z3=(x2 +  mw/3, y2 + m/2);
z4=(x3 -  mw/3, y3 + m/2);

paths[p] = right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(down_nib)(2)
    nib(middle_up_nib)(3)
    nib(top_nib rotated -45)(4)
)(paths[2])(strokes[2]);

anchor( "vc", point 2 of paths[1]);
anchor( "right", point 2.3 of paths[p]);

endglyph;

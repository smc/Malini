input glyph;
beginglyph;

paths[p] = da;
paths[p] := paths[p] shifted (mw/3,0);
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(end_nib rotated 90)(4)
    nib(middle_down_nib)(5)
    nib(end_nib scaled 0.6 rotated terminalangle 6 of paths[0])(6)
)(paths[p])(strokes[p]);

% Connector
clearxy;
p:=p+1;
z0=point 5.5 of paths[0];
z1=(x0 + mw/2, 0.4m);
z2=(x1, m);
paths[1] = z0{right}..{up}z1---z2;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(thin_vertical_nib)(1)
    nib(thin_vertical_nib)(2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
    nib(down_nib)(2)
    nib(middle_up_nib)(3)
    nib(top_nib rotated -45)(4)
)(paths[2])(strokes[2]);


p:=p+1;
clearxy;
z0 = point 3 of paths[p-1];
z1 = (xpart(point 1.5 of paths[p-1]), -descent*0.75 );
z2 = (xpart(point 6 of paths[p-3]), y1);
z3 = (xpart(point 1 of paths[p-3]) - mw/3, ypart(point 1 of paths[p-3]));
z4 = (x3 + mw/4, m);
paths[p] =  z0{dir (angle(direction 3 of paths[p-1])*-1)}..z1---z2..z3..z4;

pen_stroke(
    nib(middle_up_nib)(0)
    nib(down_nib)(1,2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

anchor( "vc", point 2 of paths[1]);
anchor( "right", point 0.75 of paths[p]);

endglyph;

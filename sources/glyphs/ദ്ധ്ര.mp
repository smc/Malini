input glyph;
beginglyph;

input ./glyphs/include/ദ;
paths[p] := paths[p] shifted (mw/3,0);
strokes[p] := strokes[p] shifted (mw/3,0);

% Connector
clearxy;
p:=p+1;
z0=point infinity of paths[0];
z1=(x0 + mw*0.75, 0.4m);
z2=(x1, m);
paths[1] = z0{dir angle(direction infinity of paths[p-1])*-1}..{up}z1---z2;
pen_stroke(
    nib(end_nib rotated terminalangle 6 of paths[p-1])(0)
    nib(thin_vertical_nib)(1,2)
)(paths[p])(strokes[p]);


p:=p+1;
input ./glyphs/include/right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p]:=strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

p:=p+1;
clearxy;
z0 = point 3.25 of paths[p-1];
z1 = (xpart(point 1.5 of paths[p-1]), -descent*0.8 );
z2 = (xpart(point 6 of paths[p-3]), y1);
z3 = (xpart(point 1 of paths[p-3]) - mw/3, ypart(point 1 of paths[p-3]));
z4 = (x3 + mw/4, m);
paths[p] =  z0{dir (angle(direction 3.25 of paths[p-1]))*-1}..z1---z2..z3..z4;

pen_stroke(
    nib(middle_up_nib)(0)
    nib(down_nib)(1,2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

anchor( "vc", point 2 of paths[1]);
anchor( "right", point 0.75 of paths[p]);

endglyph;

input glyph;
beginglyph;

input ./glyphs/include/ഗ_;
paths[p] := paths[p] shifted (mw/3,0);
paths[p] := subpath (0, 5) of paths[p];
clearxy;
z6 = (xpart point infinity of paths[p] + mw/2.5, (m-overshoot+y7)/2);
z7 = (x6 - mw/3, (y6+y8)/2);
z8 = (x7 + mw/2.5, (y7+y9)/2);
z9 = (x8 - mw/2, 2undershoot);
paths[p] := paths[p].. z6{down}..{left}z7{right}..z8{down}..{dir 150}z9;
paths[p] := subpath(0, 8.5) of paths[p];
pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[0])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3, 4, 5)
   nib(top_nib)(5)
   nib(end_nib rotated 90)(7)
   nib(middle_down_nib)(8)
   nib(end_nib rotated terminalangle infinity of paths[p])(9)
)(paths[p])(strokes[p]);

% Connector
clearxy;
p:=p+1;
z0= (xpart point 7 of paths[p-1], ypart point 2 of paths[p-1]);
z1=(x0 + .75mw, 0.4m);
z2=(x1, m);
paths[1] = z0{dir -5}..{up}z1---z2;
pen_stroke(
    cut(down_nib, 90)(0)
    nib(thin_vertical_nib)(1)
    nib(thin_vertical_nib)(2)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
input ./glyphs/include/right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p]:=strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);


p:=p+1;
clearxy;
z0 = point 3.25 of paths[p-1];
z1 = (3/4(x0-x3), reph_sign_depth  );
z2 = (0.35(x0-x3), y1);
z3 = (xpart(point 1 of paths[0]) - mw/3, m/2);
z4 = (x3+mw/6, m);
paths[p] =  z0{dir (angle(direction 3.25 of paths[p-1]))*-1}..z1---z2..z3{up}..{dir 45}z4;

paths[p] := insert_point(paths[p], 2.5);

pen_stroke(
    nib(middle_up_nib)(0)
    nib(thick_horizontal_nib)(1, 2)
    nib(thick_nib rotated terminalangle 3 of paths[p] scaled 0.8)(3)
    nib(middle_up_nib scaled 1.1)(4)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
    ignore_directions(3)
)(paths[p])(strokes[p]);

anchor( "vc", point 5 of paths[0]);
anchor( "right", point 0.75 of paths[p]);
endglyph;

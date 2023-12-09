input glyph;
beginglyph;

input ./glyphs/include/ഗ;
paths[p] := paths[p] shifted (mw/3,0);
paths[p] := subpath (0, 4) of paths[p];
clearxy;
z6 = (xpart point infinity of paths[p] + mw/3, (m-overshoot+y7)/2);
z7 = (x6 - mw/3, m/1.75);

paths[p] := paths[p].. z6{down}..{left}z7 ;
paths[p] := subpath(0, 8.5) of paths[p];
pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_up_nib scaled 1.2 rotated 30)(1)
   nib(down_nib rotated -20)(2)
   nib(middle_down_nib)(3, 5)
   nib(top_nib)(4)
   nib(end_nib rotated 90)(6)

)(paths[p])(strokes[p]);


% Connector
clearxy;
p:=p+1;
z0= point infinity of paths[p-1];
z1=(x0 + mw/3, (y0 + y2)/2);
z2=(x1 - mw/4, (y1 + y3)/2);
z3=(x2 + mw/4, overshoot);
z4=(x3 + mw/2.5, m/3);
paths[p] = z0{right}.. z1.. z2 ..{right}z3..z4;
pen_stroke(
    nib(end_nib rotated 90)(0)
    nib(middle_down_nib rotated -30)(1,2)
    nib(down_nib rotated 20)(3)
    nib(thin_vertical_nib)(4)
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
paths[p] =  z0{dir (angle(direction 3.25 of paths[p-1]))*-1}..z1---z2..z3..z4;

paths[p] := insert_nodes(paths[p], 2.5);

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

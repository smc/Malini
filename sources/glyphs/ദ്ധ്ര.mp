input glyph;
beginglyph;


z0 = ( x1 + mw/8 , 0);
z1 = ( 0, (y0 + y2)/2);
z2 = ( x1 + mw/2, m-overshoot); % top
z3 = ( x2 + mw/3, y2 - m/5);
z4 = ( x3 - mw/3, y3 - m/5); % <
paths[p] = z0..z1{up}..{right}z2..z3..{left}z4;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(end_nib rotated 90)(4)
)(paths[p])(strokes[p]);

paths[p] := paths[p] shifted (mw/3,0);
strokes[p] := strokes[p] shifted (mw/3,0);

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

p:=p+1;
input ./glyphs/include/right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p]:=strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);


clearxy;
p:=p+1;
z0=point 3.25 of paths[p-1];
z1=(xpart(point 1.5 of paths[p-1]), reph_sign_depth);
z2=(xpart(point 2 of paths[0]), y1);
z4=(xpart point 1 of paths[0] - mw/6, m);
paths[p] := z0{dir angle(direction 3.25 of paths[p-1])*-1}...z1---z2.. {dir 50}z4;
dt := directiontime dir 90 of subpath(2, 3) of paths[p];
paths[p] := insert_nodes(paths[p])(2 + dt);

pen_stroke(
    nib(middle_up_nib)(0)
    nib(thick_nib rotated terminalangle 2 of paths[p] scaled 0.8)(1,2)
    nib(end_nib)(3)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

anchor( "vc", point 2 of paths[1]);
anchor( "right", point 0.75 of paths[p]);

endglyph;

input glyph;
beginglyph;

input ./glyphs/include/left_arch_dha;
paths[p] := paths[p] shifted (mw/3,0);
strokes[p]:=strokes[p] shifted (mw/3,0);

clearxy;
p:=p+1;
input ./glyphs/include/right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p]:=strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

clearxy;
p:=p+1;
z0=point 3.25 of paths[p-1];
z1=(xpart(point 1.5 of paths[p-1]), reph_sign_depth);
z2=(xpart(point 2.5 of paths[0]), y1);
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

anchor( "vc", (xpart(point 3 of paths[0]),0));
anchor( "right", point 0.75 of paths[p]);
endglyph;

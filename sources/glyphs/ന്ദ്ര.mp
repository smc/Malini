input glyph;
beginglyph;
input ./glyphs/include/left_arch;
paths[p]:=paths[p] shifted (mw/3, 0) ;
strokes[p]:=strokes[p] shifted (mw/3, 0) ;

clearxy;
p:=p+1;
input ./glyphs/include/_ദ;
paths[p]:=subpath(0,4) of paths[p] shifted (xpart(point infinity of paths[p-1]), 0) ;
pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(end_nib rotated 90)(4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0 = point infinity of paths[p-1];
z1=(x0 + 0.4mw, 0);
z2=(xpart(point 2 of paths[p-1]), reph_sign_depth);
z3=(xpart(point 0 of paths[0]), y2);
z5=(xpart point 1 of paths[0] - mw/6, m);
paths[p] := z0{right}..z1{down}..z2---z3.. {dir 50}z5;
dt := directiontime dir 90 of subpath( 3, 4) of paths[p];
paths[p] := insert_nodes(paths[p])(3 + dt);

pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_down_nib)(1)
    nib(thick_nib rotated terminalangle 2 of paths[p] scaled 0.8)(2,3)
     nib(end_nib)(4)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

anchor( "vc", point 0 of paths[p]);
anchor( "right", point 5.5 of paths[p]);

endglyph;

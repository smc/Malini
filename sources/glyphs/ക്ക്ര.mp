input glyph;
beginglyph;
input ./glyphs/include/ക്ക;
for i=0 upto p:
    paths[i] := paths[i] shifted (mw/3, 0);
    strokes[i] := strokes[i] shifted (mw/3, 0);
endfor;

paths[p] := subpath(0, 8) of paths[p];
pen_stroke(
   nib(middle_up_nib)(0)
   nib(down_nib)(1)
   nib(middle_down_nib scaled 0.9)(2, 5)
   nib(thin_vertical_nib rotated 90)(3, 4)
   nib(down_nib)(6)
   nib(middle_up_nib)(7)
   nib(top_nib)(8)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0 = point infinity of paths[p-1];
z1 = (xpart point 4 of paths[p-1], reph_sign_depth);
z2 = (xpart point 0 of paths[p-1], y1);
z3 = (xpart point 2 of paths[p-1] -mw/6, m);

paths[p] := z0{right} .. z1---z2 .. {dir 50}z3;
dt = directiontime dir 270 of subpath( 0, 1) of paths[p];
paths[p] := insert_nodes(paths[p])(0 + dt );
dt := directiontime dir 90 of subpath( 3,4) of paths[p];
paths[p] := insert_nodes(paths[p])(3+ dt);
paths[p]:=harmonize(paths[p]);
pen_stroke(
    nib(top_nib)(0)
    nib(middle_down_nib)(1)
    nib(thick_nib rotated terminalangle 2 of paths[p] scaled 0.8)(2,3)
    nib(end_nib)(4)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);


anchor( "vc", point 1 of paths[0]);
anchor( "right", point 1.75 of paths[p]);

endglyph;

input glyph;
beginglyph;
input ./glyphs/include/ക;


for i=0 upto p:
    paths[i] := paths[i] shifted (mw/3, 0);
    strokes[i] := strokes[i] shifted (mw/3, 0);
endfor;

paths[p] := (subpath(0, 8.9 ) of paths[p] ) shifted (mw/3, 0);
pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(top_nib)(1)
   nib(middle_down_nib)(2)
   nib(down_nib)(3)
   nib(middle_up_nib)(4)
   nib(down_nib)(5)
   nib(middle_down_nib scaled 0.9)(6, 9)
   nib(thin_vertical_nib rotated 90)(7, 8)
)(paths[p])(strokes[p]);



p:=p+1;
clearxy;
z0 = point infinity of paths[p-1];
z1 = (0.85(x0-x3), reph_sign_depth  );
z2 = (0.55(x0-x3), y1);
z3 = (xpart(point 6 of paths[0]) - mw/3, m/2);
z4 = (x3+mw/4, m);
paths[p] =  z0{dir (angle(direction infinity of paths[p-1]))}.. z1---z2..z3..z4;

paths[p] := insert_point(paths[p], 2.5);

pen_stroke(
    nib(middle_down_nib  scaled 0.9)(0)
    nib(thick_horizontal_nib)(1, 2)
    nib(thick_nib rotated terminalangle 3 of paths[p] scaled 0.8)(3)
    nib(middle_up_nib scaled 1.1)(4)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
    ignore_directions(2,3 )
)(paths[p])(strokes[p]);

anchor( "vc", point 1 of paths[p]);
anchor( "right", point 0.6 of paths[p]);

endglyph;

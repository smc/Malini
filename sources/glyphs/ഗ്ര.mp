input glyph;
beginglyph;
z0 = (mw/3 + mw/3.5, m);
z1 = (2/3mw, undershoot);
z2 = (x1 + mw/3, (y1+  y3)/2);
z3 = (x2+mw/3, m-overshoot);
z4 = (x2*0.9, reph_sign_depth);
z5 = ( mw/5, y0);

paths[p] = z0{dir 215}..z1{right}..z2{up}..z3{right}..  {left}z4..z5;
dt = directiontime dir 270 of subpath( 0, 1) of paths[p];
paths[p] := insert_nodes(paths[p])(dt);
dt := directiontime dir 270 of subpath(4, 5) of paths[p];
paths[p] := insert_nodes(paths[p])(4 + dt );
dt := directiontime dir 90 of subpath( 6, 7) of paths[p];
paths[p] := insert_nodes(paths[p])(6 + dt );

pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib scaled 1.2 rotated 30)(1)
    nib(down_nib rotated -20)(2)
    nib(middle_down_nib)(3)
    nib(top_nib rotated 20)(4)
    nib(middle_down_nib)(5)
    nib(middle_down_nib rotated terminalangle 6 of paths[p] scaled 0.9)(6)
    nib(end_nib  rotated terminalangle 7 of paths[p])(7)
    nib(end_nib  rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);
anchor( "right",  point 5.6 of paths[p]) ;
endglyph;

input glyph;
beginglyph;

z0 = ( x1 + 0.15mw , 0);
z1 = ( 0, (y0 + y2)/2);
z2 = ( x1 + mw/2, m - overshoot); % top
z3 = ( x2 + mw/3, y4 + m/8);
z4= ( x3 - mw/5, y5 + m/6);
z5= ( x4 - mw/4, m/2);
z6= ( x4, y5 - m/6);
z7 = ( x6 + mw/3, (y6+y8)/2);
z8= (x7 - mw/2, reph_sign_depth);
z9= (x1 - mw/3, y1);
z10=(x9 + mw/4, m);

paths[p] := z0..z1{up}..z2{right}..z3{down}..z4{left}..z5{down}..z6{right}..z8{left}..z10 ;
dt := directiontime dir 270 of subpath(6, 7) of paths[p];
paths[p] := insert_nodes(paths[p])(6+ dt);
dt := directiontime dir 90 of subpath(8, 9) of paths[p];
paths[p] := insert_nodes(paths[p])(8+ dt);
paths[p] := paths[p] shifted (mw/3,0);

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1, 9)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,5, 7)
      nib(top_nib scaled 0.8)(4, 6)
    nib(thick_horizontal_nib)(8)
    nib(thick_nib rotated terminalangle 9 of paths[p] scaled 0.8)(9)
    nib(middle_up_nib scaled 1.1)(10)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
    ignore_directions(1,4,5)
)(paths[p])(strokes[p]);

anchor( "right", point 7.5 of paths[p]);

endglyph;

input glyph;
beginglyph;
z0 = ( x1 + mw/3 , 0);
z1 = ( 0, (y0 + y2)/2);
z2 = ( (x1 + x3)/2, m - overshoot); % top
z3 = ( x1 + 0.9mw, (y2 + y4)/2);
z4 = ( x3 - mw/4, (y2 + y6)/2.1 ); % <
z5 = ( x4 + mw/3, (y4 + y6)/2);
z6 = ( (x5 + x7)/1.9, undershoot);
z7 = ( x5 - 0.6mw, y4);
z8 = ( (x7 + x9)/1.8, m - overshoot*1.25);   % top
z9 = ( x7 + 0.9mw, 0.6m);
z10 = ( x9, 0);
paths[p] = z0..z1{up}..z2{right}..z3{down}..{left}z4{right}..z5..z6{left}..z7..z8..{down}z9---z10;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib rotated 90)(4)
    nib(middle_down_nib scaled 0.9)(3, 5)
    nib(down_nib)(6)
    nib(middle_up_nib)(7)
    nib(top_nib)(8)
    nib(thick_vertical_nib)(9)
    nib(thick_vertical_nib)(10)
    ignore_directions(3, 5, 6, 7)
)(paths[p])(strokes[p]);

p:=p+1;
input ./glyphs/include/right_arch_with_tail;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p] := strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

endglyph;

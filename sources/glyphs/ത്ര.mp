input glyph;
beginglyph;

z0= (x1 + mw/3, 0);
z1= (0, y0 + mw/2);
z2 = ( x1 + mw/2, 0.975m); % top
z3 = ( x2 + mw/2, y1);
z4 = ( x3 - mw/4, thick*0.6/2); % bottom middle
z5 = ( x4 - mw/4, y3);
z6 = ( x5 + mw/2, y2); % second top
z7 = ( x6 + mw/2, y1);
z8 = ( x7 - mw/3, y0); %
paths[0] = z0..z1..z2{right}..z3..{left}z4{left}..z5..z6{right}..z7;

z9 = (x3 - mw/8,  -descent); % ra sign starts
z10 = (x5,  -descent); % ra sign starts
z11 = (x1 - mw/3, y1);
z12 = (x11 + mw/8, y2);

paths[0] := paths[0]..z9---z10..z11..z12  ;
paths[0] := paths[0] shifted(mw/4,0);
pen_stroke(
    nib(start_up_nib)(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(thicknib)(8,9)
    nib(middle_up_nib)(10)
    nib(end_nib)(11)
)(paths[0])(strokes[0]);

anchor( "vc", point 4 of paths[0]);
anchor( "right", point 7.75 of paths[0]);

endglyph;

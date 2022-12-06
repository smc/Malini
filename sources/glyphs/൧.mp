input glyph;
beginglyph;
z1=(thick/2, - m/3);
z2=(x1 + mw/4, y1 + m/3);
z3=(x2 + 3/4mw, y2);
z4=(x3, y3 + m/2);
z5=(x4 - mw/3, m);
z6=(x5 - mw/3, y5 - m/2);
z7=(x6, y2);

paths[0] = z1{up}..z2---z3 ;
pen_stroke(
    nib(end_nib)(0)
    nib(top_nib)(1,2)
)(paths[0])(strokes[0]);
paths[1] =  z3---z4..z5..z6---z7;
pen_stroke(
    nib(thick_vertical_nib)(0,1,3,4)
    nib(top_nib)(2)
)(paths[1])(strokes[1]);

endglyph;

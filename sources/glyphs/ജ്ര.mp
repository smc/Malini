input glyph;
beginglyph;
input ./glyphs/include/ജ;
for i=0 upto p:
    paths[i] := paths[i] shifted (mw/3, 0);
    strokes[i] := strokes[i] shifted (mw/3, 0);
endfor;


p:=p+1;
clearxy;
z0 = point 1 of paths[p-1];
z1 = (x0 + mw/2, (y0+y2)/2);
z2 = (x0, -descent*0.8 );
z3 = (xpart(point 2 of paths[0]), y2);
z4 = (xpart(point 0 of paths[0]) - mw/3, (y3+y5)/2);
z5 = (x4 + mw/4, m);
paths[p] =  z0{right}..z1{down}..z2..z3..z4..z5;

pen_stroke(
    nib(top_nib)(0)
    nib(middle_down_nib)(1)
    nib(down_nib)(2,3)
    nib(middle_up_nib)(4)
    nib(end_nib rotated terminalangle 5 of paths[p])(5)
)(paths[p])(strokes[p]);

anchor( "right", point 1.75 of paths[p]);

endglyph;

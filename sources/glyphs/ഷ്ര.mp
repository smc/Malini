input glyph;
beginglyph;

input ./glyphs/include/ഷ;

for i=0 upto 3:
    paths[i] := paths[i] shifted (mw/3, 0);
    strokes[i] := strokes[i] shifted (mw/3, 0);
endfor;


clearxy;
p:=p+1;
z0 = point 1 of paths[1];
z1 = (xpart(point 0.7 of paths[1]), -descent*0.8  );
z2 = (xpart(point 2 of paths[0]), y1);
z3 = (xpart(point 1 of paths[0]) - mw/3, ypart(point 1 of paths[0]));
z4 = (x3 + mw/4, m);
paths[p] =  z0{down}..z1---z2..z3..z4;

pen_stroke(
    nib(middle_down_nib rotated -10)(0)
    nib(down_nib)(1,2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);


anchor( "vc", point 0.5 of paths[1]);
anchor( "right",  point 0.6 of paths[p]);

endglyph;

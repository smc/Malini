input glyph;
beginglyph;
p:=0;
z0=(x2 + Xw/3, y1-thick/2);
z1=((x0+x2)/2, 1.05X-thick/4);
z2=(x4  , 0.8X);
z3=(x4, 3/4s);
z4=(sw/4, 0);
paths[0] = z0{dir 135}..z1..{down}z2 ..{down}z3---z4;

%bar
z5 = (0, s);
z6 = (x5 + Xw/2.5, y5);
p:=p+1;
paths[1] = z5--z6;
pen_stroke(
    nib(thick_vertical_nib)(3,4)
    nib(top_nib)(1)
    nib(thick_vertical_nib)(2)
    nib(thicknib rotated terminalangle 0 of paths[0])(0)
    ignore_directions(1, 2)
)(paths[0])(strokes[0]);
pen_stroke(
   nib(end_nib rotated 90)(0,1)
)(paths[1])(strokes[1]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke(paths[p]);

endglyph;

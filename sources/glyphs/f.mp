input glyph;
beginglyph;
z0=(x2 + Xw/3, y1-X/10);
z1=((x0+x2)/2, 1.1X);
z2=(x4  , 0.8X);
z3=(x4, 3/4s);
z4=(sw/4, thick/4);
paths[0] = z0{dir 120}..z1{left}..{down}z2 ..{down}z3---z4;
pen_stroke(
        nib(thicknib rotated terminalangle 0 of paths[0])(0)
    nib(thick_vertical_nib)(3,4)
    nib(top_nib)(1)
    nib(thick_vertical_nib)(2)
)(paths[0])(strokes[0]);

%bar
z5 = (0, s-thick/4);
z6 = (x5 + Xw/2.5, y5);
p:=p+1;
paths[1] = z5--z6;

pen_stroke(
    nib(thick_nib scaled 0.5 rotated 90)(0,1)
)(paths[1])(strokes[1]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[0], 0);
strokes[p] := serif_stroke_bottom(paths[p]);
lbearing:=lbearing/2;

endglyph;

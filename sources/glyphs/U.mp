input glyph;
beginglyph;
p:=0;
w_ := 0.66X;
z0=(x1 + 0.01s, X);
z1=(0, X/3);
z2=(x1 + w_/2, 0);
z3=(x2 + w_/2, y1);
z4=(x3 - 0.01s, X);
paths[p] = z0---z1..z2..z3---z4 ;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
    nib(thin_vertical_nib)(3,4)
    nib(down_nib)(2)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (point 0 of paths[0]);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_top_thin shifted (point infinity of paths[0]);
strokes[p] := serif_stroke(paths[p]);

anchor( "top", (xpart(point 2 of paths[0]), 1.2X));
endglyph;

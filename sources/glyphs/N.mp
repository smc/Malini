input glyph;
beginglyph;
p:=0;
z0= (thick/2, X);
z1=( x0, X/2);
z2=( x1, 0);


paths[p] = z0--z1--z2 ;
pen_stroke(
    nib(thin_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
p:=p+1;

z3 = (x0, y0);
z4 = (x3 + 0.66*X/2, y1);
z5 = (x4 + 0.66*X/2, y2 + thin*1.5);
paths[p] = z3--z5;
pen_stroke(
    nib(thick_vertical_nib scaled 1.5)(0)
    nib(thick_vertical_nib scaled 1.75 rotated 90)(1)
)(paths[1])(strokes[1]);
p:=p+1;
z6 = (x5 -thin/2, thin*1.5);
z7 = (x6, y1);
z8 = (x6, y0);
paths[p] = z6--z7--z8;
pen_stroke(
    nib(thin_vertical_nib)(0,1,2)
)(paths[2])(strokes[2]);

% Serifs
p:=p+1;
paths[p] := subpath(1.5, 4) of serif_top_thick shifted (point 0 of paths[0] + (thin/2, 0));
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thin shifted (point infinity of paths[0]);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_top_thin shifted (point infinity of paths[2]);
strokes[p] := serif_stroke(paths[p]);

anchor( "top", (xpart(point 0.5 of paths[1]), 1.2X));
anchor( "bottom", (xpart(point 1 of paths[1]), 0));
endglyph;

input glyph;
beginglyph;

p:=0;
z0=(0, X);
z1=(0, y0-2/3thick);
z2=(x0, y3+2/3thick);
z3=(x0,  0);
paths[p] := z0--z1--z2--z3;
pen_stroke(
    nib(end_nib scaled 3)(0)
    nib(thick_vertical_nib)(1,2)
    nib(end_nib scaled 3)(infinity)
)(paths[p])(strokes[p]);


anchor( "top", (xpart(point 0 of paths[0]), 1.2X));
endglyph;

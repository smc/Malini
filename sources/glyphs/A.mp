input glyph;
beginglyph;
clearxy;

p:=0;
% Left slant
z0= (0, 0);
z1= (x0 + 0.36Xw, X);
z2=(x1 + 0.36Xw, y0);
paths[p] = z0--z1--z2;
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0 = point 0.35 of paths[p-1] ;
z1 = point 1.65 of paths[p-1] ;
paths[p]:= z0..z1 ;
pen_stroke(
    nib(end_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted (point 0 of paths[0]) slanted 0.36;
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point 0 of paths[0] slanted 0.36;

p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted point infinity of paths[0] slanted -0.36;
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point infinity of paths[0] slanted -0.36;


anchor( "top", (xpart(point 1 of paths[0]), 1.2X));
endglyph;

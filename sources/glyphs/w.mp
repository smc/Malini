input glyph;
beginglyph;

z0=(0, s);
z1=(x0 + sw/2.25, 0);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_nib)(0)
     cut(thick_nib, 60+slant)(1)
)(paths[p])(strokes[p]);

% Right slant -> /
p:=p+1;
clearxy;
z0= (xpart point 1 of strokes[p-1] + thin/2*0.75 , 0);
z1=(x0+sw/2.75, 3/4s);
paths[p] = z0--z1 ;
pen_stroke(
     cut(thin_nib scaled 1.25, 0)(0)
     cut(thin_nib scaled 1.25, 0)(1)
)(paths[p])(strokes[p]);

strokes[p-1]:= point 0 of strokes[p-1]
     -- point 3 of strokes[p]
     -- point 2 of strokes[p-1]
     -- point 3 of strokes[p-1]
     -- cycle;

% \ slant
p:=p+1;
paths[p] = paths[0] shifted (xpart(point 3/4 of paths[p-1]),0);
pen_stroke(
     nib(thick_nib)(0)
     cut(thick_nib, 60+slant)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0= (xpart point 1 of strokes[p-1] + thin/2*0.75 , 0);
z1=(x0+sw/2.25, s);
paths[p] = z1--z0 ;
pen_stroke(
     cut(thin_nib scaled 1.25, 0)(0)
     cut(thin_nib scaled 1.25, 0)(1)
)(paths[p])(strokes[p]);

strokes[p-1]:= point 0 of strokes[p-1]
     -- point 1 of strokes[p]
     -- point 2 of strokes[p-1]
     -- point 3 of strokes[p-1]
     -- cycle;

% Serifs
strokes[0] := top_left_slanted_serif(strokes[0], 0);
strokes[2] := top_left_slanted_serif(strokes[2], 0);
strokes[3] := top_right_slanted_serif(strokes[3], 0);


lbearing:=sw/3*0.1;
rbearing:=sw/3*0.1;
anchor( "top", (xpart(point 0 of paths[2]), 0.9X));

endglyph;

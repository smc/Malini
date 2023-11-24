input glyph;
beginglyph;
z0=(0, X);
z1=(x0 + Xw/2.25, 0);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_nib)(0)
     cut(thick_nib,60+slant)(1)
)(paths[p])(strokes[p]);

% Right slant
p:=p+1;
clearxy;
z0= (xpart point 1 of strokes[p-1] + thin/2*0.75 , 0);
z1=(x0+Xw/2.25, X);
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
strokes[1] := top_right_slanted_serif(strokes[1], 0);

endglyph;

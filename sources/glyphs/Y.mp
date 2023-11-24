input glyph;
beginglyph;
z0=(0, X);
z1=(x0 + sw/2.25,0.4X);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_nib)(0)
     cut(thick_nib, 60+slant)(1)
)(paths[p])(strokes[p]);

% Right slant
p:=p+1;
clearxy;
z0= (xpart point 1 of strokes[p-1] + thin/2*0.75 , 0.4X);
z1=(x0+sw/2.25, X);
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

p:=p+1;
clearxy;
z0 = (xpart point 3 of paths[p-1], 0.45X);
z1 = (x0, 0);
paths[p] = z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% Attach it ot the top strokes
strokes[p]:= point 0 of strokes[p] + (0, thick/8)
     -- subpath(0,2)  of strokes[p]
     -- point 2 of strokes[p]
     -- point 0.78 of paths[p-1]{dir -135}
     ..{dir 135} cycle;


% Serifs
strokes[0] := top_left_slanted_serif(strokes[0], 0);
strokes[1] := top_right_slanted_serif(strokes[1], 0);

strokes[2] := bottom_serif(strokes[2], 2);


anchor( "top", (xpart(point 1 of paths[2]), 1.1X));
endglyph;

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



vardef top_left_slanted_serif(expr s, p ) =
    clearxy;
    z0 = (point p of s) + (-serif_width+thick/2, 0); % Move to left
    z1 = (x0, y0  -3/4serif_height);
    z2 = (point 0.2 of s);

    z4 = (point p + 0.05 of s);
    z5 = (x4, y4);


    z6 = point length(s) - 1 - 0.3 of s;
    z7 = (x6 + serif_width-thick/2, y1);
    z8 = (x7, y0);

    z9=(point length(s) - 1 - 0.1 of s);
    z10=(x6+ 0.05u, y4);


     z0{dir 250}
     .. {dir 300}z1.. controls z4 and z5 .. z2
     -- subpath(p+1, length(s)-2) of s
     -- z6 .. controls z9 and z10.. z7
     --z8{dir 183} .. {dir 177}cycle

enddef;


% Serifs
strokes[0] := top_left_slanted_serif(strokes[0], 0);
strokes[1] := top_right_slanted_serif(strokes[1], 0);

endglyph;

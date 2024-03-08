input glyph;
beginglyph;

z0=(x1 + Xw/2.5, X);
z1=(0, 0);
paths[p] = z0--z1 ;
pen_stroke(
    nib(thin_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);

% Right slant
p:=p+1;
clearxy;
z0=(xpart(point 0 of paths[p-1]), X)  ;
z1=(x0+Xw/2.5, 0);
paths[p] = z0--z1 ;

pen_stroke(
    cut(thick_nib, rel 90)(0)
    nib(thick_nib)(1)
)(paths[p])(strokes[p]);

% Precisely position the corner of left slant on right slant
strokes[p-1] := point 0 of strokes[p]
        -- subpath(1, length(strokes[p])-1) of strokes[p-1]
        -- cycle;

% Cross bar
clearxy;
p:=p+1;
z0 = point 0.6 of paths[p-2] ;
z1 = (xpart point 0.65 of paths[p-1], y0) ;
paths[p]:= z0--z1 ;
pen_stroke(
    nib(top_nib)(0)
    cut(top_nib, -70)(1)
)(paths[p])(strokes[p]);


% Left leg serif
strokes[0] := bottom_left_slanted_serif(strokes[0], 1);

% Right leg serif
strokes[1] := bottom_right_slanted_serif(strokes[1], 1);

lbearing:=sw/3*0.1;
rbearing:=sw/3*0.1;
anchor( "top", (xpart(point 0 of paths[0]), 1.2X));
endglyph;

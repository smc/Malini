input glyph;
beginglyph;

z0=(0, 0);
z1=(x0 + Xw/2.5, X);
paths[p] = z0--z1 ;
pen_stroke(
    nib(thin_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);

% Right slant
p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]), X)  ;
z1=(x0+Xw/2.5, 0);
paths[p] = z0--z1 ;

pen_stroke(
    cut(thick_nib, rel 90)(0)
    nib(thick_nib)(1)
)(paths[p])(strokes[p]);

% Precisely position the corner of left slant on right slant
strokes[p-1] := point 0 of strokes[p-1] --
    point 1 of strokes[p-1] --
    point 0 of strokes[p] --
    point 3 of strokes[p-1] -- cycle;

% Cross bar
clearxy;
p:=p+1;
z0 = point 0.4 of paths[p-2] ;
z1 = (xpart point 0.65 of paths[p-1], y0) ;
paths[p]:= z0--z1 ;
pen_stroke(
    nib(top_nib)(0)
    cut(top_nib, -70)(1)
)(paths[p])(strokes[p]);


% Left leg serif
clearxy;
z0 = point 2.75 of strokes[0];
z1 = (x0 - serif_width, 3/4serif_height);
z2 = (x1, 0);
z3 = (xpart point 0 of strokes[0] + serif_width, y2);
z4 = (x3, y1);

% control points
z5=point 2.95 of strokes[0];
z6=(x5, y5);

z7 = point 0.05 of strokes[0];
z8 = (x7, y5);

strokes[0] := z0..controls z5 and z6 ..z1{dir 250}
    .. {dir 300}z2{dir 3}..{dir -3}z3{dir 70}
    .. {dir 110}z4..controls z7 and z8
    .. subpath(0.25, 2.75) of strokes[0]
    --cycle;

% Right leg serif
clearxy;
z0 = point 0.75 of strokes[1];
z1 = (x0 - 1/4serif_width, 3/4serif_height);
z2 = (x1, 0);
z3 = (xpart point 2 of strokes[1] + serif_width/2, y2);
z4 = (x3, y1);

% control points
z5= point 0.95 of strokes[1];
z6=(x5, y5);

z7 = point 2.05 of strokes[1];
z8 = (x7, y7);

strokes[1] := z0..controls z5 and z6 ..z1{dir 250}
    .. {dir 300}z2{dir 3}..{dir -3}z3{dir 70}
    .. {dir 110}z4..controls z7 and z8
    .. subpath(2.25, 4) of strokes[1]
    -- cycle;

lbearing:=sw/3*0.1;
rbearing:=sw/3*0.1;
anchor( "top", (xpart(point 1 of paths[0]), 1.1X));
endglyph;

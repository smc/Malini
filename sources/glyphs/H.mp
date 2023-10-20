input glyph;
beginglyph;
z0=(0, X);
z1=(x0, X/2);
z2=(x1, 0);
z3=(x0 + 0.6X, X);

paths[p] = z0--z2;
pen_stroke(
  nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);

p:=p+1;

z5=(x3, 0);
paths[p] = z3--z5;
pen_stroke(
  nib(thick_vertical_nib)(0,1,2)
)(paths[1])(strokes[1]);

p:=p+1;
z6 = point 0.5 of paths[0];
z7 = point 0.5 of paths[1];
paths[p]:= z6..z7;
pen_stroke(
     nib(end_nib rotated 90)(0,1)
)(paths[2])(strokes[2]);


vardef top_serif(expr s, p ) =
    clearxy;
    z0 = (point p of s) + (-1.2serif_width+thick/2, 0); % Move to left
    z1 = (x0, y0  -3/4serif_height);
    z2 = (xpart point p of s, y1-serif_width*2);

    z4 = (xpart point p of s-0.05u, ypart point p of s - serif_height*1.2);
    z5 = (xpart point p of s, y4);


    z6 = (xpart point p-2 of s, y2);
    z7 = (x6 + serif_width-thick/2, y1);
    z8 = (x7, y0);

    z9=(x6 , y4);
    z10=(x6+ 0.05u, y4);

    z0{dir 250}
    .. {dir 300}z1.. controls z4 and z5 .. z2
    -- subpath(p+1, length(s)-2) of s
      .. z6 .. controls z9 and z10.. z7
    --z8{dir 183} .. {dir 177}cycle

enddef;

% Serifs
strokes[0] := top_serif(strokes[0], 0);
strokes[0] := bottom_serif(strokes[0], 1+2);

strokes[1] := top_serif(strokes[1], 0);
strokes[1] := bottom_serif(strokes[1], 1+2);

anchor( "top", (xpart(point 0.5 of paths[2]), 1.2X));
endglyph;

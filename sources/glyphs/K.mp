input glyph;
beginglyph;
z0=(thick/2, X);
z1=(x0, 0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% /
clearxy;
p:=p+1;
z0= (xpart(point 1 of paths[0]), X/3);
z1= ( x0 + 0.6Xw, X);

paths[p] = z1--z0;
pen_stroke(
  nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% \
p:=p+1;
clearxy;
z0 = point .7 of paths[p-1];
z1 = (xpart point 0 of paths[p-1] + thick/2, 0);
paths[p] = z0--z1;


pen_stroke(
  nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% Serifs
strokes[0] := top_serif(strokes[0],0);
strokes[0] := bottom_serif(strokes[0], 3);


vardef top_right_slanted_serif(expr s, p ) =
    clearxy;
    z0 = (point p  of s) + (-serif_width, 0); % Move to left
    z1 = (x0, y0  -3/4serif_height);
    z2 = (point 0.3 of s);

    z4 = (xpart point p + 0.1 of s, ypart point p of s - serif_height*1.2);
    z5 = (x4, y4);


    z6 = point length(s)- 1 - 0.3 of s;
    z7 = (x6 + serif_width*1.5 , y1); % Move to right
    z8 = (x7, y0);

    z9=(xpart point length(s) - 1 - 0.065 of s , y4);
    z10=(x9, y9);

    z0{dir 250}
     .. {dir 300}z1.. controls z4 and z5 .. z2
     -- subpath(p+1, length(s)-2) of s
     -- z6 .. controls z9 and z10.. z7
     --z8{dir 183} .. {dir 177}cycle

enddef;

strokes[1] := top_right_slanted_serif(strokes[1], 0);


% Right leg serif
clearxy;
z0 = point 0.75 of strokes[2];
z1 = (x0 - 1/4serif_width, 3/4serif_height);
z2 = (x1, 0);
z3 = (xpart point 2 of strokes[2] + serif_width/2, y2);
z4 = (x3, y1);

% control points
z5= point 0.9 of strokes[2];
z6=(x5, y5);

z7 = point 2.15 of strokes[2];
z8 = (x7, y7);

strokes[2] := z0..controls z5 and z6 ..z1{dir 250}
    .. {dir 300}z2{dir 3}..{dir -3}z3{dir 70}
    .. {dir 110}z4..controls z7 and z8
    .. subpath(2.25, 4) of strokes[2]
    -- cycle;

endglyph;

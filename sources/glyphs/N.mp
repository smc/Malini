input glyph;
beginglyph;
p:=0;
z0= (thick/2, X);
z1=( x0, X/2);
z2=( x1, 0);
z3 = (x0, y0);
z4 = (x3 + 0.66*X/2, y1);
z5 = (x4 + 0.66*X/2, y2);
z6 = z5;
z7 = (x6, y1);
z8 = (x6, y0);
paths[p] = z0{down}..z1..{down} z2 ;
pen_stroke(
    nib(thin_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
p:=p+1;
paths[p] = z3--z4--z5;
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[1])(strokes[1]);
p:=p+1;
paths[p] = z6{up}..z7..{up}z8;
pen_stroke(
    nib(thin_vertical_nib)(0,1,2)
)(paths[2])(strokes[2]);

% Serifs
p:=p+1;
strokes[p]:=paths[p] := serif_top_left shifted point 0 of paths[0] ;
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted point 2 of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point 2 of paths[0];

p:=p+1;
strokes[p]:=paths[p] := serif_top_left shifted point 2 of paths[2];
p:=p+1;
strokes[p]:=paths[p] := serif_top_right shifted point 2 of paths[2];


anchor( "top", (xpart(point 1 of paths[1]), 1.2X));
anchor( "bottom", (xpart(point 1 of paths[1]), 0));
endglyph;

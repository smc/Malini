input glyph;
beginglyph;

input ./glyphs/include/ബ;

% Shoe
clearxy;
p:=p+1;
z0 = (xpart(point 0.25 of paths[3]), thick*0.6/2);
z1 = (xpart point 0 of paths[2], -descent*0.8) ;
z2 = (xpart(point 1 of paths[3]), y1) ;
paths[p] := z0{down}..{left}z1{right}...{right}z2;
pen_stroke(
    nib(end_nib)(0)
    nib(end_nib rotated 90)(1,2)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(xpart point infinity of paths[p-1], ypart point 2 of strokes[p-1]);
z1 = point 0 of paths[4];
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);


anchor( "vc", (xpart(point 5 of paths[0]),0));
anchor( "right", point 2 of paths[p-1] - (mw/5, 0));
endglyph;

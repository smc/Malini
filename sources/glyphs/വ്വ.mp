input glyph;
beginglyph;
p=0;
paths[p] := va_mouth;
strokes[p] := va_mouth_stroke(paths[p]);
% Horizontal stem
p:=p+1;
clearxy;
z0=(0,0);
z1=(x0 + 0.8mw, y0);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thick/4, thick*sind(45)/2 );

pen_stroke(
    cut(thin_horizontal_nib, 45)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, thick/2);
z1=(x0, m);

paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point infinity of paths[p-1])-thick/2, 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);


% Shoe
clearxy;
p:=p+1;
z0 = (xpart(point 0.25 of paths[1]), thick*0.6/2);
z1 = (xpart point 2 of paths[0], -descent*0.8) ;
z2 = (xpart(point 1 of paths[1]), y1) ;
paths[p] := z0{down}..{left}z1{right}...{right}z2;
pen_stroke(
    nib(end_nib)(0)
    nib(end_nib rotated 90)(1,2)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(xpart point infinity of paths[p-2], ypart point 2 of strokes[p-1]);
z1 = point 0 of paths[2];
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

anchor( "vc", point 2 of paths[0]);
anchor( "right", point 2 of paths[p-1] - (mw/5, 0));
endglyph;

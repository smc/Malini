input glyph;
beginglyph;
p=0;

paths[p] := va_mouth shifted (mw/3,0);
strokes[p] := va_mouth_stroke(paths[p]);
% Horizontal stem
p:=p+1;
clearxy;
z0=(0,0);
z1=(x0 + 0.8mw, y0);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1]) + thin*1.2/2 , thick*sind(45)/2);

pen_stroke(
    nib(thin_horizontal_nib)(0)
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


clearxy;
p:=p+1;
z0 = point 0 of paths[2];
z1 = (xpart(point 0.5 of paths[1]), -descent*0.75 );
z2 = (xpart(point 2 of paths[0]), y1);
z3 = (xpart(point 1 of paths[0]) - mw/3, ypart(point 1 of paths[0]));
z4 = (x3 + mw/4, m);
paths[p] =  z0{down}..{dir 190}z1..z2{dir 170}..z3{up}..z4;

pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1,2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);
anchor( "vc",  point 2 of paths[0]);
anchor( "right", (point .6 of paths[3]));

endglyph;

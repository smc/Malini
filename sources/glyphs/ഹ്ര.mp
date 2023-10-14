input glyph;
beginglyph;
paths[p] := pa_mouth shifted (mw/3, 0);
strokes[p] := va_mouth_stroke(paths[p]);

clearxy;
p:=p+1;
z0=(0,0);
z1=z0 + (0.8mw,0);
paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thick/4, thick*sind(45)/2 );

pen_stroke(
    cut(thin_horizontal_nib, 30)(0)
    cut(thin_horizontal_nib, -45)(1)
)(paths[p])(strokes[p]);
strokes[p]:= (xpart point infinity of strokes[p-1], ypart(point 0 of strokes[p])) -- subpath( 1, 3) of strokes[p]--cycle;

p:=p+1;
input ./glyphs/include/റ;
xshift = xpart(point 1 of paths[p-1]) - mw/4;
paths[p] := subpath(0, 3) of paths[p] shifted (xshift, 0);

pen_stroke(
    nib(start_up_nib rotated 90)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
)(paths[p])(strokes[p]);



p:=p+1;
clearxy;
z0 = point infinity of paths[p-1];
z1 = (0.7(x0-x3), -descent + thick/2 );
z2 = (1/3(x0-x3), y1);
z3 = (xpart(point 1 of paths[0]) - mw/3, (y2+y4)/2);
z4 = (x3+mw/4, m);
paths[p] =  z0{down}..z1---z2..z3{up}..{dir 30}z4;

pen_stroke(
    nib(middle_down_nib)(0)
    nib(thick_horizontal_nib)(1, 2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);



anchor( "vc", point 0.5 of paths[1]);
anchor( "right", point 0.75 of paths[p]);

endglyph;

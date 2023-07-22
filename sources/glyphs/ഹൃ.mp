input glyph;
beginglyph;
paths[p] := pa_mouth;
strokes[p] := va_mouth_stroke(paths[p]);

clearxy;
p:=p+1;
z0=(0,0);
z1=z0 + (0.8mw,0);
paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thick/4, thick*sind(45)/2 );

pen_stroke(
    cut(thin_horizontal_nib, 30)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);
strokes[p]:= (xpart point infinity of strokes[p-1], ypart(point 0 of strokes[p])) -- subpath( 1, 3) of strokes[p]--cycle;


p:=p+1;
paths[p] := subpath(0.15, 2.75) of ra shifted (xpart(point 1 of paths[p-1]) - mw/4, 0);

pen_stroke(
    nib(start_up_nib rotated 90)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
% ഋ sign
z0 = point infinity of paths[p-1];
z1 = (x0 - 0.75mw, -descent);
z2 = (x1 - mw/3, (y1+y3)/2);
z3 = (x1, y2+m/6);
z4 = (x1 + mw/3, y2);
paths[p] = z0{dir angle(direction infinity of paths[p-1]) }.. {left}z1..z2..z3..z4;
pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1)
    nib(middle_down_nib)(2)
    nib(top_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);

endglyph;

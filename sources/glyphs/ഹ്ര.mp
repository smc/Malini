input glyph;
beginglyph;
p:=0;
paths[p] := pa_mouth shifted (mw/3, 0);
strokes[p] := va_mouth_stroke(paths[p]);

clearxy;
p:=p+1;
z0=point infinity of paths[0];
z1=z0 + (mw*0.75,0);
z2=(x1 + mw*0.2, -thin*1.2/4);
paths[p] := z0--z1--z2;
paths[p] := paths[1] shifted (0, thick*sind(45)/2);

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
    nib(end_nib scaled 0.5 rotated 90)(2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := subpath(0, 3) of ra shifted (xpart(point 1 of paths[p-1]) - mw/8, thin/2);

pen_stroke(
    nib(start_up_nib rotated 90)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
% ര sign
z0 = point 3 of paths[p-1];
z1 = (xpart(point 4 of paths[1]), -descent*0.75 );
z2 = (xpart(point 6 of paths[p-3]), y1);
z3 = (xpart(point 1 of paths[p-3]) - mw/3, ypart(point 1 of paths[p-3]));
z4 = (x3 + mw/4, m);
paths[p] =  z0{dir angle(direction infinity of paths[p-1]) }..{dir 190}z1..z2{dir 170}..z3..z4;

pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1,2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);
anchor( "right", point 0.75 of paths[p]);

endglyph;

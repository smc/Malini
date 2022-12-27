input glyph;
beginglyph;
p=0;
paths[p] := pa_mouth;
strokes[p] := va_mouth_stroke(paths[p]);

p:=p+1;
clearxy;
z0 = (0,0);
z1 = (x0 + mw, y0);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1]), thick*sind(45)/2 );

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0, m);


paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point 1 of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);


p:=p+1;

% Ra
paths[p] = ra;
paths[p] := paths[p] shifted (0, -1.05m ) xscaled 0.7 yscaled 0.7;
pen_stroke(
   nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib  rotated -45)(4)
)(paths[p])(strokes[p]);
p:=p+1;
paths[p] := paths[p-1] shifted (0.9mw, 0);

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib  rotated -45)(4)
)(paths[p])(strokes[p]);

rbearing:=0;

anchor( "vc", (xpart(point 2 of paths[0]),0));


endglyph;

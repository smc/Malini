input glyph;
beginglyph;
p=0;
paths[p] := pa_mouth shifted (0, thick/4);
strokes[p] := va_mouth_stroke(paths[p]);

p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 0.9mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[1] shifted ( point infinity of paths[p-1] + ( 0, thick*sind(45)/2) );

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, thick/4);
z1=(x0, m);

paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point 1 of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);

% ന
p:=p+1;
clearxy;
paths[p] = left_arch;
p:=p+1;
paths[p] = right_arch shifted (xpart(point infinity of paths[p-1]), 0);
paths[p-1] := paths[p-1] shifted(0.43m, -1.1m) xscaled 0.7 yscaled 0.6;
paths[p] := paths[p] shifted(0.4m, -1.1m) xscaled 0.7 yscaled 0.6;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[p-1])(strokes[p-1]);
pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);

endglyph;

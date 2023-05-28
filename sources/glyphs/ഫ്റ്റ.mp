input glyph;
beginglyph;
paths[p] := pa_mouth;
strokes[p] := va_mouth_stroke(paths[p]);

p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 1.4mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thick/4, thick*sind(45)/2 );

pen_stroke(
    cut(thin_horizontal_nib, 45)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]), 0);
z1=(x0, m/2);
z2=((x1+x3)/2, m-overshoot);
z3=(x0 - mw*0.75, y1);
z4=(x3,ypart(point infinity of paths[p-1]));
paths[p]:= z0---z1..z2..z3---z4 ;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_up_nib)(3,4)
)(paths[p])(strokes[p]);

p:=p+1;

% Ra
paths[p] = ra;
paths[p] := paths[p] shifted (mw/4, -1.05m ) xscaled 0.75 yscaled 0.75;
pen_stroke(
    nib(start_up_nib scaled 0.8 rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib scaled 0.8)(1)
    nib(top_nib scaled 0.8)(2)
    nib(middle_down_nib scaled 0.8)(3)
    nib(end_nib  scaled 0.8 rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);
p:=p+1;
paths[p] := paths[p-1] shifted (mw, 0);

pen_stroke(
    nib(start_up_nib scaled 0.8 rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib scaled 0.8)(1)
    nib(top_nib scaled 0.8 )(2)
    nib(middle_down_nib scaled 0.8)(3)
    nib(end_nib scaled 0.8 rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point 2 of paths[0]),0));


endglyph;

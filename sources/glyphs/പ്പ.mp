input glyph;
beginglyph;
p=0;
paths[p] :=pa_mouth;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 0.75mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( point 4 of paths[p-1] + ( thick*0.5, thick*sind(45)/2) );

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


paths[3] := paths[0] shifted (0.3mw, -0.75m) xscaled 0.8 yscaled 0.75;
paths[4] := paths[1] shifted (0.3mw, -0.75m) xscaled 0.8 yscaled 0.75;
paths[5] := paths[2] shifted (0.31mw, -0.75m) xscaled 0.8 yscaled 0.75;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4)
)(paths[3])(strokes[3]);
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[4])(strokes[4]);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[5])(strokes[5]);

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "bottom", point 1 of paths[4]);
anchor( "right", point 1 of paths[4] - (mw/5, 0));

endglyph;

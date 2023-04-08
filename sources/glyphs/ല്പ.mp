input glyph;
beginglyph;

input ./glyphs/include/ല;

% പ

clearxy;
p:=p+1;
paths[p] := pa_mouth;


p:=p+1;
clearxy;
z0= (0,0);
z1=(x0 + 0.9mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( point infinity of paths[p-1] + ( 0, thick*sind(45)/2) );

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0, m);


paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point 1 of paths[p-1]), 0);

paths[p-2] := paths[p-2] shifted (0.19mw, -0.75m) xscaled 0.8 yscaled 0.75 ;
paths[p-1] := paths[p-1] shifted (0.25mw, -0.75m) xscaled 0.8 yscaled 0.75 ;
paths[p] := paths[p] shifted (0.235mw, -0.75m) xscaled 0.8 yscaled 0.75 ;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p-2])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib xscaled 0.8 yscaled 0.75)(3)
    nib(end_nib)(4,5)
)(paths[p-2])(strokes[p-2]);
pen_stroke(
    nib(thin_horizontal_nib xscaled 0.8 yscaled 0.75)(0)
    nib(thin_horizontal_nib xscaled 0.8 yscaled 0.75)(1)
)(paths[p-1])(strokes[p-1]);
pen_stroke(
    nib(thick_vertical_nib xscaled 0.8 yscaled 0.75)(0)
    nib(thick_vertical_nib xscaled 0.8 yscaled 0.75)(1)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[2]);
anchor( "right", point 0 of paths[p] - (mw/5,0) );

endglyph;
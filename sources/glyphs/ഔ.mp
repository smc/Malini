input glyph;
beginglyph;
input ./glyphs/include/ഒ;

clearxy;
p:=p+1;

z0 = (x1 + mw*0.1, 0.4m);
z1 = (0, (y0+y2)/2);
z2 = ((x1 + x3)/2, m-overshoot);
z3 = (x1 + mw*0.6, .6m);
z4 = (x3, .4m);

paths[2] = z0..z1{up}..z2{right}..{down}z3---z4 ;
paths[2] := paths[2] shifted (xpart(point 5 of paths[1]) + mw/5, 0);
pen_stroke(
   nib(start_up_nib rotated terminalangle 0 of paths[2])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
   nib(thick_vertical_nib scaled 0.9)(3, 4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0 =  point 4 of paths[2] + (thick*0.5/2, 0);
z1 = (x0, m*0.6);
z2 = ((x1 + x3)/2, m-overshoot);
z3 = (x1 + 0.66mw, (y2+y4)/1.75);
z4 = (x3 - 0.8mw, 0);

paths[p] = z0 --- z1 ..z2{right}..z3{down}..{dir 175}z4;

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated 90)(4)
)(paths[p])(strokes[p]);

endglyph;

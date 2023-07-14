input glyph;
beginglyph;
z0 = (thick/2, s);
z1= (x0+0.025Xw, y0+0.15X);
z2 = ((x0+ x3)/2, X-overshoot);
z3 = (x0+ Xw/2, y0);
z4 = (thick/2, thick*sind(45)*0.75);
paths[p] := z0{dir 110}..z1..z2{right}..z3{down}...{dir 255}z4;

pen_stroke(
    nib(thicknib scaled 1.2 rotated terminalangle 0 of paths[p] )(0)
    nib(thicknib  scaled 0.6  rotated terminalangle 1 of paths[p])(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(middle_down_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z4 = (0, thick*sind(45)/2) ;
z5 = (xpart(point 3 of paths[p-1]) + thick/2, y4) ;
paths[p] = z4--z5 ;

pen_stroke(
   nib(thick_horizontal_nib)(0,1)
)(paths[p])(strokes[p]);


% Bottom bar serif
p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[p-1]), ypart(point infinity of strokes[p-1]));
z1=(x0 + 0.075sw, y0  + 1.5serif_width);
z2=(x1 - serif_height, y1);
z3=point 2.15 of strokes[p-1];
paths[p] :=z0--z1--z2{dir -110}..z3--cycle;
strokes[p] := paths[p];


endglyph;
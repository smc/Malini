input glyph;
beginglyph;
z0 = (thick/2, 1.2s);
z1 = (x0 + sw/4,X-overshoot);
z2 = (x1 + sw/3.5, 1.2s);
z3 = (thick/2, s/2 + thick*sind(45));
paths[p] := z0..z1..{dir 235}z2..{dir 235}z3;
paths[p] := harmonize(paths[p]);
pen_stroke(
    nib(end_nib scaled 0.8 rotated terminalangle 0 of paths[p] )(0)
    nib(top_nib)(1)
    nib(middle_down_nib scaled 0.9 rotated terminalangle 2 of paths[p])(2)
    cut(thick_nib, 0)(3)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z4 = (xpart(point 3 of strokes[p-1]) , s/2 + thick*sind(45)/2) ;
z5 = (xpart(point 2 of paths[p-1]) + thick, y4) ;
paths[p] = z4--z5 ;

pen_stroke(
   nib(thick_horizontal_nib)(0,1)
)(paths[p])(strokes[p]);


% Standing serif
clearxy;
z0 = (xpart point 1 of strokes[p]+0.04sw, s/2+ 0.4s);
z1 = (x0 - serif_height, y0);
% Control points for joint
z3 = (x1 - 0.06sw,  ypart point 3 of strokes[p]);
z4 = (x1 - 0.06sw,  y3);
strokes[p] := subpath(0, 1) of strokes[p]{right}
   -- z0---z1.. controls z3 and z4 .. subpath(2.4, length(strokes[p])-1) of strokes[p]  -- cycle;


endglyph;
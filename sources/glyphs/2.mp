input glyph;
beginglyph;
z0 = (thick/2,  s);
z1= (x0+0.025Xw, y0+0.15X);
z2 = ((x0+ x3)/2, X-overshoot);
z3 = (x0+ Xw/2, y0);
z4 = (thick/2, thick*sind(45)*0.75);
paths[p] := z0{dir 110}..z2{right}..z3{down}...{dir 255}z4;

pen_stroke(
    nib(thick_nib scaled 1.2 rotated terminalangle 0 of paths[p] )(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(middle_down_nib rotated terminalangle 3 of paths[p])(3)
)(paths[p])(strokes[p]);

% Top hanging serif styling
strokes[p] :=  subpath(0, 6.7) of strokes[p]{dir -120}  .. {right}cycle;

p:=p+1;
clearxy;
z4 = (0, thick*sind(45)/2) ;
z5 = (xpart(point 2 of paths[p-1]) + thick/2, y4) ;
paths[p] = z4--z5 ;

pen_stroke(
   nib(thick_horizontal_nib)(0,1)
)(paths[p])(strokes[p]);


% Bottom bar serif
strokes[p] := subpath(0, 1) of strokes[p]{right}
   -- (xpart point 1 of strokes[p]+0.01Xw, X-s)
   -- (xpart point 1 of strokes[p] - serif_height, X-s){down}
  .. {left}subpath(2.3, length(strokes[p])) of strokes[p]
  -- cycle;


endglyph;
input glyph;
beginglyph;
z0=(0, 0.25m);
z1=(x0 + 0.2mw, y0 + 0.2m);
z2=(x1 + 0.2mw, y1 - 0.2m);
z3=(x2 - 0.2mw, y2 - 0.2m);
z4=(x3 - 0.2mw, y3 + 0.2m);

paths[0] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;
paths[0] := paths[0] xyscaled (0.75, 0.75);
paths[1] = paths[0] shifted (0, 0.56m) ;
pen_stroke(
   nib(middle_up_nib)(0,4)
   nib(middle_down_nib scaled 0.9)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[0])(strokes[0]);
strokes[1]:= strokes[0] shifted (0, 0.56m)  ;
endglyph;

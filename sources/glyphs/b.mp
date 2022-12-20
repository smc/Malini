input glyph;
beginglyph;
p:=0;
z0=(0, 1.05X);
z1=(x0, 0.23s);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0, 0.6s);
z1=(0.6x2, s-thick/4);
z2=(x0 + 0.75sw, s/2);
z3=(x2/2, thick/4);
z4=(x0, ypart point infinity of paths[p-1]);
paths[p] :=z0{dir 60}..z1{right}..z2{down}..z3..{dir 120}z4;
paths[p] :=paths[p] shifted(xpart(point 1 of paths[0]),0);

pen_stroke(
   nib(middle_up_nib)(0)
   nib(middle_down_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
   nib(thick_vertical_nib)(4)
   ignore_directions(1, 2, 3)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[0] ;
strokes[p] := serif_stroke_slanted(paths[p]);

lbearing:=serif_width-lbearing;
anchor( "top", (xpart(point 1 of paths[1]), X));
endglyph;

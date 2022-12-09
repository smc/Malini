input glyph;
beginglyph;
p:=0;
save w;
z0=(0, X);
z1=(x0 + Xw/3, 0.4X);
z2=(x1, 0);

z3=(x0 + 2Xw/3, X);
z4=(x1, y1);

paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = z3--z4;
pen_stroke(
  nib(thin_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = z1+(0, thick/2)--z2;
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;
strokes[p]:=paths[p] := serif_top_left slanted -0.55 shifted point 0 of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_top_right shifted point 0 of paths[0];

p:=p+1;
strokes[p]:=paths[p] := serif_top_left shifted point 0 of paths[1];
p:=p+1;
strokes[p]:=paths[p] := serif_top_right xscaled 0.75 slanted 0.55  shifted point 0 of paths[1];

p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted point 1 of paths[2];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point 1 of paths[2];



anchor( "top", (xpart(point 1 of paths[2]), 1.2X));
endglyph;

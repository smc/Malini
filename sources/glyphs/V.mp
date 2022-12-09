input glyph;
beginglyph;
p:=0;
z0=(0, X);
z1=(x0 + Xw/2.5, thick/10);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_vertical_nib)(0)
     nib(thick_vertical_nib rotated terminalangle 1 of paths[p])(1)
)(paths[p])(strokes[p]);
p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]),0)  ;
z1=(x0+Xw/2.5, X);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thin_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;
strokes[p]:=paths[p] := serif_top_left slanted -0.4 shifted point 0 of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_top_right shifted point 0 of paths[0];

p:=p+1;
strokes[p]:=paths[p] := serif_top_left shifted point 1 of paths[1];
p:=p+1;
strokes[p]:=paths[p] := serif_top_right slanted 0.5  shifted point 1 of paths[1];

endglyph;

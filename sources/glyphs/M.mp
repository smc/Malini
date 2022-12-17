input glyph;
beginglyph;
z0= (thick/2, X);
z1=( x0, X/2);
z2=( x1, 0);
z3 = (x0, y0);
z4 = (x3 + 0.75X/2, 0.33X);
z5 = (x4, y4);
z6 = (x4 +  0.75X/2, y0);
z7 = (x6, y1);
z8 = (x7, y2);
p:=0;
paths[0] = z0--z2 ;
pen_stroke(
    nib(thin_vertical_nib)(0,1)
)(paths[0])(strokes[0]);

p:=p+1;
paths[1] = z3--z4;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[1])(strokes[1]);

p:=p+1;
paths[2] = z5--z6;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[2])(strokes[2]);
p:=p+1;
paths[3] = z6--z8;


pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[3])(strokes[3]);



% Serifs
p:=p+1;
strokes[p]:=paths[p] := serif_top_left shifted (point 0 of paths[0]  + (thin/2, 0));
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted (point 2 of paths[0] + (thin/2, 0));
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted (point 2 of paths[0] - (thin/2, 0));

p:=p+1;
strokes[p]:=paths[p] := serif_top_right shifted point 2 of paths[2];

p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted point 1 of paths[3];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point 1 of paths[3];

endglyph;

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
paths[p] := subpath(1.5, 4) of serif_top_thick shifted (point 0 of paths[0] + (thin/2, 0));
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thin shifted (point infinity of paths[0]);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := subpath(0, 1.5) of serif_top_thick shifted (point 0 of paths[3]);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[3]);
strokes[p] := serif_stroke(paths[p]);

endglyph;

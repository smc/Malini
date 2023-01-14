input glyph;
beginglyph;
z0= (thick/2, X-thick/4);
z2= (x0, 0);
z3 = (x0 , X);
z4 = (x3 + Xw/2.25, thick*sind(45)/2);
z5 = (x4, 0);
z6 = (x4 + Xw/2.5, y0);
z7 = (x6+thin/2, X);
z8 = (x7, y2);
p:=0;
paths[0] = z0--z2 ;
pen_stroke(
    nib(thin_vertical_nib)(0,1)
)(paths[0])(strokes[0]);

p:=p+1;
paths[1] = z3--z4;
pen_stroke(
      nib(thick_nib)(0)
      cut(thick_nib, 45)(1)
)(paths[1])(strokes[1]);

p:=p+1;
paths[2] = z5--z6;
pen_stroke(
    nib(thin_nib scaled 1.25)(0,1)
    cut(thin_nib scaled 1.25, -45)(1)
)(paths[2])(strokes[2]);

p:=p+1;
paths[3] = z7--z8;


pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[3])(strokes[3]);

% Serifs
p:=p+1;
paths[p] := serif_top_thin shifted (xpart point 0 of paths[0] , X);
strokes[p] := subpath(2.402, 6) of serif_stroke_top_thin(paths[p])--cycle;

p:=p+1;
paths[p] := serif_bottom_thin shifted (point infinity of paths[0]);
strokes[p] := serif_stroke_bottom_thin(paths[p]);

p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[3], X);
strokes[p] := subpath(0, 2.7) of  serif_stroke_top(paths[p])--cycle;;

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[3]);
strokes[p] := serif_stroke_bottom(paths[p]);

endglyph;

input glyph;
beginglyph;
% This glyph does not slant. Reset slant value
slant := 0;

w := Xw/4;
z0= (1.5w, X);
z1=( x0-w/2, y0 - X/2);
z2=( x1-w/2, y1 - X/2);

paths[p] = z0--z2 ;

pen_stroke(
    cut(thick_vertical_nib, rel 90)(0,1,2)
)(paths[0])(strokes[0]);

p:=p+1;
paths[p] = paths[0] shifted (Xw/3, 0) ;
pen_stroke(
   cut(thick_vertical_nib, rel 90)(0,1,2)
)(paths[p])(strokes[p]);


p:=p+1;
paths[p] = (0, X/3)--(0.85Xw, X/3);

pen_stroke(
   cut(thick_horizontal_nib, rel 90)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = paths[p-1] shifted (0, X/3);


pen_stroke(
   cut(thick_horizontal_nib, rel 90)(0,1,2)
)(paths[p])(strokes[p]);

endglyph;

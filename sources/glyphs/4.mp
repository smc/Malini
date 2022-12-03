input glyph;
beginglyph;
z0=(x1 + Xw/2, X);
z1=(0, X/4);
paths[0] = z0--z1;

clearxy;
z0 =(thick*sind(45)/2, ypart(point infinity of paths[0]) + thick*0.8/2);
z1=(x0+3/4Xw, y0);
paths[1] = z0--z1 ;
clearxy;
z0=(xpart(point 0 of paths[0])+thick*sind(45)/4, X);
z1=(x0, 0);
paths[2] = z0--z1 ;

pen_stroke(
   nib(top_nib rotated 90)(0,1)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(top_nib)(0,1)
)(paths[1])(strokes[1]);
pen_stroke(
    nib(middle_down_nib)(0,1)
)(paths[2])(strokes[2]);
endglyph;
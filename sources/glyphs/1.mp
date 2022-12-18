input glyph;
beginglyph;
z0=(mw/10, X);
z1=(x0, 0);
p:=0;
paths[0] = z0--z1;


pen_stroke(
    nib(middle_down_nib)(0,1)
)(paths[0])(strokes[0]);

clearxy;
p:=p+1;
z0=point 0 of paths[0] - (thick*sind(60)/4, thick*sind(60)/2);
z2=(x0 - mw/3, 3/4X);
paths[1] = z2--z0;

pen_stroke(
    nib(thin_nib rotated terminalangle 0 of paths[1])(0)
    nib(thick_nib rotated terminalangle 1 of paths[1])(1)
)(paths[1])(strokes[1]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke(paths[p]);

lbearing:=2lbearing;

lbearing:=2*lbearing;
rbearing:=2*rbearing;
endglyph;
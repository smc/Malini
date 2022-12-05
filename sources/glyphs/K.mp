input glyph;
beginglyph;

p:=0;
z0=(0, 1.1X);
z1=(x0, y2+2/3thick);
z2=(x0,  0);
paths[p] := z0--z1--z2;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
    nib(end_nib scaled 3)(infinity)
)(paths[p])(strokes[p]);

%serif
p:=p+1;
paths[1] := serif_top_left shifted point 0 of paths[p-1];
pen_stroke(
    nib(end_nib scaled 0.5 rotated terminalangle 0 of paths[p])(0)
    nib(end_nib scaled 0.5 rotated terminalangle 1 of paths[p])(1)
    nib(end_nib scaled 0.5 rotated terminalangle 2 of paths[p])(2)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0= (xpart(point 1 of paths[0]), X/3);
z1= ( x0 + Xw/2, X);

paths[p] = z0--z1;
pen_stroke(
  nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
z2 = point .3 of paths[p-1];
z3 = (x1 + thick/2, 0);

paths[p] = z2--z3;


pen_stroke(
  nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);
endglyph;

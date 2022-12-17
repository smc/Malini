input glyph;
beginglyph;
p:=0;
z0=(thick/2, X);
z1=(x0,  0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
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

% Serifs
p:=p+1;
strokes[p]:=paths[p] := serif_top_left shifted point 0 of paths[0];

p:=p+1;
clearxy;
z0=(-thick/2 + thin/2, y1+ thick/2);
z1 = (- thick/2 - 3/4u , thin/2);
z2 = (+ thick/2 + 3/4u , y1);
z3 = (thick/2 - thin/2, y0);
paths[p] = z0{down}..{left}z1 -- z2{left}..{up}z3 ;
paths[p] := paths[p] shifted (point 1 of paths[0]);
pen_stroke(
     nib(serif_nib rotated terminalangle 0  of paths[p])(0)
     nib(serif_nib rotated terminalangle 1  of paths[p])(1)
     nib(serif_nib rotated terminalangle 2  of paths[p])(2)
     nib(serif_nib rotated terminalangle 3  of paths[p])(3)
)(paths[p])(strokes[p]);

endglyph;

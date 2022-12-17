input glyph;
beginglyph;
p:=0;
z0=(0, X);
z1=(x0, X/2);
z2=(x1, 0);
z3=(x0 + 0.6X, X);

paths[p] = z0--z2;
pen_stroke(
  nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);

p:=p+1;

z4=(x3, X/2);
z5=(x4, 0);
paths[p] = z3--z5;
pen_stroke(
  nib(thick_vertical_nib)(0,1,2)
)(paths[1])(strokes[1]);

p:=p+1;
z6 = point 0.5 of paths[0];
z7 = point 0.5 of paths[1];
paths[p]:= z6..z7;
pen_stroke(
     nib(end_nib rotated 90)(0,1)
)(paths[2])(strokes[2]);

% Serifs
p:=p+1;
strokes[p]:=paths[p] := serif_top_left shifted point 0 of paths[0] ;
p:=p+1;
strokes[p]:=paths[p] := serif_top_right shifted point 0 of paths[0] ;
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


p:=p+1;
strokes[p]:=paths[p] := serif_top_left shifted point 0 of paths[1] ;
p:=p+1;
strokes[p]:=paths[p] := serif_top_right shifted point 0 of paths[1] ;
p:=p+1;
clearxy;
z0=(-thick/2 + thin/2, y1+ thick/2);
z1 = (- thick/2 - 3/4u , thin/2);
z2 = (+ thick/2 + 3/4u , y1);
z3 = (thick/2 - thin/2, y0);
paths[p] = z0{down}..{left}z1 -- z2{left}..{up}z3 ;
paths[p] := paths[p] shifted (point 1 of paths[1]);
pen_stroke(
     nib(serif_nib rotated terminalangle 0  of paths[p])(0)
     nib(serif_nib rotated terminalangle 1  of paths[p])(1)
     nib(serif_nib rotated terminalangle 2  of paths[p])(2)
     nib(serif_nib rotated terminalangle 3  of paths[p])(3)
)(paths[p])(strokes[p]);



anchor( "top", (xpart(point 0.5 of paths[2]), 1.2X));
endglyph;

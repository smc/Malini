input glyph;
beginglyph;
p:=0;
z0=(thick/2, X);
z1=(x0,0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=point 0 of paths[0] - (0, thick*sind(45)/2);
z1=(x0+Xw/4, y0);
z2=(x1+Xw/4, 3/4X);
z3=(x1, y4);
z4=(x0, X/2);
paths[p] := z0---z1..{down}z2..z3---z4;
pen_stroke(
    nib(thin_horizontal_nib)(0,1,3,4)
    nib(middle_down_nib)(2)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=point 4 of paths[p-1];
z1=(x0+Xw/4, y0);
z2=(x1+Xw/3, y0-1/4X);
z3=(x1, y4);
z4=point 1 of paths[0] + (0, thick*sind(45)/2);
paths[p] := z0---z1..{down}z2..z3---z4;
pen_stroke(
    nib(thin_horizontal_nib)(0,1,3,4)
    nib(middle_down_nib)(2)
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
paths[p] := paths[p] shifted (point infinity of paths[0]);
pen_stroke(
     nib(serif_nib rotated terminalangle 0  of paths[p])(0)
     nib(serif_nib rotated terminalangle 1  of paths[p])(1)
     nib(serif_nib rotated terminalangle 2  of paths[p])(2)
     nib(serif_nib rotated terminalangle 3  of paths[p])(3)
)(paths[p])(strokes[p]);

endglyph;

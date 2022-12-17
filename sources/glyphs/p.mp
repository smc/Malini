input glyph;
beginglyph;

p:=0;
z0=(0, s-thick/4);
z1=(x0  ,-descent);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
paths[p] = p_loop;
pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(middle_down_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
   ignore_directions(1, 2, 3)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_left_slanted shifted point 0 of paths[0];
pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(end_nib scaled 3/4 rotated terminalangle 1 of paths[p])(1)
)(paths[p])(strokes[p]);


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



lbearing:=2lbearing;
endglyph;

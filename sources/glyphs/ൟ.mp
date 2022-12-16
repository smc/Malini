input glyph;
beginglyph;
p:=0;
z0=(0, m/4);
z1=((x2+x0)/2, y0 + m/4);
z2=(x1 + mw/4, y0);
z3=(x1, 0);
z4=(x0, y0);

paths[p] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;

pen_stroke(
   nib(middle_up_nib)(0,4)
   nib(middle_down_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(x1 + 0.3mw, 0);
z1=(0, y0 + 0.5m);
z2=(x1 + mw/2, y1 + m/2);
z3=(x2 + mw/2, y1);
z4=(x3 - mw/3, thick*0.5/2);
z5=(x4 - mw/4, y4 + m/3);

paths[p] = z0..z1..z2{right}..z3..z4..{dir 90}z5;
z6 = point 2.6 of paths[p];
paths[p] := paths[p]..{right}z6 ;
paths[p] := paths[p] shifted (xpart(point 2 of paths[p-1]) + mw/4,0);
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
    ignore_directions(1,2,3,4,5)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = paths[0] shifted (xpart(point 3 of paths[p-1]) + mw/4,0);
pen_stroke(
   nib(middle_up_nib)(0,4)
   nib(middle_down_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[p])(strokes[p]);

endglyph;

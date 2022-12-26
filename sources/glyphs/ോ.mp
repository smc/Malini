input glyph;
beginglyph;
p:=0;
z0=(x1 + mw/6, y4);
z1=(x2 - mw/5, y3);
z2=((x1 +x3)/2, y3- m/5);
z3=(x4 + mw/3, (y4+y2)/2);
z4=(x5 + mw/2, m);
z5=(0, (y4 + y6)/2);
z6=(x4, thick*0.77/4);
z7=(x3, (y6+y8)/2);
z8=(x2, y7+m/5);
z9=(x1, y7);
z10=(x0, y6);
paths[p] =z0{dir 200}.. z1..z2{right}.. z3..z4{left} ..z5{down}.. z6{right} ..z7..z8..z9..{dir -20}z10;

pen_stroke(
   nib(end_nib  scaled 0.8 rotated terminalangle 0 of paths[p])(0)
   nib(middle_up_nib scaled 1.2 )(1)
   nib(top_nib )(2)
   nib(middle_up_nib )(3)
   nib(top_nib scaled 0.8)(4)
   nib(middle_down_nib)(5)
   nib(down_nib)(6)
   nib(middle_up_nib)(7)
   nib(top_nib)(8)
   nib(middle_up_nib scaled 1.2)(9)
   nib(end_nib rotated terminalangle 10 of paths[p])(10)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
z0=(0, 0.75m);
z1=(x0 + mw/3, m-y3);
z2=(x1 + mw/3, (y1+y3)/2);
z3=(x1,  0);
z4=(x0, m-y0);
paths[p] = z0..z1..z2..z3..z4;
paths[p]:= paths[p] shifted(xpart(point 3 of paths[0]) + mw/3, 0);
pen_stroke(
   cut(end_nib, rel 90)(0)
    cut(end_nib, rel 90)(4)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
)(paths[p])(strokes[p]);

endglyph;

input glyph;
beginglyph;
p:=0;
z0=(mw/2, 0.5m);
z1=(x0 + mw/3, m-thick*0.8/4);
z2=(x1 + mw/3, (y1 + y3)/2);
z3=(x2 - mw/3, y2 - m/2 + thick*0.8/4);
z4=(x3 - mw/3, y0);
z5=(x4 - mw/4, y3);
z6=(x5 - mw/4, y5 + 0.25m);
z7=(x5, y6 + 0.3m);
z8=(x2  + mw/6, y7);
z9=(x8 + mw/4, 0);
z10=(x9 - 2/3mw, -descent*1.2);
z11 = (x10 - mw/3, y10/2);
paths[p] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4{down}..z5{left}..z6..z7---z8..z9..z10{left}..{dir 75}z11;
z12 = point 9.5 of paths[p];
paths[p] := paths[p] .. {dir -45}z12;
pen_stroke(
    nib(middle_up_nib)(0, 4)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
    nib(down_nib)(6)
    nib(middle_down_nib)(6, 9)
    nib(thin_vertical_nib rotated 90)(7, 8)
    nib(down_nib)(10)
    nib(middle_up_nib)(11)
    nib(end_nib rotated 90)(12)
)(paths[p])(strokes[p]);

anchor( "vc", point 1 of paths[p]);

endglyph;

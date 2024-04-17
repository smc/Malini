input glyph;
beginglyph;
z0 =(x4, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, m/6);
z4=(0, y0 );
z5=(x4 + mw/2, m-overshoot);
z6=(x5 + mw/2, m/2);
z7=(x5, 0);
z8=(x3, y7);
z9= (x0, (y8+y10)/2);
z10= (x8, -descent*0.75);
z11= (x6 + thick/2, y10);

paths[0]:=z0{up}..z1{right}..z2{down}..z3{left}..z4{up}..z5{right}..{down}z6..z7---z8..z9{down}..z10---z11;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(top_nib)(5)
    nib(down_nib)(3)
    nib(middle_down_nib)(2)
    nib(middle_up_nib)(4)
    nib(middle_down_nib)(6)
    nib(down_nib)(7)
    nib(down_nib)(8)
    nib(down_nib rotated 70)(9)
    nib(thick_horizontal_nib)(10,11)
)(paths[0])(strokes[0]);
endglyph;

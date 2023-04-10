input glyph;
beginglyph;

input ./glyphs/include/left_arch_with_eye;

clearxy;
p:=p+1;
z0=(thick/2-thin/2, thin/2);
z1= (x0, 0.6m);
z2 = ( x1 + mw/2.75, m-overshoot); % top
z3 = ( x2 + mw/2, (y2+y4)/2.25);
z4 = ( x3 - mw/4, y0 + m/4); % bottom middle
z5 = ( (x1+x3)/2.5, (y4+y6)/2.25);
z6 = ( (x5 + x7)/2, y2); % second top
x7-x5 = mw*0.95;
z7 = ( x7, (y6+y8)/2);
z8 = ( x7 - mw/3,  thin/2);
z9 = ( x8, 0);
paths[p] := z0---z1..z2{right}..z3{down}..{left}z4{left}..z5{up}..z6{right}..z7{down}..z8--z9;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(end_nib)(8,9)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0= (0,0);
z1=(x0 + 1.4mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart point 5 of paths[p-1], thick*sind(45)/2);

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0, 0);
z1=(x0, m);

paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point 1 of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point 4 of paths[1]),0));
anchor( "right", (xpart(point 1 of paths[3])-mw/5,0));

endglyph;

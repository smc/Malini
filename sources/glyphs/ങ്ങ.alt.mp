input glyph;
beginglyph;

z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, undershoot);
z4=(x0, y0);

paths[p] := z0{up}..z1{right}..z2{down}..z3{left}..{up}z4;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;

z0 = point 3.8 of paths[p-1];
z1 = ( (x0 + x3)/1.5, m - overshoot); % top
z2 = ( x0 + 1.2mw, (y1+y3)/2.2); % <
z3 = ( x2 - mw/4, undershoot);
z4 = ( x3 - mw/4, y2);
z5 = ( (x4 + x6)/2, m-overshoot);   % top
z6 = ( x4 + 0.9mw, 0.6m);
z7 = ( x6, 0);
paths[p] := z0{dir angle(direction 3.8 of paths[p-1])}..z1{right}..z2{down}..z3{left}..{up}z4..z5{right}..{down}z6---z7;
pen_stroke(
    nib(middle_up_nib rotated terminalangle 4 of paths[p])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
    nib(top_nib)(5)
    nib(thick_vertical_nib)(6)
    nib(thick_vertical_nib)(7)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
input ./glyphs/include/_ദ;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0) ;
strokes[p]:=strokes[p] shifted (xpart(point infinity of paths[p-1]), 0) ;

anchor( "vc", point 0 of paths[p]);
anchor( "bottom", point 5.5 of paths[p]);
anchor( "right", point 5.5 of paths[p]);

endglyph;

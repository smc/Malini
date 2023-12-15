input glyph;
beginglyph;

z0 = ( x1 + mw/8 , 0);
z1 = ( 0, (y0 + y2)/2);
z2 = ( x1 + mw/2, m-overshoot); % top
z3 = ( x2 + mw/3, y2 - m/5);
z4 = ( x3 - mw/3, y3 - m/5); % <
paths[p] = z0..z1{up}..{right}z2..z3..{left}z4;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(end_nib rotated 90)(4)
)(paths[p])(strokes[p]);

% Connector
clearxy;
p:=p+1;
z0= point infinity of paths[p-1];
z1=(x0 + mw/3, (y0 + y2)/2);
z2=(x1 - mw/4, (y1 + y3)/2);
z3=(x2 + mw/4, overshoot);
z4=(x3 + mw/2.5, m/3);
paths[p] = z0{right}.. z1.. z2 ..{right}z3..z4;
pen_stroke(
    nib(end_nib rotated 90)(0)
    nib(middle_down_nib rotated -30)(1,2)
    nib(down_nib rotated 20)(3)
    nib(thin_vertical_nib)(4)
)(paths[p])(strokes[p]);

p:=p+1;
input ./glyphs/include/right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p]:=strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

anchor( "vc", point 2 of paths[1]);
anchor( "right", point 2.3 of paths[p]);

endglyph;

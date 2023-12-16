input glyph;
beginglyph;
z0= (x1 + mw/3, 0);
z1= (0, (y0 + y2)/2);
z2 = ( x1 + mw/2, m - overshoot); % top
z3 = ( x2 + mw/2, (y2+y4)/2.5);
z4 = ( x3 - mw/4, 2undershoot); % bottom middle
z5 = ( (x1+x3)/2.2, (y4+y6)/2.5);
z6 = ( (x5 + x7)/2, y2); % second top
z7 = ( x6 + mw/2, y1);
z8 = ( x7 - mw/3 + thin*1.2/2, thin/2); %
z9 = ( x8, 0); %
paths[0] = z0..z1..z2{right}..z3..{left}z4{left}..z5..z6{right}..z7..z8--z9;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(end_nib)(8,9)
)(paths[0])(strokes[0]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=(mw*1.4, y0);
paths[p]:= z0--z1 ;
paths[p]:=paths[p] shifted ( point infinity of paths[p-1] + (thin*1.2/2, thick*thin_horizontal_nib_scale/2) );
pen_stroke(
    cut(thin_horizontal_nib, 45)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]), 0);
z1=(x0, m/2);
z2=((x1+x3)/2, m);
z3=(x0 - mw*0.8, y1);
z4=(x3,ypart(point infinity of paths[p-1]));
paths[p]:= z0---z1..z2..z3---z4 ;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,4)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart( point 4 of paths[p]),0));
anchor( "right", (xpart(point 0 of paths[p]) - mw/5,0));

endglyph;

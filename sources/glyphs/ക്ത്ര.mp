input glyph;
beginglyph;
p=0;
z0=(mw/2, m/2);
z1=((x0 + x2)/1.96, m-overshoot);
z2=(x0 + 2/3mw, (y1 + y3)/2);
z3=(x1, undershoot);
z4=(x0, y0);
z5=(x4 - mw/4, y3);
z6=(x5 - mw/4, y5 + 0.25m);
z7=(x6 + mw/3, y6 + 0.3m);
z8=(x2  + mw/3, y7);

paths[p] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4{down}..z5{left}..z6..z7---z8;
paths[p] := paths[p] shifted (mw/3,0);
pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(top_nib)(1)
   nib(middle_down_nib)(2)
   nib(down_nib)(3)
   nib(middle_up_nib)(4)
   nib(down_nib)(5)
   nib(middle_down_nib)(6)
   nib(thin_vertical_nib rotated 90)(7, 8)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0= (x1 + mw/3, 0) ;
z1= (xpart point infinity of paths[0], y0 + mw/2);
z2 = ( x1 + mw/2, m - overshoot); % top
z3 = ( x2 + mw/2, 0.4m);
z4 = ( x3 - mw/4, thick*0.6/2); % bottom middle
z5 = ( x4 - mw/4, y3);
z6 = ( x5 + mw/2, y2); % second top
z7 = ( x6 + mw/2, y3);


z8 = (x7 - 0.6mw, -3/4descent); % ra sign starts
z9 = (xpart point 4 of paths[0] ,  y8); % ra sign starts
z10 = (xpart point 6 of paths[0] - mw/3, y1);
z11 = (x10 + mw/8, m);

paths[p] = z0..z1..z2{right}..z3..{left}z4{left}..z5..z6{right}..z7 ..{dir 190}z8..{dir 170}z9 ..z10{up}..z11;


pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[1])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(down_nib)(8, 9)
    nib(middle_up_nib)(10)
    nib(end_nib rotated terminalangle 11 of paths[p])(11)
)(paths[p])(strokes[p]);

anchor( "vc", z1);

anchor( "right", point 7.75 of paths[p]);

endglyph;

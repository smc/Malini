input glyph;
beginglyph;
p=0;
z0=(x1+mw/4, 0);
z1=(0, m-m/1.6);
z2=((x1+x3)/2, 0.975m);
x3-x1 = mw*0.75;
z3=(x3, m*0.6);
z4=(x3,  0.1m); % bottom of piller
paths[p] = z0..z1..z2..{down}z3---z4 ;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]) + thick*(1 - sind(50)), 0);
z1=(x0, m*0.6);
z2=((x1+x3)/2, 0.975m); % Top of arch
x3-x1 = mw*0.6;
z3=(x3, m-m/3);
z4=(x3, m/3);
z5= ( x4+ mw/3, thick*0.6/2);
z6= ( x5 + mw/3, (y5+y7)/2);
z7= ( x2 + 3/4mw, y2);

paths[p] = z0---z1..z2..z3---z4..z5..z6..z7;
% Shift to accommodate the ത below
paths[p]:=paths[p] yscaled 0.9 shifted (0, m*0.1);
pen_stroke(
   nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(middle_down_nib)(4)
    nib(down_nib)(5)
    nib(middle_up_nib)(6)
    nib(top_nib rotated -45)(7)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;

z0= (x1 + mw/3, 0);
z1= (0, y0 + mw/2);
z2 = ( x1 + mw/2, 0.975m); % top
z3 = ( x2 + mw/2, y1);
z4 = ( x3 - mw/4, thick*0.6/2); % bottom middle
z5 = ( x4 - mw/4, y3);
z6 = ( x5 + mw/2, y2); % second top
z7 = ( x6 + mw/2, y1);
z8 = ( x7 - mw/3, y0); %
paths[p] = z0..z1..z2{right}..z3..{left}z4{left}..z5..z6{right}..z7;

z9 = (x3 - mw/8,  -descent*0.75); % ra sign starts
z10 = (x5,  y9); % ra sign starts
z11 = (x1 - mw/3, y1);
z12 = (x11 + mw/8, y2);

paths[p] := paths[p]..{dir 190}z9..z10{dir 170}..z11..z12  ;
paths[p] := paths[p] shifted (mw/3,0);

paths[p]:=paths[p] shifted (0.9mw, -m) xscaled 0.75 yscaled 0.7;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(down_nib)(8,9)
    nib(middle_up_nib)(10)
    nib(end_nib rotated terminalangle 11 of paths[p])(11)
)(paths[p])(strokes[p]);

anchor( "vc", (x3,0));

endglyph;

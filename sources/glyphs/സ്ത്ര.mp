input glyph;
beginglyph;
p=0;
paths[p] = left_arch;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=point infinity of paths[p-1] + (thick/2-thin/2, undershoot);
z1=(x0, 0.6m);
z2=((x1+x3)/2, m - overshoot); % Top of arch
x3-x1 = mw*0.6;
z3=(x3, m-m/3);
z4=(x3, 0.4m);
z5= ( x4+ mw/3, undershoot);
z6= ( x5 + mw/3, (y5+y7)/2);
z7= ( x2 + 3/4mw, m);

paths[p] = z0---z1..z2..z3---z4..z5{right}..z6{up}..z7;
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

%  ത്ര
p:=p+1;
clearxy;
z0= (x1 + mw/4, 0);
z1= (0, (y0 + y2)/2.08);
z2 = ( x1 + mw/2, m-overshoot); % top
z3 = ( x2 + mw/2, (y2+y4)/2.5);
z4 = ( x3 - mw/4, 2undershoot); % bottom middle
z5 = ( (x1+x3)/2.2, (y4+y6)/2.5);
z6 = ( (x5 + x7)/2, y2); % second top
z7 = ( x6 + mw/2, (y6+y8)/2);

z8 = (x7 - 2/3mw, -0.7descent); % ra sign starts
z9 = (x8 - mw/4,  y8); % ra sign starts
z10 = (x1 - mw/3, y1);
z11 = (x10 + mw/8, m);

paths[p] = z0..z1..z2{right}..z3..{left}z4{left}..z5..z6{right}..z7 ..z8---z9 ..z10{up}..z11;

paths[p] := paths[p] shifted (mw/3,0);
paths[p]:=paths[p] shifted (0.9mw, -m) xscaled 0.75 yscaled 0.6;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib scaled 0.8)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(down_nib)(8,9)
    nib(middle_up_nib)(10)
    nib(end_nib rotated terminalangle infinity of paths[p])(11)
)(paths[p])(strokes[p]);


anchor( "vc", (x3,0));

endglyph;

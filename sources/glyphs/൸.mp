% ൸ U+0D78 MALAYALAM FRACTION THREE SIXTEENTHS
% muntaani
input glyph;
beginglyph;

z0=(0,0);
z1=(x0 +mw/4, m/3);
z2=(x1+mw/6, m-overshoot); % pillar top
paths[p] = z0..z1..z2;
pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_down_nib)(1, 2)
)(paths[p])(strokes[p]);

p:=p+1;
z3=(x2, m/2);
z4=(x3 + mw/3, undershoot);
z5=(x4 + mw/4, y0 + m/2);
z6=(x5 + mw/3, m-overshoot); % first peak
z7=(x6 + mw/3, m/2);
z8=(x7 + mw/3, undershoot);
z9=(x8 + mw/4, m/2);
z10=(x9 + mw/3, m-overshoot); % Second peak
z11=(x10 + mw/4, m/3);
paths[p] = z2---z3..z4{right}..z5..z6{right}..z7..z8{right}..z9..z10{right}..{down}z11  ;
pen_stroke(
    nib(middle_down_nib)(0, 1, 3,5,7)
    nib(top_nib)(4,8, 10)
    nib(down_nib)(2, 6)
    nib(end_nib)(9)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0= point infinity of paths[p-1];
z1= (x0, m/2);
z2= ((x1+x3)/2, m-overshoot);
z3= (x0 + mw, y1);
z4= (x3, 0);
paths[p] = z0---z1..z2..z3---z4;

pen_stroke(
    nib(middle_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3, 4)
)(paths[p])(strokes[p]);

% Bottom bar
clearxy;
p:=p+1;
z0=(xpart point 0 of paths[p-1] -thin*1.1/2, thick*sind(45)/2);
z1=(xpart(point 4 of paths[p-1]) + thick*1.05/2, y0);
paths[p] = z0--z1;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

% Bow
clearxy;
p:=p+1;
z0= point 1.8 of paths[p-2];
z1= (xpart point 2.1 of paths[p-2] , ypart point 1 of paths[p-2]);
z2= point 0.05 of paths[p-1];

paths[p] = z0{dir -10}..z1{dir -110}..{dir 200}z2;
pen_stroke(
    nib(end_nib scaled 0.8 rotated terminalangle 0 of paths[p]  )(0)
    nib(middle_down_nib )(1)
    cut(end_nib scaled 0.8 rotated terminalangle 2 of paths[p], -90 )(2)
)(paths[p])(strokes[p]);

endglyph;

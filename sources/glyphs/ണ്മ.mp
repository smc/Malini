input glyph;
beginglyph;
input ./glyphs/include/ണ;

clearxy;
% p:=p+1;
z0= (0, thin/2);
z1= (x0, m/2);
z2= ((x1+x3)/2, m-overshoot);
z3= (x0+ mw, y1);
z4= (x3, 0);
paths[p] := z0---z1..z2..z3---z4;
paths[p] := paths[p] shifted (xpart point infinity of paths[p-1] + thick/2-thin/2, 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3,4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(xpart point 0 of paths[p-1]+thin/2 , thick*thin_horizontal_nib_scale/2);
z1=(xpart(point 4 of paths[p-1])+thick/2, y0);
paths[p] := z0--z1;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0= point 1.8 of paths[p-2];
z1= (xpart point 2.1 of paths[p-2] , ypart point 1 of paths[p-2]);
z2= point 0.05 of paths[p-1];
paths[p] := z0{dir -10}..z1{dir -110}..{dir 200}z2;
pen_stroke(
    nib(end_nib scaled 0.8 rotated terminalangle 0 of paths[p]  )(0)
    nib(middle_down_nib )(1)
    cut(end_nib scaled 0.8 rotated terminalangle 2 of paths[p], -90 )(2)
)(paths[p])(strokes[p]);

anchor( "right", (xpart point 1 of paths[4] - u_drop_sign_radius,u_drop_sign_vshift));
endglyph;

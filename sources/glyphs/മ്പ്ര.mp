input glyph;
beginglyph;

input ./glyphs/include/left_arch;

paths[p] := paths[p] shifted (mw/3,0);
strokes[p] := strokes[p] shifted (mw/3,0);

p:=p+1;
clearxy;
z0=(thick/2-thin/2*middle_up_nib_scale, thin/2*middle_up_nib_scale);
z1=(x0, 0.6m);
z2=((x1+x3)/2.2, m-overshoot); % Top of arch
x3-x1 = 0.7*mw;
z3=(x3, (y2+y4)/1.86);
z4=(x3 - mw/3 + thin*1.2/2, thin/2);
z5=(x4, 0);
paths[p] = z0---z1..z2{right}..z3{down}..z4--z5;
paths[p] := paths[p] shifted point infinity of paths[p-1];

pen_stroke(
   cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4,5)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 0.7mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[2] shifted ( point infinity of paths[p-1] + (thin*1.2/2, thick*thin_horizontal_nib_scale/2) );

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0, m);
paths[p] = z0--z1;
paths[p] := paths[p] shifted (xpart(point 1 of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0 = (xpart point 0 of paths[p-1], 0);
z1 = (3/4(x0-x3), reph_sign_depth  );
z2 = (0.5(x0-x3), y1);
z3 = (xpart(point 1 of paths[0]) - mw/4, m);
paths[p] =  z0{down}..z1---z2..z3;
dt := directiontime dir 90 of subpath(2, 3) of paths[p];
paths[p] := insert_nodes(paths[p])(2+ dt);
pen_stroke(
    nib(middle_down_nib rotated -10)(0)
    nib(thick_horizontal_nib)(1,2)
    nib(end_nib)(3)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point 5 of paths[0]),0));
anchor( "right", point 0.5 of paths[p]);
endglyph;

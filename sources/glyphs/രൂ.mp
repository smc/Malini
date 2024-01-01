input glyph;
beginglyph;
z0=(x1 + mw/4, 0);
z1=(0, y0 + m/2);
z2=(x1 + mw/2, m-overshoot);
z3=(x2 + mw/2, y1);
z4=(x3 - mw/3, thick*0.5/2);
z5=(x4 - mw/4, y4 + m/3);

paths[p] = z0..z1..z2{right}..z3..z4..{dir 90}z5;
z6 = (xpart point 2.5 of paths[p] + mw/4, m-overshoot);
z7 = ( x6 + mw/2.5, y6-m/4);
z8 = ( x7 - mw/4, y7-m/4);
z9 = ( x8 + mw/3, (y8+y10)/2);
z10 = ( x9 - mw/2, reph_sign_depth);
z11 = ( (x9+x12)/3, y10);
z12 = ( x1 - mw/3, m/2);
z13 = ( x12 + mw/6, m);
paths[p] := paths[p].. z6..z7..{left}z8;
paths[p] := paths[p] shifted (mw/3,0);
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1,5)
    nib(top_nib)(2)
    nib(top_nib)(6)
    nib(middle_down_nib)(3,7)
    nib(down_nib)(4)
    nib(end_nib rotated 90)(8)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0  = point infinity of paths[p-1];
z1 = (x0-mw/3, reph_sign_depth  );
z2 = (x1 - 0.4mw, y1);
z3 = (xpart(point 1 of paths[0]) - mw/6, m);
paths[p] = z0{right}..{left}z1---z2..z3;
dt := directiontime dir 270 of subpath(0, 1) of paths[p];
paths[p] := insert_nodes(paths[p])(0+ dt);
dt := directiontime dir 90 of subpath(3, 4) of paths[p];
paths[p] := insert_nodes(paths[p])(3+ dt);
pen_stroke(
    nib(end_nib rotated 90)(0)
    nib(middle_down_nib rotated -10)(1)
    nib(thick_horizontal_nib)(2,3)
    nib(end_nib)(4)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);
endglyph;

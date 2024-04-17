input glyph;
beginglyph;
input ./glyphs/include/ക;

% Horizontal base line
clearxy;
p:=p+1;
z0=(0,0);
z1=(x0 + mw*1.2, y0);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thick, thick*thin_horizontal_nib_scale/2 );

pen_stroke(
    cut(thin_horizontal_nib, 30)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

% Join ക and ഷ  strokes together
strokes[p-1]:= subpath(0, 5) of strokes[p-1]
    .. (xpart point 0 of strokes[p], ypart point 6 of strokes[p-1]*0.75)
    -- point 0 of strokes[p]
    .. subpath(8, length(strokes[p-1])-1) of strokes[p-1]
    --cycle;

% Vertical right side line
clearxy;
p:=p+1;
z0=(0, 0);
z1=(x0, m);

paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point 1 of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    cut(thick_vertical_nib, 0)(1)
)(paths[p])(strokes[p]);

strokes[p] := subpath(0,1) of strokes[p]
    -- point 2.35 of strokes[p]
    -- point 3 of strokes[p]
    -- cycle;

% Top loop

clearxy;
p:=p+1;
z0=(xpart point infinity of strokes[3] - thin/2, m);
z1=((x0+x2)/2.1, ypart(point 0.45 of paths[3]));
z2=(xpart(point 0.225 of paths[2]), (y1+y3)/2);
z3=(x2 + mw/4, m-overshoot);
z4=(x3 + mw/6, 0.75m);
z5=(x4,  ypart(point 0  of paths[2]));
paths[p] = z0{down}..z1{left}..z2{up}..z3{right}..z4---z5;
pen_stroke(
    nib(thin_nib)(0)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
    nib(top_nib)(3)
    nib(middle_down_nib)(4)
    nib(thick_vertical_nib)(5)
    ignore_directions(1, 2)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[2]);
anchor( "right", (xpart(point 1 of paths[2]) - u_drop_sign_radius,0));

endglyph;

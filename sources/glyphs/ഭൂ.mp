input glyph;
beginglyph;

z0 = ( x1 + 0.15mw , 0);
z1 = ( 0, (y0 + y2)/2);
z2 = ( x1 + mw/2, m - overshoot); % top
z3 = ( x2 + mw/3, y4 + m/8);
z4= ( x3 - mw/5, y5 + m/6);
z5= ( x4 - mw/4, m/2);
z6= ( x4, y7 + m/6);
z7 = ( x6 + mw/4, y8 + m/8);
z8 = ( x2 - mw/8, thin);

paths[0] := z0..z1{up}..z2{right}..z3{down}..z4{left}..z5{down}..z6{right}..z7{down}..{dir 150}z8;

paths[p] := paths[p] shifted (mw/3,0);

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,5, 7)
    nib(top_nib scaled 0.8)(4, 6)
    nib(end_nib rotated 60)(8)
    ignore_directions(1,4,5,6)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=point 7.75 of paths[p-1];
z1=(x0 + mw/3, (y0+y2)/2);
z2=(x1 - mw/2,  -descent*0.8);
z3=(xpart(point 1 of paths[p-1]) - mw/3, ypart(point 1 of paths[p-1]));
z4=(x3+mw/4, m);
paths[p] := z0{dir -10}..z1..{dir 180}z2..z4;
dt := directiontime dir 90 of subpath(2, 3) of paths[p];
paths[p] := insert_nodes(paths[p])(2+ dt);
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_down_nib)(1)
    nib(thick_horizontal_nib)(2)
    nib(thick_nib rotated terminalangle 3 of paths[p] scaled 0.8)(3)
    nib(middle_up_nib scaled 1.1)(4)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

endglyph;

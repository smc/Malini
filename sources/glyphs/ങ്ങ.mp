input glyph;
beginglyph;
z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, undershoot);
z4=(x0, y0);
z5=(x4 + 0.6mw, m-overshoot);

% Dummy path
paths[0] = z0{dir 80}..z1{right}..z2{down}..z3{left}..z4{dir 100}..{curl 10} z5;
% Get the point for extrema
z8=point 4.1 of paths[0];
paths[0] := z0{dir 80}..z1{right}..z2{down}..z3{left}..z8{up}..{right}z5;

clearxy;
z0 = point infinity of paths[0];
z1 = ( 0, m/2);
z2 = ( x0 + 0.3mw, m - overshoot); % top
z3 = ( x2 + mw/3, (y2+y4)/2);
z4 = ( x3 - mw/4, (y2+y6)/2); % <
z5 = ( x4 + mw/3, (y4+y6)/2);
z6 = ( (x5 + x7)/1.9, undershoot);
z7 = ( x5 - 0.6mw, y4);
z8 = ( (x7 + x9)/2, m-overshoot);   % top
z9 = ( x7 + 0.95mw, 0.6m);
z10 = ( x9, 0);
paths[0] := paths[0]{right}..z3{down}..{left}z4{right}..z5{down}..z6{left}..{up}z7..z8{right}..{down}z9---z10;
pen_stroke(
    nib(middle_up_nib)(0,4)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_down_nib scaled 0.9)(6)
    nib(end_nib rotated 90)(7)
    nib(middle_down_nib scaled 0.9)(8)
    nib(down_nib)(9)
    nib(middle_up_nib)(10)
    nib(top_nib scaled 0.9)(11)
    nib(thick_vertical_nib)(12)
    nib(thick_vertical_nib)(13)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := right_da;
paths[p]:= paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(end_nib rotated 90)(4)
    nib(middle_down_nib scaled 0.9)(3, 5)
    nib(end_nib rotated 45)(6)

)(paths[p])(strokes[p]);

anchor( "vc", point 0 of paths[p]);
anchor( "bottom", point 5.5 of paths[p]);
anchor( "right", point 5.5 of paths[p]);

endglyph;

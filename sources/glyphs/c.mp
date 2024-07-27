input glyph;
beginglyph;
save r,e;
r=0.75;
z0 = (r*sw, y1-.3s);
z1 = ((x0 + x2)/1.8, s - overshoot);
z2 = (0, (y1+y3)/2);
z3 = ((x0 + x2)/1.75, undershoot);
z4 = (x0+thin*1.2/2, y3+ s/4);
paths[p]:=z0{dir 90}..z1{left}..z2{down} ..z3 ..z4;
paths[p]:=harmonize(paths[p]);
pen_stroke(
    cut(thick_nib, 15)(0)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib scaled 1.2 )(3)
    nib(end_nib scaled 1.2 rotated terminalangle 4 of paths[0])(4)

)(paths[0])(strokes[0]);

% Top hanging serif styling
% strokes[0] :=  subpath(0.25, 9) of strokes[0]{right} .. cycle;
% Bottom end styling
% strokes[0] :=  subpath(0, 4) of strokes[0]{dir 120}
%    .. subpath(5.1, length(strokes[0])-1) of strokes[0]
%    .. cycle;

lbearing:=sw/3*0.3;
rbearing:=sw/3*0.3;
anchor( "top", (xpart(point 1 of paths[0]), 1.2s));
endglyph;

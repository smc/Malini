input glyph;
beginglyph;
save r,e;
r=0.75;
z0 = (r*sw, y1-.3s);
z1 = ((x0 + x2)/1.8, s - overshoot);
z2 = (0, s/2);
z3 = ((x0 + x2)/1.75, undershoot);
z4 = (x0+thin*1.2/2, y3+ s/4);
paths[0]:=z0{dir 80}..z1{left}..z2{down}..z3{right}..z4;
paths[p]:=z0{dir 80}..z1{left}..z2{down} ..z3 ..z4;
paths[p]:=harmonize(paths[p]);
pen_stroke(
    nib(thick_nib scaled 1.1)(0)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib scaled 1.2 )(3)
    nib(end_nib scaled 1.2 rotated terminalangle 4 of paths[0])(4)
)(paths[0])(strokes[0]);

% Top hanging serif styling
strokes[0] :=  subpath(0.25, 9) of strokes[0]{right} .. cycle;
% Bottom end styling
strokes[0] :=  subpath(0, 4) of strokes[0]{dir 120}
   .. subpath(5.1, length(strokes[0])-1) of strokes[0]
   .. cycle;


clearxy;
z0=(xpart(point 0.8 of paths[0]), s*1.3);
z1=(x0, ypart(point 0.8 of paths[0]));
paths[1] =z0--z1;
pen_stroke(
    nib(thin_nib rotated terminalangle 0 of paths[1])(0)
    nib(thin_nib rotated terminalangle infinity of paths[1])(infinity)
)(paths[1])(strokes[1]);

clearxy;
z0=(xpart(point 3 of paths[0]), -s*0.3);
z1=(x0, ypart(point 3.2 of paths[0]));
paths[2] =z0--z1;
pen_stroke(
    nib(thin_nib rotated terminalangle 0 of paths[2])(0)
    nib(thin_nib rotated terminalangle infinity of paths[2])(infinity)
)(paths[2])(strokes[2]);
endglyph;

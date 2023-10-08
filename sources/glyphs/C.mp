input glyph;
beginglyph;
save r,e;
r=0.75;
z0 = (r*Xw, s);
z1 = ((x0 + x2)/1.75, X - overshoot);
z2 = (0, (y1+y3)/2);
z3 = ((x2+x4)/1.75, undershoot);
z4 = (x0+thin/2, y3+X/4);
paths[p]:=z0{dir 80}..z1{left}..z2{down} ..z3 ..z4;

pen_stroke(
    nib(thick_nib scaled 1.2)(0)
    nib(top_nib rotated 10)(1)
    nib(middle_down_nib rotated -10)(2)
    nib(down_nib rotated -40)(3)
    nib(end_nib scaled 1.2 rotated terminalangle 4 of paths[0])(4)
)(paths[p])(strokes[p]);

% Top hanging serif styling
strokes[0] :=  subpath(0.25, 9) of strokes[0]{right} .. cycle;
% Bottom end styling
strokes[0] :=  subpath(0, 4) of strokes[0]{dir 120}
   .. subpath(5.1,10) of strokes[0]
   .. cycle;

lbearing:=sw/3*0.4;
rbearing:=sw/3*0.45;

anchor( "top", (xpart(point 1 of paths[0]), 1.2X));
anchor( "bottom", (xpart(point 3 of paths[0]), 0));
endglyph;

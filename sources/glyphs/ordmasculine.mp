input glyph;
beginglyph;
save r;
r=0.85;
z0 = (0, s/2);
z1 = ((x0 + x2)/2, s - overshoot);
z2 = (x0 + r*sw, y0);
z3 = (x1, undershoot);
z4 = (x0, y0);
paths[p]:= z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;

pen_stroke(
   nib(middle_down_nib)(0, 2, 4)
   nib(top_nib)(1)
   nib(down_nib)(3)
   ignore_directions(1, 2, 3)
)(paths[0])(strokes[0]);

for i=0 upto 0:
    paths[i] := paths[i] scaled 2/3 shifted (0, s);
    strokes[i] := strokes[i] scaled 2/3 shifted (0, s);
endfor;

lbearing:=sw/3*0.2;
rbearing:=sw/3*0.2;

endglyph;

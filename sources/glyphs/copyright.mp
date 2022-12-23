input glyph;
beginglyph;

% paths[0] := paths[0] shifted (sw/3, s/3) xscaled 0.8 yscaled 0.85;

r=0.8;
z0 = (r*sw, .8s);
z1 = ((x0 + x2)/2, s - thick/4);
z2 = (0, s/2);
z3 = (x1, thick/4);
z4 = (x0+thin*1.2/2, y3+ s/4);
paths[0]:=z0{dir 120}..{dir 190}z1..z2..z3..z4;
paths[0] := paths[0] shifted (sw/2, s/3) xscaled 0.8 yscaled 0.85;
pen_stroke(
    nib(thicknib rotated terminalangle 0 of paths[0])(0)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
    nib(end_nib scaled 2/3 rotated terminalangle 4 of paths[0])(4)
    ignore_directions(1, 2, 3)
)(paths[0])(strokes[0]);

soften := 0;
clearxy;
z0=(0, X/2);
z1=(x0 + 0.5Xw, y0 + 0.5X - thick/4);
z2=(x1 + 0.5Xw, y0);
z3=(x1, thick/4);
z4=(x0, y2);

paths[1] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;

pen_stroke(
   nib(middle_down_nib)(0, 2, 4)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[1])(strokes[1]);
endglyph;

input glyph;
beginglyph;
p=0;
z0 =(x4, (y1 + y3)/2);
z1 =(x0 + sw/3, s-thick/4);
z2=(x1 + sw/3, y0);
z3=(x2 - sw/3, m/2.5);
z4=(0, y0 );
paths[p]:=z0{up}..z1{right}..z2{down}..z3{left}..{up}z4;
pen_stroke(
    nib(middle_down_nib)(0)
    nib(top_nib)(1)
    nib(down_nib)(3)
    nib(middle_down_nib)(2)
    nib(middle_down_nib)(4)
)(paths[p])(strokes[p]);

p:= p+1;
clearxy;
z0 = point 1.4 of paths[p-1];
z1 = (x0+sw/3, s);
paths[p]:=z0..z1;

pen_stroke(
    nib(end_nib scaled 0.5 rotated terminalangle 0 of paths[p])(0)
    nib(end_nib rotated terminalangle 1 of paths[p])(1)
)(paths[p])(strokes[p]);

p:= p+1;
clearxy;
z0 = point 3.2 of paths[p-2];
z1 = (0, y0 -s/6);
z2 = (x1+sw/4, y1-s/6);
z3 = (x2+sw/6, y2);
z4 = (x3+sw/2.75, y3-s/4);
z5 = (x2, y4-s/4);
z6 = (x1-thick/4, y4);
z7 = z2;
paths[p]:=z0{dir -160}..z1..z2---z3..z4..z5..z6..{dir 20}z7;
pen_stroke(
    nib(end_nib scaled 0.5 rotated terminalangle 0 of paths[p])(0)
    nib(end_nib rotated terminalangle 1 of paths[p])(1)
    nib(end_nib)(7)
    nib(middle_down_nib)(6)
    nib(down_nib)(5)
    nib(middle_up_nib)(4)
)(paths[p])(strokes[p]);
rbearing:=0.5rbearing;
endglyph;

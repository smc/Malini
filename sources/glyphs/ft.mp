input glyph;
beginglyph;
z0=(x2 + Xw/3, y1-X/10);
z1=((x0+x2)/2, 1.1X);
z2=(x4  , 0.8X);
z3=(x4, 3/4s);
z4=(sw/4, 0);
paths[0] = z0{dir 120}..z1{left}..{down}z2 ..{down}z3---z4;
pen_stroke(
    nib(thicknib rotated terminalangle 0 of paths[p])(0)
    nib(thick_vertical_nib)(3,4)
    nib(top_nib)(1)
    nib(thick_vertical_nib)(2)
)(paths[0])(strokes[0]);

%bar
z5 = (0, s-thick/4);
z6 = (x5 + Xw, y5);
p:=p+1;
paths[1] = z5--z6;

pen_stroke(
    nib(thick_nib scaled 0.5 rotated 90)(0,1)
)(paths[1])(strokes[1]);

p:=p+1;
clearxy;
z0=(sw/4, s);
z1=(x0, s/4);
z2=((x1+x3)/2, undershoot);
z3=(x1 + sw/2.5, y2+s/6);
paths[2] = z0---z1{down}..z2..{dir 60}z3;
paths[2] := paths[2] shifted(xpart(point 0 of paths[0]), 0);
pen_stroke(
     nib(thick_vertical_nib)(0,1)
     nib(down_nib)(2)
     nib(end_nib scaled 0.75 rotated terminalangle 3 of paths[2])(3)
)(paths[2])(strokes[2]);

strokes[0] := bottom_serif(strokes[0], 4);
% Top hanging serif styling
strokes[0] :=  subpath(0.4, 13) of strokes[0]{right} .. cycle;

clearxy;
p:=p+1;
z0= point 0 of paths[2] + (thick/2, 0);
z1=(x0, 0.9X);
z2=(x1-thick/2, y1);
z3= point 0.5 of paths[1] + (0, thick/4);
paths[p] =  z0--z1--z2{down}..{left}z3--cycle;
strokes[p] = paths[p];

lbearing:=lbearing/2;
endglyph;

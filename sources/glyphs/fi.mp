input glyph;
beginglyph;
harmonize_curves:=0;
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
)(paths[p])(strokes[p]);

% i
p:=p+1;
clearxy;
paths[p] := subpath(2.5, infinity) of paths[0] shifted(xpart(point 0 of paths[0]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0,1, 2)
)(paths[p])(strokes[p]);

%bar
clearxy;
p:=p+1;
z5 = (0, s-thick/4);
z6 = (xpart point infinity of strokes[p-1], y5);
p:=p+1;
paths[p] = z5--z6;

pen_stroke(
    nib(thick_nib scaled 0.5 rotated 90)(0,1)
)(paths[p])(strokes[p]);

strokes[0] := bottom_serif(strokes[0], 4);
% Top hanging serif styling
strokes[0] :=  subpath(0.4, 13) of strokes[0]{right} .. cycle;

strokes[1] := bottom_serif(strokes[1], 2);

rbearing:=0.5*rbearing;
lbearing:=0;
endglyph;

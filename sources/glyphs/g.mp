input glyph;
beginglyph;
z0 =(x4, (y1 + y3)/2);
z1 =((x0 + x2)/2, s-thick/4);
z2=(x0 + 0.75sw, y0);
z3=(x1, m/2.5);
z4=(0, y0 );
paths[p]:=z0{up}..z1{right}..z2{down}..z3{left}..{up}z4;
pen_stroke(
    nib(middle_down_nib)(0)
    nib(top_nib)(1)
    nib(down_nib)(3)
    nib(middle_down_nib)(2)
    nib(middle_down_nib,)(4)
)(paths[p])(strokes[p]);

p:= p+1;
clearxy;
z0 = point 1.5 of paths[p-1];
z1 = (x0+sw/3, 1.1y0);
paths[p]:=z0--z1;

pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    cut(end_nib rotated terminalangle 1 of paths[p], rel 90)(1)
)(paths[p])(strokes[p]);

% Top hanging serif styling
% strokes[p] :=  subpath(0, 1) of strokes[p]{up}
%     ..subpath(2.4, 3) of strokes[p]
%     -- cycle;

p:= p+1;
clearxy;
z0 = point 3.2 of paths[p-2];
z1 = (0, y0 -s/6);
z2 = ((x1+x4)/2.5, y1-s/6);
z3 = ((x1+x4)/1.5, y2);
z4 = (xpart point 2 of paths[p-1], y3-s/4);
z5 = ((x2+x3)/2, -descent);
z6 = (x1-thick/4, (y5+y7)/1.75);
z7 = (x0, y2);
paths[p]:=z0{dir -160}..{down}z1..z2---z3..z4{down}..z5{left}..z6{up}..{dir 20}z7;
pen_stroke(
    nib(end_nib scaled 0.5 rotated terminalangle 0 of paths[p])(0)
    nib(end_nib rotated terminalangle 1 of paths[p])(1)
    nib(middle_down_nib)(6)
    nib(down_nib)(5)
    nib(middle_up_nib)(4)
    cut(end_nib, -45)(7)
)(paths[p])(strokes[p]);

lbearing:=sw/3*0.1;
rbearing:=sw/3*0.1;
endglyph;

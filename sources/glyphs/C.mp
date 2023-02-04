input glyph;
beginglyph;
p:=0;
save r,e;
r=0.75;
z0 = (r*Xw, y1 - X/4);
z1 = ((x0 + x2)/1.75, X - overshoot);
z2 = (0, (y1+y3)/2);
z3 = ((x2+x4)/1.75, undershoot);
z4 = (x0+thin/2, y3+X/4);
paths[p]:=z0{dir 90}..z1{left}..z2{down}..z3{right}..z4;

pen_stroke(
    nib(serif_nib)(0)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
    nib(end_nib scaled 2/3 rotated terminalangle 4 of paths[0])(4)
)(paths[p])(strokes[p]);

% Serif

clearxy;
z0 = (xpart point 0 of paths[p], X-thick/4);
strokes[p] :=point 0 of strokes[p]
   -- z0
   .. (subpath(1, 9) of strokes[p])--cycle;



% p:=p+1;
% clearxy;
% z0 = point (length(paths[p-1])*2 + 1 ) of strokes[p-1];
% z1 = (x0 + serif_height, y0);
% z2 = (x1, X);
% z3 = (x2 - (x1-x0), y2);
% z4 = point 0.5 of paths[p-1];
% paths[p] = z0--z1--z2--z3--z4..{down}cycle;
% strokes[p] := paths[p];

anchor( "top", (xpart(point 1 of paths[0]), 1.2X));
anchor( "bottom", (xpart(point 3 of paths[0]), 0));
endglyph;

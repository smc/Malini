input glyph;
beginglyph;


z0=(thick/8, 0.725s);
z1=((x0+x2)/2, s-overshoot);
z2=(x0+0.7sw, 0.6s);
z3=(x2, 0);
paths[p] := z0{dir 100}.. z1{right}..z2---z3 ;

pen_stroke(
    nib(thick_nib scaled 1.25 rotated terminalangle 0 of paths[p] )(0)
    nib(top_nib scaled 0.8)(1)
    nib(thick_vertical_nib)(2, 3)
)(paths[p])(strokes[p]);

% Top hanging serif styling
strokes[p] :=  subpath(0, 6.7) of strokes[p]{dir -120}  .. {right}cycle;

strokes[p] := bottom_right_serif(strokes[p], 4);
% Leave some extra gap at bottom, near serif
strokes[p] :=  subpath(0, 2.75) of strokes[p]
    -- subpath(3.15, 10) of strokes[p]
    --  cycle;

p:=p+1;
clearxy;
z0=point 2 of paths[p-1];
z1=(x3, y3 + 0.5s);
z2=(0, (y1 + y3)/2.5) ;
z3=((x2+x4)/2.5, undershoot);
z4=(x0, y3+s/3);
paths[p] := z0{dir 185}..{down}z2..z3{right}..z4;
pen_stroke(
    nib(end_nib scaled 0.9 rotated terminalangle 0 of paths[p])(0)
    nib(middle_down_nib)(1)
    nib(down_nib)(2)
    cut(end_nib   rotated terminalangle 3 of paths[p], 0)(3)
)(paths[p])(strokes[p]);


lbearing:=sw/3*0.4;
rbearing:=sw/3*0.25;
anchor( "top", (xpart(point 1 of paths[0]), 0.9X));
endglyph;

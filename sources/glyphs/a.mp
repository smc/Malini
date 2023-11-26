input glyph;
beginglyph;


z0=(0, 2/3s);
z1=((x0+x2)/2, s-overshoot);
z2=(x0+0.7sw, 0.6s);
z3=(x2, s/4);
z4=((x3 + x5)/2, undershoot);
z5=(x3 + sw*0.3, 0.15s);
paths[p] := z0{dir 80}.. z1{right}..z2{down}..{down}z3..z4{right}.. {up}z5 ;

pen_stroke(
    cut(thick_nib scaled 1 , -20 )(0)
    nib(top_nib scaled 0.8)(1)
    nib(thick_vertical_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib rotated -40 scaled 0.8)(4)
    cut(end_nib scaled 0.5, rel 90)(5)
)(paths[p])(strokes[p]);

% Top hanging serif styling
strokes[p] := soften_node(strokes[p], u*condense*0.2, 11 );
% strokes[p] := soften_node(strokes[p], u*condense*0.1, 12 );

p:=p+1;
clearxy;
z0=point 2.15 of paths[p-1];
z1=(x3, y3 + 0.45s);
z2=(0, (y1 + y3)/2.2) ;
z3=((x2+x4)/2.25, 1.2undershoot);
z4=(x0, y3+0.25s);
paths[p] := z0{dir 185}..{down}z2..z3{right}..z4;
pen_stroke(
    nib(end_nib scaled 0.9 rotated terminalangle 0 of paths[p])(0)
    nib(middle_down_nib)(1)
    nib(down_nib rotated -40)(2)
    nib(end_nib rotated terminalangle 3 of paths[p])(3)
    % ignore_directions(1l, 2 ,3, 4)
)(paths[p])(strokes[p]);


lbearing:=sw/3*0.2;
rbearing:=sw/3*0.1;
anchor( "top", (xpart(point 1 of paths[0]), 0.9X));
endglyph;

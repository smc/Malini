input glyph;
beginglyph;
paths[p] := pa_mouth;
strokes[p] := pa_mouth_stroke(paths[p]);

clearxy;
p:=p+1;
z0=(0,0);
z1=z0 + (0.7mw,0);
paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thick/4, thick*thin_horizontal_nib_scale/2 );

pen_stroke(
    cut(thin_horizontal_nib, 30)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);
strokes[p]:= (xpart point infinity of strokes[p-1], ypart(point 0 of strokes[p])) -- subpath( 1, 3) of strokes[p]--cycle;


% മ
clearxy;
p:=p+1;
z0= (0, 0);
z1= (x0, m/2);
z2= ((x1+x3)/2, m-overshoot);
z3= (x0+ mw, y1);
z4= (x3, y0);
paths[p] = z0---z1..z2..z3---z4;
paths[p] := paths[p] shifted (xpart point infinity of paths[p-1], 0);
pen_stroke(
    nib(middle_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=point 0 of paths[p-1] + (0, thick*thin_horizontal_nib_scale/2);
z1=(xpart(point 4 of paths[p-1]), y0);
paths[p] = z0--z1;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0= point 1.8 of paths[p-2];
z1= (xpart point 2.1 of paths[p-2] , ypart point 1 of paths[p-2]);
z2= point 0 of paths[p-1];

paths[p] = z0{dir -10}..z1{dir -110}..{dir 200}z2;
pen_stroke(
    nib(end_nib scaled 0.8 rotated terminalangle 0 of paths[p]  )(0)
    nib(middle_down_nib )(1)
    nib(end_nib rotated terminalangle 2 of paths[p] )(2)
)(paths[p])(strokes[p]);



anchor( "vc", point 0.5 of paths[1]);

anchor( "right", point 1 of paths[p-1] - (mw/5,0));
endglyph;

input glyph;
beginglyph;
p=0;
z0=(x1 + mw/3 , 0);
y2 - y1 = y2/2;
z1=(0, y1);
z2=((x1+x3)/2, m-thick*sind(55)/4);
x3-x1 = mw*0.95;
z3=(x3, y1);
z4=(x3 - mw/3 + thin*1.2/2, thin/2);
paths[p] = z0..z1..z2..z3..z4;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4)
    ignore_directions(1,2,3)
)(paths[p])(strokes[p]);

% Connector
p:=p+1;
clearxy;
z0= (0, thin/4);
z1= (x0 + 0.2mw, y0);
paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point 4 of paths[p-1]) - thin*1.2/2 , 0);

pen_stroke(
    nib(thin_nib scaled 0.5 rotated 90)(0)
    nib(thin_nib scaled 0.5 rotated 90)(1)
)(paths[p])(strokes[p]);

% Horizontal stem
p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 0.7mw, y0);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point 4 of paths[p-2]) + thin/4 , thick*sind(45)/2);

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0, m);

paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "bottom", (xpart(point 1 of paths[2]),0));
anchor( "right", (xpart(point 1 of paths[2])-mw/5,0));


endglyph;

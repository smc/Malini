input glyph;
beginglyph;
z0=(0, (y1+y3)/2);
z1=((x2+x0)/2, y3 + m/2);
z2=(x1 + 0.25mw, y0);
z3=(x1, 0);
z4=(x0, y0);

paths[0] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;
paths[0] := paths[0] shifted (0, m/2);

paths[1] := paths[0] shifted (3/4mw, 0);
pen_stroke(
    nib(middle_down_nib)(2)
    nib(middle_up_nib)(0,4)
    nib(top_nib)(1)
    nib(down_nib)(3)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(middle_down_nib)(2)
    nib(middle_up_nib)(0, 4)
    nib(top_nib)(1)
    nib(down_nib)(3)
)(paths[1])(strokes[1]);

clearxy;
z0=point 0 of paths[0];
z1=((x0+x2)/2, m/4);
z2=point 2 of paths[1];
paths[2] =z0{dir -95}..z1..{dir 95}z2;
pen_stroke(
    nib(middle_down_nib)(2)
    nib(middle_up_nib)(0)
    nib(down_nib)(1)
)(paths[2])(strokes[2]);


clearxy;
z0=(xpart(point 0 of paths[0])  + 0.05mw, (y1+y3)/2);
z1=((x2+x0)/2, ypart(point 1 of paths[2]));
z2=(xpart(point 2 of paths[1]) - 0.05mw, y0);
z3=(x1, -descent*0.75);
z4=(x0, y0);

paths[3] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;
pen_stroke(
    nib(middle_down_nib)(2,0,4)
    nib(top_nib)(1)
    nib(down_nib)(3)
)(paths[3])(strokes[3]);

clearxy;
z0 = (xpart(point 1 of paths[0]), -m/6);
z1 = (xpart(point 1 of paths[2]), y0);
z2 = (xpart(point 1 of paths[1]), y0);
paths[4] = z0{dir 110}..{dir -70}z1{dir 70}..{dir -110}z2;
pen_stroke(
 nib(end_nib)(0,1, 2)
)(paths[4])(strokes[4]);
endglyph;

input glyph;
beginglyph;

p:=0;
z0 = (0.6Xw, y1 - 0.166X);
z1 = ((x0+x2)/1.8, X-thick/4);
z2 = (0.05Xw, y1 - .18X);
z3 = ((x2+x4)/2, (y2 + y4)/2);
z4 = (0.66Xw, y5 + .22X);
z5 = ((x4+x6)/2.2, thick/4);
z6 = (0, y5+0.166X);


paths[p] = z0 ..z1..z2 ..z3..z4 ..z5.. z6;

pen_stroke(
   nib(serif_nib )(0)
   nib(top_nib scaled 0.85)(1)
   nib(middle_down_nib)(2,4)
   nib(middle_down_nib scaled 0.85 rotated 90)(3)
   nib(down_nib  scaled 0.85)(5)
   nib(serif_nib  )(6)
   ignore_directions(2,3 , 4)
)(paths[0])(strokes[0]);

% Serif
p:=p+1;
clearxy;
z0=(x1 - 1.5serif_height, (y1+y2)/2.05);
z1=(xpart(point 0 of paths[0])  , X);
z2=(x1, ypart(point 0 of paths[0]));
paths[p]=z0{right}..{up}z1--z2;
pen_stroke(
    nib(serif_nib rotated terminalangle 0 of paths[p])(0 )
    nib(serif_nib )(1,2 )
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(x1 + 1.5serif_height, (y1+y2)/1.5);
z1=(xpart(point infinity of paths[0]) , 0);
z2=(x1, ypart(point infinity of paths[0]) );
paths[p]=z0{left}..{down}z1--z2;
pen_stroke(
    nib(serif_nib rotated terminalangle 0 of paths[p])(0 )
    nib(serif_nib )(1,2 )
)(paths[p])(strokes[p]);


anchor( "top", (xpart(point 1 of paths[0]), 1.2X));
anchor( "bottom", (xpart(point 1 of paths[0]), 0));
endglyph;

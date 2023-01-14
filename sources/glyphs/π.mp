input glyph;
beginglyph;

p:=0;
z0=(0, 0);
z1=(x0+sw/3  ,s);
paths[p] := z0{dir 45}..{up}z1;
pen_stroke(
    nib(thick_vertical_nib rotated terminalangle 0 of paths[p])(0)
    nib(end_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0.75sw, s);
z1=(x0+sw/4 , 2undershoot);
z2=(x1+sw/4 ,s/4);
paths[p] := z0{down}..z1{right}..{dir 60}z2;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(down_nib)(1)
    nib(end_nib  scaled 0.5 rotated terminalangle 2 of paths[p])(2)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, 0.8s);
z1=(x0+sw/4, s);
z2=(x1+0.75sw, y1);
paths[p] := z0..z1---z2;
pen_stroke(
    nib(end_nib scaled 0.5 rotated terminalangle 0 of paths[2])(0)
    nib(thin_horizontal_nib)(1,2,3)
)(paths[p])(strokes[p]);
endglyph;

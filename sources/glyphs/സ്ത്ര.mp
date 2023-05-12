input glyph;
beginglyph;
input ./glyphs/include/സ;
p:=p+1;
clearxy;
%  ത്ര
input ./glyphs/include/ത;

clearxy;
z0 = (xpart point 3.75 of paths[p], -0.8*descent); % ra sign starts
z9 = (x0 - mw/4,  y0); % ra sign starts
z10 = point 1 of paths[p] - (mw/3, 0);
z11 = (x10 + mw/8, m);

paths[p] := (subpath(0,7) of paths[p]) .. z0---z9 ..z10{up}..z11;

paths[p] := paths[p] shifted (mw, -1.1m) xscaled 0.8 yscaled 0.7;
pen_stroke(
    nib(start_up_nib scaled 0.8 rotated terminalangle 0 of paths[0])(0)
    nib(top_nib scaled 0.8)(2,6)
    nib(middle_down_nib scaled 0.8)(3, 7)
    nib(down_nib scaled 0.8)(4)
    nib(middle_up_nib scaled 0.8)(1,5)
    nib(down_nib scaled 0.8)(8,9)
    nib(middle_up_nib scaled 0.8)(10)
    nib(end_nib scaled 0.8 rotated terminalangle infinity of paths[p])(11)
)(paths[p])(strokes[p]);


anchor( "vc", (xpart point infinity of paths[0],0));

endglyph;

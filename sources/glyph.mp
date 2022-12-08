% This file various utility functions for drawing a glyph
% Copyright 2022 Santhosh Thottingal
% Licensed under MIT License

% Macros from MetaType1
input plain_ex;
% Base configuration
input config;
% Customization for a font variant. If file does not exist, skips.
% jobname is an internal variable set by Makefile.
% The purpose of this variable is different, but Metapost allows setting
% values for internal variables only. So using jobname which is relatively
% better choice for passing current style variant name
maybeinput jobname;

% Pens
input ./pens

pen nib; nib := finenib;

% Aliases
m   := mheight;
s   := xheight;      % x is a special symbol. So let us use s
X   := Xheight;

sw  := s * condense; % Width of Latin small letters
mw  := m * condense; % Width of Malayalm letters
Xw  := X * condense; % Width of Latin capital letters
lbearing := lbearing * condense;
rbearing := rbearing * condense;

% Ellipitical nibs
vardef thicknib = fix_nib(thick, thick, 0) enddef;
vardef thinnib = fix_nib(thick*thin, thick*thin, 0) enddef;

% Razor nibs
vardef thick_nib = fix_nib(thick, 0, 0) enddef;
vardef start_up_nib = fix_nib(thick*sind(35), 0, 0) enddef;
vardef middle_up_nib = fix_nib(thick*sind(40), 0, 0) rotated 0 enddef;
vardef top_nib = fix_nib(thick*sind(50), 0, 90) enddef;
vardef middle_down_nib = fix_nib(thick*sind(90), 0, 0) enddef;
vardef down_nib = fix_nib(thick*sind(50), 0, 90) enddef;
vardef end_nib = fix_nib(thick*sind(50), 0, 0) enddef;
vardef thin_horizontal_nib = fix_nib(0, thick, 0)  rotated -45 enddef;
vardef thick_vertical_nib = fix_nib(thick*sind(90), 0, 0) enddef;
vardef thin_vertical_nib = fix_nib(thick*sind(54), 0, 0) enddef;

vardef terminalnib =
    if terminalround = 0:
        fix_nib(thick*xthick, 0, 0)
    else:
        fix_nib(thick*xthick, thick*terminalround, 0) xyscaled(xthick, terminalround)
    fi
enddef;

vardef thinterminalnib =
    if terminalround = 0:
        fix_nib(thick*thin, 0, 0)
    else:
        fix_nib(thick*thin, thick*terminalround, 0)
    fi
enddef;



vardef show_coordinates (expr p) =
    % Debug points are hard to see. Change the fontsize
    defaultscale := 2;

    for i=0 upto length(p):
        pair a;a:=point i of p;
        pair b;b:=point i+1 of p;
        string pointlabel; pointlabel := decimal(i) & "(" & decimal(round(xpart(a))) & "," & decimal(round(ypart(a))) & ")";
        dotlabel.bot(pointlabel, a) withpen pencircle scaled 10 withcolor debugcolor;
        draw (point i of p -- precontrol i of p)  withpen pencircle scaled 2 withcolor debugcolor;
        draw (point i of p -- postcontrol i of p)  withpen pencircle scaled 2 withcolor debugcolor;
    endfor;

enddef;
% For the given point t of path p, calculate the terminal angle. That is
% the direction of cut at that point. It is perpendicular to the direction
% of path.
vardef terminalangle expr t of p = angle(direction t of p)+90 enddef;

def anchor = label enddef;

vardef boundingbox(expr p, lbearing, rbearing) =
    % In debug mode, show more vertical and horizontal regions
    if showgrids > 0:
    (-.1em, 0 - 0.1em) -- (-.1em,em+.1em) -- (xpart(urcorner p)+rbearing + .1em, em+.1em) -- (xpart(urcorner p)+rbearing + .1em,0 - .1em) -- cycle
    else:
    (0, 0) -- (0,em) -- (xpart(urcorner p)+rbearing, em) -- (xpart(urcorner p)+rbearing,0) -- cycle
    fi
enddef;

def beginglyph =
    begingroup
    % Resets
    clearxy; clearit; clearpen;
    pickup defaultpen;
    drawoptions();

    save paths, strokes;
    path paths[], strokes[];
enddef;

def endglyph =
    path softpath;


    for i=0 upto 10:
        if varstroke = 1:
            if known strokes[i]:
                if (thin = 1) and (terminalround = 1):
                    pen_stroke()(paths[i])(strokes[i]);
                fi;
                save soft_; boolean soft_;
                % If the path is cycle, no need to soften. Infact, attempting to soften
                % will create wrong outlines.
                % We could use 'cycle p' of metapost here.
                % But for some reason it is not returning true when it should.
                % So here we are checking if first point is same as last point.
                soft_:=(soften>0) and (point 0 of paths[i] <> point infinity of paths[i]);
                if soft_ and known strokes[i]b:
                    softpath := soften_nodes(strokes[i], cornerradius)(
                        0,
                        length(strokes[i]l),
                        length(strokes[i]l) + length(strokes[i]e),
                        length(strokes[i]l) + length(strokes[i]r) + length(strokes[i]e)
                   );
                    fill softpath withcolor glyphcolor;
                else:
                    fill strokes[i] withcolor glyphcolor;
                fi;
            fi;
        fi;


        if known paths[i]:

            if show_paths = 1:
                draw paths[i] withpen nib scaled 2 withcolor 0.8white;
            fi;
            if showcoords = 1:
                show_coordinates(paths[i]);
                % show_coordinates(strokes[i]);
            fi;
        fi;
    endfor;

    if slant <> 0:
        % Find out current x-maximum
        xmax := xpart (urcorner currentpicture);
        currentpicture := currentpicture slanted tand(slant);
        % After slanting the width of currentpicture will increase. Find current x-maximum
        % The difference in width change is the slant shift
        slant_xshift := ( xpart (urcorner currentpicture)) - xmax;
        % Cancel the slant shift
        rbearing := rbearing - slant_xshift;
    fi;

    currentpicture := currentpicture shifted (lbearing, descent);

    % Place the drawing at the svg canvas.
    pair ur; ur:=urcorner currentpicture;
    path bbox; bbox = boundingbox(currentpicture, lbearing, rbearing);
    setbounds currentpicture to bbox;
    currentpicture := currentpicture shifted (lbearing, 0);
    if showgrids = 1:
        % Debug points are hard to see. Change the fontsize
        defaultscale := 2;
        pair w; w:=urcorner currentpicture;
        draw (0, 0) -- (xpart w, 0) withpen pencircle scaled 1 withcolor gridcolor;
        draw (0, descent) -- (xpart w, descent) withpen pencircle scaled 1 withcolor gridcolor;
        draw (0, mheight+descent) -- (xpart w, mheight+descent) withpen pencircle scaled 1 withcolor gridcolor;
        draw (0, xheight+descent) -- (xpart w, xheight+descent) withpen pencircle scaled 0.5 withcolor gridcolor;
        draw (0, 0) -- (0, em) withpen pencircle scaled 1 withcolor gridcolor;
        draw (lbearing, 0) -- (lbearing, em) withpen pencircle scaled 1 withcolor gridcolor;
        draw ( xpart ur + lbearing+ rbearing, 0) -- (xpart ur  + lbearing + rbearing, em) withpen pencircle scaled 1 withcolor gridcolor;
        draw ( xpart ur  + lbearing , 0) -- (xpart ur  + lbearing , em) withpen pencircle scaled 1 withcolor gridcolor;
        draw (0, em) -- (xpart w, em) withpen pencircle scaled 1 withcolor gridcolor;
    fi;

    if showcoords = 1:
        % Debug points are hard to see. Change the fontsize
        defaultscale := 2;
        pair w; w:=urcorner currentpicture;
        dotlabel.urt( "(0, " & decimal(0) & ")", (0, descent))  withcolor debugcolor;
        dotlabel.urt( "(0, " & decimal(mheight) & ")", (0, mheight+descent))  withcolor debugcolor;
        dotlabel.lrt( "(" & decimal(lbearing) & ",0 )", (lbearing,  descent))  withcolor debugcolor;
        dotlabel.lft( "(" & decimal(round(xpart ur) - rbearing) & ",0 )", (xpart ur +  lbearing + rbearing,  descent))  withcolor debugcolor;
    fi;
    shipit;
    endgroup
enddef;

input malayalam;
input latin;
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
input ./pens;

pen nib; nib := finenib;

% Aliases
m   := mheight;
s   := xheight;      % x is a special symbol. So let us use s
X   := Xheight;

sw  := s * condense * 0.95; % Width of Latin small letters
mw  := m * condense; % Width of Malayalm letters
Xw  := X * condense * 0.95; % Width of Latin capital letters
lbearing :=  mw/3*0.3;   % Default left bearing
rbearing :=  mw/3*0.3;   % Default right bearing

absolute_position := 0;

% Ellipitical nibs
vardef thicknib = fix_nib(thick, thick, 0) enddef;
vardef thinnib = fix_nib(thin, thin, 0) enddef;

% Razor nibs
vardef thick_nib = fix_nib(thick, 0, 0) enddef;
vardef thin_nib = fix_nib(thin, 0, 0) enddef;

middle_up_nib_scale = 1.2;
end_nib_scale = 1.2;
top_nib_scale = 1.5;
down_nib_scale = 1.5;

vardef start_up_nib = thin_nib enddef;
vardef middle_up_nib = thin_nib scaled middle_up_nib_scale rotated -10 enddef;
vardef top_nib = thin_nib scaled top_nib_scale rotated 70 enddef;
vardef middle_down_nib = thick_nib rotated 10 enddef;
vardef down_nib = thin_nib scaled down_nib_scale rotated 110 enddef;
vardef end_nib = thin_nib scaled end_nib_scale enddef;
vardef thick_horizontal_nib = fix_nib(0, thick*0.8, 0) enddef;
vardef thin_horizontal_nib = fix_nib(0, thick*sind(45), 0) enddef;
vardef thick_vertical_nib = thick_nib enddef;
vardef thin_vertical_nib = thin_nib enddef;
vardef serif_nib = fix_nib(serif_height, 0, 0) enddef;

vardef insert_point(expr orig_path, t) =
    save new_point;
    pair new_point;
    new_point = point t of orig_path;
    path result_path;
    result_path = subpath (0, floor(t)) of orig_path .. new_point .. subpath (floor(t+1), length(orig_path)) of orig_path;
    result_path
enddef;

vardef terminalnib =
    if terminalround = 0:
        fix_nib(thick*xthick, 0, 0)
    else:
        fix_nib(thick*xthick, thick*terminalround, 0) xyscaled(xthick, terminalround)
    fi
enddef;

vardef thinterminalnib =
    if terminalround = 0:
        fix_nib(thin, 0, 0)
    else:
        fix_nib(thin, thick*terminalround, 0)
    fi
enddef;


% Show bezier controls
vardef show_controls (expr p) =
    for i=0 upto length(p):
        pair a;a:=point i of p;
        pair b;b:=point i+1 of p;
        draw (point i of p -- precontrol i of p)  withpen pencircle scaled 1 withcolor debugcolor;
        draw (point i of p -- postcontrol i of p)  withpen pencircle scaled 1 withcolor debugcolor;
    endfor;
enddef;


vardef show_coordinates (expr p) =
    % Debug points are hard to see. Change the fontsize
    defaultscale := 2;

    for i=0 upto length(p):
        pair a;a:=point i of p;
        string pointlabel;
        if showpoints = 1:
            pointlabel := decimal(i) ;
        fi;
        if showcoords = 1:
           pointlabel := decimal(i) & "(" & decimal(round(xpart(a))) & "," & decimal(round(ypart(a))) & ")";
        fi;
        dotlabel.bot(pointlabel, a) withpen pencircle scaled 10 withcolor debugcolor;
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

    save paths, strokes, p;
    path paths[], strokes[];
    p:=0;
    enddef;

def endglyph =
    path softpath;


    for i=0 upto 20:
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
            if (showcoords = 1) or (showpoints = 1):
                show_coordinates(paths[i]);
            fi;
            if showcontrols = 1:
                show_controls(paths[i]);
            fi;
        fi;
        if known strokes[i]:
            if (showcoords = 1) or (showpoints = 1):
                show_coordinates(strokes[i]);
            fi;
            if showcontrols = 1:
                show_controls(strokes[i]);
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

    % Place the whole drawing at x=0
    if absolute_position <> 1:
        xmin:= xpart (llcorner currentpicture);
        currentpicture := currentpicture shifted (-xmin, descent);
    else:
        currentpicture := currentpicture shifted (0, descent);
    fi;


    % Place the drawing at the svg canvas with left and right bearing.
    pair ur; ur:=urcorner currentpicture;
    path bbox; bbox = boundingbox(currentpicture, lbearing, rbearing);
    setbounds currentpicture to bbox;
    currentpicture := currentpicture shifted (lbearing, 0);
    if showgrids = 1:
        % Debug points are hard to see. Change the fontsize
        defaultscale := 2;
        w:=xpart ur  + lbearing + rbearing;
        draw (0, 0) -- (w, 0) withpen pencircle scaled 1 withcolor gridcolor;
        draw (0, descent) -- (w, descent) withpen pencircle scaled 1 withcolor gridcolor;
        draw (0, mheight+descent) -- (w, mheight+descent) withpen pencircle scaled 1 withcolor gridcolor;
        draw (0, xheight+descent) -- (w, xheight+descent) withpen pencircle scaled 0.5 withcolor gridcolor;
        draw (0, 0) -- (0, em) withpen pencircle scaled 1 withcolor gridcolor;
        draw (lbearing, 0) -- (lbearing, em) withpen pencircle scaled 1 withcolor gridcolor;
        draw ( xpart ur + lbearing+ rbearing, 0) -- (w, em) withpen pencircle scaled 1 withcolor gridcolor;
        draw ( xpart ur  + lbearing , 0) -- (xpart ur  + lbearing , em) withpen pencircle scaled 1 withcolor gridcolor;
        draw (0, em) -- (w, em) withpen pencircle scaled 1 withcolor gridcolor;
    fi;

    if showcoords = 1:
        % Debug points are hard to see. Change the fontsize
        defaultscale := 2;

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
"""
    pygments.styles.allylight
    ~~~~~~~~~~~~~~~~~~~~~~~
    Emmett Leddin 2022

    Based on https://github.com/ericwbailey/a11y-syntax-highlighting
    Background:      #fefefe (cream)
    Chelsea Gem:     #aa5d00 (orange)
    Allports:        #007299 (teal)
    Dove Gray:       #696969 (gray)
    Emperor:         #545454 (brown-gray)
    Japanese Laurel: #008000 (green)
    Thunderbird:     #d91e18 (red)
"""

from pygments.style import Style
from pygments.token import Keyword, Name, Comment, String, Error, \
     Number, Operator, Generic, Whitespace


class AllyLightStyle(Style):
    """
    Create an A11y style for a light background.
    The comments are corresponding CSS variables.
    """

    background_color = '#fefefe'
    default_style = ''

    styles = {
        # .w
        Whitespace:             '#bbbbbb',
        # .c
        Comment:                '#696969',
        # .cp
        Comment.Preproc:        '#197487',
        # .cs
        Comment.Special:        '#d91e18 bold',
        # .ch
        Comment.Hashbang:       '#696969',
        # .cm
        Comment.Multiline:      '#696969',
        # .cpf
        Comment.PreprocFile:    '#696969',
        # .c1
        Comment.Single:         '#696969',

        ## Literal Strings
        # .s
        String:                 '#aa5d00',
        # .sh
        String.Heredoc:         '#1a7669 italic',
        # .sx
        String.Other:           '#a15816',
        # .sr
        String.Regex:           '#1a7669',
        # .sa
        String.Affix:           '#aa5d00',
        # .sb
        String.Backtick:        '#aa5d00',
        # .sc
        String.Char:            '#aa5d00',
        # .dl
        String.Delimiter:       '#aa5d00',
        # .sd
        String.Doc:             '#aa5d00',
        # .s2
        String.Double:          '#aa5d00',
        # .se
        String.Escape:          '#aa5d00',
        # .si
        String.Interpol:        '#aa5d00',
        # .s1
        String.Single:          '#aa5d00',
        # .ss
        String.Symbol:          '#008000',

        ## Literal Numbers
        # .m
        Number:                 '#007299',
        # .mb
        Number.Bin:             '#007299',
        # .mf
        Number.Float:           '#007299',
        # .mh
        Number.Hex:             '#007299',
        # .mi
        Number.Integer:         '#007299',
        # .mo
        Number.Oct:             '#007299',

        # .ow
        Operator.Word:          '#d91e18',

        # .k
        Keyword:                '#d91e18 bold',
        # .kt
        Keyword.Type:           '#00688B bold',
        # .kc
        Keyword.Constant:       '#d91e18 bold',
        # .kd
        Keyword.Declaration:    '#d91e18 bold',
        # .kn
        Keyword.Namespace:      '#d91e18 bold',
        # .kp
        Keyword.Pseudo:         '#d91e18 bold',
        # .kr
        Keyword.Reserved:       '#d91e18 bold',

        # .nc
        Name.Class:             '#008b45 bold',
        # .ne
        Name.Exception:         '#008b45 bold',
        # .nf
        Name.Function:          '#008b45',
        # .nn
        Name.Namespace:         '#008b45',
        # .nv
        Name.Variable:          '#00688B',
        # .no
        Name.Constant:          '#00688B',
        # .nd
        Name.Decorator:         '#707a7c',
        # .nt
        Name.Tag:               '#d91e18 bold',
        # .na
        Name.Attribute:         '#658b00',
        # .nb
        Name.Builtin:           '#658b00',

        # .gh
        Generic.Heading:        'bold #000080',
        # .gu
        Generic.Subheading:     'bold #800080',
        # .gd
        Generic.Deleted:        '#aa0000',
        # .gi
        Generic.Inserted:       '#007d00',
        # .gr
        Generic.Error:          '#aa0000',
        # .ge
        Generic.Emph:           'italic',
        # .gs
        Generic.Strong:         'bold',
        # .gp
        Generic.Prompt:         '#555555',
        # .go
        Generic.Output:         '#6a6a6a',
        # .gt
        Generic.Traceback:      '#aa0000',
        # .err
        Error:                  'bg:#e3d2d2 #a61717'
    }

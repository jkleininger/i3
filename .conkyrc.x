background true

double_buffer 		yes

own_window 		yes
own_window_transparent	no
own_window_type 	dock

draw_borders 		no
border_width		0
border_inner_margin	-10
border_outer_margin	1
draw_shades		no

default_bar_size	80 6

gap_x			0
gap_y			0

update_interval 	1

default_color		444477
color0			223355
color1			557799
own_window_color	030309

use_xft			yes
xftfont			Terminus:size=8
#xftfont			Silkscreen:size=6

use_spacer		none
minimum_size		1280 1
maximum_width		1280

TEXT
$color0 WS $color1${exec cat $HOME/scripts/curws}\
${alignc}$color0 \
L$color1${if_up enp0s10}${addr enp0s10}${else}DOWN${endif} $color0| \
W$color1${if_up wlp3s0}${addr wlp3s0}${else}DOWN${endif} $color0| \
B$color1${battery_percent BAT0}% $color0| \
CPU1 $color1${cpu cpu1}%$color0 | CPU2 $color1${cpu cpu2}% $color0| \
V$color1${exec $HOME/scripts/getvol} $color0| \
G$color1[${execi 60 $HOME/scripts/gmail}] \
${alignr} \
$color1${time %a %d %b %H:%M}

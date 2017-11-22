export JAVA_HOME=/usr/java/default

PATH=$PATH:$HOME/.local/bin::$HOME/.yarn/bin:$HOME/softwares/lein

export PATH

xrandr --auto

if xrandr --listactivemonitors | grep -q 'HDMI1' ; then
	xrandr --output HDMI1 --left-of eDP1
	fi


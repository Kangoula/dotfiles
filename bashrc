# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
stty -ixon
stty -ixon
stty -ixon

# cat /home/kangoula/.platypus
# cat /home/kangoula/.iamroot

alias yolo='sudo'
alias spacemacs='emacs'
alias idea='/opt/idea-IU/bin/idea.sh'
alias ping='ping -c 5 google.fr'
alias narcissisticPony='__pony=$(ponysay -o 3>&1 1>/dev/null | grep ^pony\ file: | sed -e s/^pony\ file:\ //g) && (ponysay -of "$__pony" | ponythink -Wn -f "$__pony")'
alias rmdir="rm -rf"
alias rsync="rsync -arh --progress"
alias mplayer="mplayer -vf scale -zoom -xy 800 -cache 10000"
#export NVM_DIR="/home/kangoula/Programmes/node-v4.6.0"
#export M2_HOME="/home/kangoula/Programmes/maven-3.3.9"
#export LEIN="/home/kangoula/Programmes/leiningen/"
#export WILDFLY_HOME="/opt/wildfly-10.1.0"
#export JAVA_HOME="/usr/java/jdk1.8.0_101"
#export HADOOP_PREFIX="/home/kangoula/Programmes/hadoop-2.7.3"
#export HADOOP_CLASSPATH=$JAVA_HOME/lib/tools.jar
#PATH=$HADOOP_PREFIX/bin:$LEIN:$NVM_DIR/bin:$M2_HOME/bin:/usr/local/heroku/bin:$PATH

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo " [${BRANCH}${STAT}] "
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modifié" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Fichiers non suivis" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Votre branche est en avance" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "nouveau fichier" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renommé" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "supprimé" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

# (\`if [ \$? = 0 ]; then echo \[\e[33m\]^_^\[\e[0m\]; else echo \[\e[31m\]ಠ_ಠ\[\e[0m\]; fi\`)

PS1="(\`if [ \$? = 0 ]; then echo \[\e[32m\]\342\234\223\[\e[0m\]; else echo \[\e[31m\]\342\234\227\\[\e[0m\]; fi\`) \[\e[0m\]\[\e[0;38;05;36m\]\u@\h\[\e[0m\]:\[\e[0;94m\]\W\[\033[1;30m\]\[\e[38;05;136m\]\`parse_git_branch\`\[\e[0;94m\]\[\e[0m\]\\$ "

# PATH="/usr/local/heroku/bin:$PATH"

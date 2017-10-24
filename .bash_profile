# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export SOFTWARES=$HOME/Programmes
export NVM_DIR=$SOFTWARES/node-v4.6.0
export M2_HOME=$SOFTWARES/maven-3.3.9
export LEIN=$SOFTWARES/leiningen/
export WILDFLY_HOME=/opt/wildfly-10.1.0
export JAVA_HOME=/usr/java/jdk1.8.0_101
export HADOOP_PREFIX=$SOFTWARES/hadoop-2.7.3
export HADOOP_CLASSPATH=$JAVA_HOME/lib/tools.jar

PATH=$PATH:$HADOOP_PREFIX/bin:$LEIN:$NVM_DIR/bin:$M2_HOME/bin:$HOME/.local/bin:$HOME/bin

export PATH

# disable touchscreen
xinput disable 'Atmel'

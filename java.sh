export ANT_OPTS='-Xms512m -Xmx1024m'
export M2_HOME=/opt/apache-maven
export PATH=$PATH:$M2_HOME/bin

export PATH=$PATH:/opt/jruby/bin:/opt/play
export PATH=$PATH:/opt/sbt:/opt/scala/bin

# Get Java in the 20th century and turn font antialising on
# Disable it as it causes the Play! java compile to hang
# export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on"

function java6 {
    export JAVA_HOME=/opt/java6
    export PATH=$JAVA_HOME/bin:$PATH
}

#!/bin/bash/
mkdir /opt/APPs;mkdir /opt/JDK;mkdir /opt/Tomcat;jdk=$(find /root/ -type f -name 'jdk*' | head -n 1);echo $jdk;tar -xvzf $jdk -C /opt/JDK/;tom=$(find /root/ -type f -name 'apache*' | head -n 1);tar -xvzf $tom -C /opt/Tomcat/;version=$(cd /opt/JDK;ls);echo $version;cd /opt/JDK/$version;jdkver=$(pwd);echo $jdkver;version1=$(cd /opt/Tomcat/;ls);echo $version1;cd /opt/Tomcat/$version1;tomver=$(pwd);echo $tomver;sed -i '2i\'"JAVA_HOME=$jdkver" "$tomver/bin/catalina.sh";sed -i '69s\8080\80\g' "$tomver/conf/server.xml";sed -i '161s#webapps#opt/APPs#g' "$tomver/conf/server.xml";/opt/Tomcat/$version1/bin/startup.sh;

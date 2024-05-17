#openjdk_11-maven_3_6_3-ubuntu_20_04
#Selecting the base image
FROM ubuntu:20.04
#Installing java 11 on ubuntu
RUN apt update
RUN apt install -y default-jdk
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH="$JAVA_HOME/bin:$PATH"
RUN apt install maven -y
ENV MAVEN_HOME=/usr/share/maven
ENV PATH="$MAVEN_HOME/bin:$PATH"
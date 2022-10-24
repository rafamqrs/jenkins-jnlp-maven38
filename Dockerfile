FROM registry.redhat.io/openshift4/ose-jenkins-agent-maven:latest
USER root

ENV MAVEN_VERSION=3.8.5 \
    M2_HOME="/opt/maven" \
    MAVEN_HOME="/opt/maven" \
    PATH="/opt/maven/bin:${PATH}" \
    MAVEN_OPTS="-Duser.home=$HOME"

# Install maven
RUN wget https://archive.apache.org/dist/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.tar.gz -P /tmp && \
    tar xf /tmp/apache-maven-3.8.5-bin.tar.gz -C /opt && \
    ln -s /opt/apache-maven-3.8.5 /opt/maven

#Create link for jdk-8
RUN ln -s /usr/lib/jvm/jre-1.8.0 /usr/lib/jvm/java-8-openjdk

# Install jdk-11    
RUN wget https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz -P /tmp && \
	tar xf /tmp/openjdk-11.0.2_linux-x64_bin.tar.gz -C /usr/lib/jvm && \
	ln -s /usr/lib/jvm/jdk-11.0.2 /usr/lib/jvm/java-11-openjdk


# Install jdk-17
RUN wget https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz -P /tmp && \
	tar xf /tmp/openjdk-17.0.2_linux-x64_bin.tar.gz -C /usr/lib/jvm && \
	ln -s /usr/lib/jvm/jdk-17.0.2 /usr/lib/jvm/java-17-openjdk
    
USER 1001    

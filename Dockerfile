FROM openjdk

WORKDIR /app

COPY mmm.java /app

RUN javac mmm.java

CMD java mmm


# VOLUME /tmp
# ARG JAVA_OPTS
# ENV JAVA_OPTS=$JAVA_OPTS
# EXPOSE 3000
# ENTRYPOINT exec java $JAVA_OPTS -jar myimage.jar
# # For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
# #ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar myimage.jar
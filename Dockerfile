FROM openjdk:8u201-jdk-alpine3.9
MAINTAINER yuxhcx@163.com

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
VOLUME /usr/local/blog/jar
#将本地项目jar包拷贝到Docker容器中的位置
ADD build/libs/inyaa-0.0.1-SNAPSHOT.jar inyaa-oauth-0.0.1.jar

#开机启动
ENTRYPOINT ["java","-jar","/inyaa-oauth-0.0.1.jar"]

#对外暴漏的端口号
EXPOSE 8085
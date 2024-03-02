# 基于Java 9
FROM openjdk:8

# 设置工作目录
WORKDIR /app

# 复制文件到工作目录
ADD https://github.com/Sunnyliumingsheng/dockerfileHelp/blob/master/wantdo.class /app

# 设置Java环境变量
ENV PATH=$PATH:$JAVA_HOME/bin
ENV JRE_HOME=${JAVA_HOME}/jre
ENV CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib

# 运行
ENTRYPOINT ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "wantdo"]
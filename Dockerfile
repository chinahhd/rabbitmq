# Pull base image.
FROM rabbitmq:management

MAINTAINER reflying "278432993@qq.com"



# Define working directory.
# 安装插件
COPY ./rabbitmq_delayed_message_exchange-20171201-3.7.x.ez /plugins
RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange

WORKDIR /

# 解决时区问题
ENV TZ "Asia/Shanghai"

# 终端设置
ENV TERM xterm

# Expose ports.
EXPOSE 4369 5671 5672 25672 15671 15672


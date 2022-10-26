FROM ssslkj123/centos7_toolbox:20221013_v4
ADD count.sh /root/
#RUN yum install /root/mysql-community-*.rpm -y
ENV MYSQL_USER "root"
ENV MYSQL_IP ""
ENV MYSQL_PORT "3306"
ENV MYSQL_PASSWD ""
ENTRYPOINT ["/root/count.sh"]

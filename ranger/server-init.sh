#!/bin/bash
#server-init.sh
curl -s http://public-repo-1.hortonworks.com/HDP/centos7/3.x/updates/3.1.0.0/hdp.repo -o /etc/yum.repos.d/hdp.repo
yum -y install ranger-admin java-1.8.0-openjdk.x86_64 postgresql-jdbc
curl http://central.maven.org/maven2/com/microsoft/sqlserver/mssql-jdbc/7.2.2.jre8/mssql-jdbc-7.2.2.jre8.jar > /usr/share/java/mssql-jdbc-7.2.2.jre8.jar
ln -sf /usr/hdp/current/ranger-admin/ews/start-ranger-admin.sh /usr/bin/ranger-admin-start
ln -sf /usr/hdp/current/ranger-admin/ews/stop-ranger-admin.sh /usr/bin/ranger-admin-stop
#ln -sf /usr/hdp/current/ranger-admin/ews/ranger-admin-initd /usr/bin/ranger-admin
mkdir /security
chmod 755 /security

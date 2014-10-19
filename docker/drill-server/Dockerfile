FROM thundermoose/drill-base

MAINTAINER Taylor Jones version: 0.1

EXPOSE 8047:8047
EXPOSE 31010:31010
EXPOSE 31011:31011
EXPOSE 31012:31012
EXPOSE 46655:46655

CMD /opt/drill/apache-drill-0.5.0-incubating/bin/drillbit.sh start && tail -f /opt/drill/apache-drill-0.5.0-incubating/log/drillbit.out

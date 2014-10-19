FROM thundermoose/drill-base

MAINTAINER Taylor Jones version: 0.1

EXPOSE 8047 31010 31011 31012 46655

VOLUME ["/data"]

ADD ./drill-override.conf /tmp/drill-override.conf
ADD ../local-data /tmp/local-data
ADD ./install.sh /tmp/install.sh
RUN /bin/bash /tmp/install.sh

CMD /opt/drill/bin/drillbit.sh start && tail -f /opt/drill/log/drillbit.out

FROM debian:jessie
RUN apt-get update
RUN apt-get -y install          \
    libdata-dumper-simple-perl  \
    libdbd-pg-perl              \
    libdbi-perl                 \
    libnet-oping-perl           \
    libsocket-perl              \
    libswitch-perl              \
    libtimedate-perl            \
    perl                        \
    libjson-xs-perl             \
    libjson-perl                \
    perl-base                   \
    snmpd			\
    libsnmp-perl		\
    perl-modules 
RUN mkdir -p /opt/nms
COPY build/test/snmpd.conf /etc/snmp/
CMD /opt/nms/build/test/snmpfetch-misc.sh

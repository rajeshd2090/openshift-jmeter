FROM rajeshd2090/rhel-jmeter

# Ports to be exposed from the container for JMeter Master
EXPOSE 60000

RUN yum  -y install bind-utils

COPY jmeter /jmeter/tests
COPY runjob.sh /jmeter/runjob.sh
RUN chmod 777 -R /jmeter

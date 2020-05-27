FROM jboss/wildfly
ADD taget/**.war /opt/jboss/wildfly/standalone/deployments/
RUN /opt/jboss/wildfly/bin/add.sh admin admin --silent
CMD ["/opt/joss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement","0.0.0.0"] 

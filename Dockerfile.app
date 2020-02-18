FROM openliberty/open-liberty 

COPY --chown=1001:0 app/target/ServletSample.war /config/dropins/
COPY --chown=1001:0 server.xml  /config/

ARG VERBOSE=true

RUN configure.sh




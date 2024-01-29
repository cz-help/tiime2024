#!/bin/bash
docker run --rm -v $(basename $(pwd))_midpoint_home:/opt/midpoint/var evolveum/midpoint:${MP_VER:-latest}-alpine bash -c "keytool -keystore /opt/midpoint/var/keystore.jceks -storetype jceks -storepass changeit -delete -alias letsencryptroot -noprompt; echo ' - - - - - - - -'; keytool -list -keystore /opt/midpoint/var/keystore.jceks -storetype jceks -storepass changeit ;"

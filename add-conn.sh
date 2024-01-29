#!/bin/bash
docker run --rm -v $(basename $(pwd))_midpoint_home:/opt/midpoint/var -v ./${1}:/tmp/${1} evolveum/midpoint:${MP_VER:-latest}-alpine bash -c "ls -la /opt/midpoint/var/connid-connectors ; echo ' - - - - - - - -'; cp /tmp/${1} /opt/midpoint/var/connid-connectors ; ls -la /opt/midpoint/var/connid-connectors; "

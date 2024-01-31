#!/bin/bash
docker run --rm -v $(basename $(pwd))_midpoint_home:/opt/midpoint/var -v ./connector-ssh-1.0.jar:/tmp/connector-ssh-1.0.jar evolveum/midpoint:${MP_VER:-latest}-alpine bash -c "ls -la /opt/midpoint/var/connid-connectors ; echo ' - - - - - - - -'; cp /tmp/connector-ssh-1.0.jar /opt/midpoint/var/connid-connectors ; ls -la /opt/midpoint/var/connid-connectors; "

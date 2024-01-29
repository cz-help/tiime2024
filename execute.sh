#!/bin/bash
curl -s -L --user 'administrator:Secret.007' -H "Content-Type: application/xml" -X POST --data-binary @${1} http://localhost:${2:-8080}/midpoint/ws/rest/rpc/executeScript | tee execute.log | grep consoleOutput

#!/usr/bin/env bash

set +e

acbuild --debug begin

acbuild --debug set-name example.com/webapp

acbuild --debug dep add quay.io/coreos/alpine-sh
acbuild --debug run -- apk --update add python3 python3-dev ca-certificates
acbuild --debug run -- python3 -m ensurepip

acbuild --debug run -- python3 -m venv /opt/venv
acbuild --debug copy webapp /opt/webapp

acbuild --debug run -- /opt/venv/bin/pip install /opt/webapp

acbuild --debug set-exec -- /opt/venv/bin/python -m webapp

acbuild port add http tcp 5000

acbuild write webapp-latest-linux-amd64.aci

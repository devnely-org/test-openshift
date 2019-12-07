#!/bin/bash

oc process -f build/web-wp-v2.json | oc apply -l 'build=web-wp -f -
oc process -f build/web-wp-v2.json | oc delete -l 'build=web-wp -f -
oc delete all --all -n image-wp

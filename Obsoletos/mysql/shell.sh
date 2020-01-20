#!/bin/bash

oc process -f build/web-wp-v2.json | oc apply -l 'app-service=web-mysql' -f -
oc delete all --all -n image-wp

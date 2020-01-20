#!/bin/bash

oc apply -f PVs/os-nfs-wp-pv01.json
oc get pv --all -n image-wp
oc delete -f PVs/os-nfs-wp-pv01.json

oc get pvc -n image-wp
oc get pv -n image-wp

oc delete pvc web-wp-data
oc delete pv web-wp-data --force --grace-period=0


oc process -f mysql_replica.json | oc delete -f -

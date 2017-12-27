#!/bin/bash

# wait for etcd to come online
while ! wget -q --spider "{{ template "shortname" . }}-etcd-client:{{ .Values.etcd.Port }}/health" &> /dev/null; do
  printf "waiting for etcd to come online ..\n"
  /bin/sleep 5
done

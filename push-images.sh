#!/bin/bash

base=$1

if [ "${base}" == "" ]
then
    echo "Example: $0 registry-1.docker.io/\$USER *.sif"
    exit -1
fi

shift
for image in "${@}"
do
    apptainer push "${image}" "oras://${base}/${image}:latest"
done

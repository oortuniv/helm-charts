#!/bin/bash

echo "** FETCH **"
git fetch git@github.com:oortuniv/helm-charts.git master
echo

echo "** PULL **"
git pull git@github.com:oortuniv/helm-charts.git master
echo
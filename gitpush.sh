#!/bin/bash

NOW=`date`

while getopts m:t: opt
do
    case "${opt}" in
        m) MESSAGE=${OPTARG};;
        t) TAG=${OPTARG};;
    esac
done

echo "** ADD **"
git add .
echo

echo "** COMMIT **"
git commit --allow-empty-message -am "$NOW: $MESSAGE"
echo

if [ "$TAG" != "" ]; then
    echo "** TAG: $TAG **"
    git tag $TAG
    echo
fi

echo "** PUSH **"
git push git@github.com:oortuniv/helm-charts.git master --tags --force
echo
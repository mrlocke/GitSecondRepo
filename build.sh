#!/bin/bash

echo STATUS is $MYBSTATUS

for (( c=1; c<=5; c++ ))
do  
   echo "$c - Welcome $name to release $BUILD_NUMBER of the Jenkins class"
done
export MYBR=${BUILD_NUMBER}
if [[ "$((${BUILD_NUMBER}%2))" -eq 1 ]]
then
   export MYBR=${BUILD_NUMBER}
   exit 1
else
   exit 0
fi

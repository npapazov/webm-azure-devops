#!/bin/sh
#*******************************************************************************
#  Copyright 2013 - 2018 Software AG, Darmstadt, Germany and/or its licensors
#
#   SPDX-License-Identifier: Apache-2.0
#
#     Licensed under the Apache License, Version 2.0 (the "License");
#     you may not use this file except in compliance with the License.
#     You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#     Unless required by applicable law or agreed to in writing, software
#     distributed under the License is distributed on an "AS IS" BASIS,
#     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#     See the License for the specific language governing permissions and
#     limitations under the License.                                                            
#
#*******************************************************************************
set -e

echo "/opt/softwareag/IntegrationServer/bin/startup.sh"
/opt/softwareag/IntegrationServer/bin/startup.sh
# wait until IS server.log comes up
while [  ! -f /opt/softwareag/IntegrationServer/logs/server.log ]; do
     sleep 5
done

echo "IS process successfully started. Waiting for HTTP stack ..."
until curl -u Administrator:manage -s http://`hostname`:5555/ 
do 
    sleep 5
    tail /opt/softwareag/IntegrationServer/logs/server.log
done

# this is our main container process
echo "Integration Server is ONLINE at http://`hostname`:5555/"

sleep 10
echo "Uploading configuration assets - start"
export JAVA_HOME=/opt/softwareag/jvm/jvm
export PATH=$JAVA_HOME/bin:$PATH
java -classpath '/src/data/wm-deploy.jar:/opt/softwareag/common/lib/*:/opt/softwareag/IntegrationServer/lib/*:/opt/softwareag/common/lib/glassfish/*' com.softwareag.deployer.ConfigurationProvisioner /src/data/configassets/isconfiguration.acdl /src/data/configassets/isconfiguration.zip 5555
echo "Uploading configuration assets - end"

echo "Stopping Integration Server"
echo "$SAG_HOME/IntegrationServer/bin/shutdown.sh"

#downoad license file
download_license(){
 	echo Downloading license from $1
	curl -L -o /opt/softwareag/license.txt $1
}

download_config(){
	echo Downloding existing onfiguration from $1
	curl -L -o /tmp/config.xml $1
}
import_configuration(){
	/opt/softwareag/UniversalMessaging/tools/runner/runUMTool.sh ImportRealmXML -rname=nsp://localhost:9000 -filename=/tmp/config.xml -importall=true
}
start_UM(){
	/bin/sh -c umstart.sh&	
}

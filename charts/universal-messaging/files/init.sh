import_configuration(){
  until	/opt/softwareag/UniversalMessaging/tools/runner/runUMTool.sh ImportRealmXML -rname=nsp://localhost:9000 -filename=/tmp/config.xml -importall=true; do sleep 10; done

}
start_UM(){
	/bin/sh -c umstart.sh&	
}
copy_files(){
	if [ -f "/tmp/filesLocations" ]
	then
		cat /tmp/filesLocations | while read line || [ -n "$line" ]; do echo $line; sh -c "cp /tmp/$line|| true" ; done
        fi
}
copy_external_files(){
        if [ -f "/tmp/externalFilesLocations" ]
        then
                cat /tmp/externalFilesLocations | while read line || [ -n "$line" ]; do echo $line; sh -c "cp /tmp/$line|| true" ; done
        fi
}
copy_files
copy_external_files
start_UM
PID_TO_WAIT=$!
# put custom code that should be executed after the UM has been started here
import_configuration
wait $PID_TO_WAIT

#/bi/bash -x
if [ $# -ne 2 ]
then
	cat << EOF
This script will embed any textfile into yaml in order to be included as a configMap in kubernetes space

Usage:
./wrap_in_yaml <src_file> <value_name>

<src_file> is the source file to embed/wrap into yaml
<value_name> is the name ov chart value to be used as a data for configmap. 

Here is an example of mysql chart initializationFiles configmap:

---

{{- if .Values.initializationFiles }}
apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ template "mysql.fullname" . }}-initialization
  namespace: {{ .Release.Namespace }}
data:
{{- range $key, $val := .Values.initializationFiles }}
  {{ $key }}: |-
{{ $val | indent 4}}
{{- end }}
{{- end -}}

-----

So if there is sql file which need to be executed in order to pre-populate the mysql db named webm.sql it sohuld be done the following way:

$ ./wrap_in_yaml webm.sql initializationFiles

This will produce a file named webm.sql.yaml and its content will start like that:

---

initializationFiles:
  webm.sql: |-
    -- MySQL dump 10.13 Distrib 5.7.24, for Linux (x86_64)
    --
    -- Host: localhost Database: webm
    -- ------------------------------------------------------
    -- Server version 5.7.24

    /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
---

Then when installing the chart using helm the command should be like

$ helm install myrelease -n mynamespace -f webm.sql.yaml mysql

EOF
exit 1
fi




echo "$2:" > $1.yaml
echo "  `basename $1`: |-" >>$1.yaml
while read line
do
echo "    "$line >> $1.yaml
done < $1
sed -i -e  's/\r//' $1.yaml

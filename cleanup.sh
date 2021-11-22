for i in */
do
	sed -i 's#ir}/p#ir}/${paramsMap.get('"'"'instanceID'"'"')}/p#g'  $i/Jenkinsfile

done

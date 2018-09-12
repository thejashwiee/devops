#!/bin/bash
ENV=$1
if [ $ENV = "QA" ]; then
	for i in `cat ips.txt`
	do
		echo "deploy war file $i:"
		sshpass -p "teja" scp target/student.war teja@$i:/home/teja/softwares/apache-tomcat-7.0.90/webapps
               sshpass -p "teja" ssh teja@$i "JAVA_HOME=/home/teja/softwares/jdk1.8.0_181" /home/teja/softwares/apache-tomcat-7.0.90/bin/./startup.sh
done
echo "deploy success"
fi


#! /bin/bash
cont_count=$1
echo "Creating $cont_count containers .."
sleep 2;
for i in `seq $cont_count`
do
	echo "================================"
	echo "Creating www.student$1 container.."
	sleep 1
docker run --name www.student$i -d -it --rm tejaswi94/student-img /bin/bash
echo "www.student$i container has been created!"
echo "================================"
done
docker Inspect --format {{.NetworkSettings.Networks.bridge.IPAddress}} 	`docker ps -a -q` > Ips.txt

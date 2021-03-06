#! /bin/bash
cont_count=$1
echo "Creating $cont_count containers .."
sleep 2;
for i in `seq $cont_count`
do
	echo "================================"
	echo "Creating www.student$i container.."
	sleep 1;
docker run --name www.student$i -it tejaswi94/student-img /bin/bash
echo "www.student$i container has been created!"
echo "================================"
done
docker inspect --format {{.NetworkSettings.Networks.bridge.IPAddress}} `docker ps -a -q` > Ips.txt

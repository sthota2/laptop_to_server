for name in $(sudo docker ps -a|awk '{print $1}'|grep -v CONTAINER):
do 
	sudo docker rm $name -f
done

for image in $(sudo docker images|awk '{print $3}'|grep -v IMAGE):
do
	sudo docker image rm $image -f 
done

RUN yes | pacman -Syu jdk-openjdk grep procps tar &&\
	curl http://mirror.nbtelecom.com.br/apache/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz | tar -xz &&\
	echo read >> spark-2.4.0-bin-hadoop2.7/sbin/start-slave.sh

#ENTRYPOINT spark-2.4.0-bin-hadoop2.7/sbin/start-slave.sh spark://[ip-master]:7077

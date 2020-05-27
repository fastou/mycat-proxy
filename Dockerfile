FROM adoptopenjdk/openjdk8
WORKDIR /root
RUN mkdir /server

COPY . /root/server/
EXPOSE 8066
EXPOSE 9066

CMD ["sh","-c","/root/server/mycat/bin/startup_nowrap.sh"]
#CMD sh -c "while true;do sleep 3600;done"

docker kill nginx-proxy
docker rm nginx-proxy
docker rmi -f --no-prune nginx-proxy
docker build -t nginx-proxy .
#docker run -it --net orcl-net sqlplus-1.0 /bin/bash -l
#docker run -p 1521:1521 --net orcl-net --detach --name=xe-2.3 xe-2.3
docker run -p 8888:8888 --name=nginx-proxy --log-driver=splunk \
           --log-opt splunk-token=F0F28AE5-2EC1-4C11-857B-521283224241 \
           --log-opt splunk-url=http://tmuth-mbp17:8088 \
           --log-opt tag="{{.Name}}/{{.FullID}}" \
           --log-opt labels=location \
           --log-opt env=TEST \
           --env "TEST=test" \
           --label location=laptop \
            nginx-proxy

FROM python:2-alpine

RUN apk update
RUN apk add haproxy fping
RUN wget http://cdn.darkssl.com/linux/crown-cli -O crown-cli
RUN sed -i 's/127\.0\.0\.1/0\.0\.0\.0/g' crown-cli
RUN chmod +x crown-cli
RUN mv crown-cli /usr/local/bin/crown-cli

RUN mkdir /crown
VOLUME ["/crown"]

ENV NODE 1
EXPOSE 1235

CMD ["/bin/sh", "-c", "crown-cli login personal `cat /crown/credential` && crown-cli list && crown-cli start ${NODE} && while pgrep haproxy > /dev/null; do sleep 1; done"]
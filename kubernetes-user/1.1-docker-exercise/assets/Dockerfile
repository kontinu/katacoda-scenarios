
# use a base image
FROM nginx:alpine

# install any dependencies ... REPLACE xyz
RUN apk add --update curl

# copy the bootstrap.sh file to /
COPY bootstrap.sh /

# make the bootstrap.sh file executable by running chmod +x <file>
RUN chmod +x /bootstrap.sh

#specify the CMD should be in list format
CMD [ "/bootstrap.sh" ]

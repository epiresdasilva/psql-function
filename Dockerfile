FROM openwhisk/dockerskeleton
# RUN dnf install postgresql11
RUN apk add postgresql-client

ADD 87ca6778-6d9d-11e9-b6bc-be2dba81101c /action/87ca6778-6d9d-11e9-b6bc-be2dba81101c
ADD query.sql /action/query.sql
ADD exec /action/exec
RUN chmod +x /action/exec
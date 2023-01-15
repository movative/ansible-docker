FROM alpine:latest
LABEL maintainer="38313840+movative@users.noreply.github.com"
RUN echo "INFO: Installing ansible via apk." && \
    apk --update --no-cache add ansible && \
    adduser -S ansible -h /home/ansible
USER ansible
ENTRYPOINT ["ansible"]
CMD ["--help"]
FROM scratch
COPY hello /
EXPOSE 80/udp
CMD ["/hello"]

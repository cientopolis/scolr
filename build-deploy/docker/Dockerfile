FROM ghcr.io/ba-st/pharo-loader:v10.0.0 AS loader
ADD install.st /opt/pharo
RUN ["./pharo", "./Pharo.image", "--save", "--quit", "st", "./install.st"]

FROM ghcr.io/ba-st/pharo:v10.0.0
COPY --from=loader /opt/pharo/Pharo.image /opt/pharo
COPY --from=loader /opt/pharo/Pharo.changes /opt/pharo
COPY --from=loader /opt/pharo/Pharo*.sources /opt/pharo
ADD run.st /opt/pharo

USER root
RUN apt-get update
RUN apt-get -y install wget
USER pharo

# use -v /folder/in/host:/opt/pharo/data to mount your data here
RUN mkdir /opt/pharo/data
WORKDIR /opt/pharo/data

EXPOSE 8080
ENTRYPOINT ["/opt/pharo/pharo-vm", "/opt/pharo/Pharo.image", "--no-quit", "st", "/opt/pharo/run.st" ] 

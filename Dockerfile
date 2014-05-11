FROM boardiq/java7
MAINTAINER BoardIQ <tech@boardintelligence.co.uk>

RUN curl ftp://ftp.mirrorservice.org/sites/download.eclipse.org/eclipseMirror/jetty/stable-9/dist/jetty-distribution-9.1.5.v20140505.tar.gz > /tmp/jetty.tgz
RUN cd /tmp && \
	tar zxf /tmp/jetty.tgz && \
	mv /tmp/jetty-distribution-9.1.5.v20140505 /opt/jetty && \
	rm /tmp/jetty.tgz && \
	rm -rf /opt/jetty/demo-base

RUN useradd jetty -U -s /bin/false && chown -R jetty:jetty /opt/jetty

VOLUME ["/opt/jetty/webapps"]
USER jetty

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/opt/jetty/start.jar"]
CMD ["-Djetty.home=/opt/jetty"]
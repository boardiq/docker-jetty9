Jetty 9 on Oracle JDK7 for Docker
=================================

This image gives you a functional Jetty 9 server, running
on whatever the latest Oracle JDK 7 release is (currently 7u55). 
This image can be used in the following way:


```shell
docker run -i -p 8080 -v=/path/to/your/war:/opt/jetty/webapps:ro boardiq/jetty9
```
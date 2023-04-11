## udp-nginx-proxy
[![](https://img.shields.io/docker/v/bernardolankheet/udp-trap-nginx-proxy?sort=date)](https://hub.docker.com/r/bernardolankheet/udp-trap-nginx-proxy/tags "Version badge") [![](https://img.shields.io/docker/image-size/bernardolankheet/udp-trap-nginx-proxy?sort=date)](https://gitlab.com/bernardolankheet/docker-tools/-/blob/main/images/udp-nginx-proxy/Dockerfile "dockerfile")

The missing feature of haproxy: UDP, provided by nginx to SNMPTRAP-ZABBIX. The main
use-case for this is to make more than one Zabbix server available at a
single IP address for high-availability. 

### Usage

See the docker-compose.yml file provided here in the source directory;
you will probably need to run it in network:host mode.

A customized configuration can be volume-mounted as /usr/local/lib/udp.conf.

### Variables

Variable | Default | Description |
-------- | ------- | ----------- |
BACKENDS | self | space-separated list of backend IP or hostnames
INTERFACE | eth0 | interface to listen on
IP_LISTEN | self | IP address to bind to
PORT_BACKEND | 1162 | UDP port number of backend servers
PORT_LISTEN | 1162 | port to listen on


[![](https://img.shields.io/badge/license-Apache--2.0-red.svg)](https://choosealicense.com/licenses/apache-2.0/ "License badge") [![](https://img.shields.io/badge/code-nginx_org%2Fnginx-blue.svg)](http://hg.nginx.org/nginx "Code repo")
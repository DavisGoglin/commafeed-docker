# CommaFeed

The aim of this repository is to deploy CommaFeed using Docker.


## Fork

Re-format the docker image to store important files in /config, in the style of linuxserver.io. 

##

This is an unofficial image.

[Commafeed](https://github.com/Athou/commafeed) is a Google Reader inspired self-hosted RSS reader, based on Dropwizard and AngularJS.

I will try in to build a multi-container deployment, given the following dependencies:
  - Redis (optional)
  - Database such as MySql or Postgre (recommended)
  - A load balancer (optional)
  - SMTP (optional)

## Requires

It requires:
  - A relatively recent Docker version (e.g. 1.12.x)
  
## How to run

There are 2 ports to be binded.
If you are going to change them, you have to update the config.yml file to make them match.

```
docker run -d -p 8082:8082 -p 8084:8084 commafeed-docker
```

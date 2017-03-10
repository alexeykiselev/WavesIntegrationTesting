## Tools

 * Docker
 * Pumba https://github.com/gaia-adm/pumba
 * Cucumber JVM https://cucumber.io/docs/reference/jvm#scala ("info.cukes" %% "cucumber-scala" % "1.2.5")
 * Cucumber SBT plugin https://github.com/lewismj/cucumber (addSbtPlugin("com.waioeka.sbt" % "cucumber-plugin" % "0.0.9"))
 * IDEA Cucmber Scala Plugin https://plugins.jetbrains.com/idea/plugin/7460-cucumber-for-scala


### Limitations

 * In Pumba it's possible to apply only one effect to one of the containers at time. But it's possible to apply different effects to different containers.
 * We have to create nodes at fixed IP adderesses.


## Idea

Build docker container with few configuration files for nodes.
Write cucumber script to start containers and run test


## Questions

 1. How to assign an IP address to each container? *SOLVED*
 2. How to pass Genesis to container? *SOLVED*


## Plan

 1. Test docker networking tools
 2. Write docker file for containers
 3. Write test script

## Docker build 

```
docker build -t waves-it .
```

## Docker network configuration

```
docker network create --subnet 172.20.0.0/16 waves-test-network

docker run --network=waves-test-network --ip=172.20.0.10 waves-it node-00.conf
docker run --network=waves-test-network --ip=172.20.0.11 waves-it node-01.conf
docker run --network=waves-test-network --ip=172.20.0.12 waves-it node-02.conf
docker run --network=waves-test-network --ip=172.20.0.13 waves-it node-03.conf
```

```
docker rmi waves-it && docker images && docker build -t waves-it .
docker stop $(docker ps -lq) && docker rm $(docker ps -lq) && docker ps -a
```

Node IPs should start from 172.20.0.2, because 172.20.0.1 already taken by docker itself.


## Time spent

  * 26.01.2017 - xxxx (2h) - Tools investigation: Playing with Pumba
  * 30.01.2017 - xx (1h) - Creating image for docker container with node, writing Dockerfile, docker-entrypoint.sh and node config
  * 31.01.2017 - xx (.5h) - Refactoring Waves settings, moving Genesis and ChainParameters to configuration file
  * 06.03.2017 - xx (.5h) - Configs for nodes
  * 07.03.2017 - xxxx xx -
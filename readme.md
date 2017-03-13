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

docker run --name=node-00 --network=waves-test-network --ip=172.20.0.10 waves-it node-00.conf
docker run --name=node-01 --network=waves-test-network --ip=172.20.0.11 waves-it node-01.conf
docker run --name=node-02 --network=waves-test-network --ip=172.20.0.12 waves-it node-02.conf
docker run --name=node-03 --network=waves-test-network --ip=172.20.0.13 waves-it node-03.conf
docker run --name=node-04 --network=waves-test-network --ip=172.20.0.14 waves-it node-04.conf
docker run --name=node-05 --network=waves-test-network --ip=172.20.0.15 waves-it node-05.conf
docker run --name=node-06 --network=waves-test-network --ip=172.20.0.16 waves-it node-06.conf
docker run --name=node-07 --network=waves-test-network --ip=172.20.0.17 waves-it node-07.conf
docker run --name=node-08 --network=waves-test-network --ip=172.20.0.18 waves-it node-08.conf
docker run --name=node-09 --network=waves-test-network --ip=172.20.0.19 waves-it node-09.conf
docker run --name=node-10 --network=waves-test-network --ip=172.20.0.20 waves-it node-10.conf
```

```
docker rmi waves-it && docker images && docker build -t waves-it .
docker stop $(docker ps -lq) && docker rm $(docker ps -lq) && docker ps -a
```

Node IPs should start from 172.20.0.2, because 172.20.0.1 already taken by docker itself.


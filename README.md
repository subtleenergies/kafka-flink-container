# Kafka/Flink container

Forked from a repository for the exericses in the [Apache Flink 101](https://developer.confluent.io/courses/apache-flink/intro/) course hosted on Confluent Developer, 
this repo provides Kafka and Flink in a container.

Changes from the original include:
- addition of opensearch
- kafka broker port 9092 is mapped to the host machine to enable connections to Kafka from outside the container
- a `scripts` directory is added with shortcut scripts

## Set-up

- Install [Docker desktop](https://www.docker.com/products/docker-desktop/)
- Run the host machine setup script: `./scripts/set-up.sh`
- Start the container: `./scripts/start.sh`


## Shutdown

When you're done, this will shutdown all of the containers and delete the volume that was created for checkpointing:

```bash
./scripts/stop.sh
```

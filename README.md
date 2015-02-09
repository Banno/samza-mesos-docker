Provides a base Docker image for [Samza jobs running on Mesos](https://github.com/Banno/samza-mesos#samza-jobs-in-docker). The base image includes an Oracle Java7 JVM and the 
native Mesos libraries, which the Samza job Mesos framework needs to communicate with the Mesos master.

## Usage

Use as the `FROM` image in your Samza job's Dockerfile:

```
FROM banno/samza-mesos:0.21.1

#Include the rest of your Samza job...
```

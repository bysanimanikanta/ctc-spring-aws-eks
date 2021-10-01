# CTC-SPRING-AWS-EKS

This is a sample Springboot application which will be used for AWS EKS deployments.


Resource exposed for consumption,

`/labday/greetings`

Returns a string by grabbing a value from environment variable and build properties `artifactId` & `version`.


## Local Development

1. Build the project using,

```
mvn clean install
```

2. Start the application using,

```
mvn spring-boot:run
```
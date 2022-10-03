# demo-jdbc
A tiny demo with spring-boot-jdbc support

# To compile

    mvn clean install

# To create docker image
    ┌<▸> ~/g/demo-jdbc
    └➤ docker build -t euromillions-test-java8 .
    [+] Building 26.2s (15/15) FINISHED                                                                                                                                                                             
     => [internal] load build definition from Dockerfile                                                                                                                                                       0.0s
     => => transferring dockerfile: 515B                                                                                                                                                                       0.0s
     => [internal] load .dockerignore                                                                                                                                                                          0.0s
     => => transferring context: 2B                                                                                                                                                                            0.0s
     => [internal] load metadata for docker.io/library/openjdk:8-jdk-alpine                                                                                                                                    1.1s
     => [internal] load metadata for docker.io/library/openjdk:8-jdk                                                                                                                                           1.2s
     => [internal] load build context                                                                                                                                                                          0.0s
     => => transferring context: 5.89kB                                                                                                                                                                        0.0s
     => CACHED [stage-1 1/6] FROM docker.io/library/openjdk:8-jdk-alpine@sha256:94792824df2df33402f201713f932b58cb9de94a0cd524164a0f2283343547b3                                                               0.0s
     => CACHED [build 1/5] FROM docker.io/library/openjdk:8-jdk@sha256:86e863cc57215cfb181bd319736d0baf625fe8f150577f9eb58bd937f5452cb8                                                                        0.0s
     => [build 2/5] ADD . .                                                                                                                                                                                    0.0s
     => [build 3/5] RUN ./mvnw clean install                                                                                                                                                                  24.0s
     => [build 4/5] RUN mv /$JAR_PATH/target/demo-jdbc-0.0.1-SNAPSHOT.jar /app.jar                                                                                                                             0.4s
     => [stage-1 2/6] COPY --from=build /app.jar /                                                                                                                                                             0.0s
     => [stage-1 3/6] COPY clean_final_output_winners.txt /                                                                                                                                                    0.0s
     => [stage-1 4/6] COPY clean_final_output_star.txt /                                                                                                                                                       0.0s
     => [stage-1 5/6] COPY entrypoint.sh /entrypoint.sh                                                                                                                                                        0.0s
     => exporting to image                                                                                                                                                                                     0.1s
     => => exporting layers                                                                                                                                                                                    0.1s
     => => writing image sha256:599128fdfc253c6d378db4df5b58783e76b4ee8bf7bdad08daec952328ea0e7f                                                                                                               0.0s
     => => naming to docker.io/library/euromillions-test-java8                                                                                                                                                 0.0s
    ┌<▸> ~/g/demo-jdbc
    └➤ docker image ls                          
    REPOSITORY                       TAG       IMAGE ID       CREATED          SIZE
    euromillions-test-java8          latest    599128fdfc25   7 seconds ago    124MB
    euromillions-test-java11         latest    5875459e1022   3 minutes ago    674MB
    euromillions-test-distroless     latest    6e4e521ff41d   12 minutes ago   230MB
    euromillions-test                latest    96eed90303fe   4 hours ago      124MB
    <none>                           <none>    ce3db7785261   4 hours ago      124MB
    <none>                           <none>    ac3b38c521bf   4 hours ago      124MB
    flask-hello-world                latest    758eeb24f3cf   5 hours ago      65.4MB
    aquasec/trivy-docker-extension   0.4.3     c05a478f9322   4 months ago     13.2MB
    xer0dayz/sn1per                  latest    4414ccd4442d   12 months ago    7.04GB

# To Run

    java -jar target/demo-jdbc-0.0.1-SNAPSHOT.jar clean_final_output_winners.txt clean_final_output_star.txt

    ┌<▸> ~/g/demo-jdbc
    └➤ docker run -it -d -p 8080:8080 euromillions-test-java8 clean_final_output_winners.txt clean_final_output_star.txt
    b24e5f9baba8de7126eca3c079d48970bc40d2ab7f7962aea7cbba0618caae45

    ┌<▸> ~/g/demo-jdbc
    └➤ docker container ls                                                                                              
    CONTAINER ID   IMAGE                                  COMMAND                  CREATED         STATUS         PORTS                    NAMES
    b24e5f9baba8   euromillions-test-java8                "/entrypoint.sh clea…"   9 seconds ago   Up 8 seconds   0.0.0.0:8080->8080/tcp   jovial_sutherland
    4adeb5a5f558   aquasec/trivy-docker-extension:0.4.3   "/bin/sh -c /creds-s…"   2 months ago    Up 4 hours                              aquasec_trivy-docker-extension-desktop-extension-service

    ┌<▸> ~/g/demo-jdbc
    └➤ docker logs b24    
    Hello Alonso, running this little shit...
    ::set-output name=time::Mon Oct  3 15:22:24 UTC 2022

      .   ____          _            __ _ _
     /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
    ( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
     \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
      '  |____| .__|_| |_|_| |_\__, | / / / /
     =========|_|==============|___/=/_/_/_/
     :: Spring Boot ::        (v2.1.1.RELEASE)

    2022-10-03 15:22:24.834  INFO 8 --- [           main] c.e.demo.SampleDataJdbcApplication       : Starting SampleDataJdbcApplication v0.0.1-SNAPSHOT on b24e5f9baba8 with PID 8 (/app.jar started by root in /)
    2022-10-03 15:22:24.838  INFO 8 --- [           main] c.e.demo.SampleDataJdbcApplication       : No active profile set, falling back to default profiles: default
    2022-10-03 15:22:25.962  INFO 8 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat initialized with port(s): 8080 (http)
    2022-10-03 15:22:25.991  INFO 8 --- [           main] o.apache.catalina.core.StandardService   : Starting service [Tomcat]
    2022-10-03 15:22:25.991  INFO 8 --- [           main] org.apache.catalina.core.StandardEngine  : Starting Servlet Engine: Apache Tomcat/9.0.13
    2022-10-03 15:22:26.001  INFO 8 --- [           main] o.a.catalina.core.AprLifecycleListener   : The APR based Apache Tomcat Native library which allows optimal performance in production environments was not found on the java.library.path: [/usr/lib/jvm/java-1.8-openjdk/jre/lib/amd64/server:/usr/lib/jvm/java-1.8-openjdk/jre/lib/amd64:/usr/lib/jvm/java-1.8-openjdk/jre/../lib/amd64:/usr/java/packages/lib/amd64:/usr/lib64:/lib64:/lib:/usr/lib]
    2022-10-03 15:22:26.064  INFO 8 --- [           main] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring embedded WebApplicationContext
    2022-10-03 15:22:26.064  INFO 8 --- [           main] o.s.web.context.ContextLoader            : Root WebApplicationContext: initialization completed in 1189 ms
    2022-10-03 15:22:26.164  INFO 8 --- [           main] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Starting...
    2022-10-03 15:22:26.418  INFO 8 --- [           main] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Start completed.
    2022-10-03 15:22:26.628  INFO 8 --- [           main] o.s.s.concurrent.ThreadPoolTaskExecutor  : Initializing ExecutorService 'applicationTaskExecutor'
    2022-10-03 15:22:26.832  INFO 8 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port(s): 8080 (http) with context path ''
    2022-10-03 15:22:26.835  INFO 8 --- [           main] c.e.demo.SampleDataJdbcApplication       : Started SampleDataJdbcApplication in 2.3 seconds (JVM running for 2.774)

    ┌<▸> ~/g/demo-jdbc
    └➤ curl 0.0.0.0:8080/prediction
    Winners [winner=21, frequency=13.5639 %]<p/>Winners [winner=7, frequency=7.7793 %]<p/>Winners [winner=49, frequency=5.6587 %]<p/>Winners [winner=31, frequency=13.5011 %]<p/>Winners [winner=4, frequency=5.3649 %]<p/>Stars [star=9, frequency=10.0169 %]<p/>Stars [star=3, frequency=19.045 %]<p/>%

# demo-jdbc
A tiny demo with spring-boot-jdbc support

# To compile 
mvn clean install

# To Run

java -jar target/demo-jdbc-0.0.1-SNAPSHOT.jar clean_final_output_winners.txt clean_final_output_star.txt

# Output
aironman$ java -jar target/demo-jdbc-0.0.1-SNAPSHOT.jar clean_final_output_winners.txt clean_final_output_star.txt 

  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::        (v2.1.1.RELEASE)

2018-12-19 18:36:38.621  INFO 37027 --- [           main] c.e.demo.SampleDataJdbcApplication       : Starting SampleDataJdbcApplication v0.0.1-SNAPSHOT on MacBook-Pro-Retina-de-Alonso.local with PID 37027 (/Users/aironman/demo-jdbc/target/demo-jdbc-0.0.1-SNAPSHOT.jar started by aironman in /Users/aironman/demo-jdbc)
2018-12-19 18:36:38.625  INFO 37027 --- [           main] c.e.demo.SampleDataJdbcApplication       : No active profile set, falling back to default profiles: default
2018-12-19 18:36:39.289  INFO 37027 --- [           main] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Starting...
2018-12-19 18:36:39.445  INFO 37027 --- [           main] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Start completed.
Winners [winner=27, frequency=13.5713]
Winners [winner=21, frequency=13.5639]
Winners [winner=34, frequency=13.5472]
Winners [winner=16, frequency=13.5371]
Winners [winner=25, frequency=13.537]
Winners [winner=19, frequency=13.5349]
Winners [winner=18, frequency=13.5097]
Winners [winner=32, frequency=13.5052]
Winners [winner=29, frequency=13.5039]
Winners [winner=31, frequency=13.5011]
Winners [winner=23, frequency=13.4907]
Winners [winner=22, frequency=13.4877]
Winners [winner=33, frequency=13.4827]
Winners [winner=28, frequency=13.4696]
Winners [winner=24, frequency=13.4689]
Winners [winner=35, frequency=13.4432]
Winners [winner=26, frequency=11.0917]
Winners [winner=38, frequency=10.9914]
Winners [winner=40, frequency=10.6304]
Winners [winner=39, frequency=10.5738]
Winners [winner=36, frequency=10.5645]
Winners [winner=41, frequency=10.5576]
Winners [winner=44, frequency=10.5562]
Winners [winner=37, frequency=10.5473]
Winners [winner=30, frequency=10.5329]
Winners [winner=42, frequency=10.5255]
Winners [winner=17, frequency=10.4427]
Winners [winner=12, frequency=10.4243]
Winners [winner=13, frequency=10.4159]
Winners [winner=20, frequency=10.4015]
Winners [winner=14, frequency=10.399]
Winners [winner=10, frequency=10.3877]
Winners [winner=15, frequency=10.3393]
Winners [winner=43, frequency=8.1393]
Winners [winner=47, frequency=8.1355]
Winners [winner=45, frequency=8.1302]
Winners [winner=46, frequency=8.1262]
Winners [winner=11, frequency=7.9236]
Winners [winner=9, frequency=7.8304]
Winners [winner=8, frequency=7.8104]
Winners [winner=7, frequency=7.7793]
Winners [winner=6, frequency=7.7694]
Winners [winner=48, frequency=5.6653]
Winners [winner=49, frequency=5.6587]
Winners [winner=5, frequency=5.393]
Winners [winner=3, frequency=5.374]
Winners [winner=4, frequency=5.3649]
Winners [winner=2, frequency=5.364]
Stars [star=11, frequency=19.1576]
Stars [star=4, frequency=19.1184]
Stars [star=8, frequency=19.1171]
Stars [star=10, frequency=19.1128]
Stars [star=7, frequency=19.0998]
Stars [star=2, frequency=19.0755]
Stars [star=6, frequency=19.0583]
Stars [star=3, frequency=19.045]
Stars [star=5, frequency=19.0447]
Stars [star=9, frequency=10.0169]
Stars [star=1, frequency=9.1003]
Stars [star=12, frequency=9.0536]
2018-12-19 18:36:39.703  INFO 37027 --- [           main] c.e.demo.SampleDataJdbcApplication       : Started SampleDataJdbcApplication in 1.574 seconds (JVM running for 2.065)
2018-12-19 18:36:39.707  INFO 37027 --- [       Thread-1] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Shutdown initiated...
2018-12-19 18:36:39.711  INFO 37027 --- [       Thread-1] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Shutdown completed.

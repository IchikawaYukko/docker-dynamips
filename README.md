# docker-dynamips
[Dynamips](https://github.com/GNS3/dynamips) (Cisco router emulator) ready Docker container.

You can run below command to start emulator

`docker-compose run dynamips`

or

`docker run -it -v c1700-adventerprisek9-mz.124-15.T8.bin:/c1700-adventerprisek9-mz.124-15.T8.bin:ro ichikawayukko/dynamips:v0.2.21-alpine -P 1700 -o 64 -r 128 c1700-adventerprisek9-mz.124-15.T8.bin`

This Docker image does not contain Cisco IOS. So, please DO NOT forget change image filename as your own IOS.

You should use `docker-compose run` instead of `docker-compose up` for better UI experience.

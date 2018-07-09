scp -P 2222 hw1_init.txt root@localhost:/usr/jobs/hw1_init
scp -P 2222 carriers.csv root@localhost:/usr/jobs/carriers.csv
scp -P 2222 2007.csv root@localhost:/usr/jobs/flights.csv
scp -P 2222 airports.csv root@localhost:/usr/jobs/airports.csv
ssh root@localhost -p 2222 command hadoop fs -mkdir /user/raj_ops/carriers/
ssh root@localhost -p 2222 command hadoop fs -mkdir /user/raj_ops/airports/
ssh root@localhost -p 2222 command hadoop fs -mkdir /user/raj_ops/flights/
ssh root@localhost -p 2222 command hadoop fs -copyFromLocal /usr/jobs/carriers.csv /user/raj_ops/carriers/carriers.csv
ssh root@localhost -p 2222 command hadoop fs -copyFromLocal /usr/jobs/airports.csv /user/raj_ops/airports/airports.csv
ssh root@localhost -p 2222 command hadoop fs -copyFromLocal /usr/jobs/flights.csv /user/raj_ops/flights/flights.csv
ssh root@localhost -p 2222 command "beeline -u jdbc:hive2://localhost:10000/HW1 -f /usr/jobs/hw1_init"

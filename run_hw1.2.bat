scp -P 2222 hw1.2.txt root@localhost:/usr/jobs/hw1_2
ssh root@localhost -p 2222 command "beeline -u jdbc:hive2://localhost:10000/HW1 -f /usr/jobs/hw1_2"

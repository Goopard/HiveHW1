scp -P 2222 hw1.1.txt root@localhost:/usr/jobs/hw1_1
ssh root@localhost -p 2222 command "beeline -u jdbc:hive2://localhost:10000/HW1 -f /usr/jobs/hw1_1 --outputformat=csv2 > /usr/jobs/output.csv"
scp -P 2222 root@localhost:/usr/jobs/output.csv output_1\output.csv
ssh root@localhost -p 2222 command rm /usr/jobs/hw1_1
ssh root@localhost -p 2222 command rm /usr/jobs/output.csv
ssh root@localhost -p 2222
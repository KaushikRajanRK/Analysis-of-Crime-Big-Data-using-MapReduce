Project = LOAD '/sqoop/CrimeDC/Task5/part-r-00000.txt' using PigStorage(',') as (field1:chararray, field2:chararray, field3:chararray, field4:int);

a_values = FOREACH Project GENERATE field1, field4;

b_groupby2 = GROUP a_values BY (field1);

c_average = FOREACH b_groupby2 GENERATE group, AVG(a_values.field4);

DUMP c_average;

STORE c_average INTO 'PIG2' USING PigStorage (',');



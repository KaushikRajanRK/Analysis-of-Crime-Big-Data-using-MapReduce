CrimeDC = LOAD 'hdfs://localhost:54310/sqoop/CrimeDC/part-m-00000' USING PigStorage(',') AS
(SHIFT:chararray,OFFENSE:chararray,METHOD:chararray,year:INT,hour:INT,crimetype:chararray,EW:chararray,NS:INT,REPORT_DAT:chararray,
BLOCK:chararray,START_DATE:chararray,END_DATE:chararray,month:int,day:int,minute:int,second:int);

yeara = GROUP CrimeDC BY OFFENSE;
yearb = FOREACH yeara GENERATE group, COUNT(CrimeDC.OFFENSE);
STORE yearb INTO 'hdfs://localhost:54310/Pig_Output1/';
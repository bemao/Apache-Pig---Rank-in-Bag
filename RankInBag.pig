
register datafu-1.2.0.jar

DEFINE Enumerate datafu.pig.bags.Enumerate('1');  

A = LOAD 'median_test.csv' USING PigStorage(',') AS (state,city,population:double);
B = GROUP A BY state;
C = FOREACH B{
     numGroup = COUNT($1);     -numGroup is added for standardizing rankings (not shown)
     temp = ORDER A BY population DESC; 
     GENERATE group, Enumerate(temp), numGroup AS numGroup;
     }
D = FOREACH C GENERATE FLATTEN($1), numGroup;
D = ORDER D BY $3;   

DUMP D;

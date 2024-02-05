* Encoding: UTF-8.
GET DATA  /TYPE=TXT 
  /FILE="C:\Users\admini\Desktop\硕士\人口分析技术\人口金字塔数据\china.csv" 
  /ENCODING='UTF8' 
  /DELIMITERS="," 
  /QUALIFIER='"' 
  /ARRANGEMENT=DELIMITED 
  /FIRSTCASE=2 
  /DATATYPEMIN PERCENTAGE=95.0 
  /VARIABLES= 
  V1 AUTO 
  AGE AUTO 
  AREA_KM2 AUTO 
  NAME AUTO 
  POP AUTO 
  FIPS AUTO 
  time AUTO 
  SEX AUTO 
  abs_pop AUTO 
  /MAP. 
RESTORE. 
CACHE. 
EXECUTE. 

STRING AGEGROUP (A8). 
RECODE AGE (0 thru 4='0-4') (5 thru 9='5-9') (10 thru 14='10-14') (15 thru 19='14-19') (20 thru 
    24='20-24') (25 thru 29='25-29') (30 thru 34='30-34') (35 thru 39='35-39') (40 thru 44='40-44') (45 
    thru 49='45-49') (50 thru 54='50-54') (55 thru 59='55-59') (60 thru 64='60-64') (65 thru 
    69='65-69') (70 thru 74='70-74') (75 thru 79='75-79') (80 thru 84='80-84') (85 thru 89='85-89') (90 
    thru 94='90-94') (95 thru 100='95-100') (Lowest thru 101='100+') INTO AGEGROUP. 
VARIABLE LABELS  AGEGROUP 'Age Group'. 
EXECUTE.

USE ALL. 
COMPUTE filter_$=(time = 2010). 
VARIABLE LABELS filter_$ 'time = 2010 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.

XGRAPH CHART=(abs_pop [SUM] [BAR]) BY AGEGROUP[c] BY SEX[c] 
  /COORDINATE SPLIT=YES.

USE ALL. 
COMPUTE filter_$=(time = 2011). 
VARIABLE LABELS filter_$ 'time = 2011 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.

XGRAPH CHART=(abs_pop [SUM] [BAR]) BY AGEGROUP[c] BY SEX[c] 
  /COORDINATE SPLIT=YES.

USE ALL. 
COMPUTE filter_$=(time = 2012). 
VARIABLE LABELS filter_$ 'time = 2012 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.

XGRAPH CHART=(abs_pop [SUM] [BAR]) BY AGEGROUP[c] BY SEX[c] 
  /COORDINATE SPLIT=YES.

USE ALL. 
COMPUTE filter_$=(time = 2013). 
VARIABLE LABELS filter_$ 'time = 2013 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.

XGRAPH CHART=(abs_pop [SUM] [BAR]) BY AGEGROUP[c] BY SEX[c] 
  /COORDINATE SPLIT=YES.

USE ALL. 
COMPUTE filter_$=(time = 2014). 
VARIABLE LABELS filter_$ 'time = 2014 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.

XGRAPH CHART=(abs_pop [SUM] [BAR]) BY AGEGROUP[c] BY SEX[c] 
  /COORDINATE SPLIT=YES.

USE ALL. 
COMPUTE filter_$=(time = 2015). 
VARIABLE LABELS filter_$ 'time = 2015 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.

XGRAPH CHART=(abs_pop [SUM] [BAR]) BY AGEGROUP[c] BY SEX[c] 
  /COORDINATE SPLIT=YES.

USE ALL. 
COMPUTE filter_$=(time = 2016). 
VARIABLE LABELS filter_$ 'time = 2016 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.

XGRAPH CHART=(abs_pop [SUM] [BAR]) BY AGEGROUP[c] BY SEX[c] 
  /COORDINATE SPLIT=YES.

USE ALL. 
COMPUTE filter_$=(time = 2017). 
VARIABLE LABELS filter_$ 'time = 2017 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.

XGRAPH CHART=(abs_pop [SUM] [BAR]) BY AGEGROUP[c] BY SEX[c] 
  /COORDINATE SPLIT=YES.

USE ALL. 
COMPUTE filter_$=(time = 2018). 
VARIABLE LABELS filter_$ 'time = 2018 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.

XGRAPH CHART=(abs_pop [SUM] [BAR]) BY AGEGROUP[c] BY SEX[c] 
  /COORDINATE SPLIT=YES.

USE ALL. 
COMPUTE filter_$=(time = 2019). 
VARIABLE LABELS filter_$ 'time = 2019 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.

XGRAPH CHART=(abs_pop [SUM] [BAR]) BY AGEGROUP[c] BY SEX[c] 
  /COORDINATE SPLIT=YES.

USE ALL. 
COMPUTE filter_$=(time = 2020). 
VARIABLE LABELS filter_$ 'time = 2020 (FILTER)'. 
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'. 
FORMATS filter_$ (f1.0). 
FILTER BY filter_$. 
EXECUTE.

XGRAPH CHART=(abs_pop [SUM] [BAR]) BY AGEGROUP[c] BY SEX[c] 
  /COORDINATE SPLIT=YES.




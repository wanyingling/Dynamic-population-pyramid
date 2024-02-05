/* ========================================================================
 * Program: ChinaPyramid.do
 * Data:	ChinaPyramid.csv
 * Revised: 10/24/2020
 * ======================================================================= */
clear
set more off
capture log close

global root= "C:\Users\admini\Desktop\硕士\人口分析技术"
global resultfiles= "$root\动态人口金字塔_Stata"
global raw_data= "$root\人口金字塔数据"

log using $resultfiles\ChinaPyramid.log, replace
import delimited $raw_data\china.csv

egen age_all = cut(age), at(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100,200)
egen age_group = group(age_all)
label var age_group "年龄组别"
label def 年龄组别 1 "0-4"  2 "5-9" 3 "10-14" 4 "14-19" 5"20-24" 6 "25-29" 7 "30-34" 8 "35-39" ///
 9 "40-44" 10 "45-49" 11 "50-54" 12 "55-59" 13 "60-64" 14 "65-69" 15 "70-74" 16 "75-79" 17 "80-84" 18 "85-89" ///
 19 "90-94" 20 "95-100" 21 "100+", replace

reshape wide pop , i(v1) j(time)

forvalues i = 2010(1)2050 {
 gen popMale_`i'=pop`i' if sex=="Male"
 gen popFemale_`i'=pop`i' if sex=="Female"
 }


 
local j=1
forvalues i = 2010(1)2050 {
//	#d ;
	twoway bar popMale_`i' age_group, horizontal || bar popFemale_`i' age_group, horizontal ///
	title("`i' Population structure of China") ///
	note("Data: US Census Bureau IDB", span) ///
	legend(order(1 "Male" 2 "Female")) 
	graph export $resultfiles\ChinaPyramid`j++'.png", as(png) replace
//	#d cr
 }

save $resultfiles\ChinaPyramid.dta, replace

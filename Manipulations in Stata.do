*Learning outcomes in Stata. 

. pwd
C:\Users\Rozikova_Gulsanam\Desktop

. cd Downloads
unable to change to Downloads
r(170);

. cd ..
C:\Users\Rozikova_Gulsanam

. cd Downloads
C:\Users\Rozikova_Gulsanam\Downloads

. ls
  <dir>   4/08/22 12:37  .                 
  <dir>   4/08/22 12:37  ..                
 131.6k   3/11/22  5:39  card.dta          
 633.0k   3/11/22  3:05  CA_districts.dta  
  15.3M   3/11/22  3:05  CA_schools_es.dta 
 499.1k   3/11/22  3:05  CA_schools_hs.dta 
 672.3k   3/11/22  3:05  CA_schools_ms.dta 
   1.1k   3/10/22 14:23  code.do           
   7.2k   3/11/22  6:00  code_bk.txt       
7393.0k   3/11/22  3:02  data-code.zip     
   0.3k  11/12/21 10:16  desktop.ini       
 239.1k   3/10/22 14:23  nls (1).dta       
 599.8k   3/11/22  6:00  nls.dat           
 296.8k   2/28/22  1:03  nls.dta           
  32.3k   3/11/22  6:00  read1.lst         
   3.0k   3/11/22  6:00  read1.sas         
   0.5k   3/11/22  6:00  readme            
   3.0k   3/11/22  3:04  results_district_spending.do
   4.1k   3/11/22  4:36  results_elementaryschools.do
   8.7k   4/08/22 12:34  StataCode.do      
 165.6k   4/08/22 12:37  WDICountry.csv    
3807.2k   4/08/22 12:37  WDISeries.csv     
 178.1k   3/11/22  3:05  williams_full_apportionment_schedule.dta

 *Reading a csv file in Stata. Just opened the file from the class. Browse. Describe. Clear.
 
. import delimited using WDICountry
(encoding automatically selected: UTF-8)
Note: Unmatched quote while processing row 2; this can be due to a formatting problem in the file or because a quoted data element
    spans multiple lines. You should carefully inspect your data after importing. Consider using option bindquote(strict) if quoted
    data spans multiple lines or option bindquote(nobind) if quotes are not used for binding data.
Note: Unmatched quote while processing row 3; this can be due to a formatting problem in the file or because a quoted data element
    spans multiple lines. You should carefully inspect your data after importing. Consider using option bindquote(strict) if quoted
    data spans multiple lines or option bindquote(nobind) if quotes are not used for binding data.
Note: Unmatched quote while processing row 4; this can be due to a formatting problem in the file or because a quoted data element
    spans multiple lines. You should carefully inspect your data after importing. Consider using option bindquote(strict) if quoted
    data spans multiple lines or option bindquote(nobind) if quotes are not used for binding data.
Note: Unmatched quote while processing row 5; this can be due to a formatting problem in the file or because a quoted data element
    spans multiple lines. You should carefully inspect your data after importing. Consider using option bindquote(strict) if quoted
    data spans multiple lines or option bindquote(nobind) if quotes are not used for binding data.
Note: Unmatched quote while processing row 175; this can be due to a formatting problem in the file or because a quoted data element
    spans multiple lines. You should carefully inspect your data after importing. Consider using option bindquote(strict) if quoted
    data spans multiple lines or option bindquote(nobind) if quotes are not used for binding data.
Note: Unmatched quote while processing row 176; this can be due to a formatting problem in the file or because a quoted data element
    spans multiple lines. You should carefully inspect your data after importing. Consider using option bindquote(strict) if quoted
    data spans multiple lines or option bindquote(nobind) if quotes are not used for binding data.
Note: Unmatched quote while processing row 215; this can be due to a formatting problem in the file or because a quoted data element
    spans multiple lines. You should carefully inspect your data after importing. Consider using option bindquote(strict) if quoted
    data spans multiple lines or option bindquote(nobind) if quotes are not used for binding data.
Note: Unmatched quote while processing row 216; this can be due to a formatting problem in the file or because a quoted data element
    spans multiple lines. You should carefully inspect your data after importing. Consider using option bindquote(strict) if quoted
    data spans multiple lines or option bindquote(nobind) if quotes are not used for binding data.
Note: Unmatched quote while processing row 217; this can be due to a formatting problem in the file or because a quoted data element
    spans multiple lines. You should carefully inspect your data after importing. Consider using option bindquote(strict) if quoted
    data spans multiple lines or option bindquote(nobind) if quotes are not used for binding data.
Note: Unmatched quote while processing row 218; this can be due to a formatting problem in the file or because a quoted data element
    spans multiple lines. You should carefully inspect your data after importing. Consider using option bindquote(strict) if quoted
    data spans multiple lines or option bindquote(nobind) if quotes are not used for binding data.
(31 vars, 268 obs)

. br

. describe

Contains data
 Observations:           268                  
    Variables:            31                  
--------------------------------------------------------------------------------------------------------------------------------------
Variable      Storage   Display    Value
    name         type    format    label      Variable label
--------------------------------------------------------------------------------------------------------------------------------------
countrycode     strL    %9s                   Country Code
shortname       strL    %9s                   Short Name
tablename       str52   %52s                  Table Name
longname        str73   %73s                  Long Name
alphacode       str17   %17s                  2-alpha code
currencyunit    str84   %84s                  Currency Unit
specialnotes    strL    %9s                   Special Notes
region          str26   %26s                  Region
incomegroup     str19   %19s                  Income Group
wb2code         str20   %20s                  WB-2 code
national~seyear strL    %9s                   National accounts base year
national~ceyear strL    %9s                   National accounts reference year
snapricevalua~n strL    %9s                   SNA price valuation
lendingcategory str62   %62s                  Lending category
othergroups     strL    %9s                   Other groups
systemofnatio~s strL    %9s                   System of National Accounts
alternativeco~r str48   %48s                  Alternative conversion factor
pppsurveyyear   str34   %34s                  PPP survey year
balanceofpaym~e str33   %33s                  Balance of Payments Manual in use
externaldebtr~s str11   %11s                  External debt Reporting status
systemoftrade   str20   %20s                  System of trade
governmentacc~t str31   %31s                  Government Accounting concept
imfdatadissem~d str51   %51s                  IMF data dissemination standard
latestpopulat~s strL    %9s                   Latest population census
latesthouseho~y str77   %77s                  Latest household survey
sourceofmostr~n str88   %88s                  Source of most recent Income and expenditure data
vitalregistra~e str48   %48s                  Vital registration complete
latestagricul~s strL    %9s                   Latest agricultural census
latestindustr~a int     %8.0g                 Latest industrial data
latesttradedata int     %8.0g                 Latest trade data
v31             byte    %8.0g                 
--------------------------------------------------------------------------------------------------------------------------------------
Sorted by: 
     Note: Dataset has changed since last saved.

. clear

*Using dta file for regression analysis, table and graph generating, saving data, generating, renaming variables.

use "C:\Users\Rozikova_Gulsanam\Downloads\lakisha_aer.dta"

. tabulate l if race=="w", summarize(call)

      1=low |  Summary of 1=applicant was called
    quality |                back
     resume |        Mean   Std. dev.       Freq.
------------+------------------------------------
          0 |   .10793132   .31042058       1,223
          1 |    .0849835   .27897225       1,212
------------+------------------------------------
      Total |   .09650924     .295349       2,435

. 
. tabulate h if race=="w", summarize(call)

     1=high |  Summary of 1=applicant was called
    quality |                back
     resume |        Mean   Std. dev.       Freq.
------------+------------------------------------
          0 |    .0849835   .27897225       1,212
          1 |   .10793132   .31042058       1,223
------------+------------------------------------
      Total |   .09650924     .295349       2,435

. 
. tabulate h if race=="b", summarize(call)

     1=high |  Summary of 1=applicant was called
    quality |                back
     resume |        Mean   Std. dev.       Freq.
------------+------------------------------------
          0 |   .06188119   .24103909       1,212
          1 |   .06704824   .25020784       1,223
------------+------------------------------------
      Total |   .06447639   .24565008       2,435

. 
. collapse call, by(race h)

. clear

use "C:\Users\Rozikova_Gulsanam\Downloads\nls (1).dta"

. describe

Contains data from C:\Users\Rozikova_Gulsanam\Downloads\nls (1).dta
 Observations:         3,010                  
    Variables:            43                  18 Mar 2008 18:08
--------------------------------------------------------------------------------------------------------------------------------------
Variable      Storage   Display    Value
    name         type    format    label      Variable label
--------------------------------------------------------------------------------------------------------------------------------------
id              long    %12.0g                Person Identifier
nearc2          byte    %8.0g                 grew up near 2-yr college
nearc4          byte    %8.0g                 grew up near 4-yr college
nearc4a         byte    %8.0g                 grew up near 4-yr public college
nearc4b         byte    %8.0g                 grew up near 4-yr priv college
ed76            int     %8.0g                 educ in 1976
ed66            int     %8.0g                 educ in 1976
age76           int     %8.0g                 age in 1976
daded           long    %12.0g                dads education missing=avg
nodaded         int     %8.0g                  1 if dad ed imputed
momed           long    %12.0g                moms education missing=avg
nomomed         int     %8.0g                  1 if mom ed imputed
weight          long    %12.0g                nls weight for 1976 cross-section
momdad14        byte    %8.0g                 1 if live with mom and dad age 14
sinmom14        byte    %8.0g                 lived with single mom age 14
step14          byte    %8.0g                 lived step parent age 14
reg661          byte    %8.0g                 dummy for region=1 in 1966
reg662          byte    %8.0g                 dummy for region=2 in 1966
reg663          byte    %8.0g                 dummy for region=3 in 1966
reg664          byte    %8.0g                 dummy for region=4 in 1966
reg665          byte    %8.0g                 dummy for region=5 in 1966
reg666          byte    %8.0g                 dummy for region=6 in 1966
reg667          byte    %8.0g                 dummy for region=7 in 1966
reg668          byte    %8.0g                 dummy for region=8 in 1966
reg669          byte    %8.0g                 dummy for region=9 in 1966
south66         byte    %8.0g                 lived in south in 1966
work76          byte    %8.0g                 worked in 1976
work78          byte    %8.0g                 worked in 1978
lwage76         float   %9.0g                 log wage (outliers trimmed) 1976
lwage78         float   %9.0g                 log wage (outliers trimmed) 1978
famed           int     %8.0g                 mom-dad education class 1-9
black           int     %8.0g                 1 if black
smsa76          int     %8.0g                 in smsa in 1976
smsa78          int     %8.0g                 in smsa in 1978
south76         int     %8.0g                 in south in 1976
south78         int     %8.0g                 in south in 1978
south80         int     %8.0g                 in south in 1980
smsa66          int     %8.0g                 in smsa in 1966
noint78         int     %8.0g                 1 if noninterview in 78
noint80         int     %8.0g                 1 if noninterview in 80
kww             int     %8.0g                 the kww score
iq              int     %8.0g                 normed iq score
marsta76        int     %8.0g                 mar status in 1976 1=married, sp. presente
--------------------------------------------------------------------------------------------------------------------------------------
Sorted by: 

. gen exper = age76 - ed76 - 6

. gen exper_sqrd = exper^2

. rename famed family_education

. summarize kww

    Variable |        Obs        Mean    Std. dev.       Min        Max
-------------+---------------------------------------------------------
         kww |      2,963    33.54067    8.611619          4         56

* Graph

graph twoway (lfitci lwage76 ed76) (scatter lwage76 ed76)

graph save "Graph" "C:\Users\Rozikova_Gulsanam\Downloads\Graph.gph"
file C:\Users\Rozikova_Gulsanam\Downloads\Graph.gph saved

*Saving the reg table

 reg lwage76 ed76 ed66 black kww iq marsta76 exper exper_sqrd

      Source |       SS           df       MS      Number of obs   =     2,039
-------------+----------------------------------   F(8, 2030)      =     70.78
       Model |  77.5787148         8  9.69733935   Prob > F        =    0.0000
    Residual |  278.116451     2,030  .137003178   R-squared       =    0.2181
-------------+----------------------------------   Adj R-squared   =    0.2150
       Total |  355.695166     2,038  .174531485   Root MSE        =    .37014

------------------------------------------------------------------------------
     lwage76 | Coefficient  Std. err.      t    P>|t|     [95% conf. interval]
-------------+----------------------------------------------------------------
        ed76 |   .0261124   .0102557     2.55   0.011     .0059997    .0462251
        ed66 |   .0385473   .0105106     3.67   0.000     .0179347    .0591598
       black |  -.1036769   .0265936    -3.90   0.000    -.1558305   -.0515233
         kww |   .0063109   .0014439     4.37   0.000     .0034792    .0091425
          iq |   .0021325   .0007071     3.02   0.003     .0007458    .0035191
    marsta76 |  -.0255436   .0042176    -6.06   0.000    -.0338149   -.0172724
       exper |   .0248438   .0166025     1.50   0.135    -.0077158    .0574035
  exper_sqrd |  -.0003865   .0006918    -0.56   0.576    -.0017431    .0009702
       _cons |   4.978182    .135368    36.78   0.000     4.712708    5.243657
------------------------------------------------------------------------------

putexcel set "C:\Users\Rozikova_Gulsanam\Downloads\Regression tables.xlsx"

save "C:\Users\Rozikova_Gulsanam\Downloads\nls (1).dta", replace
file C:\Users\Rozikova_Gulsanam\Downloads\nls (1).dta saved

*Going back to csv file to demonstrate use drop, keep, egen and so on.

import delimited using WDISeries
 display missing(.)
1

. drop latestagriculturalcensus vitalregistrationcomplete imfdatadisseminationstandard governmentaccountingconcept

. keep countrycode shortname longname tablename currencyunit specialnotes region incomegroup lendingcategory pppsurveyyear systemoftra
> de latestpopulationcensus sourceofmostrecentincomeandexpen

. describe

Contains data
 Observations:           268                  
    Variables:            13                  
--------------------------------------------------------------------------------------------------------------------------------------
Variable      Storage   Display    Value
    name         type    format    label      Variable label
--------------------------------------------------------------------------------------------------------------------------------------
countrycode     strL    %9s                   Country Code
shortname       strL    %9s                   Short Name
tablename       str52   %52s                  Table Name
longname        str73   %73s                  Long Name
currencyunit    str84   %84s                  Currency Unit
specialnotes    strL    %9s                   Special Notes
region          str26   %26s                  Region
incomegroup     str19   %19s                  Income Group
lendingcategory str62   %62s                  Lending category
pppsurveyyear   str34   %34s                  PPP survey year
systemoftrade   str20   %20s                  System of trade
latestpopulat~s strL    %9s                   Latest population census
sourceofmostr~n str88   %88s                  Source of most recent Income and expenditure data
--------------------------------------------------------------------------------------------------------------------------------------
Sorted by: 
     Note: Dataset has changed since last saved.

. egen country_category = count(countrycode), by(lendingcategory)

. browse

*Using gdp.dta files to demonstrate aggregating, combining, tabulating.

clear

. use "C:\Users\Rozikova_Gulsanam\Downloads\gdp2017.dta"

. br

. merge m:1 countrycode using "gdp1990.dta"

    Result                      Number of obs
    -----------------------------------------
    Not matched                             0
    Matched                               264  (_merge==3)
    -----------------------------------------

. br

. use "C:\Users\Rozikova_Gulsanam\Downloads\gdp1990.dta", clear

. gen year = 1990

. br

. drop year

. rename gdp_per_capita gdp_pc1990
 merge m:1 countrycode using "gdp2017.dta"

    Result                      Number of obs
    -----------------------------------------
    Not matched                             0
    Matched                               264  (_merge==3)
    -----------------------------------------

. br

. tabulate _merge

   Matching result from |
                  merge |      Freq.     Percent        Cum.
------------------------+-----------------------------------
            Matched (3) |        264      100.00      100.00
------------------------+-----------------------------------
                  Total |        264      100.00

. rename gdp_per_capita gdp_pc2017

. desc

Contains data from C:\Users\Rozikova_Gulsanam\Downloads\gdp1990.dta
 Observations:           264                  
    Variables:             4                  22 Aug 2019 13:39
--------------------------------------------------------------------------------------------------------------------------------------
Variable      Storage   Display    Value
    name         type    format    label      Variable label
--------------------------------------------------------------------------------------------------------------------------------------
countrycode     str3    %9s                   Country Code
gdp_pc1990      double  %8.0g                 gdp_per_capita v
gdp_pc2017      double  %8.0g                 gdp_per_capita v
_merge          byte    %23.0g     _merge     Matching result from merge
--------------------------------------------------------------------------------------------------------------------------------------
Sorted by: 
     Note: Dataset has changed since last saved.

. display missing(.)
1

. drop if gdp_pc1990 == .
(56 observations deleted)

. drop if gdp_pc2017 == .
(2 observations deleted)

. desc

Contains data from C:\Users\Rozikova_Gulsanam\Downloads\gdp1990.dta
 Observations:           206                  
    Variables:             4                  22 Aug 2019 13:39
--------------------------------------------------------------------------------------------------------------------------------------
Variable      Storage   Display    Value
    name         type    format    label      Variable label
--------------------------------------------------------------------------------------------------------------------------------------
countrycode     str3    %9s                   Country Code
gdp_pc1990      double  %8.0g                 gdp_per_capita v
gdp_pc2017      double  %8.0g                 gdp_per_capita v
_merge          byte    %23.0g     _merge     Matching result from merge
--------------------------------------------------------------------------------------------------------------------------------------
Sorted by: 
     Note: Dataset has changed since last saved.

. br


*Using the gdp file from class for loop.

import delimited using "https://raw.githubusercontent.com/korenmiklos/dc-economics-data/master/data/web/gdp.csv", clear
(encoding automatically selected: ISO-8859-1)
(31 vars, 264 obs)

. br
drop if gdp1990 == .
(56 observations deleted)

. br

. foreach var of varlist gdp1990-gdp2018 {
  2. 
.     egen `var'_mean = mean(`var')
  3. 
. }
(208 missing values generated)

. br

. summarize gdp1990-gdp2018

    Variable |        Obs        Mean    Std. dev.       Min        Max
-------------+---------------------------------------------------------
     gdp1990 |        208    11531.92    14290.85   378.5343   110432.5
     gdp1991 |        208    11511.51    14305.47   387.0233   105171.4
     gdp1992 |        208    11563.02    14413.48   354.2845   102615.2
     gdp1993 |        208    11608.63    14362.32   370.4504   98224.52
     gdp1994 |        208    11779.23    14635.96   378.2753   99529.78
-------------+---------------------------------------------------------
     gdp1995 |        208    12005.46    14884.84   373.4353   100976.9
     gdp1996 |        208    12254.59    15049.87   459.4265   101754.3
     gdp1997 |        208     12595.4    15365.33   495.4217     104829
     gdp1998 |        208    12781.66    15376.24   540.0946   100018.1
     gdp1999 |        208    13031.99    15628.94    567.507   97753.83
-------------+---------------------------------------------------------
     gdp2000 |        208    13511.19    16283.31   561.6127   102634.9
     gdp2001 |        208    13655.13    16289.96   545.8516   98716.97
     gdp2002 |        208    13809.73    16341.16   545.6888   95894.91
     gdp2003 |        208    14073.16    16559.76   558.7015   97790.18
     gdp2004 |        208    14638.69    17022.44   577.8607   98076.53
-------------+---------------------------------------------------------
     gdp2005 |        208    15032.26    17145.24    594.077   91798.26
     gdp2006 |        208    15577.98    17552.75   605.8632   91724.18
     gdp2007 |        208    16107.71    17875.05   623.1287    97864.2
     gdp2008 |        208    16253.22    17602.85   640.4783   94900.34
     gdp2009 |        208    15737.44    16730.64   637.2751   89098.73
-------------+---------------------------------------------------------
     gdp2010 |        208    16166.87    17334.05   660.2109   98184.64
     gdp2011 |        208    16561.08    17966.06   682.4321   116752.2
     gdp2012 |        208     16749.3    18124.71    706.798   124568.6
     gdp2013 |        208    16992.75    18475.08    593.056   135318.8
     gdp2014 |        207    17066.25     18374.5   597.1352   130755.2
-------------+---------------------------------------------------------
     gdp2015 |        206    17184.57    17890.89   621.5698   100444.6
     gdp2016 |        206    17374.22    17920.84   642.8735   97751.73
     gdp2017 |        206    17691.31    18272.38     661.24   104861.9
     gdp2018 |          0

*Installing Stata packages. outreg2 already existed, so I installed a package for instrumental variables regression. 

. ssc install outreg2
checking outreg2 consistency and verifying not already installed...
all files already exist and are up to date.

. ssc install ivreg29
checking ivreg29 consistency and verifying not already installed...
installing into C:\Users\Rozikova_Gulsanam\ado\plus\...
installation complete.




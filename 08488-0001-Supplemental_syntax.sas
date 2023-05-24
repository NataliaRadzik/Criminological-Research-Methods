*-------------------------------------------------------------------------*
 |                                                                         
 |               SAS COMPANION PROGRAM FILE FOR ICPSR 08488
 |       CAMBRIDGE STUDY IN DELINQUENT DEVELOPMENT [GREAT BRITAIN],
 |                               1961-1981
 |                       (DATASET 0001:  DATA FILE)
 |
 |
 | This SAS program is provided for optional use with the SAS transport
 | version of this data file as distributed by ICPSR. The metadata provided
 | below are not stored in the SAS transport version of this data
 | collection.  Users need to use SAS PROC COPY to copy the SAS transport
 | file to a SAS data set on their system. This program can then be used in
 | conjunction with the SAS system data file.
 |
 | PROC FORMAT:  creates user-defined formats for the variables. Formats
 | replace original value codes with value code descriptions.  Only
 | variables with user-defined formats are included in this section.
 |
 | DATA:  begins a SAS data step and names an output SAS data set. Users
 | should replace "SAS-dataset" with their name for the SAS data set copied
 | from the SAS transport file. Users can add a SAS libname statement
 | and an output SAS data set name to make a permanent SAS data set.
 |
 | MISSING VALUE RECODES:  sets user-defined numeric missing values to
 | missing as interpreted by the SAS system. Only variables with
 | user-defined missing values are included in the section.
 |
 | FORMAT:  associates the formats created by the PROC FORMAT step with
 | the variables stored in the SAS data set. Users can refer to their
 | SAS manual for information on how to permanently store formats in a
 | SAS catalog.
 |
 | NOTE:  Users should modify these sections to suit their specific needs.
 | The MISSING VALUE RECODES section has been commented out (i.e., '/*'
 | and '*/').  To make this section active in the program, users should
 | remove the SAS comment indicators from this section.
 |
 *------------------------------------------------------------------------;

* SAS PROC FORMAT;

PROC FORMAT;
  VALUE V1ffffff  8488='(8488) ICPSR STUDY NO.' ;
  VALUE V2ffffff  2='(2) 2ND VERSION' ;
  VALUE V3ffffff  1='(1) NO. OF FILES' ;
  VALUE V5ffffff  1='(1) NO' 2='(2) YES' ;
  VALUE V6ffffff  1='(1) NO' 2='(2) YES' ;
  VALUE V7ffffff  0='(0) DEAD OR EMIGRATED' 1='(1) NO' 2='(2) YES' ;
  VALUE V8ffffff  0='(0) NOT AT RISK' 1='(1) NO' 2='(2) YES' ;
  VALUE V9ffffff  1='(1) NO' 2='(2) YES' ;
  VALUE V10fffff  0='(0) NOT AT RISK' 1='(1) NO' 2='(2) YES' ;
  VALUE V11fffff  0='(0) NOT AT RISK' 1='(1) NO' 2='(2) YES' ;
  VALUE V12fffff  0='(0) NOT AT RISK' 1='(1) 10-12' 2='(2) 13' 3='(3) 14' 4='(4) 15' 5='(5) 16'
                  6='(6) 17' 7='(7) 18-19' 8='(8) 20-24' 9='(9) NOT CONVICTED' ;
  VALUE V13fffff  0='(0) NONE' 1='(1) ONE' 2='(2) TWO' ;
  VALUE V14fffff  0='(0) NONE' 1='(1) ONE' 2='(2) TWO' ;
  VALUE V15fffff  0='(0) NONE' 1='(1) ONE' 3='(3) THREE' ;
  VALUE V16fffff  0='(0) NONE' 1='(1) ONE' 2='(2) TWO' 3='(3) THREE' 4='(4) FOUR' ;
  VALUE V17fffff  0='(0) NONE' 1='(1) ONE' 2='(2) TWO' 6='(6) SIX' ;
  VALUE V18fffff  0='(0) NONE' 1='(1) ONE' 2='(2) TWO' 3='(3) THREE' 5='(5) FIVE' ;
  VALUE V19fffff  0='(0) NONE' 1='(1) ONE' 2='(2) TWO' 3='(3) THREE' 5='(5) FIVE' ;
  VALUE V20fffff  0='(0) NONE' 1='(1) ONE' 2='(2) TWO' 3='(3) THREE' 9='(9) NOT AT RISK' ;
  VALUE V21fffff  0='(0) NONE' 1='(1) ONE' 2='(2) TWO' 3='(3) THREE' 9='(9) NOT AT RISK' ;
  VALUE V22fffff  0='(0) NONE' 1='(1) ONE' 2='(2) TWO' 3='(3) THREE' 4='(4) FOUR' 9='(9) NOT AT RISK' ;
  VALUE V23fffff  0='(0) NONE' 1='(1) ONE' 2='(2) TWO' 3='(3) THREE' 5='(5) FIVE' 9='(9) NOT AT RISK' ;
  VALUE V24fffff  0='(0) NONE' 1='(1) ONE' 2='(2) TWO' 9='(9) NOT AT RISK' ;
  VALUE V25fffff  0='(0) NONE' 1='(1) ONE' 2='(2) TWO' 3='(3) THREE' 9='(9) NOT AT RISK' ;
  VALUE V26fffff  0='(0) NONE' 1='(1) ONE' 9='(9) NOT AT RISK' ;
  VALUE V27fffff  0='(0) NONE' 1='(1) ONE' 2='(2) TWO' 3='(3) THREE' 9='(9) NOT AT RISK' ;
  VALUE V28fffff  1='(1) NONE' 2='(2) ONE' 3='(3) 2 OR 3' 4='(4) 4 OR MORE' ;
  VALUE V29fffff  0='(0) NOT AT RISK' 1='(1) NONE' 2='(2) ONE' 3='(3) 2 OR 3' 4='(4) 4 OR MORE' ;
  VALUE V30fffff  0='(0) NOT AT RISK' 1='(1) NONE' 2='(2) ONE' 3='(3) TWO' 4='(4) THREE'
                  5='(5) 4 OR 5' 6='(6) 6 OR MORE' ;
  VALUE V31fffff  0='(0) NOT AT RISK' 1='(1) NOT CONVICTED' 2='(2) CONVICTD-JUVNL'
                  3='(3) CONVICTD-ADULT' 4='(4) CONVICTD-BOTH' ;
  VALUE V32fffff  1='(1) NONE' 2='(2) ONE' 3='(3) TWO' 4='(4) THREE' 5='(5) FOUR' 6='(6) FIVE' ;
  VALUE V33fffff  1='(1) NONE' 2='(2) ONE' 3='(3) TWO' 4='(4) THREE' 5='(5) FOUR' 6='(6) FIVE'
                  11='(11) TEN' ;
  VALUE V34fffff  1='(1) NONE' 2='(2) ONE' 3='(3) TWO' 4='(4) THREE' 5='(5) FOUR' 6='(6) FIVE'
                  7='(7) SIX' 9='(9) EIGHT' 10='(10) NINE' 15='(15) FOURTEEN' ;
  VALUE V35fffff  0='(0) NOT AT RISK' 1='(1) NONE' 2='(2) ONE' 3='(3) TWO' 4='(4) THREE' 5='(5) FOUR'
                  6='(6) FIVE' 7='(7) SIX' 8='(8) SEVEN' ;
  VALUE V36fffff  0='(0) NOT AT RISK' 1='(1) NONE' 2='(2) ONE' 3='(3) TWO' 4='(4) THREE' 5='(5) FOUR'
                  6='(6) FIVE' ;
  VALUE V37fffff  0='(0) NOT AT RISK' 1='(1) NONE' 2='(2) ONE' 3='(3) TWO' 4='(4) THREE' 5='(5) FOUR'
                  6='(6) FIVE' 7='(7) SIX' 8='(8) SEVEN' 10='(10) NINE' 11='(11) TEN' ;
  VALUE V38fffff  0='(0) NOT AT RISK' 1='(1) NONE' 2='(2) ONE' 3='(3) TWO' 4='(4) THREE' 5='(5) FOUR'
                  6='(6) FIVE' 7='(7) SIX' 8='(8) SEVEN' 9='(9) EIGHT' 10='(10) NINE' 11='(11) TEN'
                  12='(12) ELEVEN' 13='(13) TWELVE' 14='(14) THIRTEEN' 15='(15) FOURTEEN' ;
  VALUE V39fffff  0='(0) NK-UNASCERTAIN' 1='(1) CAUTIOUS' 2='(2) AVERAGE'
                  3='(3) TAKES MANY RISKS' ;
  VALUE V40fffff  1='(1) 123-130' 2='(2) 131-137' 3='(3) 138-141' 4='(4) 142-158' ;
  VALUE V41fffff  1='(1) PILOT' 2='(2) 1ST' 3='(3) 2ND' ;
  VALUE V42fffff  1='(1) NO ACTING OUT' 2='(2) ACTS OUT' ;
  VALUE V43fffff  0='(0) NK-UNASCERTAIN' 1='(1) BORN <1915' 2='(2) BORN 1915-29'
                  3='(3) BORN >1929' 4='(4) NOT APPLICABLE' ;
  VALUE V44fffff  0='(0) NK-UNASCERTAIN' 1='(1) BORN <1917' 2='(2) BORN 1917-32'
                  3='(3) BORN >1932' 4='(4) NOT APPLICABLE' ;
  VALUE V45fffff  0='(0) NK-UNASCERTAIN' 1='(1) NO ADVERSITY' 2='(2) ADVERSITY'
                  3='(3) NOT APPLICABLE' ;
  VALUE V46fffff  0='(0) NK-UNASCERTAIN' 1='(1) NO ADVERSITY' 2='(2) ADVERSITY'
                  3='(3) NOT APPLICABLE' ;
  VALUE V47fffff  0='(0) NK-UNASCERTAIN' 1='(1) NO POVERTY' 2='(2) POVERTY'
                  3='(3) NOT APPLICABLE' ;
  VALUE V48fffff  0='(0) NK-UNASCERTAIN' 1='(1) NO POVERTY' 2='(2) POVERTY'
                  3='(3) NOT APPLICABLE' ;
  VALUE V49fffff  0='(0) NK-UNASCERTAIN' 1='(1) 1 INCH' 2='(2) 2 INCHES' 3='(3) 3-4 INCHES'
                  4='(4) >=5 INCH/FELL' ;
  VALUE V50fffff  0='(0) NK-UNASCERTAIN' 1='(1) HAPPY' 2='(2) UNHAPPY' 3='(3) NOT APPLICABLE' ;
  VALUE V51fffff  0='(0) NK-UNASCERTAIN' 1='(1) HAPPY' 2='(2) UNHAPPY' 3='(3) NOT APPLICABLE' ;
  VALUE V52fffff  0='(0) NK-UNASCERTAIN' 1='(1) NON-ATTENDEE' 2='(2) ATTENDS WORSHIP' ;
  VALUE V53fffff  0='(0) NK-UNASCERTAIN' 1='(1) WELL BEHAVED' 2='(2) MODERATELY BADLY'
                  3='(3) VERY BADLY BEHAV' ;
  VALUE V54fffff  1='(1) 1' 2='(2) 2-3' 3='(3) 4-6' 4='(4) 7-8' 5='(5) 9' ;
  VALUE V55fffff  0='(0) NK-UNASCERTAIN' 1='(1) NON-CATHOLIC FAM' 2='(2) CATHOLIC FAMILY' ;
  VALUE V56fffff  1='(1) COOPERATIVE' 2='(2) WITHDRAWN' 3='(3) RELUCTANT'
                  4='(4) NON-COOPERATIVE' ;
  VALUE V57fffff  0='(0) NK-UNASCERTAIN' 1='(1) PLANNED' 2='(2) WELCOME ACCIDENT'
                  3='(3) UNWELCOM ACCIDNT' ;
  VALUE V58fffff  0='(0) NK-UNASCERTAIN' 1='(1) MOTHER BRIGHT' 2='(2) MOTHER AVERAGE'
                  3='(3) MOTHER DULL' 4='(4) NOT APPLICABLE' ;
  VALUE V59fffff  0='(0) NK-UNASCERTAIN' 1='(1) NORMAL' 2='(2) ERRATIC' 3='(3) LAX'
                  4='(4) STRICT' 5='(5) VERY STRICT' 6='(6) NOT APPLICABLE' ;
  VALUE V60fffff  0='(0) NK-UNASCERTAIN' 1='(1) NORMAL' 2='(2) ERRATIC' 3='(3) LAX'
                  4='(4) STRICT' 5='(5) VERY STRICT' 6='(6) NOT APPLICABLE' ;
  VALUE V61fffff  0='(0) NK-UNASCERTAIN' 1='(1) FATHER DOMINANT' 2='(2) MUTUAL DOMINANCE'
                  3='(3) MOTHER DOMINANT' 4='(4) NOT APPLICABLE' ;
  VALUE V62fffff  0='(0) NK-UNASCERTAIN' 1='(1) NT SPL,HRSH,DISN' 2='(2) SPOILT'
                  3='(3) HARSH' 4='(4) DISINTERESTED' 5='(5) NOT APPLICABLE' ;
  VALUE V63fffff  0='(0) NK-UNASCERTAIN' 1='(1) NT SPL,HRSH,DISN' 2='(2) SPOILT'
                  3='(3) HARSH' 4='(4) DISINTERESTED' 5='(5) NOT APPLICABLE' ;
  VALUE V64fffff  0='(0) NK-UNASCERTAIN' 1='(1) NO HIGHER SCHOOL'
                  2='(2) HIGHER SCHOOLING' 3='(3) NOT APPLICABLE' ;
  VALUE V65fffff  0='(0) NK-UNASCERTAIN' 1='(1) NO SPECIAL TRAIN'
                  2='(2) SPECIAL TRAINING' 3='(3) NOT APPLICABLE' ;
  VALUE V66fffff  0='(0) NK-UNASCERTAIN' 1='(1) NO HIGHER SCHOOL'
                  2='(2) HIGHER SCHOOLING' 3='(3) NOT APPLICABLE' ;
  VALUE V67fffff  0='(0) NK-UNASCERTAIN' 1='(1) NOT FRETFUL' 2='(2) FRETFUL' ;
  VALUE V68fffff  0='(0) NK-UNASCERTAIN' 1='(1) NORMAL' 2='(2) UNSATISFACTORY' ;
  VALUE V69fffff  1='(1) NO OTH SIBLINGS' 2='(2) 1 OTHER SIBLING'
                  3='(3) 2 OTHER SIBLINGS' 4='(4) 3 OTHER SIBLINGS'
                  5='(5) 4 OTHER SIBLINGS' 6='(6) >=5 MORE OTH SIB' ;
  VALUE V70fffff  1='(1) NO BROTHERS' 2='(2) ONE BROTHER' 3='(3) TWO BROTHERS'
                  4='(4) >=3 MORE BROTHER' ;
  VALUE V71fffff  1='(1) NONE' 2='(2) ONE' 3='(3) TWO OR MORE' ;
  VALUE V72fffff  1='(1) NONE' 2='(2) ONE' 3='(3) TWO OR MORE' ;
  VALUE V73fffff  0='(0) NK-UNASCERTAIN' 1='(1) >=3 MORE ROOMS' 2='(2) 2 MORE ROOMS'
                  3='(3) >=1 MORE ROOM' 4='(4) ROOMS < CHILDREN' ;
  VALUE V74fffff  1='(1) NONE' 2='(2) ONE' 3='(3) TWO' 4='(4) THREE OR MORE' ;
  VALUE V75fffff  1='(1) NONE' 2='(2) ONE' 3='(3) TWO' 4='(4) THREE OR MORE' ;
  VALUE V76fffff  1='(1) NONE' 2='(2) ONE' 3='(3) TWO OR MORE' ;
  VALUE V77fffff  1='(1) NONE' 2='(2) ONE' 3='(3) TWO OR MORE' ;
  VALUE V78fffff  1='(1) NONE' 2='(2) ONE' 3='(3) TWO' 4='(4) THREE OR MORE' ;
  VALUE V79fffff  0='(0) NK-UNASCERTAIN' 1='(1) PATHOLOGY ABSENT'
                  2='(2) PATHOLOGY PRESEN' ;
  VALUE V80fffff  0='(0) NK-UNASCERTAIN' 1='(1) HEALTHY' 2='(2) UNHEALTHY'
                  3='(3) NOT APPLICABLE' ;
  VALUE V81fffff  0='(0) NK-UNASCERTAIN' 1='(1) NO ILL HEALTH' 2='(2) HEALTH POOR'
                  3='(3) NOT APPLICABLE' ;
  VALUE V82fffff  0='(0) NK-UNASCERTAIN' 1='(1) NORMAL' 2='(2) MARKEDLY UNHEALT' ;
  VALUE V83fffff  0='(0) NK-UNASCERTAIN' 1='(1) SATISFACTORY' 2='(2) VERY NEGLECTED' ;
  VALUE V84fffff  1='(1) TOLERABLE' 2='(2) VERY UNSATISFACT' ;
  VALUE V85fffff  0='(0) NK-UNASCERTAIN' 1='(1) ABSENT' 2='(2) PRESENT' ;
  VALUE V86fffff  0='(0) NK-UNASCERTAIN' 1='(1) NO SIGNIF ILLNES' 2='(2) SIGNIF ILLNESS'
                  3='(3) NOT APPLICABLE' ;
  VALUE V87fffff  0='(0) NK-UNASCERTAIN' 1='(1) NO ILL HEALTH' 2='(2) HEALTH POOR'
                  3='(3) NOT APPLICABLE' ;
  VALUE V88fffff  0='(0) NK-UNASCERTAIN' 1='(1) <=10TH PERCNTLE' 2='(2) 10.5-25TH PRCNTL'
                  3='(3) 25.5-50TH PRCNTL' 4='(4) 50.5-75TH PRCNTL'
                  5='(5) 75.5 PERCENTILE' ;
  VALUE V89fffff  0='(0) NK-UNASCERTAIN' 1='(1) NO INCONSISTENCY' 2='(2) INCONSISTENCY'
                  3='(3) NOT APPLICABLE' ;
  VALUE V90fffff  0='(0) NK-UNASCERTAIN' 1='(1) FATHER INTRSTD' 2='(2) FATHER NOT INTRS'
                  3='(3) NOT APPLICABLE' ;
  VALUE V91fffff  0='(0) NK-UNASCERTAIN' 1='(1) PARENTS VERY INT' 2='(2) PARENTS AVERAGE'
                  3='(3) PARENTS NOT INTR' ;
  VALUE V92fffff  1='(1) COMFORTABLE' 2='(2) ADEQUATE' 3='(3) INADEQUATE' ;
  VALUE V93fffff  1='(1) UP TO DEC 1961' 2='(2) 1-1962 TO 6-1983' 3='(3) 7-1962 TO 12-63'
                  4='(4) 1-1963 TO 6-1983' 5='(5) 7-1963 OR LATER' ;
  VALUE V94fffff  1='(1) FATHER SEPERATLY' 2='(2) FATHER AND MOTHR'
                  3='(3) FATHER NOT INTER' ;
  VALUE V95fffff  0='(0) NK-UNASCERTAIN' 1='(1) DOESNT WORK' 2='(2) <= 6 HRS A DAY'
                  3='(3) > 6 HRS A DAY' 4='(4) NOT APPLICABLE' ;
  VALUE V96fffff  0='(0) NK-UNASCERTAIN' 1='(1) ALWAYS STABLE' 2='(2) ERRATIC,NOW STAB'
                  3='(3) ALWAYS ERRATIC' 4='(4) NOT APPLICABLE' ;
  VALUE V97fffff  0='(0) NK-UNASCERTAIN' 1='(1) GOOD WORK RECORD'
                  2='(2) NOT GOOD WRK REC' 3='(3) NOT APPLICABLE' ;
  VALUE V98fffff  1='(1) LEGITIMATE' 2='(2) KNOWN-ILLEGIT' ;
  VALUE V99fffff  0='(0) NK-UNASCERTAIN' 1='(1) LOVING NORMAL' 2='(2) LOV ANX-LOV NEUR'
                  3='(3) OVERPROTECTIVE' 4='(4) CRUEL' 5='(5) PASSIVE' 6='(6) NEGLECTING'
                  7='(7) ABSENT OR DEAD' ;
  VALUE V100ffff  0='(0) NK-UNASCERTAIN' 1='(1) ECTOMORPH' 2='(2) WEIGHT = HEIGHT'
                  3='(3) ENDOMESOMORPH' ;
  VALUE V101ffff  0='(0) NK-UNASCERTAIN' 1='(1) NORMAL' 2='(2) RETARDED' ;
  VALUE V102ffff  0='(0) NK-UNASCERTAIN' 1='(1) NORMAL' 2='(2) SOMETIME BAD REL'
                  3='(3) NOT APPLICABLE' ;
  VALUE V103ffff  0='(0) NK-UNASCERTAIN' 1='(1) 101 OR ABOVE' 2='(2) 86 - 100'
                  3='(3) 77 - 85' 4='(4) 76 OR BELOW' ;
  VALUE V104ffff  0='(0) NK-UNASCERTAIN' 1='(1) SYMPTOM FREE' 2='(2) MINIMAL - NERVES'
                  3='(3) MODERATE' 4='(4) SEVERE' ;
  VALUE V105ffff  0='(0) NK-UNASCERTAIN' 1='(1) MANY FRIENDS' 2='(2) AVERAGE NUMBER'
                  3='(3) FEW OR NONE' ;
  VALUE V106ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO NERVOUS SYMPT'
                  2='(2) FATH MODERAT NRV' 3='(3) SEVERE NERV SYMP'
                  4='(4) NOT APPLICABLE' ;
  VALUE V107ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO SYMPTM REPORT'
                  2='(2) MOTH MODERAT NRV' 3='(3) MOTHER VERY NERV'
                  4='(4) NOT APPLICABLE' ;
  VALUE V108ffff  0='(0) NK-UNASCERTAIN' 1='(1) DISCIP RESISTANT' 2='(2) NORMALLY PLIANT'
                  3='(3) OVER-PLIANT' ;
  VALUE V109ffff  1='(1) NOT ONLY CHILD' 2='(2) ONLY CHILD' ;
  VALUE V110ffff  1='(1) NOT MIDDLE' 2='(2) MIDDLE' ;
  VALUE V111ffff  1='(1) NOT OLDEST' 2='(2) OLDEST' ;
  VALUE V112ffff  1='(1) NOT YOUNGEST' 2='(2) YOUNGEST' ;
  VALUE V113ffff  0='(0) NK-NO HOSP-UNAS' 1='(1) NO ABNORMALITY' 2='(2) ABNORMALITY' ;
  VALUE V114ffff  0='(0) NK-NO HOSP-UNAS' 1='(1) BIRTH WEIGHT AVE'
                  2='(2) VERY LO OR HIGH' ;
  VALUE V115ffff  0='(0) NK-NO HOSP-UNAS' 1='(1) NORMAL CONFNMNT'
                  2='(2) SOME ABNORMALITY' 3='(3) SEVERELY ABNORML' ;
  VALUE V116ffff  0='(0) NK-NO HOSP-UNAS' 1='(1) NORMAL PREGNANCY'
                  2='(2) SOME ABNORMALITY' 3='(3) SEVERELY ABNORML' ;
  VALUE V117ffff  0='(0) NK-UNASCERTAIN' 1='(1) AT EASE-OUTGOING' 2='(2) NORMAL'
                  3='(3) SHY-WITHDRAWN' ;
  VALUE V118ffff  0='(0) NK-UNASCERTAIN' 1='(1) WARM' 2='(2) PASSIVE' 3='(3) CRUEL'
                  4='(4) NEGLECTFUL' 5='(5) ABSENT' 6='(6) DEAD' ;
  VALUE V119ffff  1='(1) 111 OR ABOVE' 2='(2) 101-110' 3='(3) 91-100' 4='(4) 90 OR BELOW' ;
  VALUE V120ffff  0='(0) NK-UNASCERTAIN' 1='(1) 0-19' 2='(2) 20-34' 3='(3) 35-58'
                  4='(4) 59 OR ABOVE' ;
  VALUE V121ffff  0='(0) NK-UNASCERTAIN' 1='(1) 0-22' 2='(2) 23-35' 3='(3) 36-52'
                  4='(4) 53 OR ABOVE' ;
  VALUE V122ffff  0='(0) NK-UNASCERTAIN' 1='(1) 129 OR ABOVE' 2='(2) 122-128' 3='(3) 107-121'
                  4='(4) 106 OR BELOW' ;
  VALUE V123ffff  0='(0) NK-UNASCERTAIN' 1='(1) PHYS NEG ABSENT' 2='(2) PHYS NEG PRESENT' ;
  VALUE V124ffff  0='(0) NK-UNASCERTAIN' 1='(1) BOY PRAISED' 2='(2) BOY NOT PRAISED' ;
  VALUE V125ffff  0='(0) NK-UNASCERTAIN' 1='(1) POPULAR' 2='(2) AVERAGE POPULAR'
                  3='(3) AVERAGE UNPOPULR' 4='(4) UNPOPULAR' ;
  VALUE V126ffff  1='(1) SCHOOL 1' 2='(2) SCHOOL 2' 3='(3) SCHOOL 3' 4='(4) SCHOOL 4'
                  5='(5) SCHOOL 5' 6='(6) SCHOOL 6' 7='(7) SCHOOL 7' ;
  VALUE V127ffff  0='(0) NK-UNASCERTAIN' 1='(1) 0-1' 2='(2) 2' 3='(3) 3' 4='(4) 4' 5='(5) 5 OR ABOVE' ;
  VALUE V128ffff  1='(1) INTERVIEWER O' 2='(2) INTERVIEWER P' 3='(3) INTERVIEWER Q' ;
  VALUE V129ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO TREATMENT' 2='(2) TREATED'
                  3='(3) NOT APPLICABLE' ;
  VALUE V130ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOT TREATED' 2='(2) TREATED'
                  3='(3) NOT APPLICABLE' ;
  VALUE V131ffff  1='(1) BRITISH' 2='(2) NON-BRITISH' ;
  VALUE V132ffff  0='(0) NK-UNASCERTAIN' 1='(1) RIGID' 2='(2) AVERAGE' 3='(3) SLACK' ;
  VALUE V133ffff  1='(1) NOT SUPRTD FAMLY' 2='(2) SUPPORTED FAMILY' ;
  VALUE V134ffff  1='(1) NO BROKEN HOME' 2='(2) BROKN HOME-DEATH' 3='(3) BROKN HOME-OTH' ;
  VALUE V135ffff  0='(0) NK-UNASCERTAIN' 1='(1) MANY SOC CONTACT'
                  2='(2) AVE SOCIAL CONTC' 3='(3) FEW SOC CONTACTS'
                  4='(4) NOT APPLICABLE' ;
  VALUE V136ffff  0='(0) NK-UNASCERTAIN' 1='(1) MANY SOC CONTACT'
                  2='(2) AVE SOCIAL CONTC' 3='(3) FEW SOC CONTACTS'
                  4='(4) NOT APPLICABLE' ;
  VALUE V137ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO DISTURBANCE' 2='(2) DISTURBANCE'
                  3='(3) ONLY CHILD' ;
  VALUE V138ffff  1='(1) II NON-MANUAL' 2='(2) III NON-MANUAL' 3='(3) III MANUAL'
                  4='(4) IV NON-MANUAL' 5='(5) IV MANUAL' 6='(6) V MANUAL' ;
  VALUE V139ffff  1='(1) NO SEPARATION' 2='(2) DEATH-HOSPITALIZ' 3='(3) SEP DUE OTH REAS' ;
  VALUE V140ffff  1='(1) NO SEPARATION' 2='(2) DEATH-HOSPITALIZ' 3='(3) SEP DUE OTH REAS' ;
  VALUE V141ffff  1='(1) NO SEPARATIONS' 2='(2) DEATH-HOSPITALIZ'
                  3='(3) SEP DUE OTH REAS' ;
  VALUE V142ffff  1='(1) NONE' 2='(2) MODERATE' 3='(3) SEVERE' ;
  VALUE V143ffff  0='(0) NK-UNASCERTAIN' 1='(1) 96 OR BELOW' 2='(2) 97-102' 3='(3) 103-107'
                  4='(4) 108 OR ABOVE' ;
  VALUE V144ffff  1='(1) NO SEPARATIONS' 2='(2) DEATH-HOSPITALIZ'
                  3='(3) SEP DUE OTH REAS' ;
  VALUE V145ffff  1='(1) NO SEPARATIONS' 2='(2) DEATH-HOSPITALIZ'
                  3='(3) SEP DUE OTH REAS' ;
  VALUE V146ffff  1='(1) NO SEPARATIONS' 2='(2) DEATH-HOSPITALIZ'
                  3='(3) SEP DUE OTH REAS' ;
  VALUE V147ffff  0='(0) NK-UNASCERTAIN' 1='(1) 101-128' 2='(2) 89-100' 3='(3) 71-88' 4='(4) 70' ;
  VALUE V148ffff  1='(1) NO SEPARATION' 2='(2) DEATH-HOSPITALIZ' 3='(3) SEP DUE OTH REAS' ;
  VALUE V149ffff  1='(1) NO SEPARATION' 2='(2) DEATH-HOSPITALIZ' 3='(3) SEP DUE OTH REAS' ;
  VALUE V150ffff  1='(1) NO SEPARATION' 2='(2) DEATH-HOSPITALIZ' 3='(3) SEP DUE OTH REAS' ;
  VALUE V151ffff  1='(1) NO SEPARATION' 2='(2) DEATH-HOSPITALIZ' 3='(3) SEP DUE OTH REAS' ;
  VALUE V152ffff  1='(1) NO SEPARATION' 2='(2) DEATH-HOSPITALIZ' 3='(3) SEP DUE OTH REAS' ;
  VALUE V153ffff  1='(1) NO SEPARATION' 2='(2) DEATH-HOSPITALIZ' 3='(3) SEP DUE OTH REAS' ;
  VALUE V154ffff  1='(1) GOOD' 2='(2) AVERAGE' 3='(3) NAUGHTY' ;
  VALUE V155ffff  0='(0) NK-UNASCERTAIN' 1='(1) OK ATTENDANCE' 2='(2) TRUANCY-ABSENT' ;
  VALUE V156ffff  0='(0) NK-UNASCERTAIN' 1='(1) UNDER 2.5 INCHES'
                  2='(2) 2.5 - < 4.5 INCH' 3='(3) 4.5 - < 6.5 INCH' 4='(4) >=6.5 INCHES' ;
  VALUE V157ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOT RIGID' 2='(2) RIGID' ;
  VALUE V158ffff  0='(0) NK-UNASCERTAIN' 1='(1) 104 OR ABOVE' 2='(2) 94-103' 3='(3) 86-93'
                  4='(4) 85 OR BELOW' ;
  VALUE V159ffff  0='(0) NK-UNASCERTAIN' 1='(1) OVER VIGILANT' 2='(2) AVERAGE'
                  3='(3) UNDER VIGILANT' ;
  VALUE V160ffff  0='(0) NK-UNASCERTAIN' 1='(1) UP TO 25TH PRCNT'
                  2='(2) 25.5-50TH PERCNT' 3='(3) 50.5-75TH PERCNT'
                  4='(4) 75.5 PERCENTILE' ;
  VALUE V161ffff  74='(74) IQ126' 75='(75) IQ125' 126='(126) IQ74' ;
  VALUE V162ffff  0='(0) NK-UNASCERTAIN' 66='(66) MRQ134' 70='(70) MRQ130' 130='(130) MRQ70' ;
  VALUE V163ffff  0='(0) NK-UNASCERTAIN' 70='(70) VCQ130' 72='(72) VCQ128' 130='(130) VCQ70' ;
  VALUE V164ffff  0='(0) NK-UNASCERTAIN' 65='(65) TQ135' 66='(66) TQ134' 134='(134) TQ66' ;
  VALUE V165ffff  0='(0) NK-UNASCERTAIN' 1='(1) VERY HARD WORKER' 2='(2) HARD WORKER'
                  3='(3) AVERAGE WORKER' 4='(4) POOR WORKER' 5='(5) LAZY' ;
  VALUE V166ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES' 2='(2) NO' ;
  VALUE V167ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V168ffff  0='(0) NK-UNASCERTAIN' 1='(1) VERY CONCERNED' 2='(2) AVERAGE'
                  3='(3) DOES NOT CARE' ;
  VALUE V169ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V170ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V171ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOTICEABLY CLEAN' 2='(2) ABOUT AVERAGE'
                  3='(3) NOTICEABLY BELOW' ;
  VALUE V172ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOT DIFFICULT' 2='(2) DIFFIC TO DISCIP' ;
  VALUE V173ffff  0='(0) NK-UNASCERTAIN' 72='(72) SRQ128' 75='(75) SRQ125' 130='(130) SRQ130' ;
  VALUE V174ffff  23='(23) BORN AUGUST 1954' 24='(24) BORN JULY 1954'
                  57='(57) BORN OCT 1951' 58='(58) BORN SEPT 1951' ;
  VALUE V175ffff  0='(0) NK-UNASCERTAIN' 1='(1) BEST 40 PER CENT'
                  2='(2) NEXT 35 PER CENT' 3='(3) NEXT 15 PER CENT'
                  4='(4) WORST 10 PER CEN' ;
  VALUE V176ffff  0='(0) NOT TESTED' 1='(1) 10Y 4M-10Y 11M' 2='(2) 11Y 0M-11Y 3M'
                  3='(3) 11Y 4M-11Y 7M' 4='(4) 11Y 8M-OLDER' ;
  VALUE V177ffff  0='(0) NK-UNASCERTAIN' 1='(1) BEST 40 PER CENT'
                  2='(2) NEXT 20 PER CENT' 3='(3) NEXT 30 PER CENT'
                  4='(4) WORST 10 PER CEN' ;
  VALUE V178ffff  0='(0) NK-UNASCERTAIN' 1='(1) GOOD' 2='(2) GOOD AVERAGE'
                  3='(3) POOR AVERAGE' 4='(4) POOR' ;
  VALUE V179ffff  0='(0) NK-UNASCERTAIN' 1='(1) GOOD' 2='(2) GOOD AVERAGE'
                  3='(3) POOR AVERAGE' 4='(4) POOR' ;
  VALUE V180ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) LOW AVERAGE' 3='(3) HIGH AVERAGE'
                  4='(4) HIGH' ;
  VALUE V181ffff  0='(0) NK-UNASCERTAIN' 1='(1) BEST 40 PER CENT'
                  2='(2) NEXT 35 PER CENT' 3='(3) WORST 25 PER CEN' ;
  VALUE V182ffff  0='(0) NK-UNASCERTAIN' 1='(1) OFTEN' 2='(2) AVERAGE' 3='(3) SELDOM' ;
  VALUE V183ffff  0='(0) NK-UNASCERTAIN' 1='(1) MOSTLY' 2='(2) SOMETIMES-RARE' ;
  VALUE V184ffff  0='(0) NK-UNASCERTAIN' 1='(1) HOLIDAY >=1WEEK' 2='(2) NO SUCH HOLIDAY' ;
  VALUE V185ffff  0='(0) NK-UNASCERTAIN' 1='(1) REGULARLY' 2='(2) SOMETIMES' 3='(3) RARELY'
                  4='(4) NEVER' ;
  VALUE V186ffff  0='(0) NK-UNASCERTAIN' 1='(1) ALL YEAR ROUND' 2='(2) WINTER ONLY'
                  3='(3) NONE OF THE YEAR' ;
  VALUE V187ffff  0='(0) NK-UNASCERTAIN' 1='(1) RARELY' 2='(2) SOMETIMES' 3='(3) MOSTLY' ;
  VALUE V188ffff  0='(0) NK-UNASCERTAIN' 1='(1) HOLIDAY >=1WEEK' 2='(2) NO SUCH HOLIDAY' ;
  VALUE V189ffff  0='(0) NK-UNASCERTAIN' 1='(1) GOOD' 2='(2) GOOD AVERAGE'
                  3='(3) POOR AVERAGE' 4='(4) POOR' ;
  VALUE V190ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO SIBS W/PROBS' 2='(2) 1 SIB WITH PROBS'
                  3='(3) >= 2 SIBS W/PROB' 4='(4) NOT APPLICABLE' ;
  VALUE V191ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO SIBS W/PROBS' 2='(2) 1 SIB MIN PROBS'
                  3='(3) >=2 SIBS MIN PRB' 4='(4) NOT APPLICABLE' ;
  VALUE V192ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO SIBS W/PROBS' 2='(2) 1 SIB SEVERE PRB'
                  3='(3) >= 2 SIBS SEV PR' 4='(4) NOT APPLICABLE' ;
  VALUE V193ffff  0='(0) NK-UNASCERTAIN' 1='(1) <=.1, INC NEGATV' 2='(2) .2 - .5'
                  3='(3) .6 - .7' 4='(4) .8 OR ABOVE' ;
  VALUE V194ffff  0='(0) NK-UNASCERTAIN' 1='(1) NONE' 2='(2) MINIMAL' 3='(3) MODERATE'
                  4='(4) SEVERE' ;
  VALUE V195ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) LOW AVERAGE' 3='(3) HIGH AVERAGE'
                  4='(4) HIGH' ;
  VALUE V196ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) LOW AVERAGE' 3='(3) HIGH AVERAGE'
                  4='(4) HIGH' ;
  VALUE V197ffff  0='(0) NK-UNASCERTAIN' 1='(1) WEAK' 2='(2) LOW AVERAGE'
                  3='(3) HIGH AVERAGE' 4='(4) STRONG' ;
  VALUE V198ffff  0='(0) NK-UNASCERTAIN' 1='(1) BEYND SCH AGE' 2='(2) NEITHER' ;
  VALUE V199ffff  0='(0) NK-UNASCERTAIN' 1='(1) BEYND SCH AGE' 2='(2) NEITHER' ;
  VALUE V200ffff  0='(0) NK-UNASCERTAIN' 1='(1) SMALL' 2='(2) LOW AVERAGE'
                  3='(3) HIGH AVERAGE' 4='(4) LARGE' ;
  VALUE V201ffff  0='(0) NK-UNASCERTAIN' 1='(1) 5 YRS OLD-NEWER' 2='(2) OVER 5 YEARS OLD' ;
  VALUE V202ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOT NEGLECTED' 2='(2) NEGLECTED' ;
  VALUE V203ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V204ffff  0='(0) NK-UNASCERTAIN' 1='(1) FIXED BATH H20' 2='(2) NO FIXED BATH' ;
  VALUE V205ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO ILLNESS' 2='(2) TRIVIAL (13)'
                  3='(3) MILD (27)' 4='(4) SEVERE (37)' 5='(5) NOT APPLICABLE' ;
  VALUE V206ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO SYMPTOMS' 2='(2) TRIVIAL' 3='(3) MILD'
                  4='(4) SEVERE' 5='(5) NOT APPLICABLE' ;
  VALUE V207ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO ILLNESS' 2='(2) TRIVIAL' 3='(3) MILD'
                  4='(4) SEVERE' 5='(5) NOT APPLICABLE' ;
  VALUE V208ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO SYMPTOMS' 2='(2) TRIVIAL' 3='(3) MILD'
                  4='(4) SEVERE' 5='(5) NOT APPLICABLE' ;
  VALUE V209ffff  0='(0) NK-UNASCERTAIN' 1='(1) 6 OR MORE' 2='(2) 5' 3='(3) 4' 4='(4) 1-3' ;
  VALUE V210ffff  0='(0) NK-UNASCERTAIN' 1='(1) <=17TH PERCNTILE'
                  2='(2) 17.5-37.5 PERCNT' 3='(3) 37.5-62.5 PERCNT'
                  4='(4) >=62.5 PRCNTILE' ;
  VALUE V211ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELF-CONTAINED' 2='(2) NOT SELF-CONTAIN' ;
  VALUE V212ffff  0='(0) NK-UNASCERTAIN' 1='(1) BLDG W/ >=4 UNTS' 2='(2) IN HOUSE' ;
  VALUE V213ffff  0='(0) NK-UNASCERTAIN' 1='(1) NONE' 2='(2) MINIMAL-SEVERE' ;
  VALUE V214ffff  0='(0) NK-UNASCERTAIN' 1='(1) 5 POUNDS OVER' 2='(2) 2 PNDS 10 <5 PND'
                  3='(3) UNDER 2 PNDS 10' 4='(4) NOTHING - INAP' ;
  VALUE V215ffff  1='(1) NONE' 2='(2) ONE' 3='(3) TWO OR MORE' ;
  VALUE V216ffff  0='(0) NK-UNASCERTAIN' 1='(1) 25 POUNDS OVER' 2='(2) 20 POUNDS < 25'
                  3='(3) 15 POUNDS < 20' 4='(4) UNDER 15 POUNDS' 5='(5) NO OPERATVE FATH' ;
  VALUE V217ffff  0='(0) NK-UNASCERTAIN' 1='(1) 10 POUNDS - OVER' 2='(2) 7 POUNDS 10 <10'
                  3='(3) 5 POUNDS <7 10' 4='(4) 2 POUNDS 10 <5' 5='(5) UNDR 2 POUNDS 10'
                  6='(6) NOTHING' 7='(7) NO OPERATVE MOTH' ;
  VALUE V218ffff  0='(0) NK-UNASCERTAIN' 1='(1) 0 SIBS W/ILLNESS'
                  2='(2) >=1 SIB W/ILLNSS' 3='(3) NA-NO OPRTV MOTH' ;
  VALUE V219ffff  0='(0) NK-UNASCERTAIN' 1='(1) 0 SIBS W/MIN ILL'
                  2='(2) >=1 SUCH SIBLING' 3='(3) NOT APPLICABLE' ;
  VALUE V220ffff  0='(0) NK-UNASCERTAIN' 1='(1) 0 SIBS W/SEVR ILL'
                  2='(2) >=1 SUCH SIBLING' 3='(3) NOT APPLICABLE' ;
  VALUE V221ffff  1='(1) MOTHER ALONE' 2='(2) MOTHR FATHR ALON' 3='(3) MOTH CHILD OTHRS'
                  4='(4) MOTHR FATHR CHLD' 5='(5) FATH ALON W/CHLD'
                  6='(6) OTH-NOT APPLICBL' ;
  VALUE V222ffff  0='(0) NK-UNASCERTAIN' 1='(1) HIGH' 2='(2) HIGH AVERAGE'
                  3='(3) LOW AVERAGE' 4='(4) LOW' ;
  VALUE V223ffff  0='(0) NK-UNASCERTAIN' 1='(1) FULL-TIME' 2='(2) PART-TIME' 3='(3) NO JOB'
                  4='(4) NOT APPLICABLE' ;
  VALUE V224ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO CHNGE OF FIRM' 2='(2) CHANGE OF FIRM'
                  3='(3) UNEMPLOYED' 4='(4) NOT APPLICABLE' ;
  VALUE V225ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO CHNGE OF FIRM' 2='(2) CHANGE OF FIRM'
                  3='(3) NA-NO JOB' ;
  VALUE V226ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) LOW AVERAGE' 3='(3) HIGH AVERAGE'
                  4='(4) HIGH' ;
  VALUE V227ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOVING NORMAL' 2='(2) LOV ANX-NEUROTIC'
                  3='(3) OVERPROTECTIVE' 4='(4) CRUEL' 5='(5) PASSIVE-NEGLECT'
                  6='(6) ABSENT OR DEAD' ;
  VALUE V228ffff  0='(0) NK-UNASCERTAIN' 1='(1) ECTOMORPH' 2='(2) WEIGHT=HEIGHT'
                  3='(3) ENDOMESOMORPH' ;
  VALUE V229ffff  0='(0) NK-UNASCERTAIN' 1='(1) ECTO BOTH AGES' 2='(2) ECT 1 AGE-AV OTH'
                  3='(3) OTHER' 4='(4) ENDO BOTH AGES' ;
  VALUE V230ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOT MESOMORPH' 2='(2) MESOMORPH' ;
  VALUE V231ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) LOW AVERAGE' 3='(3) HIGH AVERAGE'
                  4='(4) HIGH' ;
  VALUE V232ffff  0='(0) NK-UNASCERTAIN' 1='(1) >=19 - HIGH' 2='(2) 17-18' 3='(3) 15-16'
                  4='(4) <=14 - LOW' ;
  VALUE V233ffff  0='(0) NK-UNASCERTAIN' 1='(1) NONE' 2='(2) ONE OR MORE' ;
  VALUE V234ffff  0='(0) NK-UNASCERTAIN' 1='(1) GOOD' 2='(2) SATISFACTORY' 3='(3) BAD'
                  4='(4) NA-NO CUR MARR' ;
  VALUE V235ffff  0='(0) NK-UNASCERTAIN' 1='(1) <=.1, INC NEGATV' 2='(2) .2 - .5'
                  3='(3) .6 OR GREATER' ;
  VALUE V236ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOT RECEIV ASST' 2='(2) RECEIV NATL ASST' ;
  VALUE V237ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) LOW AVERAGE' 3='(3) HIGH AVERAGE'
                  4='(4) HIGH' ;
  VALUE V238ffff  0='(0) NK-UNASCERTAIN' 1='(1) NONE' 2='(2) MINIMAL' 3='(3) MODERATE-SEVERE' ;
  VALUE V239ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO SIBS W/NRV DST'
                  2='(2) >=1 SIBLING W/NRV' 3='(3) NA-NO SIBLINGS' ;
  VALUE V240ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO SIBS W/MIN DST'
                  2='(2) >=1 SIBLING W/NRV' 3='(3) NOT APPLICABLE' ;
  VALUE V241ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO SIB W/SVR NRV'
                  2='(2) >=1 SIBLING W/SVR' 3='(3) NOT APPLICABLE' ;
  VALUE V242ffff  0='(0) NK-UNASCERTAIN' 1='(1) NORMAL' 2='(2) MODERATLY NERVOUS'
                  3='(3) NERVOUS' ;
  VALUE V243ffff  0='(0) NK-UNASCERTAIN' 1='(1) 7 OR LESS' 2='(2) 8-9' 3='(3) 10-11'
                  4='(4) 12 OR MORE' ;
  VALUE V244ffff  0='(0) NK-UNASCERTAIN' 1='(1) 4 OR LESS' 2='(2) 5-7' 3='(3) 8-10'
                  4='(4) 11 OR MORE' ;
  VALUE V245ffff  0='(0) NK-UNASCERTAIN' 1='(1) 3 OR LESS' 2='(2) 4-5' 3='(3) 6-7'
                  4='(4) 8 OR MORE' ;
  VALUE V246ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEUROTIC INTRVRT'
                  2='(2) STABLE INTROVERT' 3='(3) NEUROTIC EXTRVRT'
                  4='(4) STABLE EXTRAVERT' ;
  VALUE V247ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) LOW AVERAGE' 3='(3) HIGH AVERAGE'
                  4='(4) HIGH' ;
  VALUE V248ffff  0='(0) NK-UNASCERTAIN' 1='(1) WARM' 2='(2) PASSIVE' 3='(3) CRUEL'
                  4='(4) NEGLECTFUL' 5='(5) ABSENT' 6='(6) DEAD' ;
  VALUE V249ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) LOW AVERAGE' 3='(3) HIGH AVERAGE'
                  4='(4) HIGH' ;
  VALUE V250ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) LOW AVERAGE' 3='(3) HIGH AVERAGE'
                  4='(4) HIGH' ;
  VALUE V251ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) LOW AVERAGE' 3='(3) HIGH AVERAGE'
                  4='(4) HIGH' ;
  VALUE V252ffff  1='(1) LOW' 2='(2) LOW AVERAGE' 3='(3) HIGH AVERAGE' 4='(4) HIGH' ;
  VALUE V253ffff  0='(0) NK-UNASCERTAIN' 1='(1) 8 OR LESS' 2='(2) 9-11' 3='(3) 12-15'
                  4='(4) 16 OR MORE' ;
  VALUE V254ffff  1='(1) HIGH <= 110' 2='(2) HIGH AVE 99-109' 3='(3) LOW AVE 91-98'
                  4='(4) LOW >= 90' ;
  VALUE V255ffff  0='(0) NK-UNASCERTAIN' 1='(1) 111 OR MORE' 2='(2) 101-110' 3='(3) 91-100'
                  4='(4) 90 OR LESS' ;
  VALUE V256ffff  1='(1) LOW CLUMSINESS' 2='(2) LOW AVERAGE' 3='(3) HIGH AVERAGE'
                  4='(4) HIGH CLUMSINESS' ;
  VALUE V257ffff  0='(0) NK-UNASCERTAIN' 1='(1) 9 OR LESS' 2='(2) 10-12' 3='(3) 13-15'
                  4='(4) 16 OR MORE' ;
  VALUE V258ffff  0='(0) NK-UNASCERTAIN' 1='(1) >=17 MST CLEVER' 2='(2) 12-16' 3='(3) 8-11'
                  4='(4) <=7-LST CLEVER' ;
  VALUE V259ffff  0='(0) NK-UNASCERTAIN' 1='(1) <=6-LST DARING' 2='(2) 7-10' 3='(3) 11-15'
                  4='(4) >=16-MST DARNG' ;
  VALUE V260ffff  0='(0) NK-UNASCERTAIN' 1='(1) >=17-MST HONEST' 2='(2) 12-16' 3='(3) 7-11'
                  4='(4) <=6-LST HONEST' ;
  VALUE V261ffff  0='(0) NK-UNASCERTAIN' 1='(1) <=6-LST IDEAL' 2='(2) 7-11' 3='(3) 12-16'
                  4='(4) >=17-MST IDEAL' ;
  VALUE V262ffff  0='(0) NK-UNASCERTAIN' 1='(1) =<6-LST LIKE SLF' 2='(2) 7-11' 3='(3) 12-16'
                  4='(4) >=17-MST LKE SLF' ;
  VALUE V263ffff  0='(0) NK-UNASCERTAIN' 1='(1) >=17-MOST POPULR' 2='(2) 12-16' 3='(3) 7-11'
                  4='(4) <=6-LST POPULR' ;
  VALUE V264ffff  0='(0) NK-UNASCERTAIN' 1='(1) HIGH' 2='(2) HIGH AVERAGE'
                  3='(3) LOW AVERAGE' 4='(4) LOW' ;
  VALUE V265ffff  0='(0) NK-UNASCERTAIN' 1='(1) <=7-LEAST TROUB' 2='(2) 8-11' 3='(3) 12-16'
                  4='(4) >=17-MST TROUB' ;
  VALUE V266ffff  1='(1) INTERVIEWER P' 2='(2) INTERVIEWER R' 3='(3) INTERVIEWER S' ;
  VALUE V267ffff  1='(1) NO' 2='(2) YES' ;
  VALUE V268ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V269ffff  0='(0) NK-UNASCERTAIN' 1='(1) MORE THAN NORMAL' 2='(2) NORMAL'
                  3='(3) FEWER THAN NORML' 4='(4) NOT APPLICABLE' ;
  VALUE V270ffff  0='(0) NK-UNASCERTAIN' 1='(1) MORE THAN NORMAL' 2='(2) NORMAL'
                  3='(3) FEWER THAN NORML' 4='(4) NOT APPLICABLE' ;
  VALUE V271ffff  1='(1) II NON-MANUAL' 2='(2) III NON-MANUAL' 3='(3) III MANUAL'
                  4='(4) IV NON-MANUAL' 5='(5) IV MANUAL' 6='(6) V MANUAL' ;
  VALUE V272ffff  1='(1) II NON-MANUAL' 2='(2) III NON-MANUAL' 3='(3) III MANUAL'
                  4='(4) IV NON-MANUAL' 5='(5) IV MANUAL' 6='(6) V MANUAL' ;
  VALUE V273ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) LOW AVERAGE' 3='(3) HIGH AVERAGE'
                  4='(4) HIGH' ;
  VALUE V274ffff  0='(0) NK-UNASCERTAIN' 1='(1) GOOD' 2='(2) AVERAGE' 3='(3) POOR' ;
  VALUE V275ffff  0='(0) NK-UNASCERTAIN' 1='(1) DOES NOT SHARE' 2='(2) SHARE RM W/BROTH'
                  3='(3) SHARE RM W/SISTR' 4='(4) SHARE RM,PAR-SIB' ;
  VALUE V276ffff  1='(1) GRAMR,TOP STREAM' 2='(2) 2ND STREAM COMPR'
                  3='(3) NEXT STRMS COMPR' 4='(4) BOTTOM STRMS COM'
                  5='(5) SPECIAL SCHOOLS' ;
  VALUE V277ffff  1='(1) LOW' 2='(2) LOW AVERAGE' 3='(3) HIGH AVERAGE' 4='(4) HIGH' ;
  VALUE V278ffff  1='(1) 25TH PERCENTILE' 2='(2) 26TH-75TH PERCNT'
                  3='(3) 76TH PERCENTILE' 4='(4) EXTREME RAW SCOR' ;
  VALUE V279ffff  1='(1) GOOD BEHAVIOR' 2='(2) GOOD AVERAGE' 3='(3) AVERAGE'
                  4='(4) BAD AVERAGE' 5='(5) BAD BEHAVIOR' ;
  VALUE V280ffff  0='(0) NK-UNASCERTAIN' 1='(1) REGULAR ATTENDNC' 2='(2) FAIR REGULARITY'
                  3='(3) LOTS OF ABSCENCE' 4='(4) POOR ATTENDANCE' ;
  VALUE V281ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) LOW AVERAGE' 3='(3) HIGH AVERAGE'
                  4='(4) HIGH' ;
  VALUE V282ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) LOW AVERAGE' 3='(3) HIGH AVERAGE'
                  4='(4) HIGH' ;
  VALUE V283ffff  0='(0) NK-UNASCERTAIN' 1='(1) HIGH' 2='(2) HIGH AVERAGE'
                  3='(3) LOW AVERAGE' 4='(4) LOW' ;
  VALUE V284ffff  0='(0) NK-UNASCERTAIN' 1='(1) 25TH PERCENTILE' 2='(2) 25.5-50TH PERCNT'
                  3='(3) 50.5-75TH PERCNT' 4='(4) 75.5 PERCENTILE' ;
  VALUE V285ffff  0='(0) NK-UNASCERTAIN' 1='(1) L0' 2='(2) L1' 18='(18) L17' ;
  VALUE V286ffff  0='(0) NK-UNASCERTAIN' 1='(1) E1' 2='(2) E2' 3='(3) E3' 17='(17) E17' ;
  VALUE V287ffff  0='(0) NK-UNASCERTAIN' 1='(1) N0' 2='(2) N1' 16='(16) N15' ;
  VALUE V288ffff  0='(0) NK-UNASCERTAIN' 71='(71) IQ129' 72='(72) IQ128' 125='(125) IQ75' ;
  VALUE V289ffff  0='(0) NK-UNASCERTAIN' 1='(1) VERY HARD WORKER' 2='(2) HARD WORKER'
                  3='(3) AVERAGE WORKER' 4='(4) POOR WORKER' 5='(5) LAZY' ;
  VALUE V290ffff  0='(0) NK-UNASCERTAIN' 1='(1) GOOD' 2='(2) AVERAGE' 3='(3) POOR' ;
  VALUE V291ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES' 2='(2) NO' ;
  VALUE V292ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V293ffff  0='(0) NK-UNASCERTAIN' 1='(1) VERY CONCERNED' 2='(2) AVERAGE'
                  3='(3) DOESNT CARE' ;
  VALUE V294ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V295ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V296ffff  0='(0) NK-UNASCERTAIN' 1='(1) CLEAN AND TIDY' 2='(2) ABOUT AVERAGE'
                  3='(3) BELOW AVERAGE' ;
  VALUE V297ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOT DIFFICULT' 2='(2) DIFF TO DISCIP' ;
  VALUE V298ffff  73='(73) IQ127' 74='(74) IQ126' 125='(125) IQ75' ;
  VALUE V299ffff  1='(1) SCH BOYS COMPREH' 2='(2) SCH B BOYS COMPR'
                  3='(3) SCH C BOYS COMPR' 4='(4) SCH D COED COMPR'
                  5='(5) SCH E BOYS COMPR' 6='(6) SCH F COED COMPR'
                  7='(7) SCH G COED COMPR' 8='(8) SCH H BOYS GRAMR'
                  9='(9) SCH BOYS SEC MOD' 10='(10) SCH J BOYS SEC M'
                  11='(11) TYPE A SCHOOLS' 12='(12) OTHER GRAMMAR' 13='(13) SPECIAL SCHOOLS'
                  14='(14) OTH COMPREHENSIV' 15='(15) OTH SECONDARY MO' 16='(16) ABROAD'
                  17='(17) SCHOOL K BOYS GR' 18='(18) SCHOOL L BOYS CO'
                  19='(19) SCH COED SEC M' ;
  VALUE V300ffff  1='(1) NO OPER PARNT CNV' 2='(2) PARENT CONV-JUV'
                  3='(3) PAR CONVICTED 1X' 4='(4) P CONV 2X ADULT'
                  5='(5) P CONV 3X ADULT' 6='(6) P CONV >3 TIMES' ;
  VALUE V301ffff  1='(1) NO OLDR SIB CONV' 2='(2) OLDR SIBLNG CONV' ;
  VALUE V302ffff  0='(0) NK-UNASCERTAIN' 1='(1) REGULAR ATTENDEE' 2='(2) ABSNT,ILNES,INJ'
                  3='(3) ABSNT,LAX PARENT' 4='(4) TRUANTS' ;
  VALUE V303ffff  1='(1) NOT POOR' 2='(2) POOR' ;
  VALUE V304ffff  0='(0) NK-UNASCERTAIN' 1='(1) DOES NOT WORK' 2='(2) PART-TIME JOB'
                  3='(3) FULL-TIME JOB' ;
  VALUE V305ffff  0='(0) NK-UNASCERTAIN' 1='(1) STABLE' 2='(2) JOB CHANGES'
                  3='(3) ERRATIC-UNEMPL' ;
  VALUE V306ffff  0='(0) NK-UNASCERTAIN' 1='(1) SMALL' 2='(2) LOW AVERAGE'
                  3='(3) HIGH AVERAGE' 4='(4) TALL' ;
  VALUE V307ffff  0='(0) NK-UNASCERTAIN' 1='(1) GOOD' 2='(2) AVERAGE' 3='(3) BAD' ;
  VALUE V308ffff  1='(1) II' 2='(2) III' 3='(3) IV' 4='(4) V' ;
  VALUE V309ffff  0='(0) NK-UNASCERTAIN' 1='(1) LIGHT' 2='(2) LOW AVERAGE'
                  3='(3) HIGH AVERAGE' 4='(4) HEAVY' ;
  VALUE V310ffff  0='(0) NK-UNASCERTAIN' 1='(1) HIGH' 2='(2) HIGH AVERAGE'
                  3='(3) LOW AVERAGE' 4='(4) LOW' ;
  VALUE V311ffff  0='(0) NK-UNASCERTAIN' 1='(1) TOP QUARTER' 2='(2) MIDDLE HALF'
                  3='(3) BOTTOM QUARTER' ;
  VALUE V312ffff  0='(0) NK-UNASCERTAIN' 1='(1) VERY MUCH ABOVE' 2='(2) LITTLE ABOVE AVE'
                  3='(3) AVERAGE FOR AGE' 4='(4) RATHER BELOW AVE'
                  5='(5) VERY POOR FR AGE' ;
  VALUE V313ffff  0='(0) NK-UNASCERTAIN' 1='(1) SOMETIMES LATE' 2='(2) PERSISTNTLY LATE'
                  9='(9) NEVER W/O REASON' ;
  VALUE V314ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES, OCCASIONLLY' 2='(2) YES, FREQUENTLY'
                  9='(9) NEVER' ;
  VALUE V315ffff  0='(0) NK-UNASCERTAIN' 1='(1) VERY CONCERNED' 2='(2) ABOUT AVERAGE'
                  3='(3) DOESNT CARE' ;
  VALUE V316ffff  0='(0) NK-UNASCERTAIN' 1='(1) CLEAN AND TIDY' 2='(2) ABOUT AVERAGE'
                  3='(3) BELOW AVERAGE' ;
  VALUE V317ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER TIRED' 2='(2) NORMALLY ENRGTC'
                  3='(3) ALWAYS TIRED' ;
  VALUE V318ffff  0='(0) NK-UNASCERTAIN' 1='(1) VERY HARD WORKER'
                  2='(2) AVE-WRK MOD WELL' 3='(3) POOR WORKER,LAZY' ;
  VALUE V319ffff  0='(0) NK-UNASCERTAIN' 1='(1) HIGH CONCENTRATN'
                  2='(2) AVE CONCENTRATON' 3='(3) LITTLE-NO CONCEN' ;
  VALUE V320ffff  0='(0) NK-UNASCERTAIN' 1='(1) EXTREMELY NEAT' 2='(2) AVERAGE-MODERATE'
                  3='(3) VERY UNTIDY' ;
  VALUE V321ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELDOM-NEVER DIS'
                  2='(2) SOMETIME DISOBED' 3='(3) FREQUENT DISOBED' ;
  VALUE V322ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELDM-NEVR DIFF' 2='(2) SOMETIMES DIFF'
                  3='(3) FREQNTLY DIFFCLT' ;
  VALUE V323ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELDOM-NVR RSTLS'
                  2='(2) SOMETIMES RSTLSS' 3='(3) FREQNTLY RESTLSS' ;
  VALUE V324ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELDOM-NVR DAYDR'
                  2='(2) SOMETIMES DAYDRM' 3='(3) FREQNTLY DAYDRMS' ;
  VALUE V325ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELDOM-NVR CRIBS' 2='(2) SOMETIMES CRIBS'
                  3='(3) FREQUENTLY CRIBS' ;
  VALUE V326ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELDM-NVR EVADES'
                  2='(2) SOMETIMES EVADES' 3='(3) FREQNTLY EVADES' ;
  VALUE V327ffff  0='(0) NK-UNASCERTAIN' 1='(1) VERY POPULAR' 2='(2) AVE POPULARITY'
                  3='(3) TENDS TO BE IGNR' ;
  VALUE V328ffff  0='(0) NK-UNASCERTAIN' 1='(1) COULD GET ROUGH' 2='(2) TAKES NORML PART'
                  3='(3) RATHR FRIGHTENED' ;
  VALUE V329ffff  0='(0) NK-UNASCERTAIN' 1='(1) AVOIDS ATTENTION' 2='(2) DOES NOT UNDULY'
                  3='(3) SHOWS OFF-SEEKS' ;
  VALUE V330ffff  0='(0) NK-UNASCERTAIN' 1='(1) A DARE-DEVIL' 2='(2) CAUTIOUS AVERAGE'
                  3='(3) EXTREMELY FEARFL' ;
  VALUE V331ffff  0='(0) NK-UNASCERTAIN' 1='(1) OVER-COMPETITIVE' 2='(2) NORMALLY COMPET'
                  3='(3) DIFFIDENT' ;
  VALUE V332ffff  0='(0) NK-UNASCERTAIN' 1='(1) UNUSUALLY HAPPY' 2='(2) GENRLLY CHEERFUL'
                  3='(3) USUALLY GLOOMY' ;
  VALUE V333ffff  0='(0) NK-UNASCERTAIN' 1='(1) QUARRELSOME AGGR'
                  2='(2) AVE-NOT QUARRLSM' 3='(3) A TIMID CHILD' ;
  VALUE V334ffff  0='(0) NK-UNASCERTAIN' 1='(1) MAKE FRIEND EASY'
                  2='(2) TAKES USUAL TIME' 3='(3) CANNOT MKE FRNDS' ;
  VALUE V335ffff  0='(0) NK-UNASCERTAIN' 1='(1) SOMEWHAT ANXIOUS' 2='(2) VERY ANXIOUS'
                  9='(9) NOT ANXIOUS' ;
  VALUE V336ffff  0='(0) NK-UNASCERTAIN' 1='(1) GETS RESENTFUL' 2='(2) WORRIES,MISERABL'
                  3='(3) NORMAL ATTITUDE' ;
  VALUE V337ffff  0='(0) NK-UNASCERTAIN' 16='(16) 16 PER CENT' 21='(21) 21 PER CENT'
                  98='(98) 98 PER CENT' 99='(99) 99-100 PER CENT' ;
  VALUE V338ffff  0='(0) NONE GIVEN' 1='(1) HEALTH' 2='(2) PARENTS-HOLIDAY'
                  3='(3) TROUBLE AT HOME' 4='(4) PARENTAL UNCNCRN' 5='(5) SCHOOL REFUSAL'
                  6='(6) TRUANCY' 7='(7) HEALTH TRUANCY' 8='(8) HEALTH-HOLIDAY' ;
  VALUE V339ffff  0='(0) NK-UNASCERTAIN' 1='(1) TOP QUARTER' 2='(2) MIDDLE HALF'
                  3='(3) BOTTOM QUARTER' ;
  VALUE V340ffff  0='(0) NK-UNASCERTAIN' 1='(1) VERY MUCH ABOVE' 2='(2) LITTLE ABOVE AVE'
                  3='(3) AVERAGE FOR AGE' 4='(4) RATHER BELOW AVE'
                  5='(5) VRY POOR FOR AGE' ;
  VALUE V341ffff  0='(0) NK-UNASCERTAIN' 1='(1) SOMETIMES LATE' 2='(2) PERSISTNTLY LATE'
                  9='(9) NEVER W/O REASON' ;
  VALUE V342ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES, OCCASIONLLY' 2='(2) YES, FREQUENTLY'
                  9='(9) NEVER' ;
  VALUE V343ffff  0='(0) NK-UNASCERTAIN' 1='(1) VERY CONCERNED' 2='(2) ABOUT AVERAGE'
                  3='(3) JUST DOESNT CARE' ;
  VALUE V344ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOTICEABLY CLEAN' 2='(2) ABOUT AVERAGE'
                  3='(3) NOTICEABLY BELOW' ;
  VALUE V345ffff  0='(0) NK-UNASCERTAIN' 1='(1) EXTREMELY ENRGTC'
                  2='(2) NORMALLY ENERGTC' 3='(3) ALWAYS TIRED' ;
  VALUE V346ffff  0='(0) NK-UNASCERTAIN' 1='(1) VERY HARD WORKER'
                  2='(2) AVE-WRK MOD WELL' 3='(3) POOR WORKER-LAZY' ;
  VALUE V347ffff  0='(0) NK-UNASCERTAIN' 1='(1) HIGH CONCENTRATN'
                  2='(2) AVERAGE-CONCNTRN' 3='(3) LITTLE CONCNTRTN' ;
  VALUE V348ffff  0='(0) NK-UNASCERTAIN' 1='(1) EXTREMELY NEAT' 2='(2) AVERAGE-MODERATE'
                  3='(3) VERY UNTIDY' ;
  VALUE V349ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELDOM-NEVER DIS'
                  2='(2) SOMETIME DISOBED' 3='(3) FREQUENT DISOBED' ;
  VALUE V350ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELDOM-NEVER DIF'
                  2='(2) SOMETIMES DIFFCT' 3='(3) FREQNTLY DIFFCLT' ;
  VALUE V351ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELDOM-NVR RSTLS'
                  2='(2) SOMETIMES RESTLS' 3='(3) FREQUENT RESTLSS' ;
  VALUE V352ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELDOM-NVR DAYDR'
                  2='(2) SOMETIMES DAYDRM' 3='(3) FREQNTLY DAYDRMS' ;
  VALUE V353ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELDOM-NVR CRIBS' 2='(2) SOMETIMES CRIBS'
                  3='(3) FREQUENTLY CRIBS' ;
  VALUE V354ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELDOM-NVR EVADE'
                  2='(2) SOMETIMES EVADES' 3='(3) FREQNTLY EVADES' ;
  VALUE V355ffff  0='(0) NK-UNASCERTAIN' 1='(1) VERY POPULAR' 2='(2) AVE POPULARITY'
                  3='(3) TENDS TO BE IGNR' ;
  VALUE V356ffff  0='(0) NK-UNASCERTAIN' 1='(1) COULD GET ROUGH' 2='(2) TAKES NORML PART'
                  3='(3) RATHR FRIGHTENED' ;
  VALUE V357ffff  0='(0) NK-UNASCERTAIN' 1='(1) AVOIDS ATTENTION' 2='(2) DOES NOT UNDULY'
                  3='(3) SHOWS OFF-SEEKS' ;
  VALUE V358ffff  0='(0) NK-UNASCERTAIN' 1='(1) A DARE-DEVIL' 2='(2) CAUTIOUS AVERAGE'
                  3='(3) EXTREMELY FEARFL' ;
  VALUE V359ffff  0='(0) NK-UNASCERTAIN' 1='(1) OVER-COMPETITIVE' 2='(2) NORMALLY COMPET'
                  3='(3) DIFFIDENT' ;
  VALUE V360ffff  0='(0) NK-UNASCERTAIN' 1='(1) UNUSUALLY HAPPY' 2='(2) GENRLLY CHEERFUL'
                  3='(3) USUALLY GLOOMY' ;
  VALUE V361ffff  0='(0) NK-UNASCERTAIN' 1='(1) QUARRELSOME AGGR'
                  2='(2) AVE-NOT QUARRLSM' 3='(3) A TIMID CHILD' ;
  VALUE V362ffff  0='(0) NK-UNASCERTAIN' 1='(1) MAKE FRIEND EASY'
                  2='(2) TAKES USUAL TIME' 3='(3) CANNOT MKE FRNDS' ;
  VALUE V363ffff  0='(0) NK-UNASCERTAIN' 1='(1) SOMEWHAT ANXIOUS' 2='(2) VERY ANXIOUS'
                  9='(9) NOT ANXIOUS' ;
  VALUE V364ffff  0='(0) NK-UNASCERTAIN' 1='(1) GETS RESENTFUL' 2='(2) GETS MISERABLE'
                  3='(3) NORMAL ATTITUDE' ;
  VALUE V365ffff  0='(0) NK-UNASCERTAIN' 19='(19) 19 PER CENT' 21='(21) 21 PER CENT'
                  98='(98) 98 PER CENT' 99='(99) 99-100 PER CENT' ;
  VALUE V366ffff  0='(0) NONE GIVEN' 1='(1) HEALTH' 2='(2) PARENTS-HOLIDAY'
                  3='(3) TROUBLE AT HOME' 4='(4) PARENTAL UNCNCRN' 5='(5) SCHOOL REFUSAL'
                  6='(6) TRUANCY' 7='(7) HEALTH TRUANCY' 8='(8) HEALTH-HOLIDAY' ;
  VALUE V367ffff  0='(0) NK-UNASCERTAIN' 1='(1) LIGHT <= 100LB' 2='(2) 101-114LB'
                  3='(3) 115-130LB' 4='(4) HEAVY >=131LB' ;
  VALUE V368ffff  0='(0) NK-UNASCERTAIN' 1='(1) <=5FT 2.25IN' 2='(2) 5FT 2.5IN-5FT 4.5'
                  3='(3) 5FT 4.75IN-5 6.7' 4='(4) TALL >=5FT 7IN' ;
  VALUE V369ffff  1='(1) GOOD ATTENDANCE' 2='(2) OCCSIONL TRUANCY'
                  3='(3) FREQUENT TRUANCY' ;
  VALUE V370ffff  0='(0) NOT TESTED' 1='(1) 14Y 1M-14Y 6M' 2='(2) 14Y 7M-14Y 9M'
                  3='(3) 14Y 10M-14Y 11M' 4='(4) 15Y 0M OR MORE' ;
  VALUE V371ffff  0='(0) NK-UNASCERTAIN' 1='(1) NONE REPORTED' 2='(2) >=1 SIB MIN PROB'
                  3='(3) >=1 SIB SVR PROB' 4='(4) NA-NO SIBLINGS' ;
  VALUE V372ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO PROBLEMS' 2='(2) MINOR PROBLEMS'
                  3='(3) MAJOR PROBLEMS' ;
  VALUE V373ffff  0='(0) NK-UNASCERTAIN' 1='(1) CO-OP,3 ATT/ACHV'
                  2='(2) 1 INT ATT ACHIEV' 3='(3) 1 INT ATT REFUSD' ;
  VALUE V374ffff  0='(0) NK-UNASCERTAIN' 1='(1) 0 LST DEFIANT' 2='(2) 0.1 - 8.9'
                  3='(3) 9.0 - 22.9' 4='(4) >=23 MST DEFNT' ;
  VALUE V375ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V376ffff  0='(0) NK-UNASCERTAIN' 1='(1) DOES NOT FIGHT' 2='(2) FIGHT,HOME,SIBS'
                  3='(3) FIGHT,OTH BOYS' 4='(4) BOTH' ;
  VALUE V377ffff  0='(0) NK-UNASCERTAIN' 1='(1) DOES NOT FIGHT' 2='(2) FIGHT,NEVER HURT'
                  3='(3) FIGHT,SOMETM HRT' 4='(4) FIGHT,OFTEN HURT' ;
  VALUE V378ffff  0='(0) NK-UNASCERTAIN' 1='(1) >=1 RMS THN PERS' 2='(2) ROOMS = PERSONS'
                  3='(3) 1 MRE PER THN RM' 4='(4) >=2 PERS THN RMS' ;
  VALUE V379ffff  0='(0) NK-UNASCERTAIN' 1='(1) MOTHER' 2='(2) FATHER' 3='(3) EQUAL'
                  4='(4) NA-ONE OPRTV PAR' ;
  VALUE V380ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES' 2='(2) UNCERTAIN' 3='(3) NO' ;
  VALUE V381ffff  0='(0) NK-UNASCERTAIN' 1='(1) APPROVAL' 2='(2) DISAPPROVAL'
                  3='(3) STRONG DISAPPRVL' ;
  VALUE V382ffff  0='(0) NK-UNASCERTAIN' 1='(1) 5 YRS OLD-NEWER' 2='(2) OLDER THAN 5 YRS' ;
  VALUE V383ffff  0='(0) NK-UNASCERTAIN' 1='(1) NON-NEGLECTED' 2='(2) NEGLECTED' ;
  VALUE V384ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V385ffff  0='(0) NK-UNASCERTAIN' 1='(1) FIXED BATH WITH' 2='(2) NO FIXED BATH' ;
  VALUE V386ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO PROB REPORTD' 2='(2) MILD PROBLEMS'
                  3='(3) SEVERE PROBLEMS' 4='(4) NA-NO FATHER' ;
  VALUE V387ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO PROB REPORTD' 2='(2) MILD PROBLEMS'
                  3='(3) SEVERE PROBLEMS' 4='(4) VERY SEVERE PROB' 5='(5) NA-NO FATHER' ;
  VALUE V388ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO PROB REPORTD' 2='(2) MILD PROBLEMS'
                  3='(3) SEVERE PROBLEMS' 4='(4) NA-NO MOTHER' ;
  VALUE V389ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO PROB REPORTD' 2='(2) MILD PROBLEMS'
                  3='(3) SEVERE PROBLEMS' 4='(4) VERY SEVERE PROB' 5='(5) NA-NO MOTHER' ;
  VALUE V390ffff  0='(0) NK-UNASCERTAIN' 1='(1) 2-3' 2='(2) 4' 3='(3) 5' 4='(4) 6 OR MORE' ;
  VALUE V391ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELF-CONTAINED' 2='(2) NOT SELF-CONTAIN' ;
  VALUE V392ffff  0='(0) NK-UNASCERTAIN' 1='(1) BLDG W/ >=4 UNTS' 2='(2) IN HOUSE' ;
  VALUE V393ffff  0='(0) NK-UNASCERTAIN' 1='(1) NONE' 2='(2) MINIMAL' 3='(3) SEVERE' ;
  VALUE V394ffff  0='(0) NK-UNASCERTAIN' 1='(1) 5 POUNDS OVER' 2='(2) >2 POUNDS 10 <10'
                  3='(3) UNDER 2 PNDS 10' 4='(4) NIL, INCL NA' ;
  VALUE V395ffff  1='(1) 4-7' 2='(2) 3' 3='(3) 2' 4='(4) 1' 5='(5) NONE' ;
  VALUE V396ffff  0='(0) NK-UNASCERTAIN' 1='(1) OVER 25 POUNDS' 2='(2) < 25 PNDS >= 20'
                  3='(3) < 20 PDS <= 15' 4='(4) < 15 PDS <= 10' 5='(5) UNDER 10 POUNDS'
                  6='(6) NOT APPLICABLE' ;
  VALUE V397ffff  0='(0) NK-UNASCERTAIN' 1='(1) 10 POUNDS - OVER' 2='(2) 7 POUNDS 10 <10'
                  3='(3) 5 POUNDS <7 P 10' 4='(4) 2 POUNDS 10 < 5'
                  5='(5) LESS THAN 2 P 10' 6='(6) NOTHING' 7='(7) NOT APPLICABLE' ;
  VALUE V398ffff  0='(0) NK-UNASCERTAIN' 1='(1) NONE REPORTED' 2='(2) 1 MIN 0 SEVERE'
                  3='(3) 1 WITH SEVERE IL' 4='(4) NA-NO SIBLINGS' ;
  VALUE V399ffff  1='(1) ONLY MOTHER ALON' 2='(2) ONLY MOTH W/OTHR'
                  3='(3) BOTH PAR SEP,TOG' 4='(4) BOTH PAR W/OTHER'
                  5='(5) ONLY FATH W/OTHR' 6='(6) OTH-NO INTERVIEW' ;
  VALUE V400ffff  0='(0) NK-UNASCERTAIN' 1='(1) PROFESSIONAL' 2='(2) CLERICAL'
                  3='(3) SKILLED MANUAL' 4='(4) PERSONAL SERVICE'
                  5='(5) UNSKILLED MANUAL' 6='(6) UNDECIDED' ;
  VALUE V401ffff  0='(0) NK-UNASCERTAIN' 1='(1) FULL-TIME' 2='(2) PART-TIME' 3='(3) NO JOB'
                  4='(4) NOT APPLICABLE' ;
  VALUE V402ffff  0='(0) NK-UNASCERTAIN' 1='(1) 0-4 -LOW KNOWLDG' 2='(2) 5-7' 3='(3) 8-10'
                  4='(4) >=11 -HIGH KNWLD' ;
  VALUE V403ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO,MINIMAL,SOMTM'
                  2='(2) YES,FREQUENT,HAB' ;
  VALUE V404ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOVING NORMAL' 2='(2) LOV ANXIOUS-NRTC'
                  3='(3) OVERPROTECTIVE' 4='(4) CRUEL' 5='(5) PASSIVE-NEGLECT'
                  6='(6) ABSENT OR DEAD' ;
  VALUE V405ffff  0='(0) NK-UNASCERTAIN' 1='(1) >=23 -LRG VOC' 2='(2) 20-22' 3='(3) 17-19'
                  4='(4) <=16 -SML VOC' ;
  VALUE V406ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO MOVES' 2='(2) ONE MOVE'
                  3='(3) 2 OR MORE MOVES' ;
  VALUE V407ffff  0='(0) NK-UNASCERTAIN' 1='(1) GOOD' 2='(2) SATISFACTORY' 3='(3) BAD'
                  4='(4) VERY BAD' 5='(5) NA-NO CUR MARR' ;
  VALUE V408ffff  0='(0) NK-UNASCERTAIN' 1='(1) NONE' 2='(2) MINIMAL' 3='(3) MODERATE'
                  4='(4) SEVERE' ;
  VALUE V409ffff  0='(0) NK-UNASCERTAIN' 1='(1) NONE REPORTED' 2='(2) >=1 SIB W/MIN NRV'
                  3='(3) >=1 SIB W/SVR NRV' 4='(4) NA-NO SIBLINGS' ;
  VALUE V410ffff  0='(0) NK-UNASCERTAIN' 1='(1) 10 OR LESS' 2='(2) 11-12' 3='(3) 13-14'
                  4='(4) 15 OR MORE' ;
  VALUE V411ffff  0='(0) NK-UNASCERTAIN' 1='(1) 2 OR LESS' 2='(2) 3-4' 3='(3) 5-7'
                  4='(4) 8 OR MORE' ;
  VALUE V412ffff  0='(0) NK-UNASCERTAIN' 1='(1) 5 OR LESS' 2='(2) 6-7' 3='(3) 8-9'
                  4='(4) 10 OR MORE' ;
  VALUE V413ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOT NEURTC EXTRT'
                  2='(2) NEUROTC EXTRAVRT' ;
  VALUE V414ffff  0='(0) NK-UNASCERTAIN' 1='(1) <=5 -FAVORABLE' 2='(2) 6-9' 3='(3) 10-15'
                  4='(4) >=16 -UNFAVRABLE' ;
  VALUE V415ffff  0='(0) NK-UNASCERTAIN' 1='(1) WARM' 2='(2) PASSIVE' 3='(3) CRUEL'
                  4='(4) NEGLECTFUL' 5='(5) ABSENT' 6='(6) DEAD' ;
  VALUE V416ffff  0='(0) NK-UNASCERTAIN' 1='(1) VERY PLEASED' 2='(2) PLEASED WHOLE'
                  3='(3) DISAPPOINTED' 4='(4) WORRIED' ;
  VALUE V417ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW WGHT:HGT RAT' 2='(2) LOW AVE RATIO'
                  3='(3) HIGH AVE RATIO' 4='(4) HIGH WGHT:HGT RT' ;
  VALUE V418ffff  0='(0) NK-UNASCERTAIN' 1='(1) <=9 -FEW ERRS' 2='(2) 10-13' 3='(3) 14-18'
                  4='(4) >=19 -MANY ERRS' ;
  VALUE V419ffff  0='(0) NK-UNASCERTAIN' 1='(1) <=9 -HIGH TQ' 2='(2) 10-12' 3='(3) 13-15'
                  4='(4) >=16 -LOW TQ' ;
  VALUE V420ffff  0='(0) NOT ALLOCATED' 1='(1) INTERVWR R OR T' 2='(2) INTERVIEWER S' ;
  VALUE V421ffff  0='(0) NK-UNASCERTAIN' 1='(1) 16 OR LESS' 2='(2) 17-21' 3='(3) 22-27'
                  4='(4) 28 OR MORE' ;
  VALUE V422ffff  0='(0) NK-UNASCERTAIN' 1='(1) 9 OR LESS' 2='(2) 10-14' 3='(3) 15-21'
                  4='(4) 22 OR MORE' ;
  VALUE V423ffff  0='(0) NK-UNASCERTAIN' 1='(1) 7 POUNDS 10 OVER' 2='(2) 5 POUNDS <7 10'
                  3='(3) 2 POUNDS 10 < 5' 4='(4) UNDR 2 PNDS 1' 5='(5) NOT APPLICABLE' ;
  VALUE V424ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V425ffff  1='(1) NO BROKEN HOME' 2='(2) BROKEN BY DEATH' 3='(3) BROKEN-OTH RSN' ;
  VALUE V426ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO STEALING' 2='(2) INSIDE HOME'
                  3='(3) OUTSIDE HOME' ;
  VALUE V427ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO MEMORY,<5 YRS' 2='(2) AGE 5-9'
                  3='(3) AGE 10-13' 4='(4) AGE 14 OR LATER' ;
  VALUE V428ffff  0='(0) NK-UNASCERTAIN' 1='(1) II NON-MANUAL' 2='(2) III NON-MANUAL'
                  3='(3) III MANUAL' 4='(4) IV NON-MANUAL' 5='(5) IV MANUAL' 6='(6) V MANUAL'
                  7='(7) NA-NO OPRTV FATH' ;
  VALUE V429ffff  0='(0) NK-UNASCERTAIN' 1='(1) II NON-MANUAL' 2='(2) III NON-MANUAL'
                  3='(3) III MANUAL' 4='(4) IV NON-MANUAL' 5='(5) IV MANUAL' 6='(6) V MANUAL'
                  7='(7) NA-NO OPRTV MOTH' 8='(8) HOUSEWIFE-NO JOB' ;
  VALUE V430ffff  0='(0) NK-UNASCERTAIN' 1='(1) 1-3' 2='(2) 4' 3='(3) 5-6' 4='(4) 7 OR MORE' ;
  VALUE V431ffff  0='(0) NK-UNASCERTAIN' 1='(1) 17 OR OLDER' 2='(2) 16' 3='(3) UNDECIDED'
                  4='(4) 15 - MINIMUM' ;
  VALUE V432ffff  0='(0) NK-UNASCERTAIN' 1='(1) BOY' 2='(2) PARENTS' 3='(3) BOTH'
                  4='(4) UNDECIDED' 5='(5) AUTHORITY DECIDE' ;
  VALUE V433ffff  0='(0) NK-UNASCERTAIN' 1='(1) 7 OR LESS' 2='(2) 8-11' 3='(3) 12-17'
                  4='(4) 18 OR MORE' ;
  VALUE V434ffff  0='(0) NK-UNASCERTAIN' 1='(1) 10 OR LESS' 2='(2) 11-18' 3='(3) 19-29'
                  4='(4) 30 OR MORE' ;
  VALUE V435ffff  0='(0) NK-UNASCERTAIN' 1='(1) SATISFACTORY' 2='(2) UNSATISFACTORY' ;
  VALUE V436ffff  0='(0) NOT TESTED' 1='(1) INTERVIEWER A' 2='(2) INTERVIEWER B'
                  3='(3) INTERVIEWER C' 4='(4) INTERVIEWER D' 5='(5) INTERVIEWER E' ;
  VALUE V437ffff  0='(0) NK-UNASCERTAIN' 1='(1) 6-9 -LST AGGRS' 2='(2) 10' 3='(3) 11'
                  4='(4) >=12 -MOST AGG' ;
  VALUE V438ffff  0='(0) NK-UNASCERTAIN' 1='(1) 6-9' 2='(2) 10' 3='(3) 11' 4='(4) 12 OR MORE' ;
  VALUE V439ffff  0='(0) NK-UNASCERTAIN' 1='(1) 1-2 -SML SCATR' 2='(2) 3' 3='(3) 4-5'
                  4='(4) >=6 -LRG SCATR' ;
  VALUE V440ffff  0='(0) NK-UNASCERTAIN' 1='(1) NONE' 2='(2) >=1 PER LST 2YR'
                  3='(3) >=1 PER 3MOS 2YR' 4='(4) NOT APPLICABLE' ;
  VALUE V441ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V442ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V443ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V444ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V445ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V446ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V447ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V448ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V449ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V450ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V451ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V452ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V453ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V454ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V455ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V456ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V457ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V458ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V459ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V460ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V461ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V462ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V463ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V464ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V465ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V466ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V467ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V468ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V469ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V470ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V471ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V472ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V473ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V474ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V475ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V476ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V477ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V478ffff  0='(0) NEVER' 1='(1) ONCE OR TWICE' 2='(2) SOMETIMES' 3='(3) FREQUENTLY'
                  4='(4) NK-UNASCERTAIN' ;
  VALUE V479ffff  0='(0) NK-UNASCERTAIN' 64='(64) MH 36' 66='(66) MH 34' 98='(98) MH 2' ;
  VALUE V480ffff  0='(0) NK-UNASCERTAIN' 4='(4) E4' 5='(5) E5' 21='(21) E21' ;
  VALUE V481ffff  0='(0) NK-UNASCERTAIN' 1='(1) N0' 2='(2) N1' 19='(19) N18' ;
  VALUE V482ffff  0='(0) NK-UNASCERTAIN' 1='(1) L0' 2='(2) L1' 17='(17) L16' ;
  VALUE V483ffff  0='(0) NK-UNASCERTAIN' 6='(6) TQ6' 7='(7) TQ7' 24='(24) TQ24' ;
  VALUE V484ffff  0='(0) NK-UNASCERTAIN' 1='(1) RDA0' 4='(4) RDA3' 39='(39) RDA38' ;
  VALUE V485ffff  0='(0) NK-UNASCERTAIN' 1='(1) RDF0' 2='(2) RDF1' 39='(39) RDF38' ;
  VALUE V486ffff  0='(0) NK-UNASCERTAIN' 1='(1) SRD0' 2='(2) SRD1' 32='(32) SRD31' ;
  VALUE V487ffff  0='(0) NK-UNASCERTAIN' 1='(1) 0-5' 2='(2) 6-8' 3='(3) 9-13' 4='(4) 14 OR MORE' ;
  VALUE V488ffff  0='(0) NK-UNASCERTAIN' 75='(75) IQ125' 76='(76) IQ124' 125='(125) IQ75' ;
  VALUE V489ffff  0='(0) NK-UNASCERTAIN' 1='(1) 90 OR LESS' 2='(2) 91-100' 3='(3) 101-110'
                  4='(4) 111 OR MORE' ;
  VALUE V490ffff  0='(0) NK-UNASCERTAIN' 1='(1) OPB 0' 2='(2) OPB 1' 32='(32) OPB 31' ;
  VALUE V491ffff  0='(0) NK-UNASCERTAIN' 1='(1) GOOD PAR,BCKGRND' 2='(2) GOOD ASSOCIATES'
                  3='(3) HOBBIES-OTH THNG' 4='(4) NOT NEED MONEY' 5='(5) CONSCIENCE'
                  6='(6) FEAR CONSEQUENCS' ;
  VALUE V492ffff  1='(1) OUTSID GRTR LOND' 2='(2) OUTSID LOND POST'
                  3='(3) LONDON POST DIST' ;
  VALUE V493ffff  0='(0) NK-UNASCERTAIN' 1='(1) CONSCNCE & FEAR' 2='(2) CONSCIENCE MORE'
                  3='(3) FEAR CONSEQUECS' 4='(4) NEITHR IMPORTNT' ;
  VALUE V494ffff  0='(0) NOT INTERVIEWED' 16='(16) JANUARY 1969' 17='(17) JANUARY 1970'
                  116='(116) NOVEMBER 1969' 126='(126) DECEMBER 1969' ;
  VALUE V495ffff  0='(0) NK-UNASCERTAIN' 1='(1) PARENT(S)' 2='(2) OTH RLTVS,FOSTR'
                  3='(3) OTH, APPROVED' ;
  VALUE V496ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO UNFVRBL CMMNT'
                  2='(2) MINOR DISAGREMNT' 3='(3) SERIOUS DISAGREE'
                  9='(9) NOT LIVE AT HOME' ;
  VALUE V497ffff  0='(0) NK-UNASCERTAIN' 1='(1) STILL AT SCHOOL' 2='(2) LEFT SCHOOL'
                  8='(8) APPROVED SCHOOL' 9='(9) LEFT SCHL-NO JOB' ;
  VALUE V498ffff  0='(0) NK-UNASCERTAIN' 311='(311) 14 YRS 11 MONTHS'
                  400='(400) 15 YRS 0 MONTHS' 807='(807) 19 YRS 7 MONTHS'
                  904='(904) 20 YRS 4 MONTHS' ;
  VALUE V499ffff  0='(0) NK-UNASCERTAIN' 99='(99) STILL AT SCHOOL' ;
  VALUE V500ffff  0='(0) NK-UNASCERTAIN' 1='(1) WANTED BOY TO ST' 2='(2) 1 PARENT WANTED'
                  3='(3) DIDNT MIND' 4='(4) BOTH WANTED BOY' ;
  VALUE V501ffff  0='(0) NK-UNASCERTAIN' 88='(88) NEVER WORKED' 99='(99) STILL AT SCHOOL' ;
  VALUE V502ffff  0='(0) NK-UNASCERTAIN' 99='(99) STILL AT SCHOOL' ;
  VALUE V503ffff  0='(0) NK-UNASCERTAIN' 888='(888) ONLY 1 JOB SINCE'
                  999='(999) STILL AT SCHOOL' ;
  VALUE V504ffff  0='(0) NK-UNASCERTAIN' 1='(1) EMPLOYED' 2='(2) UNEMPLOYED-NO FT'
                  5='(5) LEFT SCHL-NO JOB' 6='(6) FULL-TIME STUDNT'
                  7='(7) APPRV/MALADJ SCH' 8='(8) AT SCHOOL, W/PT'
                  9='(9) AT SCHOOL, NO PT' ;
  VALUE V505ffff  0='(0) NK-UNASCERTAIN' 1='(1) LNG TRM-CAREER' 2='(2) WORK ORIENTED'
                  3='(3) MONEY' 4='(4) IMMED,SHORT,OTH' 9='(9) AT SCHOOL, NO WRK' ;
  VALUE V506ffff  0='(0) NK-UNASCERTAIN' 1='(1) LNG TRM-CAREER' 2='(2) WORK ORIENTED'
                  3='(3) MONEY' 4='(4) PEOPLE' 5='(5) IMMED,SHORT,OTH' 6='(6) SACKED'
                  8='(8) NEVER LEFT A JOB' 9='(9) AT SCHOOL, NO WRK' ;
  VALUE V507ffff  0='(0) NK-UNASCERTAIN' 1='(1) II NON-MANUAL' 2='(2) III NON-MANUAL'
                  3='(3) III MANUAL' 4='(4) IV NON-MANUAL' 5='(5) IV MANUAL' 6='(6) V MANUAL'
                  8='(8) NO SCHL, NVR WRK' 9='(9) AT SCHOOL' ;
  VALUE V508ffff  0='(0) NK-UNASCERTAIN' 1='(1) 3 YEARS OR MORE' 2='(2) 6 MOS -<3 YRS'
                  3='(3) 1 MO -< 6 MOS' 4='(4) 1 WEEK -< 1 MO' 5='(5) 1 DAY -< 1 WEEK'
                  6='(6) LESS THAN 1 DAY' 7='(7) NO TRAINING' 9='(9) AT SCHOOL NO WRK' ;
  VALUE V509ffff  0='(0) NK-UNASCERTAIN' 1='(1) SERVING AT PRES' 2='(2) NOT SERV AT PRES'
                  3='(3) NEVER SERVED' 4='(4) LEFT SCH, INTEND' 8='(8) AT SCHOOL INTEND'
                  9='(9) AT SCHOOL NO INT' ;
  VALUE V510ffff  0='(0) NK-UNASCERTAIN' 1='(1) HAS ATTENDED' 2='(2) HAS NOT ATTENDED'
                  3='(3) NOT YET ATTENDED' 8='(8) AT SCHOOL INTEND'
                  9='(9) AT SCHOOL NO INT' ;
  VALUE V511ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER UNEMPLOYED'
                  2='(2) UNEMP FOR >=1 WK' 9='(9) AT SCHL-NOT EMPL' ;
  VALUE V512ffff  0='(0) NK-UNASCERTAIN' 98='(98) NEVER UNEMPLOYED'
                  99='(99) AT SCHOOL NO WRK' ;
  VALUE V513ffff  0='(0) NK-UNASCERTAIN' 1='(1) I LOVE IT' 2='(2) ENTHUSIASTIC'
                  3='(3) LIKE IT VERY MUCH' 4='(4) LIKE IT GOOD DEAL'
                  5='(5) ON WHOLE LIKE IT' 6='(6) LIKE IT FAIR WELL'
                  7='(7) LIKE IT A LITTLE' 8='(8) INDIFFERENT' 9='(9) ON WHOLE DONT LKE'
                  10='(10) I DISLIKE IT' 11='(11) I HATE IT' ;
  VALUE V514ffff  0='(0) NK-UNASCERTAIN' 1='(1) LNG TRM-CAREER' 2='(2) WORK ORIENTED'
                  3='(3) MONEY' 4='(4) PEOPLE' 5='(5) OTHER' 6='(6) NOTHING' ;
  VALUE V515ffff  0='(0) NK-UNASCERTAIN' 1='(1) LNG TRM-CAREER' 2='(2) WORK ORIENTED'
                  3='(3) MONEY' 4='(4) PEOPLE' 5='(5) OTHER' 6='(6) NOTHING' ;
  VALUE V516ffff  0='(0) NK-UNASCERTAIN' 1='(1) VERY EASY INDEED' 2='(2) VERY EASY'
                  3='(3) ON WHOLE NOT HARD' 4='(4) BIT DIFFICULT' 5='(5) PRETTY HARD'
                  6='(6) JUST MANAGE' 7='(7) TOO DIFFICULT' ;
  VALUE V517ffff  0='(0) NK-UNASCERTAIN' 1='(1) < 3POUNDS PER WK' 2='(2) 3 POUNDS -< 7'
                  3='(3) 7 POUNDS -< 11' 4='(4) 11 POUNDS -<15' 5='(5) 15 POUNDS - MORE'
                  6='(6) APP SCH, UNEMPL' 7='(7) AP SCH, UNEM PT' 8='(8) SCH, PT JOB'
                  9='(9) SCH, POCKET MONY' ;
  VALUE V518ffff  0='(0) NK-UNASCERTAIN' 1='(1) SECURITY' 2='(2) GOOD PAY'
                  3='(3) INTERESTING WORK' 4='(4) PRIDE IN WORK' 5='(5) BE YOUR OWN BOSS'
                  6='(6) GOOD PROSPECTS' ;
  VALUE V519ffff  0='(0) NK-UNASCERTAIN' 1='(1) SECURITY' 2='(2) GOOD PAY'
                  3='(3) INTERESTING WORK' 4='(4) PRIDE IN WORK' 5='(5) BE YOUR OWN BOSS'
                  6='(6) GOOD PROSPECTS' ;
  VALUE V520ffff  0='(0) NK-UNASCERTAIN' 1='(1) SECURITY' 2='(2) GOOD PAY'
                  3='(3) INTERESTING WORK' 4='(4) PRIDE IN WORK' 5='(5) BE YOUR OWN BOSS'
                  6='(6) GOOD PROSPECTS' ;
  VALUE V521ffff  0='(0) NK-UNASCERTAIN' 1='(1) SECURITY' 2='(2) GOOD PAY'
                  3='(3) INTERESTING WORK' 4='(4) PRIDE IN WORK' 5='(5) BE YOUR OWN BOSS'
                  6='(6) GOOD PROSPECTS' ;
  VALUE V522ffff  0='(0) NK-UNASCERTAIN' 1='(1) SECURITY' 2='(2) GOOD PAY'
                  3='(3) INTERESTING WORK' 4='(4) PRIDE IN WORK' 5='(5) BE YOUR OWN BOSS'
                  6='(6) GOOD PROSPECTS' ;
  VALUE V523ffff  0='(0) NK-UNASCERTAIN' 1='(1) SECURITY' 2='(2) GOOD PAY'
                  3='(3) INTERESTING WORK' 4='(4) PRIDE IN WORK' 5='(5) BE YOUR OWN BOSS'
                  6='(6) GOOD PROSPECTS' ;
  VALUE V524ffff  0='(0) NK-UNASCERTAIN' 1='(1) AT SCHOOL' 2='(2) TRAINING COURSES'
                  3='(3) APPRENTICES' 4='(4) WKG NOT APPRENTC' ;
  VALUE V525ffff  0='(0) NK-UNASCERTAIN' 1='(1) MOST' 2='(2) SOME' 3='(3) A FEW' 4='(4) NONE' ;
  VALUE V526ffff  0='(0) NK-UNASCERTAIN' 1='(1) SOLITARY ONLY' 2='(2) WITH OTHERS' ;
  VALUE V527ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V528ffff  0='(0) NK-UNASCERTAIN' 1='(1) YOUTH CLUB-REG' 2='(2) SPORTS CLUB-REG'
                  3='(3) YOUTH CLUB-OCC' 4='(4) SPORTS CLUB-OCC' 5='(5) NO CLUB' ;
  VALUE V529ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO GAMES-SPORT' 2='(2) NON-TEAM GAMES'
                  3='(3) TEAM GAMES' ;
  VALUE V530ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO GAMES-SPORT' 2='(2) >=1 ORGANIZ GAME'
                  3='(3) NO ORGANIZD GAME' ;
  VALUE V531ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO WORRIES ADMIT'
                  2='(2) SELF,JOB,MONY,SC' 3='(3) FAMILY,OTH WORRY' ;
  VALUE V532ffff  0='(0) NK-UNASCERTAIN' 1='(1) NONE' 2='(2) MINOR ONLY'
                  3='(3) SERIOUS ACCIDENT' ;
  VALUE V533ffff  0='(0) NK-UNASCERTAIN' 999='(999) NO TIME OFF' ;
  VALUE V534ffff  0='(0) NK-UNASCERTAIN' 1='(1) DOES NOT SMOKE' 2='(2) SMOKES,NO AFFECT'
                  3='(3) SMOKES,HLTH AFFC' ;
  VALUE V535ffff  0='(0) NK-UNASCERTAIN' 1='(1) DOES NOT SMOKE' 2='(2) LESS THAN 5'
                  3='(3) 5-10' 4='(4) 11-20' 5='(5) 21-30' 6='(6) MORE THAN 30' ;
  VALUE V536ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO TROUBLE ADMIT' 2='(2) TROUBLE W/SLEEP' ;
  VALUE V537ffff  0='(0) NOT INTERVIEWED' 1='(1) INTERVIEWER F' 2='(2) INTERVIEWER Q'
                  3='(3) INTERVIEWER G' 4='(4) INTERVIEWER H' 5='(5) INTERVIEWER I'
                  6='(6) INTERVIEWER B' 7='(7) INTERVIEWER E' 8='(8) INTERVIEWER J'
                  9='(9) INTERVIEWER D' 10='(10) INTERVIEWER A' 19='(19) COMPL IN ASTRLIA'
                  20='(20) 2 INTERVWRS PRES' ;
  VALUE V538ffff  0='(0) NOT INTERVIEWED' 1='(1) OUR OFFICE' 2='(2) CAR' 3='(3) OTHER'
                  4='(4) BOYS HOME' 5='(5) APPROVED SCHOOL' ;
  VALUE V539ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V540ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V541ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V542ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V543ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V544ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V545ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V546ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V547ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V548ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V549ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V550ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V551ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V552ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V553ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V554ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V555ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V556ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V557ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V558ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V559ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V560ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V561ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V562ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V563ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V564ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V565ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V566ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V567ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V568ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V569ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V570ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V571ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V572ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V573ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V574ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V575ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V576ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V577ffff  0='(0) NK-UNASCERTAIN' 1='(1) L0' 2='(2) L1' 9='(9) L8' ;
  VALUE V578ffff  0='(0) NK-UNASCERTAIN' 1='(1) 0-1' 2='(2) 2' 3='(3) 3' 4='(4) 4 OR MORE' ;
  VALUE V579ffff  0='(0) NK-UNASCERTAIN' 1='(1) SRD0' 2='(2) SRD1' 35='(35) SRD34' ;
  VALUE V580ffff  0='(0) NK-UNASCERTAIN' 1='(1) 0-9' 2='(2) 10-12' 3='(3) 13-16'
                  4='(4) 17 OR MORE' ;
  VALUE V581ffff  1='(1) NO POLICE RECORD' 2='(2) POLICE CONTACT' 3='(3) CONVICTED 1X'
                  4='(4) RECIDIVISTS' ;
  VALUE V582ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOT OFFL,NOT S-R'
                  2='(2) OFFL,NOT SLF-RPT' 3='(3) NOT OFFL,SLF-RPT'
                  4='(4) OFFICIAL,SLF-RPT' ;
  VALUE V583ffff  0='(0) NK-UNASCERTAIN' 1='(1) N0' 2='(2) N1' 23='(23) N22' ;
  VALUE V584ffff  0='(0) NK-UNASCERTAIN' 3='(3) E2' 5='(5) E4' 23='(23) E22' ;
  VALUE V585ffff  0='(0) NK-UNASCERTAIN' 1='(1) 0-5' 2='(2) 6-8' 3='(3) 9-11' 4='(4) 12 OR MORE' ;
  VALUE V586ffff  0='(0) NK-UNASCERTAIN' 1='(1) 11 OR LESS' 2='(2) 12-13' 3='(3) 14-16'
                  4='(4) 17 OR MORE' ;
  VALUE V587ffff  0='(0) NK-UNASCERTAIN' 4='(4) RDA3' 5='(5) RDA4' 38='(38) RDA37' ;
  VALUE V588ffff  0='(0) NK-UNASCERTAIN' 1='(1) RDF0' 2='(2) RDF1' 38='(38) RDF37' ;
  VALUE V589ffff  0='(0) NK-UNASCERTAIN' 1='(1) DELINQNT-RESTNT' 2='(2) SRD 14 - SRD 11'
                  3='(3) OTHER' 4='(4) MOST DELINQUENT' ;
  VALUE V590ffff  0='(0) NK-UNASCERTAIN' 1='(1) OPB 0' 2='(2) OPB 1' 31='(31) OPB 30' ;
  VALUE V591ffff  0='(0) NK-UNASCERTAIN' 1='(1) 6 OR LESS' 2='(2) 7-11' 3='(3) 12-16'
                  4='(4) 17 OR MORE' ;
  VALUE V592ffff  0='(0) NK-UNASCERTAIN' 1='(1) 17 OR LESS' 2='(2) 18-23' 3='(3) 24-28'
                  4='(4) 29 OR MORE' ;
  VALUE V593ffff  0='(0) NK-UNASCERTAIN' 1='(1) 11 OR LESS' 2='(2) 12-15' 3='(3) 16-21'
                  4='(4) 22 OR MORE' ;
  VALUE V594ffff  0='(0) NK-UNASCERTAIN' 1='(1) STABLE INTROVERT'
                  2='(2) NEUROTIC INTRVRT' 3='(3) STABLE EXTRAVERT'
                  4='(4) NEUROTIC EXTRVRT' ;
  VALUE V595ffff  0='(0) NOT INTERVIEWED' 1='(1) 4-1971 TO 9-1971'
                  2='(2) 10-1971 TO 2-72' 3='(3) 3-72 TO 7-72' 4='(4) 8-72 TO 5-73' ;
  VALUE V596ffff  0='(0) NOT INTERVIEWED' 1='(1) INTERVIEWER Q' 2='(2) INTERVIEWER K'
                  3='(3) INTERVIEWER L' 4='(4) INTERVIEWER M' ;
  VALUE V597ffff  0='(0) NK-UNASCERTAIN' 1='(1) 18Y 4M-18Y 6M' 2='(2) 18 YEARS 7M'
                  3='(3) 18 YEARS 8M' 4='(4) 18Y 9M-OLDER' ;
  VALUE V598ffff  0='(0) NK-UNASCERTAIN' 1='(1) EMPLOYED' 2='(2) SELF-EMPLOYED'
                  3='(3) AT SCHOOL-FT ED' 4='(4) UNEMPLOYED' 5='(5) INSTITUTION'
                  6='(6) OTHER' ;
  VALUE V599ffff  0='(0) NK-UNASCERTAIN' 1='(1) LIKE IT A LOT' 2='(2) LIKE IT A BIT'
                  3='(3) DONT MIND' 4='(4) DISLIKE IT' 9='(9) NOT APPLICABLE' ;
  VALUE V600ffff  0='(0) NK-UNASCERTAIN' 1='(1) RANK 1' 2='(2) RANK 2' 3='(3) RANK 3'
                  4='(4) RANK 4' 5='(5) RANK 5' 6='(6) RANK 6' 9='(9) NOT APPLICABLE' ;
  VALUE V601ffff  0='(0) NK-UNASCERTAIN' 1='(1) RANK 1' 2='(2) RANK 2' 3='(3) RANK 3'
                  4='(4) RANK 4' 5='(5) RANK 5' 6='(6) RANK 6' 9='(9) NOT APPLICABLE' ;
  VALUE V602ffff  0='(0) NK-UNASCERTAIN' 1='(1) RANK 1' 2='(2) RANK 2' 3='(3) RANK 3'
                  4='(4) RANK 4' 5='(5) RANK 5' 6='(6) RANK 6' 9='(9) NOT APPLICABLE' ;
  VALUE V603ffff  0='(0) NK-UNASCERTAIN' 1='(1) RANK 1' 2='(2) RANK 2' 3='(3) RANK 3'
                  4='(4) RANK 4' 5='(5) RANK 5' 6='(6) RANK 6' 9='(9) NOT APPLICABLE' ;
  VALUE V604ffff  0='(0) NK-UNASCERTAIN' 1='(1) RANK 1' 2='(2) RANK 2' 3='(3) RANK 3'
                  4='(4) RANK 4' 5='(5) RANK 5' 6='(6) RANK 6' 9='(9) NOT APPLICABLE' ;
  VALUE V605ffff  0='(0) NK-UNASCERTAIN' 1='(1) RANK 1' 2='(2) RANK 2' 3='(3) RANK 3'
                  4='(4) RANK 4' 5='(5) RANK 5' 6='(6) RANK 6' 9='(9) NOT APPLICABLE' ;
  VALUE V606ffff  0='(0) NK-UNASCERTAIN' 1='(1) 1' 2='(2) 2' 3='(3) 3-5' 4='(4) 6 OR MORE'
                  9='(9) NEVER HAD A JOB' ;
  VALUE V607ffff  0='(0) NK-UNASCERTAIN' 1='(1) OVER 2 YEARS' 2='(2) >1YR 6M-2 YRS'
                  3='(3) >1YR-1YR 6 MO' 4='(4) UP TO 1 YEAR' 9='(9) NEVER HAD A JOB' ;
  VALUE V608ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER' 2='(2) ONCE' 3='(3) TWICE'
                  4='(4) 3 OR MORE' 9='(9) NOT APPLICABLE' ;
  VALUE V609ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' 9='(9) NOT APPLICABLE' ;
  VALUE V610ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO OR < 1 WEEK' 2='(2) 1-4 WEEKS'
                  3='(3) 5-17 WEEKS' 4='(4) 18 WEEKS OR MORE' 9='(9) SCH, COLL ALL YR' ;
  VALUE V611ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO ILLNESS' 2='(2) ILL-NO TIME OFF'
                  3='(3) UP TO 1 WEEK' 4='(4) 2-3 WEEKS' 5='(5) 4 WEEKS OR MORE' ;
  VALUE V612ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO INJURY' 2='(2) INJRY-NO TME OFF'
                  3='(3) UP TO 1 WEEK' 4='(4) 2-3 WEEKS' 5='(5) 4 WEEKS OR MORE' ;
  VALUE V613ffff  0='(0) NK-UNASCERTAIN' 1='(1) STUDY,TAK,PASS' 2='(2) NOT STUDY/TAKE' ;
  VALUE V614ffff  0='(0) NK-UNASCERTAIN' 1='(1) SERV APPRNTCSHP' 2='(2) SERVED IN PAST'
                  3='(3) NEVER SERVED' 9='(9) NEVER HAD A JOB' ;
  VALUE V615ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES, AT PRESENT' 2='(2) YES, IN PAST'
                  3='(3) NEVER' 9='(9) NEVER HAD A JOB' ;
  VALUE V616ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES' 3='(3) NO' 9='(9) NEVER HAD A JOB' ;
  VALUE V617ffff  0='(0) NK-UNASCERTAIN' 1='(1) <= 13 POUNDS' 2='(2) 13.01 P -15 P'
                  3='(3) 15.01 P -19 P' 4='(4) > 19 POUNDS' 9='(9) NOTHING' ;
  VALUE V618ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOTHING' 2='(2) <= 1.50 P'
                  3='(3) 1.51-4.99 POUNDS' 4='(4) > 5 POUNDS' ;
  VALUE V619ffff  0='(0) NK-UNASCERTAIN' 1='(1) UP TO 6.50 P' 2='(2) 6.51-9 POUNDS'
                  3='(3) 9.01-11.99 POUND' 4='(4) >=12 POUNDS' ;
  VALUE V620ffff  0='(0) NK-UNASCERTAIN' 1='(1) <= 2.49 POUNDS' 2='(2) 2.50-4 POUNDS'
                  3='(3) 4.01-6.50 POUNDS' 4='(4) >=6.51 POUNDS' ;
  VALUE V621ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER' 2='(2) SOMETIMES' 3='(3) REGULARLY'
                  8='(8) COHABITING' 9='(9) MARRIED' ;
  VALUE V622ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOTHING' 2='(2) < 2 POUNDS'
                  3='(3) 2-3 POUNDS' 4='(4) > 3 POUNDS' ;
  VALUE V623ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOTHING' 2='(2) <= 30 POUNDS'
                  3='(3) 31-99 POUNDS' 4='(4) >= 100 POUNDS' ;
  VALUE V624ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V625ffff  0='(0) NK-UNASCERTAIN' 1='(1) SINGLE' 2='(2) ENGAGED'
                  3='(3) MARR,SEP,COHAB' ;
  VALUE V626ffff  0='(0) NK-UNASCERTAIN' 1='(1) BOTH ALIVE' 2='(2) MOTHER DEAD ONLY'
                  3='(3) FATHER DEAD ONLY' 4='(4) BOTH DEAD' ;
  VALUE V627ffff  0='(0) NK-UNASCERTAIN' 1='(1) MUM DAD-INC FSTR' 2='(2) MUM' 3='(3) DAD'
                  4='(4) ALONE' 5='(5) WIFE' 6='(6) OTHER' 9='(9) NOT APPLICABLE' ;
  VALUE V628ffff  0='(0) NK-UNASCERTAIN' 1='(1) WITH PARENTS' 2='(2) NO PREFERENCE'
                  3='(3) SOMEWHERE ELSE' 9='(9) NO PARENTS' ;
  VALUE V629ffff  0='(0) NK-UNASCERTAIN' 1='(1) VERY WELL' 2='(2) OK' 3='(3) NOT SO WELL'
                  9='(9) NO OPERATV MOTH' ;
  VALUE V630ffff  0='(0) NK-UNASCERTAIN' 1='(1) VERY WELL' 2='(2) OK' 3='(3) NOT SO WELL'
                  9='(9) NO OPERATV FATH' ;
  VALUE V631ffff  0='(0) NK-UNASCERTAIN' 1='(1) MUM' 2='(2) EQUALLY' 3='(3) DAD'
                  9='(9) NA-1/NO OPR PAR' ;
  VALUE V632ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES' 2='(2) DOUBTFUL' 3='(3) NO'
                  9='(9) NOT APPLICABLE' ;
  VALUE V633ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES' 2='(2) DOUBTFUL' 3='(3) NO'
                  9='(9) NOT APPLICABLE' ;
  VALUE V634ffff  0='(0) NK-UNASCERTAIN' 1='(1) USUALLY HOME' 2='(2) HOME OR GO OUT'
                  3='(3) USUALLY GO OUT' ;
  VALUE V635ffff  0='(0) NK-UNASCERTAIN' 1='(1) USUALLY HOME' 2='(2) HOME OR GO OUT'
                  3='(3) USUALLY GO OUT' ;
  VALUE V636ffff  0='(0) NK-UNASCERTAIN' 1='(1) USUALLY HOME' 2='(2) HOME OR GO OUT'
                  3='(3) USUALLY GO OUT' ;
  VALUE V637ffff  0='(0) NK-UNASCERTAIN' 1='(1) USUALLY HOME' 2='(2) HOME OR GO OUT'
                  3='(3) USUALLY GO OUT' ;
  VALUE V638ffff  0='(0) NK-UNASCERTAIN' 1='(1) USUALLY HOME' 2='(2) HOME OR GO OUT'
                  3='(3) USUALLY GO OUT' ;
  VALUE V639ffff  0='(0) NK-UNASCERTAIN' 1='(1) USUALLY HOME' 2='(2) HOME OR GO OUT'
                  3='(3) USUALLY GO OUT' ;
  VALUE V640ffff  0='(0) NK-UNASCERTAIN' 1='(1) USUALLY HOME' 2='(2) HOME OR GO OUT'
                  3='(3) USUALLY GO OUT' ;
  VALUE V641ffff  0='(0) NK-UNASCERTAIN' 1='(1) PARENTS-SIBLINGS' 2='(2) MATES'
                  3='(3) WIFE-GIRLFRIEND' 4='(4) ALONE' 5='(5) OTHER' ;
  VALUE V642ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V643ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V644ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V645ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER SMOKED REG' 2='(2) 16 OR LATER'
                  3='(3) 14-15' 4='(4) 13 OR EARLIER' ;
  VALUE V646ffff  0='(0) NK-UNASCERTAIN' 1='(1) 3 PINTS OR LESS' 2='(2) 4-9 PINTS'
                  3='(3) 10-19 PINTS' 4='(4) 20 PINTS OR MORE' ;
  VALUE V647ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOTHING' 2='(2) < 1 PINT PER MO'
                  3='(3) 1 PINT PER WEEK' 4='(4) 2 OR MORE PINTS' ;
  VALUE V648ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOTHING' 2='(2) < 1 GLASS PER MO'
                  3='(3) 1 GLASS PER WEEK' 4='(4) >= 2 GLASSES' ;
  VALUE V649ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOTHING' 2='(2) < 1 SNGLE PER MO'
                  3='(3) 1 SINGLE PER WK' 4='(4) 2-5 SINGLES' 5='(5) >= 6 SINGLES' ;
  VALUE V650ffff  0='(0) NK-UNASCERTAIN' 1='(1) 4 UNITS OR LESS' 2='(2) 5-8 UNITS'
                  3='(3) 9-12 UNITS' 4='(4) 13 UNITS OR MORE' ;
  VALUE V651ffff  0='(0) NK-UNASCERTAIN' 1='(1) MORE VIOLENT' 2='(2) NO CHANGE'
                  3='(3) LESS VIOLENT' 9='(9) DOES NOT DRINK' ;
  VALUE V652ffff  0='(0) NK-UNASCERTAIN' 1='(1) PARENTS-SIBLINGS' 2='(2) MATES'
                  3='(3) WIFE-GIRLFRIEND' 4='(4) ALONE, OTHER' 9='(9) DOES NOT DRINK' ;
  VALUE V653ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER' 2='(2) ONCE OR TWICE'
                  3='(3) 3 OR MORE TIMES' ;
  VALUE V654ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' 3='(3) NO ADMIT BUT OBV' ;
  VALUE V655ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) CAR' 3='(3) MOTORCYCLE-SCTR'
                  4='(4) OTHER - MOTOR' ;
  VALUE V656ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V657ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V658ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V659ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER' 2='(2) YES, WHILE DRVNG'
                  3='(3) YES, NOT DRIVING' ;
  VALUE V660ffff  0='(0) NK-UNASCERTAIN' 1='(1) NONE' 2='(2) ONE' 3='(3) TWO OR MORE' ;
  VALUE V661ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V662ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V663ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V664ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V665ffff  0='(0) NK-UNASCERTAIN' 1='(1) DOES NOT BET' 2='(2) NOTHING'
                  3='(3) <= 3 POUNDS' 4='(4) 4-10 POUNDS' 5='(5) >= 11 POUNDS' ;
  VALUE V666ffff  0='(0) NK-UNASCERTAIN' 1='(1) DOES NOT BET' 2='(2) 50 P OR LESS'
                  3='(3) 51 P-2 POUNDS' 4='(4) OVER 2 POUNDS' ;
  VALUE V667ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V668ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V669ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V670ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V671ffff  0='(0) NK-UNASCERTAIN' 1='(1) HOME,MATES,GIRLS' 2='(2) PARTIES'
                  3='(3) OUTSIDE' 4='(4) DANCES,DISCOS,CL' 5='(5) PUBS' 6='(6) OTHER'
                  9='(9) NOT TAKEN DRUGS' ;
  VALUE V672ffff  0='(0) NK-UNASCERTAIN' 1='(1) MATES' 2='(2) MATES AND GIRLS'
                  3='(3) ALONE,SIBS,OTH' 9='(9) NOT TAKEN DRUGS' ;
  VALUE V673ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' 9='(9) NOT TAKEN DRUGS' ;
  VALUE V674ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' 9='(9) NOT TAKEN DRUGS' ;
  VALUE V675ffff  0='(0) NK-UNASCERTAIN' 1='(1) KNOWS NO ONE' 2='(2) ACQUAINTANCES'
                  3='(3) MATES TAKN DRUGS' 4='(4) TAKEN HIMSELF' ;
  VALUE V676ffff  0='(0) NK-UNASCERTAIN' 1='(1) WOULD NOT TRY' 2='(2) UNSURE'
                  3='(3) WOULD TRY' 9='(9) HAS TAKEN DRUGS' ;
  VALUE V677ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO GIRLFRIEND' 2='(2) CASUAL GIRLFRND'
                  3='(3) STEADY GIRLFRND' 4='(4) ENGAGED' 5='(5) MARRIED' 6='(6) COHABITING' ;
  VALUE V678ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER INTERCOURS'
                  2='(2) 3 MONTHS OR LESS' 3='(3) OVER 3 MO -6 MO'
                  4='(4) OVER 6 MOS -1 YR' 5='(5) OVER 1 YR -2 YRS' 6='(6) OVER 2 YEARS' ;
  VALUE V679ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER INTERCOURS' 2='(2) 17 OR LATER'
                  3='(3) 16' 4='(4) 15' 5='(5) 14 OR EARLIER' ;
  VALUE V680ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER INTERCOURS'
                  2='(2) YES,NOT W/IN 6 MO' 3='(3) 1-5 TIMES' 4='(4) 6-25 TIMES'
                  5='(5) 26 TIMES->=1X/WK' ;
  VALUE V681ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER INTERCOURS' 2='(2) 1-2' 3='(3) 3-5'
                  4='(4) 6 OR MORE' ;
  VALUE V682ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER INTERCOURS'
                  2='(2) YES,NOT W/IN 6 MO' 3='(3) 1' 4='(4) 2' 5='(5) 3 OR MORE' ;
  VALUE V683ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER INTERCOURS'
                  2='(2) ALWAYS CONTRCPTN' 3='(3) SOMETME CNTRCPTN'
                  4='(4) NEVER USES CONTR' ;
  VALUE V684ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER INTERCOURS'
                  2='(2) NO GIRLS PREGNNT' 3='(3) GOT GIRL PREGNNT' ;
  VALUE V685ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES' 2='(2) NO' ;
  VALUE V686ffff  0='(0) NK-UNASCERTAIN' 1='(1) 5 FEET 6 INCHES' 2='(2) 5 FT 7-8 INCHES'
                  3='(3) 5 FT 9-11 INCH' 4='(4) 6 FEET OR OVER' ;
  VALUE V687ffff  0='(0) NK-UNASCERTAIN' 1='(1) <=9 STONE 7 P' 2='(2) 9S 8P - 10S 7P'
                  3='(3) 10S 8P - 11S 13P' 4='(4) >= 12 STONES' ;
  VALUE V688ffff  0='(0) NK-UNASCERTAIN' 1='(1) LEFT' 2='(2) RIGHT' ;
  VALUE V689ffff  0='(0) NK-UNASCERTAIN' 1='(1) WEARING GLASSES' 2='(2) SOMETIMES WEARS'
                  3='(3) NEVER WEARS' ;
  VALUE V690ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO TATTOOS' 2='(2) TATTOOED' ;
  VALUE V691ffff  0='(0) NK-UNASCERTAIN' 1='(1) DID NOT BET' 2='(2) BET AND LOST'
                  3='(3) BET AND WON' ;
  VALUE V692ffff  0='(0) NK-UNASCERTAIN' 1='(1) FULLY COOPERATIV' 2='(2) COOPERATIVE'
                  3='(3) NON-COOPERATIVE' ;
  VALUE V693ffff  0='(0) NK-UNASCERTAIN' 1='(1) PROB TRUTHFUL' 2='(2) PROB NOT TRUTH' ;
  VALUE V694ffff  0='(0) NK-UNASCERTAIN' 1='(1) VERY SHORT' 2='(2) NORMAL'
                  3='(3) LONG-BLW COLLAR' 4='(4) OVER SHOULDER' ;
  VALUE V695ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V696ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V697ffff  0='(0) NK-UNASCERTAIN' 1='(1) I' 2='(2) II' 3='(3) III' 4='(4) IV' 5='(5) V'
                  9='(9) NEVER HAD A JOB' ;
  VALUE V698ffff  0='(0) NK-UNASCERTAIN' 1='(1) PROF-MANANGERIAL' 2='(2) CLERICAL'
                  3='(3) SKILLED MANUAL' 4='(4) SEMI-SKILLED' 5='(5) UNSKILLED MANUAL'
                  9='(9) NEVER HAD A JOB' ;
  VALUE V699ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO READING DIFF' 2='(2) SOME READNG DIFF'
                  3='(3) BOY CANNOT READ' ;
  VALUE V700ffff  0='(0) NK-UNASCERTAIN' 1='(1) 1' 2='(2) 2' 3='(3) 3 OR MORE'
                  9='(9) NO JOB LAST YEAR' ;
  VALUE V701ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOOKING FOR WORK' 2='(2) HOLIDAY'
                  3='(3) NOT LOOKING' 8='(8) ILLNESS,NO EMPL' 9='(9) NEVER OUT OF WRK' ;
  VALUE V702ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO ILLNESS' 2='(2) ILLNESS, NO HOSP'
                  3='(3) OUTPATIENT' 4='(4) INPATIENT' ;
  VALUE V703ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO INJURY' 2='(2) INJURY, NO HOSP'
                  3='(3) OUTPATIENT' 4='(4) INPATIENT' ;
  VALUE V704ffff  0='(0) NK-UNASCERTAIN' 1='(1) SPORT' 2='(2) INDUSTRIAL INJRY'
                  3='(3) ROAD ACCIDENT' 4='(4) FIGHTING HORSPLY' 5='(5) OTHER'
                  9='(9) NO INJ LST 2 YRS' ;
  VALUE V705ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO DEBTS' 2='(2) NOT SAID-TOT<50P'
                  3='(3) 1-19 POUNDS' 4='(4) 20-50 POUNDS' 5='(5) OVER 50 POUNDS' ;
  VALUE V706ffff  0='(0) NK-UNASCERTAIN' 1='(1) PERSONAL' 2='(2) HIRE PURCH,CREDT'
                  3='(3) FINES' 4='(4) OTHER' 9='(9) NO DEBTS' ;
  VALUE V707ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES' 2='(2) NO' 9='(9) NO LIVE PARENT' ;
  VALUE V708ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES' 2='(2) NO' 9='(9) NO LIVE PARENT' ;
  VALUE V709ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES' 2='(2) NO' 9='(9) NO LIVE PARENT' ;
  VALUE V710ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES' 2='(2) NO' 9='(9) NO LIVE PARENT' ;
  VALUE V711ffff  0='(0) NK-UNASCERTAIN' 1='(1) INDEPENDENCE' 2='(2) TENSION' 3='(3) BOTH'
                  4='(4) OTHER' 9='(9) NO LIVE PARENT' ;
  VALUE V712ffff  0='(0) NK-UNASCERTAIN' 1='(1) PLAY,WATCH SPORT' 2='(2) DRIVE,FIX VEHIC'
                  3='(3) DANCE CLUBS-DISC' 4='(4) GOING TO PUBS' 5='(5) LISTEN TO RECORD'
                  6='(6) OTHER' ;
  VALUE V713ffff  0='(0) NK-UNASCERTAIN' 1='(1) PLAY,WATCH SPORT' 2='(2) DRIVE,FIX VEHIC'
                  3='(3) DANCE CLUBS-DISC' 4='(4) GOING TO PUBS' 5='(5) LISTEN TO RECORD'
                  6='(6) OTHER' ;
  VALUE V714ffff  0='(0) NK-UNASCERTAIN' 1='(1) PLAY,WATCH SPORT' 2='(2) DRIVE,FIX VEHIC'
                  3='(3) DANCE CLUBS-DISC' 4='(4) GOING TO PUBS' 5='(5) LISTEN TO RECORD'
                  6='(6) OTHER' ;
  VALUE V715ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO GP >=4 MATES' 2='(2) NOT STRUCTR GANG'
                  3='(3) STRUCTUR GANG' ;
  VALUE V716ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO GP >=4 MATES' 2='(2) IN GROUP-NO V/F'
                  3='(3) GROUP-VANDALISM' 4='(4) GROUP-FIGHTING' 5='(5) GRP-FIGHT/VANDL' ;
  VALUE V717ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO GP >=4 MATES' 2='(2) NOT STRUCTR GANG'
                  3='(3) STRUCTURED GANG' ;
  VALUE V718ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO GP >=4 MATES' 2='(2) IN GROUP-NO V/F'
                  3='(3) GROUP-VANDALISM' 4='(4) GROUP-FIGHTING' 5='(5) GRP-FIGHT/VANDL' ;
  VALUE V719ffff  0='(0) NK-UNASCERTAIN' 1='(1) NONE' 2='(2) 70 OR LESS' 3='(3) 71-139'
                  4='(4) 140' 5='(5) MORE THAN 140' ;
  VALUE V720ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO EFFECT' 2='(2) SOME INEBRIATION'
                  3='(3) GETS DRUNK' 9='(9) NOT APPLICABLE' ;
  VALUE V721ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' 3='(3) NO ADMIT BUT OBV' ;
  VALUE V722ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' 3='(3) NO ADMIT BUT OBV' ;
  VALUE V723ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER BET' 2='(2) NOTHING LAST YR'
                  3='(3) 50P OR LESS' 4='(4) 51-99P' 5='(5) 1 POUND OR MORE' ;
  VALUE V724ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER BET' 2='(2) NOTHING LAST YR'
                  3='(3) LESS THAN 10P' 4='(4) 10P - 1 POUND' 5='(5) OVER 1 POUND' ;
  VALUE V725ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER BET' 2='(2) NOTHING LAST YR'
                  3='(3) 50P OR LESS' 4='(4) OVER 50P' ;
  VALUE V726ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER BET' 2='(2) NOTHING LAST YR'
                  3='(3) 50P OR LESS' 4='(4) 51P - 3 POUNDS' 5='(5) OVER 3 POUNDS' ;
  VALUE V727ffff  0='(0) NK-UNASCERTAIN' 1='(1) ALONE' 2='(2) ONE MATE' 3='(3) MATES'
                  9='(9) DENIES ACT' ;
  VALUE V728ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELF-EXCULPATION' 2='(2) PEER PRESSURE'
                  3='(3) RATIONAL REASON' 4='(4) ENJOYMENT' 5='(5) OTHER' 6='(6) DONT KNOW'
                  9='(9) DENIES ACT' ;
  VALUE V729ffff  0='(0) NK-UNASCERTAIN' 1='(1) ALONE' 2='(2) ONE MATE' 3='(3) MATES'
                  9='(9) DENIES ACT' ;
  VALUE V730ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELF-EXCULPATION' 2='(2) PEER PRESSURE'
                  3='(3) RATIONAL REASON' 4='(4) ENJOYMENT' 5='(5) OTHER' 9='(9) DENIES ACT' ;
  VALUE V731ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELF-EXCULPATION' 3='(3) RATIONAL REASON'
                  4='(4) ENJOYMENT' 5='(5) OTHER' 6='(6) DONT KNOW' 9='(9) DENIES ACT' ;
  VALUE V732ffff  0='(0) NK-UNASCERTAIN' 1='(1) ALONE' 2='(2) ONE MATE' 3='(3) MATES'
                  9='(9) DENIES ACT' ;
  VALUE V733ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELF-EXCULPATION' 2='(2) PEER PRESSURE'
                  3='(3) RATIONAL REASON' 4='(4) ENJOYMENT' 5='(5) OTHER' 6='(6) DONT KNOW'
                  9='(9) DENIES ACT' ;
  VALUE V734ffff  0='(0) NK-UNASCERTAIN' 1='(1) ALONE' 2='(2) ONE MATE' 3='(3) MATES'
                  9='(9) DENIES ACT' ;
  VALUE V735ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELF-EXCULPATION' 2='(2) PEER PRESSURE'
                  3='(3) RATIONAL REASON' 4='(4) ENJOYMENT' 5='(5) OTHER' 6='(6) DONT KNOW'
                  9='(9) DENIES ACT' ;
  VALUE V736ffff  0='(0) NK-UNASCERTAIN' 1='(1) ALONE' 2='(2) ONE MATE' 3='(3) MATES'
                  9='(9) DENIES ACT' ;
  VALUE V737ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELF-EXCULPATION' 2='(2) PEER PRESSURE'
                  3='(3) RATIONAL REASON' 4='(4) ENJOYMENT' 9='(9) DENIES ACT' ;
  VALUE V738ffff  0='(0) NK-UNASCERTAIN' 1='(1) ALONE' 2='(2) ONE MATE' 3='(3) MATES'
                  9='(9) DENIES ACT' ;
  VALUE V739ffff  0='(0) NK-UNASCERTAIN' 1='(1) SELF-EXCULPATION' 2='(2) PEER PRESSURE'
                  3='(3) RATIONAL REASON' 4='(4) ENJOYMENT' 9='(9) DENIES ACT' ;
  VALUE V740ffff  0='(0) NK-UNASCERTAIN' 1='(1) NON-USER' 2='(2) EXPERIMENTER'
                  3='(3) HABIT,PAST ONLY' 4='(4) CURRENT HABITUAL' ;
  VALUE V741ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOT OPPORTUNITY' 2='(2) OPPORTUN-NO TAKE'
                  9='(9) HAS TAKEN DRUGS' ;
  VALUE V742ffff  0='(0) NK-UNASCERTAIN' 1='(1) OUTSIDE UK' 2='(2) OUTSID LOND POST'
                  3='(3) OUTSID STDY AREA' 4='(4) IMMED STDY AREA' ;
  VALUE V743ffff  1='(1) INTERVIEWER Q' 2='(2) INTERVIEWER K' 3='(3) INTERVIEWER L'
                  4='(4) INTERVIEWER M' 9='(9) NOT ALLOC,ABROAD' ;
  VALUE V744ffff  1='(1) ALLOCATED RANDOM' 2='(2) NOT RANDM-INTV Q'
                  3='(3) NOT RANDM-OTHER' 9='(9) NOT ALLOCATED' ;
  VALUE V745ffff  1='(1) LETTER' 2='(2) TELEPHONE CALL' 3='(3) PERSONAL VISIT' 4='(4) OTHER'
                  9='(9) NO ATTMPT-ABROAD' ;
  VALUE V746ffff  1='(1) NONE' 2='(2) 1' 3='(3) 2' 4='(4) 3 OR MORE' ;
  VALUE V747ffff  1='(1) REPLIED YES' 2='(2) CAME EASILY-1 V' 3='(3) CAME-RESLT OF 1V'
                  4='(4) <1 VISIT-NO REFS' 5='(5) <1 VIST-SM REFS'
                  6='(6) NOT INTERVIEWED' 8='(8) NA-IN INSTITUTN'
                  9='(9) NOT ALLOC-ABROAD' ;
  VALUE V748ffff  0='(0) NK-UNASCERTAIN' 98='(98) BEAT UP-NO RETAL' 99='(99) NO FIGHTS' ;
  VALUE V749ffff  0='(0) NK-UNASCERTAIN' 97='(97) 97 OR MORE' 98='(98) BEAT UP NO RETAL'
                  99='(99) NONE' ;
  VALUE V750ffff  0='(0) NK-UNASCERTAIN' 99='(99) NONE' ;
  VALUE V751ffff  0='(0) NK-UNASCERTAIN' 97='(97) 97 OR MORE' 99='(99) NONE' ;
  VALUE V752ffff  0='(0) NK-UNASCERTAIN' 999='(999) NEVER' ;
  VALUE V753ffff  0='(0) NK-UNASCERTAIN' 997='(997) 997 OR MORE DAYS' 999='(999) NEVER' ;
  VALUE V754ffff  0='(0) NK-UNASCERTAIN' 98='(98) ONLY TO THREATEN' 99='(99) NEVER' ;
  VALUE V755ffff  0='(0) NK-UNASCERTAIN' 98='(98) ONLY TO THREATEN' 99='(99) NEVER' ;
  VALUE V756ffff  0='(0) NK-UNASCERTAIN' 1='(1) STOPPED BY POLIC'
                  2='(2) NO STRUG, PUSHED' 3='(3) NO STRUG, HIT' 4='(4) STRUGL, GET AWAY'
                  5='(5) FOUGHT,NO ATTACK' 6='(6) ATTACKED POLICE' 7='(7) NEVER STOPPED'
                  8='(8) STOPPED,SEARCHED' ;
  VALUE V757ffff  0='(0) NK-UNASCERTAIN' 1='(1) STOPPED BY POLIC'
                  2='(2) NO STRUG, PUSHED' 3='(3) NO STRUG, HIT' 4='(4) STRUGL, GET AWAY'
                  5='(5) FOUGHT,NO ATTACK' 6='(6) ATTACKED POLICE' 7='(7) NEVER STOPPED'
                  8='(8) STOPPED,SEARCHED' ;
  VALUE V758ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES' 2='(2) NO' ;
  VALUE V759ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES' 2='(2) NO' ;
  VALUE V760ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES' 2='(2) NO' ;
  VALUE V761ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES' 2='(2) NO' ;
  VALUE V762ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES' 2='(2) NO' ;
  VALUE V763ffff  0='(0) NK-UNASCERTAIN' 1='(1) YES' 2='(2) NO' ;
  VALUE V764ffff  0='(0) NK-UNASCERTAIN' 99='(99) NEVER' ;
  VALUE V765ffff  0='(0) NK-UNASCERTAIN' 99='(99) NEVER' ;
  VALUE V766ffff  0='(0) NK-UNASCERTAIN' 99='(99) NEVER' ;
  VALUE V767ffff  0='(0) NK-UNASCERTAIN' 99='(99) NEVER' ;
  VALUE V768ffff  0='(0) NK-UNASCERTAIN' 97='(97) 97 OR MORE TIMES' 99='(99) NEVER' ;
  VALUE V769ffff  0='(0) NK-UNASCERTAIN' 97='(97) 97 OR MORE TIMES' 99='(99) NEVER' ;
  VALUE V770ffff  0='(0) NK-UNASCERTAIN' 97='(97) 97 OR MORE TIMES' 99='(99) NEVER' ;
  VALUE V771ffff  0='(0) NK-UNASCERTAIN' 97='(97) 97 OR MORE TIMES' 99='(99) NEVER' ;
  VALUE V772ffff  0='(0) NK-UNASCERTAIN' 99='(99) NEVER' ;
  VALUE V773ffff  0='(0) NK-UNASCERTAIN' 97='(97) 97 OR MORE TIMES' 99='(99) NEVER' ;
  VALUE V774ffff  0='(0) NK-UNASCERTAIN' 99='(99) NEVER' ;
  VALUE V775ffff  0='(0) NK-UNASCERTAIN' 97='(97) 97 OR MORE TIMES' 99='(99) NEVER' ;
  VALUE V776ffff  0='(0) NK-UNASCERTAIN' 99='(99) NEVER' ;
  VALUE V777ffff  0='(0) NK-UNASCERTAIN' 99='(99) NEVER' ;
  VALUE V778ffff  0='(0) NK-UNASCERTAIN' ;
  VALUE V779ffff  0='(0) NK-UNASCERTAIN' 12='(12) 100 OR MORE' ;
  VALUE V780ffff  0='(0) NK-UNASCERTAIN' 500='(500) 5 FEET 0 INCHES'
                  604='(604) 6 FEET 4 INCHES' ;
  VALUE V781ffff  0='(0) NK-UNASCERTAIN' 9='(9) 6 STONE 9 POUNDS'
                  100='(100) 7 STONE 0 POUNDS' 1107='(1107) 17 STONE 7 POUND' ;
  VALUE V782ffff  0='(0) NK-UNASCERTAIN' 311='(311) 14 YRS 11 MONTHS'
                  400='(400) 15 YRS 0 MONTHS' 904='(904) 20 YRS 4 MONTHS' ;
  VALUE V783ffff  0='(0) NK-UNASCERTAIN' 1='(1) AT0' 2='(2) AT1' 3='(3) AT2' 4='(4) AT3' 5='(5) AT4'
                  6='(6) AT5' 7='(7) AT6' 8='(8) AT7' 9='(9) AT8' 10='(10) AT9' ;
  VALUE V784ffff  0='(0) NK-UNASCERTAIN' 1='(1) NON-GAMBLER PAST'
                  2='(2) MODERATE GAMBLER' 3='(3) HEAVY GAMBLER' ;
  VALUE V785ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOT IN LAST 3 YR' 2='(2) NON-ANTISOCIAL'
                  3='(3) STRUCTURED GANG' ;
  VALUE V786ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER INTERCOURS'
                  2='(2) MODERATE ACTIVTY' 3='(3) HIGH ACTIVITY' ;
  VALUE V787ffff  0='(0) NK-UNASCERTAIN' 1='(1) HIGH STABILITY' 2='(2) AVE STABILITY'
                  3='(3) UNSTABLE JOB REC' ;
  VALUE V788ffff  0='(0) NK-UNASCERTAIN' 1='(1) HIGH' 2='(2) AVERAGE' 3='(3) LOW' ;
  VALUE V789ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) AVERAGE' 3='(3) HIGH' ;
  VALUE V790ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) AVERAGE' 3='(3) HEAVY DRINKER' ;
  VALUE V791ffff  0='(0) NK-UNASCERTAIN' 1='(1) GOOD' 2='(2) AVERAGE' 3='(3) POOR' ;
  VALUE V792ffff  0='(0) NK-UNASCERTAIN' 1='(1) NEVER SMOKED REG' 2='(2) MODERATE SMOKER'
                  3='(3) HEAVY SMOKER' ;
  VALUE V793ffff  0='(0) NOT INTERVIEWED' 1='(1) NOT CONVICTED' 2='(2) CONVICTED 1X'
                  3='(3) RECIDIVIST' ;
  VALUE V794ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) AVERAGE' 3='(3) HIGH' ;
  VALUE V795ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) AVERAGE' 3='(3) HIGH' ;
  VALUE V796ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) AVERAGE' 3='(3) HIGH' ;
  VALUE V797ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) AVERAGE' 3='(3) HIGH' ;
  VALUE V798ffff  0='(0) NK-UNASCERTAIN' 1='(1) BY POST OR PHONE'
                  2='(2) RESULT 1ST VISIT' 3='(3) NEEDED PERSUASN' ;
  VALUE V799ffff  0='(0) NK-UNASCERTAIN' 1='(1) 7 - LOW' 2='(2) 8-11 - AVERAGE'
                  3='(3) >=12 - HIGH' ;
  VALUE V800ffff  0='(0) NK-UNASCERTAIN' 1='(1) LOW' 2='(2) AVERAGE' 3='(3) HIGH' ;
  VALUE V801ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOT INJURED' 2='(2) INJURED,NO HOSP'
                  3='(3) HOSP TREATMENT' ;
  VALUE V802ffff  0='(0) NK-UNASCERTAIN' 1='(1) DOES NOT' 2='(2) < 1X PER MONTH'
                  3='(3) <= 1X PER MONTH' ;
  VALUE V803ffff  0='(0) NOT INTERVIEWED' 4='(4) INTERVIEWER M' 5='(5) INTERVIEWER N' ;
  VALUE V804ffff  0='(0) NOT INTERVIEWED' 1='(1) OUR OFFICE' 3='(3) MANS HOME'
                  4='(4) PENAL ESTBLSHMNT' 5='(5) OTHER' ;
  VALUE V805ffff  0='(0) NK-UNASCERTAIN' 100='(100) 21 YRS 0 MONTHS'
                  101='(101) 21 YEARS 1 MONTH' 402='(402) 24 YRS 2 MONTHS' ;
  VALUE V806ffff  0='(0) NK-UNASCERTAIN' 1='(1) EMPLOYED/SELF-EMPL'
                  2='(2) FULL TIME EDUCATN' 3='(3) IN FORCES' 4='(4) PENAL INSTITUTION'
                  5='(5) UNEMPLOYED' 6='(6) OTHER' ;
  VALUE V807ffff  0='(0) NK-UNASCERTAIN' 99='(99) NOT EMPL->=3 MOS' ;
  VALUE V808ffff  0='(0) NK-UNASCERTAIN' 97='(97) 97 OR MORE WEEKS' 99='(99) NONE' ;
  VALUE V809ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO ENGAG,NO COHA'
                  2='(2) ENGAG,NO COHABIT' 3='(3) COHAB,NEVER MARR'
                  4='(4) MARRIED NOT SEP' 5='(5) MARRIED,NOW SEP'
                  6='(6) MAR->SEP/COH,MAR' ;
  VALUE V810ffff  0='(0) NK-UNASCERTAIN' 102='(102) 17 YRS 2 MONTHS'
                  200='(200) 18 YRS 0 MONTHS' 608='(608) 22 YRS 8 MONTHS'
                  999='(999) NOT MARRIED' ;
  VALUE V811ffff  0='(0) NK-UNASCERTAIN' 8='(8) NO CHILD,EXPCTNG'
                  9='(9) NO CHLD,NONE EXP' ;
  VALUE V812ffff  0='(0) NK-UNASCERTAIN' 1='(1) 1ST, IN WEDLOCK'
                  2='(2) 1ST, OUT OF WDLCK' 9='(9) NO CHILDREN' ;
  VALUE V813ffff  0='(0) NK-UNASCERTAIN' 1='(1) ALONE' 2='(2) OPERATIVE PARENT'
                  3='(3) PARENTS,WIFE/COH' 4='(4) WIFE/COHABITEE'
                  5='(5) PARENTS-LAW,WIFE' 6='(6) WIFE/COH-OTHERS'
                  7='(7) OTH THN WIFE/COH' 8='(8) INSTITUTION' ;
  VALUE V814ffff  0='(0) NK-UNASCERTAIN' 106='(106) 15 YRS 6 MONTHS'
                  109='(109) 15 YRS 9 MONTHS' 808='(808) 22 YRS 8 MONTHS'
                  999='(999) NEVER LEFT HOME' ;
  VALUE V815ffff  0='(0) NK-UNASCERTAIN' 1='(1) DOES NOT SMOKE' 2='(2) 50P OR LESS'
                  3='(3) 51P - 1 POUND' 4='(4) 1.01-1.50 POUNDS' 5='(5) 1.51-2.50 POUNDS'
                  6='(6) 2.51-3.50 POUNDS' 7='(7) 3.51-4.50 POUNDS'
                  8='(8) OVER 4.50 POUNDS' ;
  VALUE V816ffff  0='(0) NK-UNASCERTAIN' 1='(1) DOES NOT DRINK' 2='(2) 1 POUND OR LESS'
                  3='(3) 1.01-2.50 POUNDS' 4='(4) 2.51-5 POUNDS' 5='(5) 5.01-8 POUNDS'
                  6='(6) 8.01-12 POUNDS' 7='(7) 12.01-16 POUNDS' 8='(8) 16.01-20 POUNDS'
                  9='(9) OVER 20 POUNDS' ;
  VALUE V817ffff  0='(0) NK-UNASCERTAIN' 1='(1) LESS' 2='(2) ABOUT THE SAME' 3='(3) MORE'
                  8='(8) MARRIED,SEPRATED' 9='(9) NOT MARR/COHABIT' ;
  VALUE V818ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOTHING' 2='(2) 1-50P' 3='(3) 51P-1 POUND'
                  4='(4) 1.01-2 POUNDS' 5='(5) 2.01-4 POUNDS' 6='(6) 4.01-6 POUNDS'
                  7='(7) OVER 6 POUNDS' ;
  VALUE V819ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOTHING' 2='(2) 1-2 POUNDS' 4='(4) 4 POUNDS'
                  700='(700) 700 POUNDS' 997='(997) <= 997 POUNDS' ;
  VALUE V820ffff  0='(0) NK-UNASCERTAIN' 1='(1) HIRE PURCH,CREDT'
                  2='(2) PERSNL DEBTS,FIN' 3='(3) BOTH' 9='(9) NO DEBTS' ;
  VALUE V821ffff  0='(0) NK-UNASCERTAIN' 8='(8) 8 OR MORE GIRLS' 9='(9) NO INTERCOURSE' ;
  VALUE V822ffff  0='(0) NK-UNASCERTAIN' 1='(1) DRIVEN-NO ACCDNT' 2='(2) ACCIDENT-NO INJ'
                  3='(3) ACCIDENT-INJURY' 9='(9) NOT DRIVEN 2YRS' ;
  VALUE V823ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO CONVICT 2YRS' 2='(2) 1 CONVICTION'
                  3='(3) 2' 4='(4) 3' 5='(5) 4' 8='(8) >= 7 CONVICTION' 9='(9) NOT DRIVEN 2YRS' ;
  VALUE V824ffff  0='(0) NK-UNASCERTAIN' 8='(8) NONE' ;
  VALUE V825ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
  VALUE V826ffff  0='(0) NK-UNASCERTAIN' 1='(1) LESS' 2='(2) ABOUT THE SAME' 3='(3) MORE'
                  8='(8) MARRIED,SEPARATE' 9='(9) NOT MARR/COHABIT' ;
  VALUE V827ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOT TAKEN DRUGS' 2='(2) TAKEN IRREGULRLY'
                  3='(3) REG, NO INJECT' 4='(4) INJECTED' ;
  VALUE V828ffff  0='(0) NK-UNASCERTAIN' 99='(99) NONE' ;
  VALUE V829ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOT START FIGHT' 2='(2) STARTED FIGHT'
                  8='(8) DONT KNOW' 9='(9) NO FIGHTS' ;
  VALUE V830ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO SERIOUS HURT' 2='(2) SOMEONE SER HURT'
                  9='(9) NO FIGHTS' ;
  VALUE V831ffff  0='(0) NK-UNASCERTAIN' 1='(1) CARRIED,NOT USED' 2='(2) WEAPON CARRIED'
                  3='(3) WPN USED,NOT CAR' 4='(4) WPN CARRIED,USED' 9='(9) NO FIGHTS' ;
  VALUE V832ffff  0='(0) NK-UNASCERTAIN' 97='(97) 97 OR MORE TIMES' 98='(98) NEVER' ;
  VALUE V833ffff  0='(0) NK-UNASCERTAIN' 97='(97) 97 OR MORE TIMES' 98='(98) NEVER' ;
  VALUE V834ffff  0='(0) NK-UNASCERTAIN' 98='(98) NEVER' ;
  VALUE V835ffff  0='(0) NK-UNASCERTAIN' 98='(98) NEVER' ;
  VALUE V836ffff  0='(0) NK-UNASCERTAIN' 98='(98) NEVER' ;
  VALUE V837ffff  0='(0) NK-UNASCERTAIN' 98='(98) NEVER' ;
  VALUE V838ffff  0='(0) NK-UNASCERTAIN' 98='(98) NEVER' ;
  VALUE V839ffff  0='(0) NK-UNASCERTAIN' 97='(97) 97 OR MORE TIMES' 98='(98) NEVER' ;
  VALUE V840ffff  0='(0) NK-UNASCERTAIN' 1='(1) LESS OFTEN' 2='(2) NO CHANGE'
                  3='(3) MORE OFTEN' ;
  VALUE V841ffff  0='(0) NK-UNASCERTAIN' 1='(1) READ CARDS' 2='(2) UNABLE-READ ALL' ;
  VALUE V842ffff  0='(0) NOT INTERVIEWED' 1='(1) TEMP RECIDIVISTS'
                  2='(2) PERSIST RECIDIV' 3='(3) CONTRL,UNCONVICT'
                  4='(4) DEPRIVED,UNCONV' ;
  VALUE V843ffff  0='(0) NOT INTERVIEWED' ;
  VALUE V844ffff  0='(0) NOT INTERVIEWED' 5='(5) INTERVIEWER N' ;
  VALUE V845ffff  0='(0) NOT INTERVIEWED' 1='(1) OUR OFFICE' 2='(2) CAR' 3='(3) MANS HOME'
                  4='(4) PENAL ESTBLSHMNT' 5='(5) OTHER' ;
  VALUE V846ffff  0='(0) NK-UNASCERTAIN' 302='(302) 23 YRS 2 MONTHS'
                  304='(304) 23 YRS 4 MONTHS' 610='(610) 26 YRS 10 MONTHS' ;
  VALUE V847ffff  0='(0) NK-UNASCERTAIN' 1='(1) EMPL/SELF-EMPL' 2='(2) FULL TIME EDUCTN'
                  4='(4) PENAL INSTITUTN' 5='(5) UNEMPLOYED' 6='(6) OTHER' ;
  VALUE V848ffff  0='(0) NK-UNASCERTAIN' 1='(1) HAPPY' 2='(2) NON-COMMITTAL' 3='(3) UNHAPPY'
                  9='(9) NEVER HAD A JOB' ;
  VALUE V849ffff  0='(0) NK-UNASCERTAIN' 12='(12) 12 POUNDS' 20='(20) 20 POUNDS'
                  95='(95) 95 POUNDS' 97='(97) <= 97 POUNDS' 99='(99) NOT EMPLOYED 2YR' ;
  VALUE V850ffff  0='(0) NK-UNASCERTAIN' 1='(1) 1 WEEK OR LESS' 2='(2) 2 WEEKS'
                  91='(91) 91 WEEKS' 97='(97) 97 OR MORE WEEKS' 99='(99) NONE' ;
  VALUE V851ffff  0='(0) NK-UNASCERTAIN' 1='(1) 1 WEEK OR LESS' 99='(99) NONE' ;
  VALUE V852ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO RELATIONSHIP' 2='(2) GIRLFRIEND ONLY'
                  3='(3) ENGAGED,NOT COHA' 4='(4) COHAB,NEVR MARR'
                  5='(5) MARRIED,NOT SEP' 6='(6) MARRIED,NOW SEP'
                  7='(7) MAR->SEP/COH,MAR' ;
  VALUE V853ffff  0='(0) NK-UNASCERTAIN' 202='(202) 18 YRS 2 MONTHS'
                  205='(205) 18 YRS 5 MONTHS' 901='(901) 25 YEARS 1 MONTH'
                  999='(999) NOT MARRIED' ;
  VALUE V854ffff  0='(0) NK-UNASCERTAIN' 8='(8) NO CHILD,EXPECT' 9='(9) 0 CHILD 0 EXPECT' ;
  VALUE V855ffff  0='(0) NK-UNASCERTAIN' 1='(1) 1ST, IN WEDLOCK'
                  2='(2) 1ST, OUT OF WDLCK' 9='(9) NO CHILDREN' ;
  VALUE V856ffff  0='(0) NK-UNASCERTAIN' 1='(1) CONTINUALLY' 2='(2) SEPARTN-ILLNESS'
                  3='(3) SEPARATN-OTH RSN' 4='(4) NEVER TAKEN RESP'
                  5='(5) NO CHILDREN FATH' ;
  VALUE V857ffff  0='(0) NK-UNASCERTAIN' 1='(1) NONE,COITUS INTR' 2='(2) MAN/GIRL USES'
                  9='(9) NOT HAVING SEX' ;
  VALUE V858ffff  0='(0) NK-UNASCERTAIN' 1='(1) ALONE' 2='(2) OPERATIVE PARENT'
                  3='(3) PARENTS,WIFE/COH' 4='(4) WIFE/COHABITEE'
                  5='(5) PARENTS-LAW,WIFE' 6='(6) WIFE/COH-OTHERS'
                  7='(7) OTH THN WIFE/COH' 8='(8) INSTITUTION' ;
  VALUE V859ffff  0='(0) NK-UNASCERTAIN' 1='(1) OWN HOUSE - FLAT'
                  2='(2) PRIVATELY RENTED' 3='(3) COUNCIL RENTED' 4='(4) INSTITUTION' ;
  VALUE V860ffff  0='(0) NK-UNASCERTAIN' 1='(1) DOES NOT SMOKE' 2='(2) 50P OR LESS'
                  3='(3) 51P - 1 POUND' 4='(4) 1.01-1.50 POUNDS' 5='(5) 1.51-2.50 POUNDS'
                  6='(6) 2.51-3.50 POUNDS' 7='(7) 3.51-4.50 POUNDS'
                  8='(8) OVER 4.50 POUNDS' ;
  VALUE V861ffff  0='(0) NK-UNASCERTAIN' 1='(1) DOES NOT DRINK' 2='(2) 1 POUND OR LESS'
                  3='(3) 1.01-2.50 POUNDS' 4='(4) 2.51-5 POUNDS' 5='(5) 5.01-8 POUNDS'
                  6='(6) 8.01-12 POUNDS' 7='(7) 12.01-16 POUNDS' 8='(8) 16.01-20 POUNDS'
                  9='(9) OVER 20 POUNDS' ;
  VALUE V862ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOTHING' 2='(2) 1-2 POUNDS'
                  11='(11) 11 POUNDS' 850='(850) 850 POUNDS' 997='(997) >= 997 POUNDS' ;
  VALUE V863ffff  0='(0) NK-UNASCERTAIN' 1='(1) HIRE PURCH,CREDT'
                  2='(2) PERSNL DEBTS,FIN' 3='(3) BOTH' 9='(9) NO DEBTS' ;
  VALUE V864ffff  0='(0) NK-UNASCERTAIN' 8='(8) 8 OR MORE GIRLS' 9='(9) NO INTERCOURSE' ;
  VALUE V865ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOT CONVIC 2 YRS' 2='(2) 1 CONVICTION'
                  3='(3) 2' 4='(4) 3' 9='(9) NOT DRIVEN 2 YR' ;
  VALUE V866ffff  0='(0) NK-UNASCERTAIN' 8='(8) NONE' ;
  VALUE V867ffff  0='(0) NK-UNASCERTAIN' 1='(1) PARENTS' 2='(2) BROTHERS SISTERS'
                  3='(3) ONE MATE' 4='(4) MATES' 5='(5) WIFE-COHAB-GIRLF'
                  6='(6) MATES AND GIRLS' 7='(7) ALONE' 8='(8) OTHER' ;
  VALUE V868ffff  0='(0) NK-UNASCERTAIN' 1='(1) NOT TAKEN DRUGS' 2='(2) TAKE DRUGS IRREG'
                  3='(3) TAKEN DRUGS REG' 4='(4) INJECTED' ;
  VALUE V869ffff  0='(0) NK-UNASCERTAIN' 99='(99) NONE' ;
  VALUE V870ffff  0='(0) NK-UNASCERTAIN' 97='(97) 97 OR MORE TIMES' 98='(98) NEVER' ;
  VALUE V871ffff  0='(0) NK-UNASCERTAIN' 98='(98) NEVER' ;
  VALUE V872ffff  0='(0) NK-UNASCERTAIN' 97='(97) 97 OR MORE TIMES' 98='(98) NEVER' ;
  VALUE V873ffff  0='(0) NK-UNASCERTAIN' 98='(98) NEVER' ;
  VALUE V874ffff  0='(0) NK-UNASCERTAIN' 98='(98) NEVER' ;
  VALUE V875ffff  0='(0) NK-UNASCERTAIN' 98='(98) NEVER' ;
  VALUE V876ffff  0='(0) NK-UNASCERTAIN' 98='(98) NEVER' ;
  VALUE V877ffff  0='(0) NK-UNASCERTAIN' 97='(97) 97 OR MORE TIMES' 98='(98) NEVER' ;
  VALUE V878ffff  0='(0) NK-UNASCERTAIN' 1='(1) READ CARDS' 2='(2) UNABLE-READ ALL' ;
  VALUE V879ffff  0='(0) NK-UNASCERTAIN' 1='(1) PAY TAX' 2='(2) AVOID TAX ILLEGL' ;
  VALUE V880ffff  0='(0) NK-UNASCERTAIN' 1='(1) NO' 2='(2) YES' ;
RUN;

* SAS DATA STEP;
DATA;
SET SAS-dataset ;


* USER-DEFINED MISSING VALUES RECODE TO SAS SYSMIS;

/*
   IF (V7 = 0) THEN V7 = .;
   IF (V8 = 0) THEN V8 = .;
   IF (V10 = 0) THEN V10 = .;
   IF (V11 = 0) THEN V11 = .;
   IF (V12 = 0 OR V12 = 9) THEN V12 = .;
   IF (V20 = 9) THEN V20 = .;
   IF (V21 = 9) THEN V21 = .;
   IF (V22 = 9) THEN V22 = .;
   IF (V23 = 9) THEN V23 = .;
   IF (V24 = 9) THEN V24 = .;
   IF (V25 = 9) THEN V25 = .;
   IF (V26 = 9) THEN V26 = .;
   IF (V27 = 9) THEN V27 = .;
   IF (V29 = 0) THEN V29 = .;
   IF (V30 = 0) THEN V30 = .;
   IF (V31 = 0) THEN V31 = .;
   IF (V35 = 0) THEN V35 = .;
   IF (V36 = 0) THEN V36 = .;
   IF (V37 = 0) THEN V37 = .;
   IF (V38 = 0) THEN V38 = .;
   IF (V39 = 0) THEN V39 = .;
   IF (V43 = 0 OR V43 = 4) THEN V43 = .;
   IF (V44 = 0 OR V44 = 4) THEN V44 = .;
   IF (V45 = 0 OR V45 = 3) THEN V45 = .;
   IF (V46 = 0 OR V46 = 3) THEN V46 = .;
   IF (V47 = 0 OR V47 = 3) THEN V47 = .;
   IF (V48 = 0 OR V48 = 3) THEN V48 = .;
   IF (V49 = 0) THEN V49 = .;
   IF (V50 = 0 OR V50 = 3) THEN V50 = .;
   IF (V51 = 0 OR V51 = 3) THEN V51 = .;
   IF (V52 = 0) THEN V52 = .;
   IF (V53 = 0) THEN V53 = .;
   IF (V55 = 0) THEN V55 = .;
   IF (V57 = 0) THEN V57 = .;
   IF (V58 = 0 OR V58 = 4) THEN V58 = .;
   IF (V59 = 0 OR V59 = 6) THEN V59 = .;
   IF (V60 = 0 OR V60 = 6) THEN V60 = .;
   IF (V61 = 0 OR V61 = 4) THEN V61 = .;
   IF (V62 = 0 OR V62 = 5) THEN V62 = .;
   IF (V63 = 0 OR V63 = 5) THEN V63 = .;
   IF (V64 = 0 OR V64 = 3) THEN V64 = .;
   IF (V65 = 0 OR V65 = 3) THEN V65 = .;
   IF (V66 = 0 OR V66 = 3) THEN V66 = .;
   IF (V67 = 0) THEN V67 = .;
   IF (V68 = 0) THEN V68 = .;
   IF (V73 = 0) THEN V73 = .;
   IF (V79 = 0) THEN V79 = .;
   IF (V80 = 0 OR V80 = 3) THEN V80 = .;
   IF (V81 = 0 OR V81 = 3) THEN V81 = .;
   IF (V82 = 0) THEN V82 = .;
   IF (V83 = 0) THEN V83 = .;
   IF (V85 = 0) THEN V85 = .;
   IF (V86 = 0 OR V86 = 3) THEN V86 = .;
   IF (V87 = 0 OR V87 = 3) THEN V87 = .;
   IF (V88 = 0) THEN V88 = .;
   IF (V89 = 0 OR V89 = 3) THEN V89 = .;
   IF (V90 = 0 OR V90 = 3) THEN V90 = .;
   IF (V91 = 0 OR V91 = 3) THEN V91 = .;
   IF (V95 = 0 OR V95 = 4) THEN V95 = .;
   IF (V96 = 0 OR V96 = 4) THEN V96 = .;
   IF (V97 = 0 OR V97 = 3) THEN V97 = .;
   IF (V99 = 0 OR V99 = 7) THEN V99 = .;
   IF (V100 = 0) THEN V100 = .;
   IF (V101 = 0) THEN V101 = .;
   IF (V102 = 0 OR V102 = 3) THEN V102 = .;
   IF (V103 = 0) THEN V103 = .;
   IF (V104 = 0) THEN V104 = .;
   IF (V105 = 0) THEN V105 = .;
   IF (V106 = 0 OR V106 = 4) THEN V106 = .;
   IF (V107 = 0 OR V107 = 4) THEN V107 = .;
   IF (V108 = 0) THEN V108 = .;
   IF (V113 = 0) THEN V113 = .;
   IF (V114 = 0) THEN V114 = .;
   IF (V115 = 0) THEN V115 = .;
   IF (V116 = 0) THEN V116 = .;
   IF (V117 = 0) THEN V117 = .;
   IF (V118 = 0 OR V118 = 6) THEN V118 = .;
   IF (V120 = 0) THEN V120 = .;
   IF (V121 = 0) THEN V121 = .;
   IF (V122 = 0) THEN V122 = .;
   IF (V123 = 0) THEN V123 = .;
   IF (V124 = 0) THEN V124 = .;
   IF (V125 = 0) THEN V125 = .;
   IF (V127 = 0) THEN V127 = .;
   IF (V129 = 0 OR V129 = 3) THEN V129 = .;
   IF (V130 = 0 OR V130 = 3) THEN V130 = .;
   IF (V132 = 0) THEN V132 = .;
   IF (V135 = 0 OR V135 = 4) THEN V135 = .;
   IF (V136 = 0 OR V136 = 4) THEN V136 = .;
   IF (V137 = 0 OR V137 = 3) THEN V137 = .;
   IF (V143 = 0) THEN V143 = .;
   IF (V147 = 0) THEN V147 = .;
   IF (V155 = 0) THEN V155 = .;
   IF (V156 = 0) THEN V156 = .;
   IF (V157 = 0) THEN V157 = .;
   IF (V158 = 0) THEN V158 = .;
   IF (V159 = 0) THEN V159 = .;
   IF (V160 = 0) THEN V160 = .;
   IF (V162 = 0) THEN V162 = .;
   IF (V163 = 0) THEN V163 = .;
   IF (V164 = 0) THEN V164 = .;
   IF (V165 = 0) THEN V165 = .;
   IF (V166 = 0) THEN V166 = .;
   IF (V167 = 0) THEN V167 = .;
   IF (V168 = 0) THEN V168 = .;
   IF (V169 = 0) THEN V169 = .;
   IF (V170 = 0) THEN V170 = .;
   IF (V171 = 0) THEN V171 = .;
   IF (V172 = 0) THEN V172 = .;
   IF (V173 = 0) THEN V173 = .;
   IF (V175 = 0) THEN V175 = .;
   IF (V176 = 0) THEN V176 = .;
   IF (V177 = 0) THEN V177 = .;
   IF (V178 = 0) THEN V178 = .;
   IF (V179 = 0) THEN V179 = .;
   IF (V180 = 0) THEN V180 = .;
   IF (V181 = 0) THEN V181 = .;
   IF (V182 = 0) THEN V182 = .;
   IF (V183 = 0) THEN V183 = .;
   IF (V184 = 0) THEN V184 = .;
   IF (V185 = 0) THEN V185 = .;
   IF (V186 = 0) THEN V186 = .;
   IF (V187 = 0) THEN V187 = .;
   IF (V188 = 0) THEN V188 = .;
   IF (V189 = 0) THEN V189 = .;
   IF (V190 = 0 OR V190 = 4) THEN V190 = .;
   IF (V191 = 0 OR V191 = 4) THEN V191 = .;
   IF (V192 = 0 OR V192 = 4) THEN V192 = .;
   IF (V193 = 0) THEN V193 = .;
   IF (V194 = 0) THEN V194 = .;
   IF (V195 = 0) THEN V195 = .;
   IF (V196 = 0) THEN V196 = .;
   IF (V197 = 0) THEN V197 = .;
   IF (V198 = 0) THEN V198 = .;
   IF (V199 = 0) THEN V199 = .;
   IF (V200 = 0) THEN V200 = .;
   IF (V201 = 0) THEN V201 = .;
   IF (V202 = 0) THEN V202 = .;
   IF (V203 = 0) THEN V203 = .;
   IF (V204 = 0) THEN V204 = .;
   IF (V205 = 0 OR V205 = 5) THEN V205 = .;
   IF (V206 = 0 OR V206 = 5) THEN V206 = .;
   IF (V207 = 0 OR V207 = 5) THEN V207 = .;
   IF (V208 = 0 OR V208 = 5) THEN V208 = .;
   IF (V209 = 0) THEN V209 = .;
   IF (V210 = 0) THEN V210 = .;
   IF (V211 = 0) THEN V211 = .;
   IF (V212 = 0) THEN V212 = .;
   IF (V213 = 0) THEN V213 = .;
   IF (V214 = 0 OR V214 = 4) THEN V214 = .;
   IF (V216 = 0 OR V216 = 5) THEN V216 = .;
   IF (V217 = 0 OR V217 = 7) THEN V217 = .;
   IF (V218 = 0 OR V218 = 3) THEN V218 = .;
   IF (V219 = 0 OR V219 = 3) THEN V219 = .;
   IF (V220 = 0 OR V220 = 3) THEN V220 = .;
   IF (V221 = 6) THEN V221 = .;
   IF (V222 = 0) THEN V222 = .;
   IF (V223 = 0 OR V223 = 4) THEN V223 = .;
   IF (V224 = 0 OR V224 = 4) THEN V224 = .;
   IF (V225 = 0 OR V225 = 3) THEN V225 = .;
   IF (V226 = 0) THEN V226 = .;
   IF (V227 = 0 OR V227 = 6) THEN V227 = .;
   IF (V228 = 0) THEN V228 = .;
   IF (V229 = 0) THEN V229 = .;
   IF (V230 = 0) THEN V230 = .;
   IF (V231 = 0) THEN V231 = .;
   IF (V232 = 0) THEN V232 = .;
   IF (V233 = 0) THEN V233 = .;
   IF (V234 = 0 OR V234 = 4) THEN V234 = .;
   IF (V235 = 0) THEN V235 = .;
   IF (V236 = 0) THEN V236 = .;
   IF (V237 = 0) THEN V237 = .;
   IF (V238 = 0) THEN V238 = .;
   IF (V239 = 0 OR V239 = 3) THEN V239 = .;
   IF (V240 = 0 OR V240 = 3) THEN V240 = .;
   IF (V241 = 0 OR V241 = 3) THEN V241 = .;
   IF (V242 = 0) THEN V242 = .;
   IF (V243 = 0) THEN V243 = .;
   IF (V244 = 0) THEN V244 = .;
   IF (V245 = 0) THEN V245 = .;
   IF (V246 = 0) THEN V246 = .;
   IF (V247 = 0) THEN V247 = .;
   IF (V248 = 0 OR V248 = 6) THEN V248 = .;
   IF (V249 = 0) THEN V249 = .;
   IF (V250 = 0) THEN V250 = .;
   IF (V251 = 0) THEN V251 = .;
   IF (V253 = 0) THEN V253 = .;
   IF (V255 = 0) THEN V255 = .;
   IF (V257 = 0) THEN V257 = .;
   IF (V258 = 0) THEN V258 = .;
   IF (V259 = 0) THEN V259 = .;
   IF (V260 = 0) THEN V260 = .;
   IF (V261 = 0) THEN V261 = .;
   IF (V262 = 0) THEN V262 = .;
   IF (V263 = 0) THEN V263 = .;
   IF (V264 = 0) THEN V264 = .;
   IF (V265 = 0) THEN V265 = .;
   IF (V268 = 0) THEN V268 = .;
   IF (V269 = 0 OR V269 = 4) THEN V269 = .;
   IF (V270 = 0 OR V270 = 4) THEN V270 = .;
   IF (V273 = 0) THEN V273 = .;
   IF (V274 = 0) THEN V274 = .;
   IF (V275 = 0) THEN V275 = .;
   IF (V280 = 0) THEN V280 = .;
   IF (V281 = 0) THEN V281 = .;
   IF (V282 = 0) THEN V282 = .;
   IF (V283 = 0) THEN V283 = .;
   IF (V284 = 0) THEN V284 = .;
   IF (V285 = 0) THEN V285 = .;
   IF (V286 = 0) THEN V286 = .;
   IF (V287 = 0) THEN V287 = .;
   IF (V288 = 0) THEN V288 = .;
   IF (V289 = 0) THEN V289 = .;
   IF (V290 = 0) THEN V290 = .;
   IF (V291 = 0) THEN V291 = .;
   IF (V292 = 0) THEN V292 = .;
   IF (V293 = 0) THEN V293 = .;
   IF (V294 = 0) THEN V294 = .;
   IF (V295 = 0) THEN V295 = .;
   IF (V296 = 0) THEN V296 = .;
   IF (V297 = 0) THEN V297 = .;
   IF (V302 = 0) THEN V302 = .;
   IF (V304 = 0) THEN V304 = .;
   IF (V305 = 0) THEN V305 = .;
   IF (V306 = 0) THEN V306 = .;
   IF (V307 = 0) THEN V307 = .;
   IF (V309 = 0) THEN V309 = .;
   IF (V310 = 0) THEN V310 = .;
   IF (V311 = 0) THEN V311 = .;
   IF (V312 = 0) THEN V312 = .;
   IF (V313 = 0) THEN V313 = .;
   IF (V314 = 0) THEN V314 = .;
   IF (V315 = 0) THEN V315 = .;
   IF (V316 = 0) THEN V316 = .;
   IF (V317 = 0) THEN V317 = .;
   IF (V318 = 0) THEN V318 = .;
   IF (V319 = 0) THEN V319 = .;
   IF (V320 = 0) THEN V320 = .;
   IF (V321 = 0) THEN V321 = .;
   IF (V322 = 0) THEN V322 = .;
   IF (V323 = 0) THEN V323 = .;
   IF (V324 = 0) THEN V324 = .;
   IF (V325 = 0) THEN V325 = .;
   IF (V326 = 0) THEN V326 = .;
   IF (V327 = 0) THEN V327 = .;
   IF (V328 = 0) THEN V328 = .;
   IF (V329 = 0) THEN V329 = .;
   IF (V330 = 0) THEN V330 = .;
   IF (V331 = 0) THEN V331 = .;
   IF (V332 = 0) THEN V332 = .;
   IF (V333 = 0) THEN V333 = .;
   IF (V334 = 0) THEN V334 = .;
   IF (V335 = 0 OR V335 = 9) THEN V335 = .;
   IF (V336 = 0) THEN V336 = .;
   IF (V337 = 0) THEN V337 = .;
   IF (V339 = 0) THEN V339 = .;
   IF (V340 = 0) THEN V340 = .;
   IF (V341 = 0 OR V341 = 9) THEN V341 = .;
   IF (V342 = 0 OR V342 = 9) THEN V342 = .;
   IF (V343 = 0) THEN V343 = .;
   IF (V344 = 0) THEN V344 = .;
   IF (V345 = 0) THEN V345 = .;
   IF (V346 = 0) THEN V346 = .;
   IF (V347 = 0) THEN V347 = .;
   IF (V348 = 0) THEN V348 = .;
   IF (V349 = 0) THEN V349 = .;
   IF (V350 = 0) THEN V350 = .;
   IF (V351 = 0) THEN V351 = .;
   IF (V352 = 0) THEN V352 = .;
   IF (V353 = 0) THEN V353 = .;
   IF (V354 = 0) THEN V354 = .;
   IF (V355 = 0) THEN V355 = .;
   IF (V356 = 0) THEN V356 = .;
   IF (V357 = 0) THEN V357 = .;
   IF (V358 = 0) THEN V358 = .;
   IF (V359 = 0) THEN V359 = .;
   IF (V360 = 0) THEN V360 = .;
   IF (V361 = 0) THEN V361 = .;
   IF (V362 = 0) THEN V362 = .;
   IF (V363 = 0 OR V363 = 9) THEN V363 = .;
   IF (V364 = 0) THEN V364 = .;
   IF (V365 = 0) THEN V365 = .;
   IF (V367 = 0) THEN V367 = .;
   IF (V368 = 0) THEN V368 = .;
   IF (V370 = 0) THEN V370 = .;
   IF (V371 = 0 OR V371 = 4) THEN V371 = .;
   IF (V372 = 0) THEN V372 = .;
   IF (V373 = 0) THEN V373 = .;
   IF (V374 = 0) THEN V374 = .;
   IF (V375 = 0) THEN V375 = .;
   IF (V376 = 0) THEN V376 = .;
   IF (V377 = 0) THEN V377 = .;
   IF (V378 = 0) THEN V378 = .;
   IF (V379 = 0 OR V379 = 4) THEN V379 = .;
   IF (V380 = 0) THEN V380 = .;
   IF (V381 = 0) THEN V381 = .;
   IF (V382 = 0) THEN V382 = .;
   IF (V383 = 0) THEN V383 = .;
   IF (V384 = 0) THEN V384 = .;
   IF (V385 = 0) THEN V385 = .;
   IF (V386 = 0 OR V386 = 4) THEN V386 = .;
   IF (V387 = 0 OR V387 = 5) THEN V387 = .;
   IF (V388 = 0 OR V388 = 4) THEN V388 = .;
   IF (V389 = 0 OR V389 = 5) THEN V389 = .;
   IF (V390 = 0) THEN V390 = .;
   IF (V391 = 0) THEN V391 = .;
   IF (V392 = 0) THEN V392 = .;
   IF (V393 = 0) THEN V393 = .;
   IF (V394 = 0 OR V394 = 4) THEN V394 = .;
   IF (V395 = 5) THEN V395 = .;
   IF (V396 = 0 OR V396 = 6) THEN V396 = .;
   IF (V397 = 0 OR V397 = 7) THEN V397 = .;
   IF (V398 = 0 OR V398 = 4) THEN V398 = .;
   IF (V400 = 0) THEN V400 = .;
   IF (V401 = 0 OR V401 = 4) THEN V401 = .;
   IF (V402 = 0) THEN V402 = .;
   IF (V403 = 0) THEN V403 = .;
   IF (V404 = 0 OR V404 = 6) THEN V404 = .;
   IF (V405 = 0) THEN V405 = .;
   IF (V406 = 0) THEN V406 = .;
   IF (V407 = 0 OR V407 = 5) THEN V407 = .;
   IF (V408 = 0) THEN V408 = .;
   IF (V409 = 0 OR V409 = 4) THEN V409 = .;
   IF (V410 = 0) THEN V410 = .;
   IF (V411 = 0) THEN V411 = .;
   IF (V412 = 0) THEN V412 = .;
   IF (V413 = 0) THEN V413 = .;
   IF (V414 = 0) THEN V414 = .;
   IF (V415 = 0 OR V415 = 6) THEN V415 = .;
   IF (V416 = 0) THEN V416 = .;
   IF (V417 = 0) THEN V417 = .;
   IF (V418 = 0) THEN V418 = .;
   IF (V419 = 0) THEN V419 = .;
   IF (V420 = 0) THEN V420 = .;
   IF (V421 = 0) THEN V421 = .;
   IF (V422 = 0) THEN V422 = .;
   IF (V423 = 0 OR V423 = 5) THEN V423 = .;
   IF (V424 = 0) THEN V424 = .;
   IF (V426 = 0) THEN V426 = .;
   IF (V427 = 0) THEN V427 = .;
   IF (V428 = 0 OR V428 = 7) THEN V428 = .;
   IF (V429 = 0 OR V429 = 7 OR V429 = 8) THEN V429 = .;
   IF (V430 = 0) THEN V430 = .;
   IF (V431 = 0) THEN V431 = .;
   IF (V432 = 0) THEN V432 = .;
   IF (V433 = 0) THEN V433 = .;
   IF (V434 = 0) THEN V434 = .;
   IF (V435 = 0) THEN V435 = .;
   IF (V436 = 0) THEN V436 = .;
   IF (V437 = 0) THEN V437 = .;
   IF (V438 = 0) THEN V438 = .;
   IF (V439 = 0) THEN V439 = .;
   IF (V440 = 0 OR V440 = 4) THEN V440 = .;
   IF (V441 = 0 OR V441 = 4) THEN V441 = .;
   IF (V442 = 0 OR V442 = 4) THEN V442 = .;
   IF (V443 = 0 OR V443 = 4) THEN V443 = .;
   IF (V444 = 0 OR V444 = 4) THEN V444 = .;
   IF (V445 = 0 OR V445 = 4) THEN V445 = .;
   IF (V446 = 0 OR V446 = 4) THEN V446 = .;
   IF (V447 = 0 OR V447 = 4) THEN V447 = .;
   IF (V448 = 0 OR V448 = 4) THEN V448 = .;
   IF (V449 = 0 OR V449 = 4) THEN V449 = .;
   IF (V450 = 0 OR V450 = 4) THEN V450 = .;
   IF (V451 = 0 OR V451 = 4) THEN V451 = .;
   IF (V452 = 0 OR V452 = 4) THEN V452 = .;
   IF (V453 = 0 OR V453 = 4) THEN V453 = .;
   IF (V454 = 0 OR V454 = 4) THEN V454 = .;
   IF (V455 = 0 OR V455 = 4) THEN V455 = .;
   IF (V456 = 0 OR V456 = 4) THEN V456 = .;
   IF (V457 = 0 OR V457 = 4) THEN V457 = .;
   IF (V458 = 0 OR V458 = 4) THEN V458 = .;
   IF (V459 = 0 OR V459 = 4) THEN V459 = .;
   IF (V460 = 0 OR V460 = 4) THEN V460 = .;
   IF (V461 = 0 OR V461 = 4) THEN V461 = .;
   IF (V462 = 0 OR V462 = 4) THEN V462 = .;
   IF (V463 = 0 OR V463 = 4) THEN V463 = .;
   IF (V464 = 0 OR V464 = 4) THEN V464 = .;
   IF (V465 = 0 OR V465 = 4) THEN V465 = .;
   IF (V466 = 0 OR V466 = 4) THEN V466 = .;
   IF (V467 = 0 OR V467 = 4) THEN V467 = .;
   IF (V468 = 0 OR V468 = 4) THEN V468 = .;
   IF (V469 = 0 OR V469 = 4) THEN V469 = .;
   IF (V470 = 0 OR V470 = 4) THEN V470 = .;
   IF (V471 = 0 OR V471 = 4) THEN V471 = .;
   IF (V472 = 0 OR V472 = 4) THEN V472 = .;
   IF (V473 = 0 OR V473 = 4) THEN V473 = .;
   IF (V474 = 0 OR V474 = 4) THEN V474 = .;
   IF (V475 = 0 OR V475 = 4) THEN V475 = .;
   IF (V476 = 0 OR V476 = 4) THEN V476 = .;
   IF (V477 = 0 OR V477 = 4) THEN V477 = .;
   IF (V478 = 0 OR V478 = 4) THEN V478 = .;
   IF (V479 = 0) THEN V479 = .;
   IF (V480 = 0) THEN V480 = .;
   IF (V481 = 0) THEN V481 = .;
   IF (V482 = 0) THEN V482 = .;
   IF (V483 = 0) THEN V483 = .;
   IF (V484 = 0) THEN V484 = .;
   IF (V485 = 0) THEN V485 = .;
   IF (V486 = 0) THEN V486 = .;
   IF (V487 = 0) THEN V487 = .;
   IF (V488 = 0) THEN V488 = .;
   IF (V489 = 0) THEN V489 = .;
   IF (V490 = 0) THEN V490 = .;
   IF (V491 = 0) THEN V491 = .;
   IF (V493 = 0) THEN V493 = .;
   IF (V494 = 0) THEN V494 = .;
   IF (V495 = 0) THEN V495 = .;
   IF (V496 = 0 OR V496 = 9) THEN V496 = .;
   IF (V497 = 0 OR V497 = 9) THEN V497 = .;
   IF (V498 = 0) THEN V498 = .;
   IF (V499 = 0 OR V499 = 99) THEN V499 = .;
   IF (V500 = 0) THEN V500 = .;
   IF (V501 = 0 OR V501 = 88 OR V501 = 99) THEN V501 = .;
   IF (V502 = 0 OR V502 = 99) THEN V502 = .;
   IF (V503 = 0 OR V503 = 888 OR V503 = 999) THEN V503 = .;
   IF (V504 = 0) THEN V504 = .;
   IF (V505 = 0 OR V505 = 9) THEN V505 = .;
   IF (V506 = 0 OR V506 = 8 OR V506 = 9) THEN V506 = .;
   IF (V507 = 0 OR V507 = 8 OR V507 = 9) THEN V507 = .;
   IF (V508 = 0 OR V508 = 9) THEN V508 = .;
   IF (V509 = 0 OR V509 = 8 OR V509 = 9) THEN V509 = .;
   IF (V510 = 0 OR V510 = 8 OR V510 = 9) THEN V510 = .;
   IF (V511 = 0 OR V511 = 9) THEN V511 = .;
   IF (V512 = 0 OR V512 = 98 OR V512 = 99) THEN V512 = .;
   IF (V513 = 0) THEN V513 = .;
   IF (V514 = 0) THEN V514 = .;
   IF (V515 = 0) THEN V515 = .;
   IF (V516 = 0) THEN V516 = .;
   IF (V517 = 0) THEN V517 = .;
   IF (V518 = 0) THEN V518 = .;
   IF (V519 = 0) THEN V519 = .;
   IF (V520 = 0) THEN V520 = .;
   IF (V521 = 0) THEN V521 = .;
   IF (V522 = 0) THEN V522 = .;
   IF (V523 = 0) THEN V523 = .;
   IF (V524 = 0) THEN V524 = .;
   IF (V525 = 0) THEN V525 = .;
   IF (V526 = 0) THEN V526 = .;
   IF (V527 = 0) THEN V527 = .;
   IF (V528 = 0) THEN V528 = .;
   IF (V529 = 0) THEN V529 = .;
   IF (V530 = 0) THEN V530 = .;
   IF (V531 = 0) THEN V531 = .;
   IF (V532 = 0) THEN V532 = .;
   IF (V533 = 0 OR V533 = 999) THEN V533 = .;
   IF (V534 = 0) THEN V534 = .;
   IF (V535 = 0) THEN V535 = .;
   IF (V536 = 0) THEN V536 = .;
   IF (V537 = 0) THEN V537 = .;
   IF (V538 = 0) THEN V538 = .;
   IF (V539 = 0) THEN V539 = .;
   IF (V540 = 0) THEN V540 = .;
   IF (V541 = 0) THEN V541 = .;
   IF (V542 = 0) THEN V542 = .;
   IF (V543 = 0) THEN V543 = .;
   IF (V544 = 0) THEN V544 = .;
   IF (V545 = 0) THEN V545 = .;
   IF (V546 = 0) THEN V546 = .;
   IF (V547 = 0) THEN V547 = .;
   IF (V548 = 0) THEN V548 = .;
   IF (V549 = 0) THEN V549 = .;
   IF (V550 = 0) THEN V550 = .;
   IF (V551 = 0) THEN V551 = .;
   IF (V552 = 0) THEN V552 = .;
   IF (V553 = 0) THEN V553 = .;
   IF (V554 = 0) THEN V554 = .;
   IF (V555 = 0) THEN V555 = .;
   IF (V556 = 0) THEN V556 = .;
   IF (V557 = 0) THEN V557 = .;
   IF (V558 = 0) THEN V558 = .;
   IF (V559 = 0) THEN V559 = .;
   IF (V560 = 0) THEN V560 = .;
   IF (V561 = 0) THEN V561 = .;
   IF (V562 = 0) THEN V562 = .;
   IF (V563 = 0) THEN V563 = .;
   IF (V564 = 0) THEN V564 = .;
   IF (V565 = 0) THEN V565 = .;
   IF (V566 = 0) THEN V566 = .;
   IF (V567 = 0) THEN V567 = .;
   IF (V568 = 0) THEN V568 = .;
   IF (V569 = 0) THEN V569 = .;
   IF (V570 = 0) THEN V570 = .;
   IF (V571 = 0) THEN V571 = .;
   IF (V572 = 0) THEN V572 = .;
   IF (V573 = 0) THEN V573 = .;
   IF (V574 = 0) THEN V574 = .;
   IF (V575 = 0) THEN V575 = .;
   IF (V576 = 0) THEN V576 = .;
   IF (V577 = 0) THEN V577 = .;
   IF (V578 = 0) THEN V578 = .;
   IF (V579 = 0) THEN V579 = .;
   IF (V580 = 0) THEN V580 = .;
   IF (V582 = 0) THEN V582 = .;
   IF (V583 = 0) THEN V583 = .;
   IF (V584 = 0) THEN V584 = .;
   IF (V585 = 0) THEN V585 = .;
   IF (V586 = 0) THEN V586 = .;
   IF (V587 = 0) THEN V587 = .;
   IF (V588 = 0) THEN V588 = .;
   IF (V589 = 0) THEN V589 = .;
   IF (V590 = 0) THEN V590 = .;
   IF (V591 = 0) THEN V591 = .;
   IF (V592 = 0) THEN V592 = .;
   IF (V593 = 0) THEN V593 = .;
   IF (V594 = 0) THEN V594 = .;
   IF (V595 = 0) THEN V595 = .;
   IF (V596 = 0) THEN V596 = .;
   IF (V597 = 0) THEN V597 = .;
   IF (V598 = 0) THEN V598 = .;
   IF (V599 = 0 OR V599 = 9) THEN V599 = .;
   IF (V600 = 0 OR V600 = 9) THEN V600 = .;
   IF (V601 = 0 OR V601 = 9) THEN V601 = .;
   IF (V602 = 0 OR V602 = 9) THEN V602 = .;
   IF (V603 = 0 OR V603 = 9) THEN V603 = .;
   IF (V604 = 0 OR V604 = 9) THEN V604 = .;
   IF (V605 = 0 OR V605 = 9) THEN V605 = .;
   IF (V606 = 0 OR V606 = 9) THEN V606 = .;
   IF (V607 = 0 OR V607 = 9) THEN V607 = .;
   IF (V608 = 0 OR V608 = 9) THEN V608 = .;
   IF (V609 = 0 OR V609 = 9) THEN V609 = .;
   IF (V610 = 0 OR V610 = 9) THEN V610 = .;
   IF (V611 = 0) THEN V611 = .;
   IF (V612 = 0) THEN V612 = .;
   IF (V613 = 0) THEN V613 = .;
   IF (V614 = 0 OR V614 = 9) THEN V614 = .;
   IF (V615 = 0 OR V615 = 9) THEN V615 = .;
   IF (V616 = 0 OR V616 = 9) THEN V616 = .;
   IF (V617 = 0 OR V617 = 9) THEN V617 = .;
   IF (V618 = 0) THEN V618 = .;
   IF (V619 = 0) THEN V619 = .;
   IF (V620 = 0) THEN V620 = .;
   IF (V621 = 0 OR V621 = 8 OR V621 = 9) THEN V621 = .;
   IF (V622 = 0) THEN V622 = .;
   IF (V623 = 0) THEN V623 = .;
   IF (V624 = 0) THEN V624 = .;
   IF (V625 = 0) THEN V625 = .;
   IF (V626 = 0) THEN V626 = .;
   IF (V627 = 0 OR V627 = 9) THEN V627 = .;
   IF (V628 = 0 OR V628 = 9) THEN V628 = .;
   IF (V629 = 0 OR V629 = 9) THEN V629 = .;
   IF (V630 = 0 OR V630 = 9) THEN V630 = .;
   IF (V631 = 0 OR V631 = 9) THEN V631 = .;
   IF (V632 = 0 OR V632 = 9) THEN V632 = .;
   IF (V633 = 0 OR V633 = 9) THEN V633 = .;
   IF (V634 = 0) THEN V634 = .;
   IF (V635 = 0) THEN V635 = .;
   IF (V636 = 0) THEN V636 = .;
   IF (V637 = 0) THEN V637 = .;
   IF (V638 = 0) THEN V638 = .;
   IF (V639 = 0) THEN V639 = .;
   IF (V640 = 0) THEN V640 = .;
   IF (V641 = 0) THEN V641 = .;
   IF (V642 = 0) THEN V642 = .;
   IF (V643 = 0) THEN V643 = .;
   IF (V644 = 0) THEN V644 = .;
   IF (V645 = 0) THEN V645 = .;
   IF (V646 = 0) THEN V646 = .;
   IF (V647 = 0) THEN V647 = .;
   IF (V648 = 0) THEN V648 = .;
   IF (V649 = 0) THEN V649 = .;
   IF (V650 = 0) THEN V650 = .;
   IF (V651 = 0 OR V651 = 9) THEN V651 = .;
   IF (V652 = 0 OR V652 = 9) THEN V652 = .;
   IF (V653 = 0) THEN V653 = .;
   IF (V654 = 0) THEN V654 = .;
   IF (V655 = 0) THEN V655 = .;
   IF (V656 = 0) THEN V656 = .;
   IF (V657 = 0) THEN V657 = .;
   IF (V658 = 0) THEN V658 = .;
   IF (V659 = 0) THEN V659 = .;
   IF (V660 = 0) THEN V660 = .;
   IF (V661 = 0) THEN V661 = .;
   IF (V662 = 0) THEN V662 = .;
   IF (V663 = 0) THEN V663 = .;
   IF (V664 = 0) THEN V664 = .;
   IF (V665 = 0) THEN V665 = .;
   IF (V666 = 0) THEN V666 = .;
   IF (V667 = 0) THEN V667 = .;
   IF (V668 = 0) THEN V668 = .;
   IF (V669 = 0) THEN V669 = .;
   IF (V670 = 0) THEN V670 = .;
   IF (V671 = 0 OR V671 = 9) THEN V671 = .;
   IF (V672 = 0 OR V672 = 9) THEN V672 = .;
   IF (V673 = 0 OR V673 = 9) THEN V673 = .;
   IF (V674 = 0 OR V674 = 9) THEN V674 = .;
   IF (V675 = 0) THEN V675 = .;
   IF (V676 = 0 OR V676 = 9) THEN V676 = .;
   IF (V677 = 0) THEN V677 = .;
   IF (V678 = 0) THEN V678 = .;
   IF (V679 = 0) THEN V679 = .;
   IF (V680 = 0) THEN V680 = .;
   IF (V681 = 0) THEN V681 = .;
   IF (V682 = 0) THEN V682 = .;
   IF (V683 = 0) THEN V683 = .;
   IF (V684 = 0) THEN V684 = .;
   IF (V685 = 0) THEN V685 = .;
   IF (V686 = 0) THEN V686 = .;
   IF (V687 = 0) THEN V687 = .;
   IF (V688 = 0) THEN V688 = .;
   IF (V689 = 0) THEN V689 = .;
   IF (V690 = 0) THEN V690 = .;
   IF (V691 = 0) THEN V691 = .;
   IF (V692 = 0) THEN V692 = .;
   IF (V693 = 0) THEN V693 = .;
   IF (V694 = 0) THEN V694 = .;
   IF (V695 = 0) THEN V695 = .;
   IF (V696 = 0) THEN V696 = .;
   IF (V697 = 0 OR V697 = 9) THEN V697 = .;
   IF (V698 = 0 OR V698 = 9) THEN V698 = .;
   IF (V699 = 0) THEN V699 = .;
   IF (V700 = 0 OR V700 = 9) THEN V700 = .;
   IF (V701 = 0 OR V701 = 8 OR V701 = 9) THEN V701 = .;
   IF (V702 = 0) THEN V702 = .;
   IF (V703 = 0) THEN V703 = .;
   IF (V704 = 0 OR V704 = 9) THEN V704 = .;
   IF (V705 = 0) THEN V705 = .;
   IF (V706 = 0 OR V706 = 9) THEN V706 = .;
   IF (V707 = 0 OR V707 = 9) THEN V707 = .;
   IF (V708 = 0 OR V708 = 9) THEN V708 = .;
   IF (V709 = 0 OR V709 = 9) THEN V709 = .;
   IF (V710 = 0 OR V710 = 9) THEN V710 = .;
   IF (V711 = 0 OR V711 = 9) THEN V711 = .;
   IF (V712 = 0) THEN V712 = .;
   IF (V713 = 0) THEN V713 = .;
   IF (V714 = 0) THEN V714 = .;
   IF (V715 = 0) THEN V715 = .;
   IF (V716 = 0) THEN V716 = .;
   IF (V717 = 0) THEN V717 = .;
   IF (V718 = 0) THEN V718 = .;
   IF (V719 = 0) THEN V719 = .;
   IF (V720 = 0 OR V720 = 9) THEN V720 = .;
   IF (V721 = 0) THEN V721 = .;
   IF (V722 = 0) THEN V722 = .;
   IF (V723 = 0) THEN V723 = .;
   IF (V724 = 0) THEN V724 = .;
   IF (V725 = 0) THEN V725 = .;
   IF (V726 = 0) THEN V726 = .;
   IF (V727 = 0 OR V727 = 9) THEN V727 = .;
   IF (V728 = 0 OR V728 = 9) THEN V728 = .;
   IF (V729 = 0 OR V729 = 9) THEN V729 = .;
   IF (V730 = 0 OR V730 = 9) THEN V730 = .;
   IF (V731 = 0 OR V731 = 9) THEN V731 = .;
   IF (V732 = 0 OR V732 = 9) THEN V732 = .;
   IF (V733 = 0 OR V733 = 9) THEN V733 = .;
   IF (V734 = 0 OR V734 = 9) THEN V734 = .;
   IF (V735 = 0 OR V735 = 9) THEN V735 = .;
   IF (V736 = 0 OR V736 = 9) THEN V736 = .;
   IF (V737 = 0 OR V737 = 9) THEN V737 = .;
   IF (V738 = 0 OR V738 = 9) THEN V738 = .;
   IF (V739 = 0 OR V739 = 9) THEN V739 = .;
   IF (V740 = 0) THEN V740 = .;
   IF (V741 = 0 OR V741 = 9) THEN V741 = .;
   IF (V742 = 0) THEN V742 = .;
   IF (V743 = 9) THEN V743 = .;
   IF (V744 = 9) THEN V744 = .;
   IF (V745 = 9) THEN V745 = .;
   IF (V747 = 6 OR V747 = 8 OR V747 = 9) THEN V747 = .;
   IF (V748 = 0 OR V748 = 99) THEN V748 = .;
   IF (V749 = 0 OR V749 = 99) THEN V749 = .;
   IF (V750 = 0 OR V750 = 99) THEN V750 = .;
   IF (V751 = 0 OR V751 = 99) THEN V751 = .;
   IF (V752 = 0 OR V752 = 999) THEN V752 = .;
   IF (V753 = 0 OR V753 = 999) THEN V753 = .;
   IF (V754 = 0 OR V754 = 99) THEN V754 = .;
   IF (V755 = 0 OR V755 = 99) THEN V755 = .;
   IF (V756 = 0) THEN V756 = .;
   IF (V757 = 0) THEN V757 = .;
   IF (V758 = 0) THEN V758 = .;
   IF (V759 = 0) THEN V759 = .;
   IF (V760 = 0) THEN V760 = .;
   IF (V761 = 0) THEN V761 = .;
   IF (V762 = 0) THEN V762 = .;
   IF (V763 = 0) THEN V763 = .;
   IF (V764 = 0 OR V764 = 99) THEN V764 = .;
   IF (V765 = 0 OR V765 = 99) THEN V765 = .;
   IF (V766 = 0 OR V766 = 99) THEN V766 = .;
   IF (V767 = 0 OR V767 = 99) THEN V767 = .;
   IF (V768 = 0 OR V768 = 99) THEN V768 = .;
   IF (V769 = 0 OR V769 = 99) THEN V769 = .;
   IF (V770 = 0 OR V770 = 99) THEN V770 = .;
   IF (V771 = 0 OR V771 = 99) THEN V771 = .;
   IF (V772 = 0 OR V772 = 99) THEN V772 = .;
   IF (V773 = 0 OR V773 = 99) THEN V773 = .;
   IF (V774 = 0 OR V774 = 99) THEN V774 = .;
   IF (V775 = 0 OR V775 = 99) THEN V775 = .;
   IF (V776 = 0 OR V776 = 99) THEN V776 = .;
   IF (V777 = 0 OR V777 = 99) THEN V777 = .;
   IF (V778 = 0) THEN V778 = .;
   IF (V779 = 0) THEN V779 = .;
   IF (V780 = 0) THEN V780 = .;
   IF (V781 = 0) THEN V781 = .;
   IF (V782 = 0) THEN V782 = .;
   IF (V783 = 0) THEN V783 = .;
   IF (V784 = 0) THEN V784 = .;
   IF (V785 = 0) THEN V785 = .;
   IF (V786 = 0) THEN V786 = .;
   IF (V787 = 0) THEN V787 = .;
   IF (V788 = 0) THEN V788 = .;
   IF (V789 = 0) THEN V789 = .;
   IF (V790 = 0) THEN V790 = .;
   IF (V791 = 0) THEN V791 = .;
   IF (V792 = 0) THEN V792 = .;
   IF (V793 = 0) THEN V793 = .;
   IF (V794 = 0) THEN V794 = .;
   IF (V795 = 0) THEN V795 = .;
   IF (V796 = 0) THEN V796 = .;
   IF (V797 = 0) THEN V797 = .;
   IF (V798 = 0) THEN V798 = .;
   IF (V799 = 0) THEN V799 = .;
   IF (V800 = 0) THEN V800 = .;
   IF (V801 = 0) THEN V801 = .;
   IF (V802 = 0) THEN V802 = .;
   IF (V803 = 0) THEN V803 = .;
   IF (V804 = 0) THEN V804 = .;
   IF (V805 = 0) THEN V805 = .;
   IF (V806 = 0) THEN V806 = .;
   IF (V807 = 0 OR V807 = 99) THEN V807 = .;
   IF (V808 = 0 OR V808 = 99) THEN V808 = .;
   IF (V809 = 0) THEN V809 = .;
   IF (V810 = 0 OR V810 = 999) THEN V810 = .;
   IF (V811 = 0 OR V811 = 9) THEN V811 = .;
   IF (V812 = 0 OR V812 = 9) THEN V812 = .;
   IF (V813 = 0) THEN V813 = .;
   IF (V814 = 0 OR V814 = 999) THEN V814 = .;
   IF (V815 = 0) THEN V815 = .;
   IF (V816 = 0) THEN V816 = .;
   IF (V817 = 0 OR V817 = 9) THEN V817 = .;
   IF (V818 = 0) THEN V818 = .;
   IF (V819 = 0) THEN V819 = .;
   IF (V820 = 0 OR V820 = 9) THEN V820 = .;
   IF (V821 = 0 OR V821 = 9) THEN V821 = .;
   IF (V822 = 0 OR V822 = 9) THEN V822 = .;
   IF (V823 = 0 OR V823 = 9) THEN V823 = .;
   IF (V824 = 0 OR V824 = 8) THEN V824 = .;
   IF (V825 = 0) THEN V825 = .;
   IF (V826 = 0 OR V826 = 8 OR V826 = 9) THEN V826 = .;
   IF (V827 = 0) THEN V827 = .;
   IF (V828 = 0 OR V828 = 99) THEN V828 = .;
   IF (V829 = 0 OR V829 = 9) THEN V829 = .;
   IF (V830 = 0 OR V830 = 9) THEN V830 = .;
   IF (V831 = 0 OR V831 = 9) THEN V831 = .;
   IF (V832 = 0 OR V832 = 98) THEN V832 = .;
   IF (V833 = 0 OR V833 = 98) THEN V833 = .;
   IF (V834 = 0 OR V834 = 98) THEN V834 = .;
   IF (V835 = 0 OR V835 = 98) THEN V835 = .;
   IF (V836 = 0 OR V836 = 98) THEN V836 = .;
   IF (V837 = 0 OR V837 = 98) THEN V837 = .;
   IF (V838 = 0 OR V838 = 98) THEN V838 = .;
   IF (V839 = 0 OR V839 = 98) THEN V839 = .;
   IF (V840 = 0) THEN V840 = .;
   IF (V841 = 0) THEN V841 = .;
   IF (V842 = 0) THEN V842 = .;
   IF (V843 = 0) THEN V843 = .;
   IF (V844 = 0) THEN V844 = .;
   IF (V845 = 0) THEN V845 = .;
   IF (V846 = 0) THEN V846 = .;
   IF (V847 = 0) THEN V847 = .;
   IF (V848 = 0 OR V848 = 9) THEN V848 = .;
   IF (V849 = 0 OR V849 = 99) THEN V849 = .;
   IF (V850 = 0 OR V850 = 99) THEN V850 = .;
   IF (V851 = 0 OR V851 = 99) THEN V851 = .;
   IF (V852 = 0) THEN V852 = .;
   IF (V853 = 0 OR V853 = 999) THEN V853 = .;
   IF (V854 = 0 OR V854 = 8 OR V854 = 9) THEN V854 = .;
   IF (V855 = 0 OR V855 = 9) THEN V855 = .;
   IF (V856 = 0 OR V856 = 5) THEN V856 = .;
   IF (V857 = 0 OR V857 = 9) THEN V857 = .;
   IF (V858 = 0) THEN V858 = .;
   IF (V859 = 0) THEN V859 = .;
   IF (V860 = 0) THEN V860 = .;
   IF (V861 = 0) THEN V861 = .;
   IF (V862 = 0) THEN V862 = .;
   IF (V863 = 0 OR V863 = 9) THEN V863 = .;
   IF (V864 = 0 OR V864 = 9) THEN V864 = .;
   IF (V865 = 0 OR V865 = 9) THEN V865 = .;
   IF (V866 = 0 OR V866 = 8) THEN V866 = .;
   IF (V867 = 0) THEN V867 = .;
   IF (V868 = 0) THEN V868 = .;
   IF (V869 = 0 OR V869 = 99) THEN V869 = .;
   IF (V870 = 0 OR V870 = 98) THEN V870 = .;
   IF (V871 = 0 OR V871 = 98) THEN V871 = .;
   IF (V872 = 0 OR V872 = 98) THEN V872 = .;
   IF (V873 = 0 OR V873 = 98) THEN V873 = .;
   IF (V874 = 0 OR V874 = 98) THEN V874 = .;
   IF (V875 = 0 OR V875 = 98) THEN V875 = .;
   IF (V876 = 0 OR V876 = 98) THEN V876 = .;
   IF (V877 = 0 OR V877 = 98) THEN V877 = .;
   IF (V878 = 0) THEN V878 = .;
   IF (V879 = 0) THEN V879 = .;
   IF (V880 = 0) THEN V880 = .;
*/

* SAS FORMAT STATEMENT;

  FORMAT V1 V1ffffff. V2 V2ffffff. V3 V3ffffff.
         V5 V5ffffff. V6 V6ffffff. V7 V7ffffff.
         V8 V8ffffff. V9 V9ffffff. V10 V10fffff.
         V11 V11fffff. V12 V12fffff. V13 V13fffff.
         V14 V14fffff. V15 V15fffff. V16 V16fffff.
         V17 V17fffff. V18 V18fffff. V19 V19fffff.
         V20 V20fffff. V21 V21fffff. V22 V22fffff.
         V23 V23fffff. V24 V24fffff. V25 V25fffff.
         V26 V26fffff. V27 V27fffff. V28 V28fffff.
         V29 V29fffff. V30 V30fffff. V31 V31fffff.
         V32 V32fffff. V33 V33fffff. V34 V34fffff.
         V35 V35fffff. V36 V36fffff. V37 V37fffff.
         V38 V38fffff. V39 V39fffff. V40 V40fffff.
         V41 V41fffff. V42 V42fffff. V43 V43fffff.
         V44 V44fffff. V45 V45fffff. V46 V46fffff.
         V47 V47fffff. V48 V48fffff. V49 V49fffff.
         V50 V50fffff. V51 V51fffff. V52 V52fffff.
         V53 V53fffff. V54 V54fffff. V55 V55fffff.
         V56 V56fffff. V57 V57fffff. V58 V58fffff.
         V59 V59fffff. V60 V60fffff. V61 V61fffff.
         V62 V62fffff. V63 V63fffff. V64 V64fffff.
         V65 V65fffff. V66 V66fffff. V67 V67fffff.
         V68 V68fffff. V69 V69fffff. V70 V70fffff.
         V71 V71fffff. V72 V72fffff. V73 V73fffff.
         V74 V74fffff. V75 V75fffff. V76 V76fffff.
         V77 V77fffff. V78 V78fffff. V79 V79fffff.
         V80 V80fffff. V81 V81fffff. V82 V82fffff.
         V83 V83fffff. V84 V84fffff. V85 V85fffff.
         V86 V86fffff. V87 V87fffff. V88 V88fffff.
         V89 V89fffff. V90 V90fffff. V91 V91fffff.
         V92 V92fffff. V93 V93fffff. V94 V94fffff.
         V95 V95fffff. V96 V96fffff. V97 V97fffff.
         V98 V98fffff. V99 V99fffff. V100 V100ffff.
         V101 V101ffff. V102 V102ffff. V103 V103ffff.
         V104 V104ffff. V105 V105ffff. V106 V106ffff.
         V107 V107ffff. V108 V108ffff. V109 V109ffff.
         V110 V110ffff. V111 V111ffff. V112 V112ffff.
         V113 V113ffff. V114 V114ffff. V115 V115ffff.
         V116 V116ffff. V117 V117ffff. V118 V118ffff.
         V119 V119ffff. V120 V120ffff. V121 V121ffff.
         V122 V122ffff. V123 V123ffff. V124 V124ffff.
         V125 V125ffff. V126 V126ffff. V127 V127ffff.
         V128 V128ffff. V129 V129ffff. V130 V130ffff.
         V131 V131ffff. V132 V132ffff. V133 V133ffff.
         V134 V134ffff. V135 V135ffff. V136 V136ffff.
         V137 V137ffff. V138 V138ffff. V139 V139ffff.
         V140 V140ffff. V141 V141ffff. V142 V142ffff.
         V143 V143ffff. V144 V144ffff. V145 V145ffff.
         V146 V146ffff. V147 V147ffff. V148 V148ffff.
         V149 V149ffff. V150 V150ffff. V151 V151ffff.
         V152 V152ffff. V153 V153ffff. V154 V154ffff.
         V155 V155ffff. V156 V156ffff. V157 V157ffff.
         V158 V158ffff. V159 V159ffff. V160 V160ffff.
         V161 V161ffff. V162 V162ffff. V163 V163ffff.
         V164 V164ffff. V165 V165ffff. V166 V166ffff.
         V167 V167ffff. V168 V168ffff. V169 V169ffff.
         V170 V170ffff. V171 V171ffff. V172 V172ffff.
         V173 V173ffff. V174 V174ffff. V175 V175ffff.
         V176 V176ffff. V177 V177ffff. V178 V178ffff.
         V179 V179ffff. V180 V180ffff. V181 V181ffff.
         V182 V182ffff. V183 V183ffff. V184 V184ffff.
         V185 V185ffff. V186 V186ffff. V187 V187ffff.
         V188 V188ffff. V189 V189ffff. V190 V190ffff.
         V191 V191ffff. V192 V192ffff. V193 V193ffff.
         V194 V194ffff. V195 V195ffff. V196 V196ffff.
         V197 V197ffff. V198 V198ffff. V199 V199ffff.
         V200 V200ffff. V201 V201ffff. V202 V202ffff.
         V203 V203ffff. V204 V204ffff. V205 V205ffff.
         V206 V206ffff. V207 V207ffff. V208 V208ffff.
         V209 V209ffff. V210 V210ffff. V211 V211ffff.
         V212 V212ffff. V213 V213ffff. V214 V214ffff.
         V215 V215ffff. V216 V216ffff. V217 V217ffff.
         V218 V218ffff. V219 V219ffff. V220 V220ffff.
         V221 V221ffff. V222 V222ffff. V223 V223ffff.
         V224 V224ffff. V225 V225ffff. V226 V226ffff.
         V227 V227ffff. V228 V228ffff. V229 V229ffff.
         V230 V230ffff. V231 V231ffff. V232 V232ffff.
         V233 V233ffff. V234 V234ffff. V235 V235ffff.
         V236 V236ffff. V237 V237ffff. V238 V238ffff.
         V239 V239ffff. V240 V240ffff. V241 V241ffff.
         V242 V242ffff. V243 V243ffff. V244 V244ffff.
         V245 V245ffff. V246 V246ffff. V247 V247ffff.
         V248 V248ffff. V249 V249ffff. V250 V250ffff.
         V251 V251ffff. V252 V252ffff. V253 V253ffff.
         V254 V254ffff. V255 V255ffff. V256 V256ffff.
         V257 V257ffff. V258 V258ffff. V259 V259ffff.
         V260 V260ffff. V261 V261ffff. V262 V262ffff.
         V263 V263ffff. V264 V264ffff. V265 V265ffff.
         V266 V266ffff. V267 V267ffff. V268 V268ffff.
         V269 V269ffff. V270 V270ffff. V271 V271ffff.
         V272 V272ffff. V273 V273ffff. V274 V274ffff.
         V275 V275ffff. V276 V276ffff. V277 V277ffff.
         V278 V278ffff. V279 V279ffff. V280 V280ffff.
         V281 V281ffff. V282 V282ffff. V283 V283ffff.
         V284 V284ffff. V285 V285ffff. V286 V286ffff.
         V287 V287ffff. V288 V288ffff. V289 V289ffff.
         V290 V290ffff. V291 V291ffff. V292 V292ffff.
         V293 V293ffff. V294 V294ffff. V295 V295ffff.
         V296 V296ffff. V297 V297ffff. V298 V298ffff.
         V299 V299ffff. V300 V300ffff. V301 V301ffff.
         V302 V302ffff. V303 V303ffff. V304 V304ffff.
         V305 V305ffff. V306 V306ffff. V307 V307ffff.
         V308 V308ffff. V309 V309ffff. V310 V310ffff.
         V311 V311ffff. V312 V312ffff. V313 V313ffff.
         V314 V314ffff. V315 V315ffff. V316 V316ffff.
         V317 V317ffff. V318 V318ffff. V319 V319ffff.
         V320 V320ffff. V321 V321ffff. V322 V322ffff.
         V323 V323ffff. V324 V324ffff. V325 V325ffff.
         V326 V326ffff. V327 V327ffff. V328 V328ffff.
         V329 V329ffff. V330 V330ffff. V331 V331ffff.
         V332 V332ffff. V333 V333ffff. V334 V334ffff.
         V335 V335ffff. V336 V336ffff. V337 V337ffff.
         V338 V338ffff. V339 V339ffff. V340 V340ffff.
         V341 V341ffff. V342 V342ffff. V343 V343ffff.
         V344 V344ffff. V345 V345ffff. V346 V346ffff.
         V347 V347ffff. V348 V348ffff. V349 V349ffff.
         V350 V350ffff. V351 V351ffff. V352 V352ffff.
         V353 V353ffff. V354 V354ffff. V355 V355ffff.
         V356 V356ffff. V357 V357ffff. V358 V358ffff.
         V359 V359ffff. V360 V360ffff. V361 V361ffff.
         V362 V362ffff. V363 V363ffff. V364 V364ffff.
         V365 V365ffff. V366 V366ffff. V367 V367ffff.
         V368 V368ffff. V369 V369ffff. V370 V370ffff.
         V371 V371ffff. V372 V372ffff. V373 V373ffff.
         V374 V374ffff. V375 V375ffff. V376 V376ffff.
         V377 V377ffff. V378 V378ffff. V379 V379ffff.
         V380 V380ffff. V381 V381ffff. V382 V382ffff.
         V383 V383ffff. V384 V384ffff. V385 V385ffff.
         V386 V386ffff. V387 V387ffff. V388 V388ffff.
         V389 V389ffff. V390 V390ffff. V391 V391ffff.
         V392 V392ffff. V393 V393ffff. V394 V394ffff.
         V395 V395ffff. V396 V396ffff. V397 V397ffff.
         V398 V398ffff. V399 V399ffff. V400 V400ffff.
         V401 V401ffff. V402 V402ffff. V403 V403ffff.
         V404 V404ffff. V405 V405ffff. V406 V406ffff.
         V407 V407ffff. V408 V408ffff. V409 V409ffff.
         V410 V410ffff. V411 V411ffff. V412 V412ffff.
         V413 V413ffff. V414 V414ffff. V415 V415ffff.
         V416 V416ffff. V417 V417ffff. V418 V418ffff.
         V419 V419ffff. V420 V420ffff. V421 V421ffff.
         V422 V422ffff. V423 V423ffff. V424 V424ffff.
         V425 V425ffff. V426 V426ffff. V427 V427ffff.
         V428 V428ffff. V429 V429ffff. V430 V430ffff.
         V431 V431ffff. V432 V432ffff. V433 V433ffff.
         V434 V434ffff. V435 V435ffff. V436 V436ffff.
         V437 V437ffff. V438 V438ffff. V439 V439ffff.
         V440 V440ffff. V441 V441ffff. V442 V442ffff.
         V443 V443ffff. V444 V444ffff. V445 V445ffff.
         V446 V446ffff. V447 V447ffff. V448 V448ffff.
         V449 V449ffff. V450 V450ffff. V451 V451ffff.
         V452 V452ffff. V453 V453ffff. V454 V454ffff.
         V455 V455ffff. V456 V456ffff. V457 V457ffff.
         V458 V458ffff. V459 V459ffff. V460 V460ffff.
         V461 V461ffff. V462 V462ffff. V463 V463ffff.
         V464 V464ffff. V465 V465ffff. V466 V466ffff.
         V467 V467ffff. V468 V468ffff. V469 V469ffff.
         V470 V470ffff. V471 V471ffff. V472 V472ffff.
         V473 V473ffff. V474 V474ffff. V475 V475ffff.
         V476 V476ffff. V477 V477ffff. V478 V478ffff.
         V479 V479ffff. V480 V480ffff. V481 V481ffff.
         V482 V482ffff. V483 V483ffff. V484 V484ffff.
         V485 V485ffff. V486 V486ffff. V487 V487ffff.
         V488 V488ffff. V489 V489ffff. V490 V490ffff.
         V491 V491ffff. V492 V492ffff. V493 V493ffff.
         V494 V494ffff. V495 V495ffff. V496 V496ffff.
         V497 V497ffff. V498 V498ffff. V499 V499ffff.
         V500 V500ffff. V501 V501ffff. V502 V502ffff.
         V503 V503ffff. V504 V504ffff. V505 V505ffff.
         V506 V506ffff. V507 V507ffff. V508 V508ffff.
         V509 V509ffff. V510 V510ffff. V511 V511ffff.
         V512 V512ffff. V513 V513ffff. V514 V514ffff.
         V515 V515ffff. V516 V516ffff. V517 V517ffff.
         V518 V518ffff. V519 V519ffff. V520 V520ffff.
         V521 V521ffff. V522 V522ffff. V523 V523ffff.
         V524 V524ffff. V525 V525ffff. V526 V526ffff.
         V527 V527ffff. V528 V528ffff. V529 V529ffff.
         V530 V530ffff. V531 V531ffff. V532 V532ffff.
         V533 V533ffff. V534 V534ffff. V535 V535ffff.
         V536 V536ffff. V537 V537ffff. V538 V538ffff.
         V539 V539ffff. V540 V540ffff. V541 V541ffff.
         V542 V542ffff. V543 V543ffff. V544 V544ffff.
         V545 V545ffff. V546 V546ffff. V547 V547ffff.
         V548 V548ffff. V549 V549ffff. V550 V550ffff.
         V551 V551ffff. V552 V552ffff. V553 V553ffff.
         V554 V554ffff. V555 V555ffff. V556 V556ffff.
         V557 V557ffff. V558 V558ffff. V559 V559ffff.
         V560 V560ffff. V561 V561ffff. V562 V562ffff.
         V563 V563ffff. V564 V564ffff. V565 V565ffff.
         V566 V566ffff. V567 V567ffff. V568 V568ffff.
         V569 V569ffff. V570 V570ffff. V571 V571ffff.
         V572 V572ffff. V573 V573ffff. V574 V574ffff.
         V575 V575ffff. V576 V576ffff. V577 V577ffff.
         V578 V578ffff. V579 V579ffff. V580 V580ffff.
         V581 V581ffff. V582 V582ffff. V583 V583ffff.
         V584 V584ffff. V585 V585ffff. V586 V586ffff.
         V587 V587ffff. V588 V588ffff. V589 V589ffff.
         V590 V590ffff. V591 V591ffff. V592 V592ffff.
         V593 V593ffff. V594 V594ffff. V595 V595ffff.
         V596 V596ffff. V597 V597ffff. V598 V598ffff.
         V599 V599ffff. V600 V600ffff. V601 V601ffff.
         V602 V602ffff. V603 V603ffff. V604 V604ffff.
         V605 V605ffff. V606 V606ffff. V607 V607ffff.
         V608 V608ffff. V609 V609ffff. V610 V610ffff.
         V611 V611ffff. V612 V612ffff. V613 V613ffff.
         V614 V614ffff. V615 V615ffff. V616 V616ffff.
         V617 V617ffff. V618 V618ffff. V619 V619ffff.
         V620 V620ffff. V621 V621ffff. V622 V622ffff.
         V623 V623ffff. V624 V624ffff. V625 V625ffff.
         V626 V626ffff. V627 V627ffff. V628 V628ffff.
         V629 V629ffff. V630 V630ffff. V631 V631ffff.
         V632 V632ffff. V633 V633ffff. V634 V634ffff.
         V635 V635ffff. V636 V636ffff. V637 V637ffff.
         V638 V638ffff. V639 V639ffff. V640 V640ffff.
         V641 V641ffff. V642 V642ffff. V643 V643ffff.
         V644 V644ffff. V645 V645ffff. V646 V646ffff.
         V647 V647ffff. V648 V648ffff. V649 V649ffff.
         V650 V650ffff. V651 V651ffff. V652 V652ffff.
         V653 V653ffff. V654 V654ffff. V655 V655ffff.
         V656 V656ffff. V657 V657ffff. V658 V658ffff.
         V659 V659ffff. V660 V660ffff. V661 V661ffff.
         V662 V662ffff. V663 V663ffff. V664 V664ffff.
         V665 V665ffff. V666 V666ffff. V667 V667ffff.
         V668 V668ffff. V669 V669ffff. V670 V670ffff.
         V671 V671ffff. V672 V672ffff. V673 V673ffff.
         V674 V674ffff. V675 V675ffff. V676 V676ffff.
         V677 V677ffff. V678 V678ffff. V679 V679ffff.
         V680 V680ffff. V681 V681ffff. V682 V682ffff.
         V683 V683ffff. V684 V684ffff. V685 V685ffff.
         V686 V686ffff. V687 V687ffff. V688 V688ffff.
         V689 V689ffff. V690 V690ffff. V691 V691ffff.
         V692 V692ffff. V693 V693ffff. V694 V694ffff.
         V695 V695ffff. V696 V696ffff. V697 V697ffff.
         V698 V698ffff. V699 V699ffff. V700 V700ffff.
         V701 V701ffff. V702 V702ffff. V703 V703ffff.
         V704 V704ffff. V705 V705ffff. V706 V706ffff.
         V707 V707ffff. V708 V708ffff. V709 V709ffff.
         V710 V710ffff. V711 V711ffff. V712 V712ffff.
         V713 V713ffff. V714 V714ffff. V715 V715ffff.
         V716 V716ffff. V717 V717ffff. V718 V718ffff.
         V719 V719ffff. V720 V720ffff. V721 V721ffff.
         V722 V722ffff. V723 V723ffff. V724 V724ffff.
         V725 V725ffff. V726 V726ffff. V727 V727ffff.
         V728 V728ffff. V729 V729ffff. V730 V730ffff.
         V731 V731ffff. V732 V732ffff. V733 V733ffff.
         V734 V734ffff. V735 V735ffff. V736 V736ffff.
         V737 V737ffff. V738 V738ffff. V739 V739ffff.
         V740 V740ffff. V741 V741ffff. V742 V742ffff.
         V743 V743ffff. V744 V744ffff. V745 V745ffff.
         V746 V746ffff. V747 V747ffff. V748 V748ffff.
         V749 V749ffff. V750 V750ffff. V751 V751ffff.
         V752 V752ffff. V753 V753ffff. V754 V754ffff.
         V755 V755ffff. V756 V756ffff. V757 V757ffff.
         V758 V758ffff. V759 V759ffff. V760 V760ffff.
         V761 V761ffff. V762 V762ffff. V763 V763ffff.
         V764 V764ffff. V765 V765ffff. V766 V766ffff.
         V767 V767ffff. V768 V768ffff. V769 V769ffff.
         V770 V770ffff. V771 V771ffff. V772 V772ffff.
         V773 V773ffff. V774 V774ffff. V775 V775ffff.
         V776 V776ffff. V777 V777ffff. V778 V778ffff.
         V779 V779ffff. V780 V780ffff. V781 V781ffff.
         V782 V782ffff. V783 V783ffff. V784 V784ffff.
         V785 V785ffff. V786 V786ffff. V787 V787ffff.
         V788 V788ffff. V789 V789ffff. V790 V790ffff.
         V791 V791ffff. V792 V792ffff. V793 V793ffff.
         V794 V794ffff. V795 V795ffff. V796 V796ffff.
         V797 V797ffff. V798 V798ffff. V799 V799ffff.
         V800 V800ffff. V801 V801ffff. V802 V802ffff.
         V803 V803ffff. V804 V804ffff. V805 V805ffff.
         V806 V806ffff. V807 V807ffff. V808 V808ffff.
         V809 V809ffff. V810 V810ffff. V811 V811ffff.
         V812 V812ffff. V813 V813ffff. V814 V814ffff.
         V815 V815ffff. V816 V816ffff. V817 V817ffff.
         V818 V818ffff. V819 V819ffff. V820 V820ffff.
         V821 V821ffff. V822 V822ffff. V823 V823ffff.
         V824 V824ffff. V825 V825ffff. V826 V826ffff.
         V827 V827ffff. V828 V828ffff. V829 V829ffff.
         V830 V830ffff. V831 V831ffff. V832 V832ffff.
         V833 V833ffff. V834 V834ffff. V835 V835ffff.
         V836 V836ffff. V837 V837ffff. V838 V838ffff.
         V839 V839ffff. V840 V840ffff. V841 V841ffff.
         V842 V842ffff. V843 V843ffff. V844 V844ffff.
         V845 V845ffff. V846 V846ffff. V847 V847ffff.
         V848 V848ffff. V849 V849ffff. V850 V850ffff.
         V851 V851ffff. V852 V852ffff. V853 V853ffff.
         V854 V854ffff. V855 V855ffff. V856 V856ffff.
         V857 V857ffff. V858 V858ffff. V859 V859ffff.
         V860 V860ffff. V861 V861ffff. V862 V862ffff.
         V863 V863ffff. V864 V864ffff. V865 V865ffff.
         V866 V866ffff. V867 V867ffff. V868 V868ffff.
         V869 V869ffff. V870 V870ffff. V871 V871ffff.
         V872 V872ffff. V873 V873ffff. V874 V874ffff.
         V875 V875ffff. V876 V876ffff. V877 V877ffff.
         V878 V878ffff. V879 V879ffff. V880 V880ffff.
          ;

RUN ;

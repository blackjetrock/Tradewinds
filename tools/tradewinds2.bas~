
10  HIMEM  #97FF        'JUST IN CASE
20  POKE  618,11        'SET  TO GGLES
30  POKE  524,( PEEK (524) AND  127) + 128
40  REM  SET UPPER-CASE
100  REM  *****************************
110  REM  *  Trade Winds              *
120  REM  *     by A.Menadue          *
130  REM  *                           *
140  REM  *****************************
150  REM 
160  REM 
170  REM 
199  REM *******INTRO&BANNER************
200  PRINT  CHR$ (12)
205  PAPER 0: INK 7
207  PRINT  CHR$ (4); CHR$ (27);"J            ************"; CHR$ (4): PRINT 
210  PRINT  CHR$ (4); CHR$ (27);"J            *TRADEWINDS*"; CHR$ (4): PRINT 
213  PRINT  CHR$ (4); CHR$ (27);"J            ************"; CHR$ (4): PRINT 
220  FOR  I = 1  TO   INT ( RND (1) * 8): PRINT : NEXT 
230  PRINT : PRINT  CHR$ (27);"ADo you want instructions?--{Y/N}";
235  GET  A$: PRINT A$: IF  A$ = "Y"  THEN  GOSUB  50000
250  PRINT 
300  PRINT "Are you using a colour t.v. or colour "
305  PRINT "monitor?--{Y/N}";
310  GET  CF$
320  IF  CF$ <  > "Y"  AND  CF$ <  > "N"  THEN  310
330  PRINT CF$
340  IF  CF$ = "Y"  THEN   INK 1: PAPER 0: CLS 
1000  GOSUB  8000   'INITIALISATI ON 
1996  REM                                                                   
1997  REM  ----------------------------
1998  REM  ********MAIN LOOP***********
1999  REM  ----------------------------
2000  GOSUB  45000
2020  IF  WL <  > 0  THEN  WL = WL - 1
2040 CL = CL - 5
2043  IF  CL <  = 0  THEN  CL = 0: GOTO  5000 
2045  IF  WL <  > 0  THEN  GOSUB  4000   'STATUS
2050  IF  WL = 0  THEN  CL = CL + 10
2051  IF  WL = 0  AND  DP = 1  THEN  CL = CL + 10
2060  IF  WL = 0  THEN   GOTO  7000
2070 SU = SU - 1
2075  GOSUB  11000
2080  IF  SU < 0  THEN  SU = 0: GOTO  20000
2095  GOSUB  30000   'LOOKOUT 
2100  GOTO  2000 'MAIN LOOP
2498  REM 
2499  REM *******ROCKNAVIGATE***********
2500  PRINT "Do you want instructions?--{Y/N}": GET A$: IF  A$ = "N"  THEN  2641 
2501  IF  A$ <  > "Y"  THEN  2500
2505  CLS : PRINT "There is a wind blowing from right" 
2510  PRINT "to left and a current flowing up"
2515  PRINT "the screen which will make your ship"
2520  PRINT "move in those directions."
2530  PRINT "Use the left and right cursor keys"
2540  PRINT "to steer your ship."
2550  PRINT "You must not hit any rocks at all,"
2560  PRINT "if you do your ship will break up"
2570  PRINT "and you will lose the game."
2590  PRINT "In order to stay on course you must "
2600  PRINT "reach the row of stars at the top "
2610  PRINT "of the screen."
2620  PRINT "If you do not reach them supplies"
2630  PRINT "will be lost and you may take longer"
2640  PRINT "to reach port,but you keep your ship."
2641  PRINT : PRINT : PRINT "Press any key to start": GET A$: CLS  
2670  FOR  I = 1  TO  20:X =  FN A(30):Y =  FN A(25): PLOT  X,Y,"[": NEXT : PLOT 1,1,"********"
2675  SOUND  1,2,0: PLAY  0,1,4,3000
2680 X = 31:Y = 26: PLOT X,Y,"]": PLOT  X + 1,Y,"@" 
2685  PLOT  X,Y,"]": PLOT  X + 1,Y,"@"
2690  PLOT X1,Y1," ": PLOT X1 + 1,Y1," " 
2691 CU =  FN A(7):X1 = X:Y1 = Y
2700  GOSUB  28000
2710 X = X + .3:Y = Y - .5
2720  IF   SCRN (X,Y) = 91  OR  SCRN (X + 1,Y) = 91  THEN   2760 
2730  IF   SCRN (X,Y) = 42  THEN   2770
2740  IF  X > 36 OR  X < 1 OR  Y < 1  THEN   2780
2750  GOTO  2685
2760  EXPLODE 
2761  GOSUB 2800: CLS 
2765  PRINT "Your ship has broken up."
2767  WAIT  400: GOTO  61000
2770  PRINT "You have successfully navigated the"
2772  PRINT "rock formation.Well done!!"
2775  PLAY 0,0,0,0: WAIT  300: RETURN 
2780  PRINT "You are off course":SU = SU -  FN A(10):WL = WL +  FN A(10)
2781  IF  SU < 0  THEN  SU = 1
2782  WAIT  300: PLAY 0,0,0,0: GOTO  2000
2800  REM  *****SHIP SINKS********
2801  PLOT  X1,Y1," ": PLOT X1 + 1,Y1," " 
2805  PLOT  X,Y,"]": PLOT  X + 1,Y,"@"
2807  FOR  I = 7  TO  0  STEP  - 1: POKE 46080 + 8 *  ASC ("]") + I,0: POKE 46080 + 8 *  ASC ("@") + I,0 
2808  WAIT  50: NEXT : RETURN 
2810  WAIT  100
2815  FOR  J = 6  TO  1  STEP  - 1
2820  FOR  I = 0  TO  6
2830 D =  PEEK (8 *  ASC ("^") + I)
2840  POKE  46080 + 8 *  ASC ("^") + I + 1,D
2842 E =  PEEK (8 *  ASC ("_") + I)
2844  POKE  46080 + 8 *  ASC ("_") + I + 1,E
2850  NEXT 
2852  POKE  46080 + 8 *  ASC ("_"),0
2854  POKE  46080 + 8 *  ASC ("^"),0
2856  WAIT  100
2860  NEXT 
2900  RETURN 
2999  REM ******LOYALTY DISPLAY*********
3000  PRINT "Crew loyalty is ";
3010  IF  CL > 70  THEN   PRINT "excellent." : RETURN  
3020  IF  CL > 50  THEN   PRINT "good.": RETURN 
3030  IF  CL > 30  THEN   PRINT "fair.": RETURN 
3040  IF  CL > 10  THEN   PRINT "bad.": RETURN 
3050  IF  CL <  = 10 THEN   PRINT "mutinous."
3060  RETURN 
3499  REM ****PUT INTO WAREHOUSE********
3500  CLS 
3510  PRINT : PRINT  CHR$ (4); CHR$ (27);"J              WAREHOUSE"; CHR$ (4)
3520  PRINT : PRINT "Type in the name and amount of the "
3525  PRINT "goods you wish to leave in the "
3530  PRINT "warehouse."
3540  PRINT "When you have finished type 'END'": PRINT "as a name."
3545  PRINT "If you wish to leave all your cargo"
3550  PRINT "type 'ALL' as a name."
3555  REPEAT 
3560  INPUT  "Name";N$
3562 QQ = 9
3565  FOR  I = 1  TO  8: IF  N$ = G2$(I)  THEN  QQ = I
3566  NEXT 
3570  IF QQ > 8  THEN  3590
3572  PRINT "You have ";C(QQ);" cwt of ";G$(QQ)
3573  INPUT  "Amount";AM
3574 AM =  ABS (AM)
3575  IF  C(QQ) < AM  THEN   PRINT "You do not have ";AM;" cwt of ";N$: GOTO  3560
3580 C(QQ) =  INT (C(QQ) - AM)
3585 W%(QQ) = W%(QQ) + AM
3590  UNTIL  N$ = "END"  OR  N$ = "ALL"
3595  IF  N$ = "END"  THEN   GOTO  2000
3600  IF  N$ = "ALL"  THEN   FOR  I = 1  TO  8:W%(I) = C(I) + W%(I):C(I) = 0: NEXT 
3610  GOTO  2000
3699  REM ******TAKE FROM WAREHOUSE*****
3700  CLS 
3705  PRINT 
3710  PRINT  CHR$ (4); CHR$ (27);"J           WAREHOUSE"; CHR$ (4)
3715  PRINT : PRINT "Enter the name and amount of the "
3720  PRINT "goods you wish to take from the "
3725  PRINT "warehouse."
3735  PRINT "When you have finished type 'END' as": PRINT "a name."
3740  PRINT "If you wish to take the entire "
3745  PRINT "contents of the warehouse type 'ALL'": PRINT "as a name."
3750  REPEAT 
3755  INPUT "Name";N$
3756 QQ = 9
3760  FOR  I = 1  TO 8: IF  N$ = G2$(I)  THEN  QQ = I
3764  NEXT 
3765  IF  QQ > 8  THEN   3780
3767  PRINT "You have ";C(QQ);" cwt of ";G$(QQ)
3768  INPUT  "Amount";AM
3769 AM =  ABS (AM)
3770  IF W%(QQ) < AM  THEN   PRINT "You do not have that amount": GOTO  3755
3775 C(QQ) = C(QQ) + AM:W%(QQ) = W%(QQ) - AM
3780  UNTIL  N$ = "END"  OR  N$ = "ALL"
3785  IF  N$ = "END"  THEN   GOTO  7000
3790  FOR  I = 1  TO  8:C(I) = C(I) + W%(I):W%(I) = 0: NEXT 
3795  GOTO  7000 
3799  REM ****WAREHOUSE CONTENTS********
3800  CLS 
3801  PRINT 
3805  PRINT  CHR$ (4); CHR$ (27);"J    WAREHOUSE CONTENTS"; CHR$ (4)
3807  PRINT : PRINT "    --------- --------"
3810  FOR  I = 1  TO  8
3820  PRINT  TAB 30);W%(I): PRINT  CHR$ (11);G$(I) 
3825  NEXT 
3826  FOR  I = 1  TO   INT ( RND (1) * 7): PRINT : NEXT 
3830  PRINT  CHR$ (27);"LPress any key to return to port page"
3835  GET  A$: GOTO  7000
3999  REM *******STATUS*****************
4000  PRINT  CHR$ (12);"Ship: ";SN$; SPC 8);DA;" ";MN$(MO);" ";YR
4001  IF  CF$ = "Y"  THEN   INK 4
4005  PRINT 
4006 ST = 0: FOR  I = 1  TO  8:ST = ST + C(I): NEXT 
4007  IF  ST = 0  THEN   PRINT "Cargo hold empty.": GOTO  4060
4010  PRINT "Cargo          Cwt."
4015  PRINT "-----          ----"
4020  FOR  I = 1  TO  8
4030  IF  C(I) = 0  THEN  4050
4040  PRINT  TAB 30);C(I): PRINT  CHR$ (11);G$(I)
4050  NEXT 
4055  PRINT "--------------------"
4060  PRINT "Supplies left ";SU;" week";: IF  SU <  > 1  THEN   PRINT "s" ELSE   PRINT " " 
4070  GOSUB  3000
4090  IF  WL <  > 0  THEN   PRINT "Destination port: ";PN$(DP)
4110  IF  WL <  > 0  THEN   PRINT "Arrival ";WL;" week";: IF  WL <  > 1  THEN  PRINT "s" ELSE  PRINT " "
4115  IF  WL = 0  THEN   PRINT "Docked at ";PN$(DP)
4130  PRINT ""
4150  RETURN 
4999  REM  **********MUTINY*************
5000  CLS 
5010  IF  C(1) = 0  THEN  5110
5020  PRINT "The crew are going to mutiny if you"
5030  PRINT "do not pay them in gold now."
5035  PRINT "You have ";C(1);" cwt."
5040  PRINT "How much are you going to give them?"
5050  INPUT  "(1 cwt will last 5 weeks)";PAY
5055  IF  PAY < 0  THEN  5110
5060  IF  PAY  > C(1)  THEN   PRINT "You only have ";C(1)" cwt": GOTO  5040
5070 C(1) = C(1) - PAY
5080 CL = CL + 25 * PAY:C(1) =  INT (C(1))
5100  GOTO  2000   'BACK  TO  LOOP 
5110  PRINT "The crew has mutinied and as"
5120  PRINT "you do not have any gold to pay"
5130  PRINT "them with ,you lose your ship "
5140  PRINT "and the game"
5150  GOTO  61010
6000  CLS 
6005  POKE  618,11
6006  POKE  524,( PEEK (524) AND  127) + 128
6010  PRINT "            HELP SCREEN"
6020  PRINT "            ---- ------"
6025  PRINT "Your game will end on the first day of";
6026  PRINT LY
6027  IF  DP > 14  THEN  6150  'UNINHABITED IS.
6030  PRINT " Commands available at a port:"
6040  PRINT " LEAVE....To leave port"
6050  PRINT " LOOK.....To look at your cargo"
6060  PRINT " TRADE....To trade goods at this port"
6070  PRINT " REPLENISH..To replenish supplies"
6080  PRINT " PAY......To pay the crew"
6085  PRINT " QUIT.....To end the game"
6090  IF  DP <  > 1  THEN  6150
6095  PRINT 
6100  PRINT "Also,as you are at London,the extra"
6110  PRINT "commands below are available"
6120  PRINT " PUT..To put goods into the warehouse"
6130  PRINT " TAKE.To take goods from the warehouse";
6140  PRINT " WAREHOUSE..To see the contents"
6150  PRINT "Type all commands in upper-case "
6160  PRINT "followed by 'RETURN'"
6170  PRINT "Responses inside brackets {} require"
6180  PRINT "only a single keypress"
6200  PRINT : PRINT "Do you want to review the "
6210  PRINT "instructions?--{Y/N}"
6220  GET  A$
6230  IF  A$ <  > "Y"  AND  A$ <  > "N"  THEN   GOTO  6220
6240  IF  A$ = "Y"  THEN   GOSUB  50000: GOTO  6200
6900  RETURN 
6997  REM -------------------- 
6998  REM ****PORT ARRIVAL**** 
6999  REM --------------------                 
7000  IF  DP > 14  THEN   GOTO  22000
7002  CLS 
7005  IF  CF$ = "Y"  THEN   INK  6
7006  PRINT "Port of:";PN$(DP); SPC 3);DA;" ";MN$(MO);" ";YR
7010  PRINT : PRINT : PRINT "Buying"; SPC 14);"Selling" 
7015  PRINT "------"; SPC 14);"-------"
7016 TW = 0
7020  FOR  I =  1  TO  8
7030  IF  PR%(DP,I) = 0  THEN  7050
7040  IF  PR%(DP,I) < 0  THEN   PRINT G$(I)
7045 TW = TW + 1
7050  IF  PR%(DP,I) > 0  THEN   PRINT  SPC 20);G$(I)
7060  NEXT I 
7070  PRINT "-------------------------------------"
7071  FOR  Y = 5  TO  4 + TW
7072  PLOT  15,Y,"|"
7073  NEXT  
7140  PRINT : PRINT "What do you want to do";
7150  INPUT  W$
7155  IF   MID$ (W$,1,3) = "PAY"  THEN  7320
7159  IF   MID$ (W$,1,5) = "TRADE"  THEN  7300
7161  IF   MID$ (W$,1,5) = "LEAVE"  THEN  9000
7163  IF   MID$ (W$,1,4) = "LOOK"  THEN  7200
7165  IF   MID$ (W$,1,5) = "REPLE"  THEN  7400
7167  IF   MID$ (W$,1,3) = "PUT"  AND  DP = 1  THEN  3500
7169  IF   MID$ (W$,1,4) = "TAKE"  AND  DP = 1  THEN  3700
7170  IF   MID$ (W$,1,4) = "WARE"  THEN  3800 
7171  IF   MID$ (W$,1,4) = "HELP"  THEN   GOSUB  6000: GOTO  7000
7172  IF   MID$ (W$,1,4) = "help"  THEN   GOSUB  6000: GOTO  7000
7175  IF  W$ = "QUIT"  THEN   GOTO  61000
7180  PRINT  CHR$ (11); CHR$ (14); CHR$ (11);
7190  GOTO  7140
7200  GOSUB  4000
7205  PRINT : PRINT 
7210  PRINT   CHR$ (27);"LPress any key to return to port page"
7220  GET  A$
7230  GOTO  7000
7300  GOSUB  40000
7310  GOTO  7000
7320  GOSUB 10000
7330  GOTO  7000
7399  REM ********REPLENISH*************
7400  CLS 
7410  PRINT : PRINT : PRINT : PRINT "Supplies are now at the maximum level"
7420 "            of ";MS;" weeks"
7425 SU = 26
7430  WAIT  300
7440  GOTO  7000
7999  REM *****INITIALISE***************
8000  DEF   FN A(Z) =  INT ( RND (1) * Z + 1)
8005  PRINT  CHR$ (27);"B";
8010  DIM  TR%(20,8),G$(8),PN$(17) 
8020  DIM  C(8),G2$(8)
8030 SU = 20   'SUPPLIES
8035 CL = 70   'CREW LOYALTY
8100 DP = 1    'DESTINATI ON  P OR T
8110 WL = 0    'AT P OR T
8115 WEEKS = 0 ' LEN GTH OF GAME
8120  DIM  PR%(17,8),CT$(6),Q%(17)
8130  FOR  I = 1  TO  8  ' READ   GO ODS NAMES
8140  READ  G$(I)
8150  NEXT 
8154  PRINT "What do you want to call your"
8155  INPUT  "ship";SN$
8157 SN$ =  LEFT$ (SN$,10)
8160  FOR  I = 1  TO  20 'TRADE ROUTE  DATA 
8170  READ  TR%(I,1),TR%(I,2),TR%(I,3),TR%(I,4)
8180  NEXT 
8200  FOR  I = 1  TO  17 'P OR T NAME  DATA  
8210  READ  PN$(I)
8220  NEXT  I
8223  PRINT "The game can last for 2 to 5 years"
8225  INPUT  "How many years do you want to play for ";LY 
8226  IF  LY < 2  OR  LY > 5  THEN   GOTO  8225
8227  CLS : PRINT : PRINT : PRINT "            Please wait,": PRINT "     Tradewinds is being set up"
8228 LY = LY + 1750
8230  FOR  I = 1  TO  14 'P OR TS
8240  FOR  J = 1  TO  8  ' GO ODS PRICES *  *  *  *  * 
8250  READ  PR%(I,J)   ' READ  PRICE
8252 TE = PR%(I,J)
8253  IF  PR%(I,J) = 0  THEN  8260
8254 PR%(I,J) = PR%(I,J) +  INT ( RND (1) * 3 - 1)
8255  IF  PR%(I,J) = 0  THEN  PR%(I,J) = TE
8260  NEXT  J: NEXT I
8265 IN = 0
8270  FOR  I = 1  TO  8        'INIT CAR GO 
8280 C(I) = I * 2:IN = IN + C(I) *  ABS (PR%(1,I))
8290  NEXT  I
8798  GOTO  60000
8799  REM  GOODS NAMES DATA
8800  DATA  "Gold","Tea","Wine","Spices","Coffee","Tobacco","Sugar","Gunpowder"
8899  REM  TRADE ROUTE DATA FOLLOWS****
8900  DATA  15,17,10,0,17,14,7,0 '1&2
8905  DATA  14,13,17,1,13,16,4,0 '3&4
8910  DATA  16,8,10,0,8,9,7,1    '5&6
8915  DATA  9,10,12,1,10,15,5,0  '7&8
8920  DATA  15,11,2,0,16,7,4,0  '9&10
8925  DATA  7,8,10,1,3,7,7,1   '11&12
8930  DATA  2,12,7,0,12,13,7,1 '13&14
8935  DATA  1,12,10,0,1,2,4,1'15&16
8940  DATA  2,3,1,1,4,5,1,1  '17&18
8945  DATA  5,6,2,1,3,4,2,1  '19&20
8950  REM  ***PORT NAME DATA*********
8955  DATA  "London","Lisbon","Cadiz","Marseille","Naples","Athens"
8960  DATA  "Accra","Capetown","Zanzibar","Calcutta","Darwin"
8965  DATA  "Habana","Rio de Janeiro","Lima","Kerguelen Is.","Tubai Is."
8970  DATA  "Tristan Is."
8971  REM ***PRICE DATA************ROUTE
8972  DATA  -1,-1,-1,-1,-1,-1,-1, 2 '1
8973  DATA  -1, 0, 2,-1, 0, 0,-1, 2 '2
8974  DATA  -1, 0, 2,-1,-1,-1,-1, 2 '3
8975  DATA  -1,-1, 2,-1, 0,-1,-1, 2 '4
8976  DATA  -1,-1, 2,-1,-1, 0,-1, 2 '5
8977  DATA   0, 0, 2,-1, 0,-1, 0, 0 '6
8978  DATA   1, 0, 0, 2, 1,-1, 1,-1 '7
8979  DATA  -1, 0,-1, 0, 2,-3, 3,-1 '8
8980  DATA   0, 0, 0, 2,-1,-1, 2,-1 '9
8981  DATA  -1, 3, 0, 2, 0, 0, 0,-1 '10
8982  DATA   2, 3,-1, 0, 3, 2, 0,-1 '11
8983  DATA  -2, 0,-1, 0, 2, 2, 2,-1 '12
8984  DATA   1, 0,-1,-1, 2,-1, 2,-1 '13
8985  DATA   2, 0,-1,-1, 2, 0, 3,-1 '14
8999  REM ****LEAVE PORT****************
9000  PRINT  CHR$ (12); SPC 5);"Trade routes from ";PN$(DP)
9005  PRINT "--------------------------------------"
9010  PRINT 
9020  FOR  I = 1  TO  20
9030  IF  TR%(I,1) <  > DP  THEN  9050
9040  PRINT  I;" ";PN$(TR%(I,1));" to ";PN$(TR%(I,2));"{";TR%(I,3);"weeks}"
9050  IF  TR%(I,2) <  > DP  THEN  9070
9060  PRINT I;" ";PN$(TR%(I,2));" to ";PN$(TR%(I,1));"{";TR%(I,3);"weeks}"
9070  NEXT I  :
9080  PRINT : PRINT "Which trade route do you want to take--{ENTER ROUTE NUMBER}";
9090  INPUT  A
9091  IF  A > 20 OR  A < 1  THEN  9090
9095 SR = A: REM   NEW SHIPS ROUTE
9100  IF  TR%(A,1) = DP  OR  TR%(A,2) = DP  THEN  9130
9120  GOTO  9080
9130  IF  TR%(A,1) = DP  THEN  DP = TR%(A,2)  ELSE  DP = TR%(A,1)   ' NEW  ROUTE
9140 WL = TR%(SR,3)  ' NEW  WEEKS LEFT
9150  GOTO  2000  'BACK  TO  MAIN LOOP
9999  REM ******MUTINY******************
10000  CLS 
10001  IF  C(1) <  = 0  THEN   PRINT "You do not have any gold.": WAIT  300: GOTO  7000
10005  PRINT "You have ";C(1);" cwt of gold."
10010  PRINT "How much do you want to pay the crew"
10020  PRINT  "(1 cwt will be enough for"
10025  INPUT  "5 weeks)";PAY  
10030  IF  PAY > C(1)  THEN   GOTO  10005
10040 CL = CL + 25 * PAY
10050 C(1) = C(1) - PAY:C(1) =  INT (C(1)) 
10060  RETURN 
11000  REM ******ORDERS*****************
11100  PRINT "1=Go ashore for supplies"
11200  PRINT "2=Continue to destination"
11201  PRINT "3=Reverse course"
11202  PRINT "4=Pay the crew"
11205  PRINT 
11300  PRINT "What do you want to do?--{1/2/3/4}"
11400  GET  A$
11410  IF   ASC (A$) > 52  OR   ASC (A$) < 49  THEN   GOTO  11400
11420 A =  VAL (A$)
11600  ON  A  GOTO  11800,11700,14000
11610  IF  A = 4  THEN   GOSUB  10000
11700  RETURN 
11800  CLS : IF  TR%(SR,4) = 1  THEN  12300
11900  PRINT SN$;" is too far from any" 
11905  PRINT "land to allow the crew to go ashore"
12000  PRINT "You will have to continue"
12100  WAIT  200
12200  RETURN 
12300  PRINT : PRINT "A party has been despatched to gather"
12305  PRINT "supplies..."
12400 SU = SU +  FN A(19)  + 7
12405  IF  SU > MS  THEN  SU = MS
12700  WAIT  100
12800  PRINT "... and have replenished supplies to"
12900  PRINT SU;" weeks"
12905  WAIT  300
13000  RETURN 
14000  IF  TR%(SR,1) = DP  THEN  DP = TR%(SR,2): GOTO  14020
14010  IF  TR%(SR,2) = DP  THEN  DP = TR%(SR,1)
14020 WL = TR%(SR,3) - WL
14030  RETURN 
19999  REM ****NO SUPPLIES**************
20000  CLS : PRINT : PRINT "You have run out of supplies." 
20010  IF  TR%(SR,4) = 0  THEN  20090 'NO L AND 
20020  PRINT "There is land close by."
20060  GOSUB  12300
20080  GOTO  2000
20090  PRINT "There is no land close by."
20100  PRINT "Supplies cannot be replenished"
20110  GOTO  61000
21999  REM ****UNINHABITED IS.********
22000  PRINT  CHR$ (12);PN$(DP)
22004  IF  CF$ = "Y"  THEN   INK  2
22005  PRINT "------------"
22100  PRINT "This island is uninhabited"
22105  PRINT :
22200  PRINT "You can :"
22300  PRINT "LEAVE the island"
22400  PRINT "REPLENISH supplies here"
22650  PRINT "LOOK at cargo"
22652  PRINT  "PAY the crew"
22653  PRINT "QUIT the game"
22700  PRINT : PRINT "What do you want to do?"
22800  INPUT  A$
22900  IF   MID$ (A$,1,5) = "LEAVE"  THEN  23100
22910  IF   MID$ (A$,1,5) = "REPLE"  THEN  25000
22935  IF   MID$ (A$,1,4) = "HELP"  THEN   GOSUB  6000
22936  IF   MID$ (A$,1,4) = "help"  THEN   GOSUB  6000
22940  IF   MID$ (A$,1,4) = "LOOK"  THEN  25600
22941  IF   MID$ (A$,1,4) = "QUIT"  THEN   GOTO 61000
22942  IF   MID$ (A$,1,3) = "PAY"  THEN   GOSUB  10000
22945  GOTO  22000
23099  REM *******LEAVE*****************
23100  PRINT  CHR$ (12);"Trade routes from this island"
23110  GOTO  9010
24999  REM *******REPLENISH*************
25000  PRINT "A party has left to gather supplies on"
25100  PRINT "the island..."
25200 SU = SU +  FN A(19) + 7
25205  IF  SU > MS  THEN SU = MS
25300  WAIT  100
25400  PRINT "...and has replenished supplies to ";SU;" weeks"
25405  WAIT  200
25500  GOTO  22000
25600  PRINT  CHR$ (12): GOSUB  4000
25700  PRINT : PRINT  CHR$ (27);"LPress any key to return to the island "
25705  PRINT  CHR$ (27);"Lpage"
25800  GET  A$
25900  GOTO  22000
27999  REM *******KEYCHECK************
28000 A =  PEEK (769)
28005  IF  A = 223  THEN  X = X - 1
28010  IF  A = 127  THEN  X = X + 1
28020  RETURN 
29999  REM *********LOOKOUT*************
30000  IF  (SR = 3  OR  SR = 11)  AND  DP = 8  AND  WL  < 2  THEN  30070
30020  IF  SR = 3  AND (WL < 6  OR  WL > 3)  THEN  30070
30025  IF   FN A(100) < 10  THEN  30035
30030  RETURN 
30035  CLS 
30040  PRINT "There is a dangerous formation of "
30045  PRINT "rocks here."
30050  PRINT "You will have to navigate  ";SN$;" safely"
30055  PRINT "past them."
30060  GOTO  2500
30070  CLS : PRINT "There is rough water here."
30080  PRINT "Heavy seas are threatening to blow"
30085  PRINT SN$;" off course onto rocks."
30090  PRINT "You will have to steer her to safety."
30100  GOTO 2500
39999  REM *********TRADING*************
40000  CLS : PRINT 
40010  PRINT  CHR$ (4); CHR$ (27);"N               TRADING"; CHR$ (4)
40015  PRINT 
40020  PRINT "What are you trading with";
40030  INPUT  T$
40035 TG = 9
40040  FOR  I = 1  TO  8
40050  IF  T$ = G2$(I)  THEN  TG = I
40060  NEXT 
40070  IF  TG > 8  THEN  40190
40075  IF  PR%(DP,TG) >  = 0  THEN  40190
40100  PRINT "What do you want to"
40105  PRINT "trade for";
40110  INPUT  F$
40115 FG = 9
40130  FOR  I = 1  TO  8
40140  IF  F$ = G2$(I)  THEN  FG = I
40150  NEXT 
40160  IF  FG > 8  THEN  40210
40165  IF  PR%(DP,FG) > 0  THEN  40240
40170  PRINT F$;" is not for trade"
40180  WAIT  250 : RETURN 
40190  PRINT "You cannot trade with ";T$
40195  PRINT "here."
40200  WAIT  250: RETURN 
40210  PRINT "You cannot trade for ";F$
40220  WAIT  250: RETURN 
40240 PW =  - PR%(DP,TG):PF = PR%(DP,FG) 
40250  PRINT : PRINT "You can trade ";PW;" cwt of ";T$
40255  PRINT "for every ";PF;" cwt of ";F$
40270  PRINT "How much ";T$;" do you want"
40273  PRINT "to trade"
40275  PRINT "{You have ";C(TG);" cwt of ";T$;"}"
40290  INPUT  AM
40300  IF  AM < 0  OR  AM > C(TG)  THEN  40430
40305 AG =  INT (AM / PW * PF)
40310  PRINT "You can get ";AG;" cwt of ";F$
40320  PRINT "with  ";AM;" cwt of ";T$ 
40330  PRINT "Is this satisfactory--{Y/N}";
40340  GET  A$: PRINT A$
40350  IF  A$ <  > "Y"  AND  A$ <  > "N"  THEN  40330
40360  IF  A$ = "N"  THEN  40390
40370 C(TG) = C(TG) - AM
40380 C(FG) = C(FG) + AG
40390  PRINT "Do you want to trade for anything"
40395  PRINT "else--{Y/N}";
40397  GET  A$: PRINT A$
40400  IF A$ = "Y"  THEN  40000
40410  IF  A$ <  > "N"  THEN  40390
40420  RETURN 
40430  PRINT "You do not have that amount"
40440  WAIT  250
40450  RETURN 
44999  REM *******UPDATE TIME***********
45000 DA = DA + 7
45005 WEEKS = WEEKS + 1
45010  IF  DA > ND(MO)  THEN  MO = MO + 1: GOTO  45030
45020  RETURN 
45030  IF  MO > 12  THEN  45060
45040 DA = DA - ND(MO - 1)
45050  RETURN 
45060 YR = YR + 1
45070  IF  YR = LY  THEN  60900 
45080 MO = 1:DA = DA - ND(12)
45090  RETURN 
49999  REM *******INSTRUCTIONS**********
50000  PRINT  CHR$ (12)
50010  PRINT  CHR$ (4); CHR$ (27);"J          INSTRUCTIONS"; CHR$ (4)
50020  PRINT : PRINT 
50030  PRINT "You are in charge of a ship circa"
50040  PRINT 1750."
50050  PRINT "Starting with a small cargo the aim "
50060  PRINT "of the game is to create as large a"
50070  PRINT "fortune as possible within a given "
50080  PRINT "time period.This is achieved by "
50090  PRINT "trading at various ports around the "
50095  PRINT "world."
50100  PRINT "Demand for tradable goods will vary "
50110  PRINT "at different ports and by careful"
50120  PRINT "trading your fortune should grow."
50125  PRINT 
50130  PRINT "There are,however hazards to be"
50140  PRINT "negotiated."
50150  PRINT "Dangerous rock formations"
50160  PRINT "will have to be avoided by steering "
50170  PRINT "your ship safely through them."
50180  PRINT "Instructions on how to handle your "
50190  PRINT "ship are given before you actually"
50200  PRINT "battle with the elements."
50210  GOSUB  63000
50240  PRINT "The tradable goods are:"
50250  PRINT "Gold,Tea,Wine,Spices,Coffee,Tobacco" 
50260  PRINT "Sugar and Gunpowder."
50270  PRINT : PRINT "The ports are:"
50280  PRINT "London,Lisbon,Cadiz,Marseille,Naples,"
50290  PRINT "Athens,Accra,Capetown,Zanzibar,"
50300  PRINT "Calcutta,Darwin,Habana,Rio de Janeiro"
50310  PRINT "and Lima."
50320  PRINT : PRINT "Movement between the ports is "
50330  PRINT "only by established trade routes"
50360  PRINT "Before leaving a port,you will be"
50370  PRINT "shown a list of all the trade routes"
50380  PRINT "from the port you are presently"
50390  PRINT "docked at."
50400  PRINT "Also on the trade routes are three"
50410  PRINT "uninhabited islands:"
50420  PRINT "Kerguelen Island,Tubai Island"
50430  PRINT "and Tristan Island."
50440  PRINT "These islands can only be used to "
50450  PRINT "replenish supplies."
50460  GOSUB  63000
50540  PRINT : PRINT "In London there is a warehouse"
50550  PRINT "where you may leave goods to be"
50560  PRINT " picked up later."
50570  PRINT "At the end of the time period the only";
50580  PRINT "tradable goods counted in your "
50590  PRINT "fortune will be those in the"
50600  PRINT "warehouse."
50610  PRINT : PRINT 
50700  PRINT "During the time period you have one "
50710  PRINT "crew.Their loyalty to you depends on"
50720  PRINT "how much you have paid them."
50730  PRINT "This loyalty will increase when a port";
50740  PRINT "is reached,or if you choose to pay "
50750  PRINT "the men.Payment is only with gold.One"
50760  PRINT "cwt will keep them happy for 5 weeks."
50770  PRINT "If the crew mutiny and you have no"
50780  PRINT "gold then you lose the game,so beware!"
50790  GOSUB  63000
50800  PRINT "Supplies are affected by time and " 
50810  PRINT "therefore you can only keep a maximum"
50820  PRINT "of 26 weeks worth of supplies."
50825  PRINT "If you run out of supplies then you "
50826  PRINT "lose the game"
50830  PRINT "At each port you will be asked what"
50840  PRINT "you wish to do.By typing in commands"
50850  PRINT "you can perform various functions"
50860  PRINT "The commands available are:"
50870  PRINT "TRADE,PAY THE MEN,"
50880  PRINT "LOOK AT CARGO,LEAVE PORT and"
50890  PRINT "REPLENISH SUPPLIES."
50900  GOSUB  63000
51000  PRINT "In addition at London you have the "
51010  PRINT "extra commands PUT INTO WAREHOUSE,"
51020  PRINT "TAKE OUT OF WAREHOUSE and WAREHOUSE"
51025  PRINT "which shows you the present contents"
51027  PRINT "of the warehouse.This can be done at"
51028  PRINT "any port"
51030  PRINT "To excecute one of these commands"
51040  PRINT "you just type in the command and "
51050  PRINT "press 'RETURN'"
51060  PRINT "As some commands are fairly lengthy"
51070  PRINT "the first word only need be typed in"
53000  PRINT : PRINT 
54999  RETURN 
59999  REM ********INIT CONT'D**********
60000  FOR  I = 1  TO  8
60020  READ G2$(I)
60030  NEXT 
60040  DATA  "GOLD","TEA","WINE","SPICES","COFFEE","TOBACCO","SUGAR"
60050  DATA  "GUNPOWDER"
60100  REM  REDEFINE GRAPHICS
60110  FOR  I = 46808  TO  46815
60120  READ  D: POKE  I,D
60130  NEXT 
60140  DATA  #00,#04,#0A,#11,#00,#08,#14,#22
60150  FOR  I = 0  TO  7
60160  READ D: POKE 46080 + 8 *  ASC ("]") + I,D
60165  POKE  46080 + 8 *  ASC ("_") + I,D
60170  NEXT 
60180  DATA  5,6,12,20,4,63,31,15
60182  FOR  I = 0  TO  7
60184  READ D: POKE  46080 + 8 *  ASC ("@") + I,D
60185  POKE  46080 + 8 *  ASC ("^") + I,D
60186  NEXT 
60188  DATA  10,12,24,40,8,63,63,63
60200  DIM  W%(8)
60300  DIM  ND(12),MN$(12)
60310  FOR  I = 1  TO  12: READ  ND(I): NEXT 
60320  FOR  I = 1  TO  12: READ  MN$(I): NEXT 
60330  DATA  31,28,31,30,31,30,31,31,30,31,30,31
60340  DATA  Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec
60350 DA = 0:MO = 1:YR = 1750 
60400 MS = 26  'MAX SUPPLIES,ie 1 / 2 year
60500  RETURN 
60897  REM *****GAME OVER***************
60899  REM *****TIME LIMIT ENTRYPOINT***
60900  CLS 
60910  PRINT "     YOUR TIME LIMIT IS UP!"
60999  REM *****GENERAL ENTRYPOINT******
61000  PRINT : PRINT : PRINT "      THE GAME IS OVER"
61010  PRINT "Your score is ";
61020 SC = 0
61030  FOR  I = 1  TO  8
61040 SC = SC + W%(I) * (9 -  ABS (PR%(1,I)))
61050  NEXT 
61052 PC = 100 * ((SC - IN) / IN)
61053 PC =  INT (PC):SC =  INT (SC)
61055  IF  SC = 0  THEN   PRINT " no points!": GOTO  61062
61060  PRINT SC;" points"
61061  PRINT "or ";PC;"% gain"
61062 LY =  INT (WEEKS / 52):LW =  INT (WEEKS - LY * 52)
61063  PRINT : PRINT : PRINT 
61064  PRINT "Total playing time was"
61065  PRINT LY;" years and ";LW;" weeks."
61070  PRINT : PRINT "Another go?--{Y/N}";
61080  GET  A$
61090  IF  A$ <  > "Y"  AND  A$ <  > "N"  THEN   GOTO  61080
61100  IF  A$ = "Y"  THEN   RUN 
61105  PRINT 
61110  PRINT "Farewell dear traveller!" 
61150  END 
62000  RETURN 
62999  REM  *******KEYPRESS MESSAGE*****
63000  PRINT  CHR$ (27);"LPress any key for further instructions"
63010  GET  A$
63020  PRINT  CHR$ (12)
63030  RETURN 
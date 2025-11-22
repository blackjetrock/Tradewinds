#!/usr/bin/tclsh


set kw {
    {END	128	}
    {EDIT	129	}
    {STORE	130	}
    {RECALL	131	}
    {TRON	132	}
    {TROFF	133	}
    {POP	134	}
    {PLOT	135	}
    {PULL	136	}
    {LORES	137	}
    {DOKE	138	}
    {REPEAT	139	}
    {UNTIL	140	}
    {FOR	141	}
    {LLIST	142	}
    {LPRINT	143	}
    {NEXT	144	}
    {DATA	145	}
    {INPUT	146	}
    {DIM	147	}
    {CLS	148	}
    {READ	149	}
    {LET	150	}
    {GOTO	151	}
    {RUN	152	}
    {IF	        153     }
    {RESTORE	154	}
    {GOSUB	155	}
    {RETURN	156	}
    {REM	157	}
    {HIMEM	158	}
    {GRAB	159	}
    {RELEASE	160	}
    {TEXT	161	}
    {HIRES	162	}
    {SHOOT	163	}
    {EXPLODE	164	}
    {ZAP	165	}
    {PING	166	}
    {SOUND	167	}
    {MUSIC	168	}
    {PLAY	169	}
    {CURSET	170	}
    {CURMOV	171	}
    {DRAW	172	}
    {CIRCLE	173	}
    {PATTERN	174	}
    {FILL	175	}
    {PAPER	177	}
    {INK	178	}
    {STOP	179	}
    {ON	        180     }
    {WAIT	181	}
    {CLOAD	182	}
    {CSAVE	183	}
    {DEF	184	}
    {POKE	185	}
    {PRINT	186	}
    {CONT	187	}
    {LIST	188	}
    {CLEAR	189	}
    {GET	190	}
    {CALL	191	}
    {NEW	193	}
    {TAB	194	}
    {TO	195	}
    {FN	196	}
    {SPC	197	}
    {"@"        198     }
    {AUTO 	199	}
    {ELSE	200	}
    {THEN	201	}
    {NOT	202	}
    {STEP	203	}
    {"+"        204}
    {"-"        205}
    {"*"        206}
    {"/"        207}
    {"^"        208}
    {AND 	209	}
    {OR	210	}
    {">"        211}
    {"="        212}
    {"<"        213}
    {SGN	214	}
    {INT	215	}
    {ABS 	216	}
    {USR	217	}
    {FRE	218	}
    {POS	219	}
    {HEX$	220	}
    {"&"        221}
    {SQR	222	}
    {RND	223	}
    {LN	224	}
    {EXP	225	}
    {COS	226	}
    {SIN	227	}
    {TAN	228	}
    {ATN 	229	}
    {PEEK	230	}
    {DEEK	231	}
    {LOG	232	}
    {LEN	233	}
    {STR$       234}
    {VAL	235	}
    {ASC 	236	}
    {CHR$	237	}
    {PI	238	}
    {TRUE	239	}
    {FALSE	240	}
    {KEY$	241	}
    {SCRN	242	}
    {POINT	243	}
    {LEFT$	244	}
    {RIGHT$	245	}
    {MID$        246}
    {GO	        247}
}

if { 0} {
    foreach k $kw {
	puts " [lindex $k 0] [lindex $k 1]"
    }
}

set f [open in r]
#fconfigure $f -translation binary
chan configure $f -translation binary

set txt [read $f]

set byte_n 0
set address 0x0500

set cap_nxtline1 1
set cap_nxtline2 0
set cap_linenum1 0
set cap_linenum2 0
set nxtline 0x501
set linenum 0

foreach c [split $txt ""] {

    
    # Drop header bytes etc, work this vakue out by hand
    incr byte_n 1
    if { $byte_n < 0x1be } {
	continue
    }

    incr address 1
    
    binary scan $c H* cn
    set ch [expr 0x$cn]
    #puts -nonewline [format "\n%04X: %d      " $address $ch]

    if { $address == $nxtline } {
	
	set cap_nxtline1 1
    }
    
    if { $cap_nxtline1 } {
	set nxtline $ch
#	puts "<$ch>"
	set cap_nxtline1 0
	set cap_nxtline2 1
	continue
    }

    if { $cap_nxtline2 } {
#	puts "<$ch>"
	set nxtline [expr $nxtline+256*$ch]

	if { $nxtline < 256 } {
	    # End of program
	    exit
	}

	set cap_nxtline2 0
	set cap_linenum1 1
	continue
    }

    if { $cap_linenum1 } {
	set linenum $ch
	set cap_linenum1 0
	set cap_linenum2 1
	continue
    }

    if { $cap_linenum2 } {
	set linenum [expr $linenum+256*$ch]
	set cap_linenum2 0
	puts -nonewline [format "\n%d " $linenum $nxtline]
	continue
    }

    set found 0
    foreach k $kw {
	if { $ch == [lindex $k 1] } {
	    puts -nonewline " [lindex $k 0] "
	    set found 1
	    break
	}
    }
    
    if { !$found } {
	# Check for end of line marker
	if { $ch != 0 } {
	    puts -nonewline $c
	}
    }
}




set length [string length $txt]
puts ""
puts "Length:$length"


close $f

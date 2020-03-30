
		    ORG 	00h
START:		MOV 	R2,#8
		    MOV 	A,#0FEH
LOOP:		MOV 	P1,A
		    LCALL 	DELAY
		    RL 	    A        		;循环左移
		    DJNZ  	R2,LOOP         ;判断移动是否超过8 位，未超过继续循环                
		              
		    LJMP 	START
DELAY:		MOV 	R5,#20			;延时程序，延时0.2s
D1: 		MOV 	R6,#20
D2:		    MOV 	R7,#248
            DJNZ 	R7,$
            DJNZ 	R6,D2
            DJNZ 	R5,D1
            RET
            END
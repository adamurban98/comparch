		;CT1		by Adam Urban CID:01355934
		
		;R1		:= -(R3+1)
		;		Implemented by a MVN instruction
		MVN		R1,R3
		
		;Par		{R2:=R1; R1:=R0; R0:=R2}
		;Executing	the set of instructions, while using R6 as a temporary register. We dont have to keep track of its initial value, as at the end of the rogram it will be overwritten with a constant.
		MOV		R6,R1 ; Saving the value of R1 to R4
		MOV		R1,R0 ; R1:=R0
		MOV		R0,R2 ; R0:=R2
		MOV		R2,R6 ; Finally assigning the previous value of R1, saved into R6, to ist final destination: R2
		
		;R6		:=hexadecimal 6F
		;		Assigning the value of 0x6F to R6
		MOV		R6,#0x6F
		

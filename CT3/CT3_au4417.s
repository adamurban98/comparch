		
		;R1		input
		;R0		result
		;R2		counter for odd numbers
		;R3		temporary sum
		;R4		temporary counter for adding in one cycle
		
		;MOV		R1,#19 TEST VARIABLE
		
		CMP		R1,#1
		BEQ		LBL4
		
		MOV		R2,#1
		MOV		R3,#1
		MOV		R0,#0
		
LBL2		MOV		R4,#0
		ADD		R2,R2,#2
		
		MOV		R0,R3
		MOV		R3,#0
		
LBL1		ADD		R3,R3,R0
		ADD		R4,R4,#1
		CMP		R4,R2
		BLT		LBL1
		CMP		R2,R1
		BGE		LBL3
		B		LBL2
		
		
LBL3		MOV		R0,R3
		B		FINI
LBL4		MOV		R0,#1
FINI		CMP		R0,R0
		
		
		
		
		

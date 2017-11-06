		
		;TEST	INIT BEGIN
		;TO		BE DELETED
		
		
		;TEST	INIT END
		
		
		;Par		{ R2 := 50 - R0 ; R1 := 4*R1 - 4*R0 ; R0 := R1 }Par { R2 := 50 - R0 ; R1 := 4*R1 - 4*R0 ; R0 := R1 }
		
		MOV		R2,R0
		MOV		R0,R1
		MOV		R1,R2
		
		RSB		R2,R2, #50
		
		SUB		R1,R0,R1
		ADD		R1,R1,R1
		ADD		R1,R1,R1

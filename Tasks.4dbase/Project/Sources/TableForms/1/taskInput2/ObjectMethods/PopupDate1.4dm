  //PopupDate sample code

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		  // Init the var itself
		  // this can be done anywhere else in your code
		C_DATE:C307(dueDate_d)
		
		C_TEXT:C284($FormName)
		$FormName:=OBJECT Get name:C1087(Object current:K67:2)
		
		DatePicker SET WEEK FIRST DAY ($FormName;Sunday:K10:19)
		
	: (Form event code:C388=On Data Change:K2:15)
		If (dueDate_d#!00-00-00!)
			[Tasks:1]DueDate:6:=dueDate_d
		End if 
		
End case 
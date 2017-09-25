#SingleInstance, Force
#NoEnv  
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%


	py_key = py
	tamu_email_key = tamu
	gmail_key = gm

#IfWinNotActive, Quick Search
<^Space::

;gui layout
;----------------------------------------
	FormatTime, MyTime,, dddd - MMMM d, yyyy
	FormatTime, MyDate,, hh:mm:ss tt
	Gui, Font, s22 cRed
	Gui, Add, Edit, x0 y0 w500 vUserInput,
	Gui, Add, Button, default y+2 w500 h35 gExecuteSearch, Go
	Gui, Add, Text, center w500, %MyDate%
	Gui, Add, Text, center w500, %MyTime%
	Gui, Show, w500 h215, Quick Search
;----------------------------------------	
	Return


;labels
;----------------------------------------


ExecuteSearch:
Gui, Submit
if %UserInput%
{
	if py_key = %UserInput%
	{
		Send, main():`n`n
		Send, {TAB}print(100)`n`n`n{BackSpace}
		Send, main() 
		Gui, Destroy
	}
	else if tamu_email_key = %UserInput%
	{
		Send, axk14140@tamu.edu
		Gui, Destroy
	}
	else if gmail_key = %UserInput%
	{
		Send, akashkundu92@gmail.com
		Gui, Destroy
	}
	else
	{
		Run, https://www.google.com/#q=%UserInput%
		Gui, Destroy
	}
}
Gui, Destroy

GuiEscape:
	Gui, Destroy
	return
GuiClose:
	Gui, Destroy
	return
;----------------------------------------

	

	
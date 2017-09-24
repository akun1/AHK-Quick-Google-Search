#SingleInstance Force
#NoEnv  
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%


	py_key = py
	tamu_email_key = tamu
	gmail_key = gm


<^Space::  

	Gui, New,, Search
	Gui, Add, Edit, vUserInput
	Gui, Add, Button, Default, Search
	Gui, Show, autosize ;shows gui

		
	Return
		   

	ButtonSearch:
	{	
		Gui, Submit
		
		if %UserInput%
		{
			if py_key = %UserInput%
			{
				Send, main():`n`n
				Send, {TAB}print(100)`n`n`n{BackSpace}
				Send, main() 
			}
			else if tamu_email_key = %UserInput%
			{
				Send, axk14140@tamu.edu
			}
			else if gmail_key = %UserInput%
			{
				Send, akashkundu92@gmail.com
			}
			else
			{
				Run, https://www.google.com/#q=%UserInput%
			}
		}
		Gui, Destroy
	}

	GuiEscape:
	Gui, Destroy

	
<^Space::
InputBox, UserInput,Search, , ,500,100
if %UserInput%
{
	Run, https://www.google.com/#q= + %UserInput%
}
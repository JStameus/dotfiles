# PROMPT
#--------------------------------
function fish_prompt
	# Setting lastStatus for error display
	if test "$status" -ne 0
		set lastStatus (set_color --bold red)"E"(set_color normal)
	else
		set lastStatus (set_color --bold green)"0"(set_color normal)
	end
	# Displaying the prompt
	echo "["(echo $lastStatus)"]"(set_color --bold blue)(basename $PWD)(set_color normal)"/"(set_color --bold red)"|"(set_color --bold bryellow)"|"(set_color --bold green)"| > "   
end
#--------------------------------

# GREETING
#--------------------------------
set fish_greeting 
#--------------------------------

# COLOR TWEAKS
#--------------------------------
set -g fish_color_operator cyan
#--------------------------------

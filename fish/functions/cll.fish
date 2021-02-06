function cll --description 'Ls with detailed info and colored columns'
	echo "Hjöwdy!"	
	for line in (ls -lh | nl)
		echo (set_color green) $line # | cut -d ' ' -f2 
	end
end		

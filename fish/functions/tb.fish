function tb --description "Display the bounty board in a temporary location until I can move it to the proper directory"
	set originalDir $PWD
	cd ~/scripts
	./bounty.py
	echo "tbounty: Returning to original location: $originalDir"
	cd $originalDir
end

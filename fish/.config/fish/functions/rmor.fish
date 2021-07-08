function rmor --description "Removes all orphan packages"
	sudo pacman -Rns (pacman -Qdtq)
end

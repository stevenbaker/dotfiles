# load the shell dotfiles
for file in ~/.bash_{path,prompt,exports,aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

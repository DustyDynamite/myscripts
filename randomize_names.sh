#! /bin/bash                                                                                                                                             
do_rename() {
	(
	export prevdir="$(pwd)"
	cd "$1"
	for file in *
	do
		if [ -d "$file" ]
		then
			echo "$file is a directory, renaming recursively"
			do_rename "$file"
		elif [ -f "$file" ]
		then
			dirpath="$prevdir/$1"
			oldname="$dirpath/$file"
			name_hash=$(echo "$oldname" | md5sum)
			newname="$dirpath/${name_hash:0:32}.jpg"
			echo "mv $oldname $newname"
			mv $oldname $newname
		fi
	done
	cd "$prevdir"
	)
}

do_rename "$1"

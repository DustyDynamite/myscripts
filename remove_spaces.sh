for f in * ; do
	if [[ "$f" =~ \  ]] ; then
		mv "$f" "${f// /_}"
	fi
done

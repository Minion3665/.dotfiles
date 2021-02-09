for filename in ./*/.*; do
    [ -e "$filename" ] || continue
    [[ "$filename" =~ \/(\.)+$ ]] && continue
    [[ "$filename" =~ \/(\.)+$ ]] && continue
	echo Linking $filename to ~/$(basename $filename)
    rm ~/$(basename $filename)
	ln -sf $(pwd)/$filename ~/$(basename $filename)
done

echo Linked all files

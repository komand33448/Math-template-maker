#!/run/media/noname/CowDrive/Aa0-SchoolShit/GF2/EUX/Matematik
echo Write opg name
read opgName

echo Write 0 to save in Algebra
echo Write 1 to save in Formulae7
echo Write 2 to save in Bog
echo Write 3 to save in webOpg
echo no more options for now
read Cplace

#Where to make the file
case $Cplace in
	
	0)
		echo Saving opg file in Algebra...
		cp .Template Algebra/$opgName
		;;
	1)
		echo Saving opg file in Formulae7...
		cp .Template Bog/$opgName
		;;
	2)
		echo Saving opg file in Bog
		cp .Template Formulae7/$opgName
		;;	
	3)
		echo Saving opg file in WebOpg
		cp .Template webOpg/$opgName
		;;
*)

    ;;
esac

#Go to file location
case $Cplace in
	
	0)
		cd Algebra
		;;
	1)
		cd Bog
		;;
	2)
		cd Formulae7
		;;
	3)
		cd webOpg
		;;
*)

    ;;
esac

#Edit file
echo Write the start letter
read START
echo Write the end letter
read STOP
echo Editing file...

for letter in $(eval echo {$START..$STOP}); do
    echo $letter")" >> $opgName
    echo >> $opgName
done

#writing GG in swag
echo GG

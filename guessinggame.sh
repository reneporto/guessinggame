# 2018-10-28 -> RENE PORTO

###############################################################
#                        VARIABLES                            #
###############################################################

sumfile=$(find . -maxdepth 1 -type f | wc -l)

###############################################################
#                        FUNCTION                             #
###############################################################

function cond {
if [[ $guess -lt $sumfile ]]
then
	echo "to low"
	echo "How many files do you think this directory has?"
	read guess

elif [[ $guess -gt $sumfile ]]
then
	echo "to high"
	echo "How many files do you think this directory has?"
	read guess
fi
}

###############################################################
#                           MAIN                              #
###############################################################

echo "How many files do you think this directory has?"
read guess

while [[ $guess -ne $sumfile ]]
do
cond
done

echo "Congratulation! The correct number of files is $sumfile"

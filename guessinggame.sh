correct=1
numfiles=

function set-num-files(){
shopt -s nullglob
numfiles=(*)
numfiles=${#numfiles[@]}   
}

set-num-files

while [ $correct -ne 0 ]
do
  echo "Guess how many files are in this directory (then press [ENTER]):"
  read files
  if [ $files -eq $numfiles ]
  then
    echo "Good Guess!"
    correct=0
  else
    if [ $files -lt $numfiles ]
    then
      echo "Wrong, too low, guess again.."
    else
      echo "Wrong, too high, guess again.."
    fi
  fi
done

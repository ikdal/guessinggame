# Reads the number of files in the current folder 
nbr_of_files=$(ls | wc -l)
current_folder=$(pwd)
echo "How many files are there in the current folder ($current_folder)?:"

function compare {
    # Function that compares the two numbers
    if [[ $1 -gt $2 ]]
    then 
        echo "Your guess is too high, guess again:"
    else
        echo "Your guess is too low, guess again:"
    fi
}

# Start the guessing game with user input
read guess
while [[ $guess -ne $nbr_of_files ]]
do
    compare $guess $nbr_of_files
    read guess
done

# The user has guessed the right number at this point
echo "Congratulations! You entered $guess, which is the correct number of files!"

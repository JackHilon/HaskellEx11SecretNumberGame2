


game:: Int -> IO ()
game numberOfGuesses = do 
    let secretNumber = "5"

    if(numberOfGuesses >= 3)
        then putStrLn("Sorry, you lose....")
    else do
        putStr("Enter your guess between 1 and 10: ")
        number <- getLine
        if(number == secretNumber)
            then putStrLn("You win!")
        else do
            game (numberOfGuesses + 1)


main = do 
    game 0

    
    
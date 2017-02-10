module Main where
import Lexer as Lexer
import Stdout as Out
import Grammar

main = do
    input <- getContents
    let test = Lexer.runAlexScan input
    case test of
        Right st -> mapM_ putStrLn $ Out.printPlease $ Lexer.lexerTokens st
    return ()
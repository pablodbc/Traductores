module Main where
import Lexer as Lexer
import Grammar

main = do
    input <- getContents
    let test = Lexer.runAlexScan input
    case test of
        Right st -> mapM_ putStrLn $ Lexer.printPlease $ Lexer.lexerTokens st
    return ()
module Main where
import System.Environment
import System.IO
import Lexer as Lexer
import Stdout as Out
--import Grammar 



argError :: [String] -> Either String String
argError [] = Left "Error: debe indicar un archivo"
argError (x:_:_) = Left "Error: solo se puede indicar un archivo"
argError [x] = 
    case reverse x of
                    ('n':'t':'r':'.':_) -> Right x 
                    _ -> Left "Error: archivo no es .rtn"



parseArg :: String -> Either String [(Lexer.Token,Lexer.AlexPosn)] 
    
parseArg st =
    case (Lexer.runAlexScan st) of
        (Left msg) -> Left msg
        (Right ltks) -> do
            let tks = Lexer.lexerTokens ltks
            case tks of
                tks@(((LexError _), _) : _) -> do
                    Left $ concatMap (\s -> s++"\n") $ Out.printPlease tks
                tks -> do
                    Right tks


main = do
    args <- getArgs
    case argError args of
        Left msg -> putStrLn msg
        Right x -> do
            ss <- readFile x
            case parseArg ss of
                Left msg -> putStrLn msg
                Right x -> do
                    putStrLn "Grammar"
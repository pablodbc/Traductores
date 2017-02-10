module Main where
import System.Environment
import System.IO
import Lexer as Lexer
import Stdout as Out
--import Grammar

parseArg :: String -> Either String [(Lexer.Token,Lexer.AlexPosn)] 

parseArg [] = Left "Error: falta indicar archivo"
parseArg fs = do
    st <- readFile fs
    let alex =  Lexer.runAlexScan st
    case alex of
        Left msg -> Left msg
        Right ltks -> do
            let tks = Lexer.lexerTokens ltks
            case tks of
                tks@(((LexError _), _) : _) -> do
                    Left $ concatMap (\s -> s++"\n") $ Out.printPlease tks
                tks -> do
                    Right tks 




{-lexicalAnalysis :: Either String [(Token,AlexPosn)] 

lexicalAnalysis = do
    args <- getArgs
    case args of
        [] -> do 
            Left ["Error: falta indicar archivo"]
        _ -> do
            let filePath = args!!0
            handle <- openFile filePath
            case handle of
                ControlE.SomeException e -> do
                    Left ["Error abriendo archivo: "++filePath, show(e)]
                _ -> do
                    let s = hGetContents handle
                    case hGetContents handle of
                        Left msg -> Left msg
                        Right st -> do
                                case Lexer.lexerTokens st of
                                    tks@((Lexer.LexError _, _):_) -> do 
                                        Left (Out.printPlease tks)
                                    tks -> do
                                        Right tks-}
                    

main = do
    args <- getArgs
    case args of
        [] -> putStrLn "Error: falta indicar archivo"
        (x:_) -> putStrLn "Error: solo se puede indicar un archivo"
        (x:[]) -> do
            parseArg x



    input <- getContents

    let lexicalAnalysis = Lexer.runAlexScan input
    case lexicalAnalysis of
        Right st -> mapM_ putStrLn $ Out.printPlease $ Lexer.lexerTokens st
    return ()
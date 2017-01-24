{
module Main where
import System.Environment
import System.IO
}
%wrapper "posn"

$digit = 0-9
$letter = [a-zA-Z]
$special =  [\.\;\,\$\|\*\+\?\#\~\-\{\}\(\)\[\]\^\/\&\:\=\@\'\<\>\%\!\\]

@integer = $digit+
@floating = $digit+(\.$digit+)?
@comment = \#.*
@str = \"($digit|$letter|$white|($special # [\\\"])|\\\"|\\\\|\\n)*\"
@sign = ([\%\/\*\-\)\(\+\=\;\,\<\>]|not|and|or|\=\=|\/\=|\>\=|\<\=|div|mod|\-\>)
@datatype = (number|boolean)
@reserved = (true|false|with|do|end|if|then|else|while|for|repeat|begin|return|func|times|program)
@identifier = [a-z]($letter|$digit|_)*
@error = .
tokens :-
    $white+ ;

    @integer    { \p s -> Integer p (read s) }
    @floating   { \p s -> Floating p (read s) }
    @comment    ;
    @str        { \p s -> Str p s }
    @reserved   { \p s -> Reserved p s }
    @sign       { \p s -> Sign p s }
    @datatype   { \p s -> Datatype p s }
    @identifier { \p s -> Identifier p s }
    @error      { \p s -> LexError p s }

{
data Token = Integer AlexPosn Int               |
             Floating AlexPosn Double           |
             Str AlexPosn String                |
             Identifier AlexPosn String         |
             Sign AlexPosn String               |
             Datatype AlexPosn String           |
             Reserved AlexPosn String           |
             LexError AlexPosn String   
             deriving (Eq, Show)

getPos :: AlexPosn -> (Int,Int)
getPos (AlexPn _ l c) = (l,c)

makePrintable :: Token -> String
makePrintable (Integer p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": literal numerico '" ++ (show s) ++ "'"

makePrintable (Floating p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": literal numerico '" ++ (show s) ++ "'"

makePrintable (Str p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": Christian no se que poner aqui xD '" ++ (show s) ++ "'"

makePrintable (Identifier p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": identificador '" ++ (id s) ++ "'"

makePrintable (Sign p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Datatype p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": tipo de dato '" ++ (id s) ++ "'"

makePrintable (Reserved p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (LexError p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": caracter inesperado '" ++ (id s) ++ "'"

isError :: Token -> Bool
isError(Integer _ _) = False
isError(Floating _ _) = False
isError(Str _ _) = False
isError(Identifier _ _) = False
isError(Sign _ _) = False
isError(Datatype _ _) = False
isError(Reserved _ _) = False
isError(LexError _ _) = True

testError :: [Token] -> [Token]
testError = filter (isError)
printPlease :: [Token] -> [String]
printPlease = foldr (\x acc -> (makePrintable x) : acc) []

main::IO ()
main = do
  args <- getArgs
  let filePath = args!!0
  handle <- openFile filePath ReadMode
  s <- hGetContents handle
  let pre = alexScanTokens s
  let errors = testError pre
  if null errors then mapM_ putStrLn (printPlease $ pre) else  mapM_ putStrLn (printPlease $ errors)
  hClose handle
  
}



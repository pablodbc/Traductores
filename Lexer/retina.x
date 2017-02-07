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
@identifier = [a-z]($letter|$digit|_)*
@error = .
tokens :-
    $white+ ;
    \%        {\p s -> Modex p s} 
    \/        {\p s -> Divex p s}  
    \*        {\p s -> Mult p s}  
    \-        {\p s -> Minus p s}  
    \)        {\p s -> CloseP p s}  
    \(        {\p s -> OpenP p s}  
    \+        {\p s -> Plus p s}  
    \=        {\p s -> Def p s} 
    \;        {\p s -> SemiColon p s} 
    \,        {\p s -> Comma p s}
    \<        {\p s -> Less p s}
    \>        {\p s -> More p s} 
    not       {\p s -> Not p s}
    and       {\p s -> And p s}
    or        {\p s -> Or p s}
    \=\=      {\p s -> Eq p s}
    \/\=      {\p s -> Neq p s}
    \>\=      {\p s -> Moreq p s}
    \<\=      {\p s -> Lesseq p s}  
    div       {\p s -> Div p s}
    mod       {\p s -> Mod p s}
    \-\>      {\p s -> Arrow p s} 
    number    {\p s -> Number p s}
    boolean   {\p s -> Boolean p s}
    true      {\p s -> True p s}
    false     {\p s -> False p s}
    with      {\p s -> With p s}
    do        {\p s -> Do p s}
    end       {\p s -> End p s}
    if        {\p s -> If p s}
    then      {\p s -> Then p s}
    else      {\p s -> Else p s}
    while     {\p s -> While p s}
    for       {\p s -> For p s}
    repeat    {\p s -> Repeat p s}
    begin     {\p s -> Begin p s}
    return    {\p s -> Return p s}
    func      {\p s -> Func p s}
    times     {\p s -> Times p s}
    program   {\p s -> Program p s}
    @integer    { \p s -> Integer p (read s) }
    @floating   { \p s -> Floating p (read s) }
    @comment    ;
    @str        { \p s -> Str p s }
    @identifier { \p s -> Identifier p s }
    @error      { \p s -> LexError p s }

{
data Token = Integer AlexPosn String            |
             Floating AlexPosn String           |
             Str AlexPosn String                |
             Identifier AlexPosn String         |
             LexError AlexPosn String           |
             Modex AlexPosn String              |
             Divex AlexPosn String              |
             Mult AlexPosn String               |
             Minus AlexPosn String              |
             CloseP AlexPosn String             |
             OpenP AlexPosn String              |
             Plus AlexPosn String               |
             Def AlexPosn String                |
             SemiColon AlexPosn String          |
             Comma AlexPosn String              |
             Less AlexPosn String               |
             More AlexPosn String               |
             Not AlexPosn String                |
             And AlexPosn String                |
             Or AlexPosn String                 |
             Eq AlexPosn String                 |
             Neq AlexPosn String                |
             Moreq AlexPosn String              |
             Lesseq AlexPosn String             |
             Div AlexPosn String                |
             Mod AlexPosn String                |
             Arrow AlexPosn String              |
             Number AlexPosn String             |
             Boolean AlexPosn String            |
             True AlexPosn String               |
             False AlexPosn String              |
             With AlexPosn String               |
             Do AlexPosn String                 |
             End AlexPosn String                |
             If AlexPosn String                 |
             Else AlexPosn String               |
             Then AlexPosn String               |
             While AlexPosn String              |
             For AlexPosn String                |
             Repeat AlexPosn String             |
             Begin AlexPosn String              |
             Return AlexPosn String             |
             Func AlexPosn String               |
             Times AlexPosn String              |
             Program AlexPosn String
             deriving (Eq, Show)

getPos :: AlexPosn -> (Int,Int)
getPos (AlexPn _ l c) = (l,c)

makePrintable :: Token -> String
makePrintable (Integer p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": literal numerico '" ++ (show s) ++ "'"

makePrintable (Floating p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": literal numerico '" ++ (show s) ++ "'"

makePrintable (Str p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": cadena de caracteres " ++ (id s)

makePrintable (Identifier p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": identificador '" ++ (id s) ++ "'"

makePrintable (Modex p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Divex p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Mult p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Minus p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (CloseP p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (OpenP p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Plus p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Def p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (SemiColon p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Comma p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Less p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (More p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Not p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (And p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Or p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Eq p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Neq p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Moreq p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lesseq p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Div p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Mod p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Arrow p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Divex p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Number p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": tipo de dato '" ++ (id s) ++ "'"

makePrintable (Boolean p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": tipo de dato '" ++ (id s) ++ "'"

makePrintable (True p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": literal booleano '" ++ (id s) ++ "'"

makePrintable (False p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": literal booleano '" ++ (id s) ++ "'"

makePrintable (With p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"


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



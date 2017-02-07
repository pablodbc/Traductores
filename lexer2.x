{
module Main where
}
%wrapper "monadUserState"

$digit = 0-9
$letter = [a-zA-Z]
$special =  [\.\;\,\$\|\*\+\?\#\~\-\{\}\(\)\[\]\^\/\&\:\=\@\'\<\>\%\!\\]

@integer = $digit+
@floating = $digit+(\.$digit+)?
@comment = \#.*
@str = \"($digit|$letter|$white|($special # [\\\"])|\\\"|\\\\|\\n|\\t)*\"
@identifier = [a-z]($letter|$digit|_)*
@error = .

tokens :-
    $white+             ;
    \%                  {(pushToken $ Modex)} 
    \/                  {(pushToken $ Divex)}  
    \*                  {(pushToken $ Mult)}  
    \-                  {(pushToken $ Minus)}  
    \)                  {(pushToken $ CloseP)}  
    \(                  {(pushToken $ OpenP)}  
    \+                  {(pushToken $ Plus)}  
    \=                  {(pushToken $ Def)} 
    \;                  {(pushToken $ SemiColon)} 
    \,                  {(pushToken $ Comma)}
    \<                  {(pushToken $ Less)}
    \>                  {(pushToken $ More)} 
    not                 {(pushToken $ Not)}
    and                 {(pushToken $ And)}
    or                  {(pushToken $ Or)}
    \=\=                {(pushToken $ Eq)}
    \/\=                {(pushToken $ Neq)}
    \>\=                {(pushToken $ Moreq)}
    \<\=                {(pushToken $ Lesseq)}  
    div                 {(pushToken $ Div)}
    mod                 {(pushToken $ Mod)}
    \-\>                {(pushToken $ Arrow)} 
    number              {(pushToken $ Number)}
    boolean             {(pushToken $ Boolean)}
    true                {(pushToken $ True')}
    false               {(pushToken $ False')}
    with                {(pushToken $ With)}
    do                  {(pushToken $ Do)}
    end                 {(pushToken $ End)}
    if                  {(pushToken $ If)}
    then                {(pushToken $ Then)}
    else                {(pushToken $ Else)}
    while               {(pushToken $ While)}
    for                 {(pushToken $ For)}
    repeat              {(pushToken $ Repeat)}
    begin               {(pushToken $ Begin)}
    return              {(pushToken $ Return)}
    func                {(pushToken $ Func)}
    times               {(pushToken $ Times)}
    program             {(pushToken $ Program)}
    @comment            ;
    @integer            {(pushToken $ Integer . read ) }
    @floating           {(pushToken $ Floating . read) }
    @str                {(pushToken $ Str) }
    @identifier         {(pushToken $ Identifier) }
    @error              {(pushToken $ LexError) }

{

alexEOF :: Alex ()
alexEOF = return ()

data Token = Integer Int            |
             Floating Double           |
             Str String                |
             Identifier String         |
             LexError String           |
             Modex String              |
             Divex String              |
             Mult String               |
             Minus String              |
             CloseP String             |
             OpenP String              |
             Plus String               |
             Def String                |
             SemiColon String          |
             Comma String              |
             Less String               |
             More String               |
             Not String                |
             And String                |
             Or String                 |
             Eq String                 |
             Neq String                |
             Moreq String              |
             Lesseq String             |
             Div String                |
             Mod String                |
             Arrow String              |
             Number String             |
             Boolean String            |
             True' String               |
             False' String              |
             With String               |
             Do String                 |
             End String                |
             If String                 |
             Else String               |
             Then String               |
             While String              |
             For String                |
             Repeat String             |
             Begin String              |
             Return String             |
             Func String               |
             Times String              |
             Program String
             deriving (Eq, Show)

getPos :: AlexPosn -> (Int,Int)
getPos (AlexPn _ l c) = (l,c)

makePrintable :: (Token,AlexPosn) -> String

makePrintable (Integer s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": literal numerico '" ++ (show s) ++ "'"

makePrintable (Floating s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": literal numerico '" ++ (show s) ++ "'"

makePrintable (Str s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": cadena de caracteres " ++ (id s)

makePrintable (Identifier s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": identificador '" ++ (id s) ++ "'"

makePrintable (Modex s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Divex s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Mult s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Minus s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (CloseP s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (OpenP s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Plus s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Def s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (SemiColon s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Comma s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Less s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (More s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Not s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (And s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Or s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Eq s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Neq s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Moreq s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lesseq s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Div s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Mod s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Arrow s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Number s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": tipo de dato '" ++ (id s) ++ "'"

makePrintable (Boolean s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": tipo de dato '" ++ (id s) ++ "'"

makePrintable ((True' s),p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": literal booleano '" ++ (id s) ++ "'"

makePrintable ((False' s),p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": literal booleano '" ++ (id s) ++ "'"

makePrintable (With s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Do s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
    
makePrintable (End s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
   
makePrintable (If s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
    
makePrintable (Else s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
  
makePrintable (Then s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
  
makePrintable (While s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
 
makePrintable (For s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
   
makePrintable (Repeat s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Begin s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
 
makePrintable (Return s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Func s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
  
makePrintable (Times s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
 
makePrintable (Program s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (LexError s, p) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": Caracter inesperado '" ++ (id s) ++ "'"


data AlexUserState = AlexUserState 
                {
                    lexerError    :: Bool ,
                    lexerTokens   :: [(Token, AlexPosn)]
                }

alexInitUserState :: AlexUserState
alexInitUserState = AlexUserState 
                {
                    lexerError    = True ,
                    lexerTokens   = []
                }


modifyUserState :: (AlexUserState -> AlexUserState) -> Alex ()
modifyUserState f = Alex $ \sstate -> let current = alex_ust sstate
                                          new = f current
                                      in
                                          Right (sstate { alex_ust = new },())


getUserState ::  Alex AlexUserState
getUserState = Alex $ \state -> Right (state,alex_ust state)


isError :: Token -> Bool
isError (LexError _) = True
isError _ = False


pushToken :: (String -> Token) -> AlexAction ()
pushToken tokenizer =
    \(posn,prevChar,pending,str) len -> modifyUserState (push (take len str) posn) >> alexMonadScan
    where

        whatToPush :: [(Token, AlexPosn)] -> (Token, AlexPosn) -> [(Token, AlexPosn)]
        whatToPush tks@(((LexError _), _) : _) tk@((LexError _) , _) = tks++[tk]        -- Errors and new Error
        whatToPush tks@(((LexError _), _) : _) _ = tks                                  -- Errors and new Normal Token
        whatToPush tks tk@((LexError _), _) = [tk]                                      -- Normal Tokens and new Error
        whatToPush tks tk = tks++[tk]                                                   -- Normal Tokens (might be empty) 
                                                                                        -- and new Normal Token

        push :: String -> AlexPosn -> AlexUserState -> AlexUserState
        push st p ts = 
            ts{
                lexerTokens = whatToPush (lexerTokens ts) (newToken, p) ,
                lexerError = (lexerError ts) && not(isError newToken)
            }
            where 
                newToken = tokenizer st
         
runAlexScan :: String -> Either String AlexUserState
runAlexScan s = runAlex s $ alexMonadScan >> getUserState         

printPlease :: [(Token,AlexPosn)] -> [String]
printPlease = foldr (\x acc -> (makePrintable x) : acc) []

main = do
    input <- getContents
    let test = runAlexScan input
    case test of
        Right st -> mapM_ putStrLn $ printPlease $ lexerTokens st
    return ()

}

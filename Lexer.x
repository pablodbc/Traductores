{
module Lexer where
}
%wrapper "monadUserState"

$digit = 0-9
$letter = [a-zA-Z]
$special =  [\.\;\,\$\|\*\+\?\#\~\-\{\}\(\)\[\]\^\/\&\:\=\@\'\<\>\%\!\\]

@integer = $digit+
@floating = $digit+(\.$digit+)?
@comment = \#.*
@str = \"($digit|$letter|($white # \n)|($special # [\\\"])|\\\"|\\\\|\\n|\\t)*\"
@identifier = [a-z]($letter|$digit|_)*
@error = .

tokens :-
    $white+             ;
    @comment            ;
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
    writeln             {(pushToken $ WriteLn)}
    write               {(pushToken $ Write)}
    by                  {(pushToken $ By)}
    from                {(pushToken $ From)}
    to                  {(pushToken $ To)}
    @integer            {(pushToken $ Integer . read) }
    @floating           {(pushToken $ Floating . read) }
    @str                {(pushToken $ Str) }
    @identifier         {(pushToken $ Identifier) }
    @error              {(pushToken $ LexError) }

{

alexEOF :: Alex ()
alexEOF = return ()

data Token = Integer Int               |
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
             True' String              |
             False' String             |
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
             Program String            |
             WriteLn String            |
             Write String              |
             By String                 |
             From String               |
             To String                 
             deriving (Eq, Show)

getPos :: AlexPosn -> (Int,Int)
getPos (AlexPn _ l c) = (l,c)

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


}

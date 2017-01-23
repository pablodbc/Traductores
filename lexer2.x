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
@sign = ([\%\/\*\-\)\(\+\=\;\,\<\>]|not|and|or|\=\=|\/\=|\>\=|\<\=|div|mod|\-\>)
@datatype = (number|boolean)
@reserved = (true|false|with|do|end|if|then|else|while|for|repeat|begin|return|func|times|program)
@error = .

tokens :-
    $white+             ;
    @comment            ;
    @integer            {pushToken $ Integer (read s) }
    @floating           {pushToken $ Floating (read s) }
    @str                {pushToken $ Str s }
    @identifier         {pushToken $ Identifier s }
    @sign               {pushToken $ Sign s }
    @datatype           {pushToken $ Datatype s }
    @reserved           {pushToken $ Reserved s }
    @error              {pushToken $ LexError s }

{

alexEOF :: Alex ()
alexEOF = return ()

data Token = Integer Int               |
             Floating Double           |
             Str String                |
             Identifier String         |
             Sign String               |
             Datatype String           |
             Reserved String           |
             LexError String   
             deriving (Eq, Show)


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
modifyUserState f = Alex $ \s -> let current = alex_ust s
                                     new     = f current
                                 in
                                    Right (s { alex_ust = new },())


getUserState ::  Alex AlexUserState
getUserState = Alex $ \s -> Right (s,alex_ust s)





pushToken :: (String -> Token) -> AlexAction ()
pushToken tokenizer =
  \(posn,prevChar,pending,s) len -> modifyUserState (push $ (take len s) posn) >> alexMonadScan
    where
        newToken = tokenizer s
        what LexError String = False
        what _ = True
        push :: String -> AlexPosn -> AlexUserState -> AlexUserState
        push s p ts = ts{lexerTokens=(lexerTokens ts)++[(p, newToken)],lexerError=(lexerError ts)&&(what newToken)} 
            


main::IO ()
main = do
  s <- getContents
  --print (alexScanTokens s)
}
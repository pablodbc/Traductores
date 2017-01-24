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
    @integer            {(\s -> pushToken $ Integer (read s)) }
    @floating           {(\s -> pushToken $ Floating (read s)) }
    @str                {(\s -> pushToken $ Str s) }
    @identifier         {(\s -> pushToken $ Identifier s) }
    @sign               {(\s -> pushToken $ Sign s) }
    @datatype           {(\s -> pushToken $ Datatype s) }
    @reserved           {(\s -> pushToken $ Reserved s) }
    @error              {(\s -> pushToken $ LexError s) }

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
modifyUserState f = Alex $ \sstate -> let current = alex_ust sstate
                                          new = f current
                                      in
                                          Right (sstate { alex_ust = new },())


getUserState ::  Alex AlexUserState
getUserState = Alex $ \state -> Right (state,alex_ust state)



pushToken :: (String -> Token) -> AlexAction ()
pushToken tokenizer =
    \(posn,prevChar,pending,str) len -> modifyUserState (push $ (take len str) posn) >> alexMonadScan
    where
        what LexError s = False
        what _ _ = True
        push :: String -> AlexPosn -> AlexUserState -> AlexUserState
        push st p ts = 
            ts{lexerTokens=(lexerTokens ts)++[(p, newToken)],lexerError=(lexerError ts)&&(what newToken)}
            where 
                newToken = tokenizer st
         
            


main::IO ()
main = do
  filesss <- getContents
  --print (runAlex filesss $ alexMonadScan >> getUserState)
  return ()
}
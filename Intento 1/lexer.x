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
@str = \"($digit|$letter|$white|($special # [\\\"])|\\\"|\\\\|\\n)*\"
@identifier = [a-z]($letter|$digit|_)*
@sign = ([\%\/\*\-\)\(\+\=\;\,\<\>]|not|and|or|\=\=|\/\=|\>\=|\<\=|div|mod|\-\>)
@datatype = (number|boolean)
@reserved = (true|false|with|do|end|if|then|else|while|for|repeat|begin|return|func|times|program)
@error = .
tokens :-
    $white+ ;
    @comment  ;
    @integer  {pushToken $ Integer p (read s) }
    @floating {pushToken $ Floating p (read s) }
    @str  {pushToken $ Str p s }
    @identifier { pushToken $ Identifier p s }
    @sign { pushToken $ Sign p s }
    @datatype { pushToken $ Datatype p s }
    @reserved   { pushToken $ Reserved p s }
    @error  { pushToken $ LexError p s }
{
tok f p s = f p s
data Token = Integer AlexPosn Int     |
             Floating AlexPosn Double     |
             Str AlexPosn String      |
             Identifier AlexPosn String     |
             Sign AlexPosn String     |
             Datatype AlexPosn String     |
             Reserved AlexPosn String     |
             LexError AlexPosn String   
             deriving (Eq, Show)
token_posn (Str p _) = p
token_posn (Identifier p _) = p
token_posn (Sign p _) = p
token_posn (Datatype p _) = p
token_posn (Reserved p _) = p
token_posn (LexError p _) = p
main::IO ()
main = do
  s <- getContents
  print (alexScanTokens s)
}
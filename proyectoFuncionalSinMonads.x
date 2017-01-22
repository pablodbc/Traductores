{
module Main where
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
@sign = ([\%\/\*\-\)\(\+\=\;\,\<\>]|not|and|or|\=\=|\/\=|\>\=|\<\=|div|mod|\-\>)
@datatype = (number|boolean)
@reserved = (true|false|with|do|end|if|then|else|while|for|repeat|begin|return|func|times|program)
@error = .
tokens :-
    $white+	;

    @integer	{tok (\p s -> Integer p (read s)) }
    @floating	{tok (\p s -> Floating p (read s)) }
    @comment	;
    @str	{ \p s -> Str p s }
    @identifier	{ \p s -> Identifier p s }
    @sign	{ \p s -> Sign p s }
    @datatype	{ \p s -> Datatype p s }
    @reserved 	{ \p s -> Reserved p s }
    @error	{ \p s -> LexError p s }

{
tok f p s = f p s
data Token = Integer AlexPosn Int			|
             Floating AlexPosn Double			|
             Str AlexPosn String 			|
             Identifier AlexPosn String			|
             Sign AlexPosn String			|
             Datatype AlexPosn String			|
             Reserved AlexPosn String			|
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



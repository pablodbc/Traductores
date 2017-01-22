{
module Main where
}
%wrapper "basic"

$digit = 0-9
$letter = [a-zA-Z]
$special =  [\.\;\,\$\|\*\+\?\#\~\-\{\}\(\)\[\]\^\/\&\:\=\@\'\<\>\%\!\\]

@integer = $digit+
@floating = $digit+(\.$digit+)?
@comment = \#.*
@str = \"($digit|$letter|$white|($special # [\\\"])|\\\"|\\\\)*\"
@identifier = [a-z]($letter|$digit|_)*
@sign = ([\%\/\*\-\)\(\+\=\;\,\<\>]|not|and|or|\=\=|\/\=|\>\=|\<\=|div|mod|\-\>)
@datatype = (number|boolean)
@reserved = (true|false|with|do|end|if|then|else|while|for|repeat|begin|return|func|times|program)
@good = ( @integer | @floating | @comment | @str | @identifier | @sign | @datatype | @reserved )
@error = ~$good
tokens :-
    $white+	;
    @integer	{ \s -> Integer (read s) }
    @floating	{ \s -> Floating (read s) }
    @comment	;
    @str	{ \s -> Str s }
    @identifier	{ \s -> Identifier s }
    @sign	{ \s -> Sign s }
    @datatype	{ \s -> Datatype s }
    @reserved 	{ \s -> Reserved s }
    @error	{ \s -> Error s }

{

data Token = Integer Int		|
             Floating Double		|
             Str String			|
             Identifier String		|
             Sign String		|
             Datatype String		|
             Reserved String		|
             LexError String 	
             deriving (Eq, Show)
main::IO ()
main = do
  s <- getContents
  print (alexScanTokens s)
}



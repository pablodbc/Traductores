module Stdout where
-- Lets print everything

import Lexer 


-- Token List printer

printPlease :: [Token] -> [String]
printPlease = foldr (\x acc -> (makePrintable x) : acc) []


-- Token printers
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

makePrintable (Number p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": tipo de dato '" ++ (id s) ++ "'"

makePrintable (Boolean p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": tipo de dato '" ++ (id s) ++ "'"

makePrintable (True' p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": literal booleano '" ++ (id s) ++ "'"

makePrintable (False' p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": literal booleano '" ++ (id s) ++ "'"

makePrintable (With p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Do p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
    
makePrintable (End p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
   
makePrintable (If p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
    
makePrintable (Else p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
  
makePrintable (Then p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
  
makePrintable (While p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
 
makePrintable (For p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
   
makePrintable (Repeat p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Begin p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
 
makePrintable (Return p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Func p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
  
makePrintable (Times p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
 
makePrintable (Program p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (WriteLn p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Write p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (By p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (From p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (To p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Read p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (LexError p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": Caracter inesperado '" ++ (id s) ++ "'"


-- Show token Value

tokenValue :: Token -> String

tokenValue (Integer _ s) = "literal numerico '" ++ (show s) ++ "'"

tokenValue (Floating _ s) = "literal numerico '" ++ (show s) ++ "'"

tokenValue (Str _ s) = "cadena de caracteres " ++ (id s)

tokenValue (Identifier _ s) = "identificador '" ++ (id s) ++ "'"

tokenValue (Modex _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (Divex _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (Mult _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (Minus _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (CloseP _ s) = "igno '" ++ (id s) ++ "'"

tokenValue (OpenP _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (Plus _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (Def _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (SemiColon _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (Comma _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (Less _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (More _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (Not _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (And _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (Or _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (Eq _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (Neq _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (Moreq _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (Lesseq _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (Div _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (Mod _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (Arrow _ s) = "signo '" ++ (id s) ++ "'"

tokenValue (Number _ s) = "tipo de dato '" ++ (id s) ++ "'"

tokenValue (Boolean _ s) = "tipo de dato '" ++ (id s) ++ "'"

tokenValue (True' _ s) = "literal booleano '" ++ (id s) ++ "'"

tokenValue (False' _ s) = "literal booleano '" ++ (id s) ++ "'"

tokenValue (With _ s) = "palabra reservada '" ++ (id s) ++ "'"

tokenValue (Do _ s) = "palabra reservada '" ++ (id s) ++ "'"
    
tokenValue (End _ s) = "palabra reservada '" ++ (id s) ++ "'"
   
tokenValue (If _ s) = "palabra reservada '" ++ (id s) ++ "'"
    
tokenValue (Else _ s) = "palabra reservada '" ++ (id s) ++ "'"
  
tokenValue (Then _ s) = "palabra reservada '" ++ (id s) ++ "'"
  
tokenValue (While _ s) = "palabra reservada '" ++ (id s) ++ "'"
 
tokenValue (For _ s) = "palabra reservada '" ++ (id s) ++ "'"
   
tokenValue (Repeat _ s) = "palabra reservada '" ++ (id s) ++ "'"

tokenValue (Begin _ s) = "palabra reservada '" ++ (id s) ++ "'"
 
tokenValue (Return _ s) = "palabra reservada '" ++ (id s) ++ "'"

tokenValue (Func _ s) = "palabra reservada '" ++ (id s) ++ "'"
  
tokenValue (Times _ s) = "palabra reservada '" ++ (id s) ++ "'"
 
tokenValue (Program _ s) = "palabra reservada '" ++ (id s) ++ "'"

tokenValue (WriteLn _ s) = "palabra reservada '" ++ (id s) ++ "'"

tokenValue (Write _ s) = "palabra reservada '" ++ (id s) ++ "'"

tokenValue (By _ s) = "palabra reservada '" ++ (id s) ++ "'"

tokenValue (From _ s) = "palabra reservada '" ++ (id s) ++ "'"

tokenValue (To _ s) = "palabra reservada '" ++ (id s) ++ "'"

tokenValue (Read _ s) = "palabra reservada '" ++ (id s) ++ "'"

tokenValue (LexError _ s) = "Caracter inesperado '" ++ (id s) ++ "'"

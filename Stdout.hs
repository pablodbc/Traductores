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


instance Show Token where
	show (Integer _ s) = "literal numerico: '" ++ (show s) ++ "'"

	show (Floating _ s) = "literal numerico: '" ++ (show s) ++ "'"

	show (Str _ s) = "cadena de caracteres: " ++ (id s)

	show (Identifier _ s) = "identificador: '" ++ (id s) ++ "'"

	show (Modex _ s) = "signo: '" ++ (id s) ++ "'"

	show (Divex _ s) = "signo: '" ++ (id s) ++ "'"

	show (Mult _ s) = "signo: '" ++ (id s) ++ "'"

	show (Minus _ s) = "signo: '" ++ (id s) ++ "'"

	show (CloseP _ s) = "igno: '" ++ (id s) ++ "'"

	show (OpenP _ s) = "signo: '" ++ (id s) ++ "'"

	show (Plus _ s) = "signo: '" ++ (id s) ++ "'"

	show (Def _ s) = "signo: '" ++ (id s) ++ "'"

	show (SemiColon _ s) = "signo: '" ++ (id s) ++ "'"

	show (Comma _ s) = "signo: '" ++ (id s) ++ "'"

	show (Less _ s) = "signo: '" ++ (id s) ++ "'"

	show (More _ s) = "signo: '" ++ (id s) ++ "'"

	show (Not _ s) = "signo: '" ++ (id s) ++ "'"

	show (And _ s) = "signo: '" ++ (id s) ++ "'"

	show (Or _ s) = "signo: '" ++ (id s) ++ "'"

	show (Eq _ s) = "signo: '" ++ (id s) ++ "'"

	show (Neq _ s) = "signo: '" ++ (id s) ++ "'"

	show (Moreq _ s) = "signo: '" ++ (id s) ++ "'"

	show (Lesseq _ s) = "signo: '" ++ (id s) ++ "'"

	show (Div _ s) = "signo: '" ++ (id s) ++ "'"

	show (Mod _ s) = "signo: '" ++ (id s) ++ "'"

	show (Arrow _ s) = "signo: '" ++ (id s) ++ "'"

	show (Number _ s) = "tipo de dato: '" ++ (id s) ++ "'"

	show (Boolean _ s) = "tipo de dato: '" ++ (id s) ++ "'"

	show (True' _ s) = "literal booleano: '" ++ (id s) ++ "'"

	show (False' _ s) = "literal booleano: '" ++ (id s) ++ "'"

	show (With _ s) = "palabra reservada: '" ++ (id s) ++ "'"

	show (Do _ s) = "palabra reservada: '" ++ (id s) ++ "'"
	    
	show (End _ s) = "palabra reservada: '" ++ (id s) ++ "'"
	   
	show (If _ s) = "palabra reservada: '" ++ (id s) ++ "'"
	    
	show (Else _ s) = "palabra reservada: '" ++ (id s) ++ "'"
	  
	show (Then _ s) = "palabra reservada: '" ++ (id s) ++ "'"
	  
	show (While _ s) = "palabra reservada: '" ++ (id s) ++ "'"
	 
	show (For _ s) = "palabra reservada: '" ++ (id s) ++ "'"
	   
	show (Repeat _ s) = "palabra reservada: '" ++ (id s) ++ "'"

	show (Begin _ s) = "palabra reservada: '" ++ (id s) ++ "'"
	 
	show (Return _ s) = "palabra reservada: '" ++ (id s) ++ "'"

	show (Func _ s) = "palabra reservada: '" ++ (id s) ++ "'"
	  
	show (Times _ s) = "palabra reservada: '" ++ (id s) ++ "'"
	 
	show (Program _ s) = "palabra reservada: '" ++ (id s) ++ "'"

	show (WriteLn _ s) = "palabra reservada: '" ++ (id s) ++ "'"

	show (Write _ s) = "palabra reservada: '" ++ (id s) ++ "'"

	show (By _ s) = "palabra reservada: '" ++ (id s) ++ "'"

	show (From _ s) = "palabra reservada: '" ++ (id s) ++ "'"

	show (To _ s) = "palabra reservada: '" ++ (id s) ++ "'"

	show (Read _ s) = "palabra reservada: '" ++ (id s) ++ "'"

	show (LexError _ s) = "Caracter inesperado: '" ++ (id s) ++ "'" 




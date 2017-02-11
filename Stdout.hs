module Stdout where
-- Lets print everything

import Lexer 
import Grammar


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
    show (Integer _ s) = "Literal Numerico: '" ++ (show s) ++ "'"

    show (Floating _ s) = "Literal Numerico: '" ++ (show s) ++ "'"

    show (Str _ s) = "Cadena de Caracteres: " ++ (id s)

    show (Identifier _ s) = "Identificador: '" ++ (id s) ++ "'"

    show (Modex _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Divex _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Mult _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Minus _ s) = "Signo: '" ++ (id s) ++ "'"

    show (CloseP _ s) = "Signo: '" ++ (id s) ++ "'"

    show (OpenP _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Plus _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Def _ s) = "Signo: '" ++ (id s) ++ "'"

    show (SemiColon _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Comma _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Less _ s) = "Signo: '" ++ (id s) ++ "'"

    show (More _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Not _ s) = "Signo: '" ++ (id s) ++ "'"

    show (And _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Or _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Eq _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Neq _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Moreq _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lesseq _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Div _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Mod _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Arrow _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Number _ s) = "Tipo de Dato: '" ++ (id s) ++ "'"

    show (Boolean _ s) = "Tipo de Dato: '" ++ (id s) ++ "'"

    show (True' _ s) = "Literal Booleano: '" ++ (id s) ++ "'"

    show (False' _ s) = "Literal Booleano: '" ++ (id s) ++ "'"

    show (With _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (Do _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
        
    show (End _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
       
    show (If _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
        
    show (Else _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
      
    show (Then _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
      
    show (While _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
     
    show (For _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
       
    show (Repeat _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (Begin _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
     
    show (Return _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (Func _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
      
    show (Times _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
     
    show (Program _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (WriteLn _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (Write _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (By _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (From _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (To _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (Read _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
    
    show (LexError _ s) = "Caracter Inesperado: '" ++ (id s) ++ "'" 

-- Show parser token
instance Show ParserToken where
    show  Init              = "Inicio: programa completo"
    show  Program           = "Bloque: program"
    show  BloqueR           = "Bloque: funcion con return"
    show  LBloqueR			= "Cuerpo: bloque funcion con return"
    show  AnidR             = "Secuencia: bloques, instrucciones o return"
    show  BWhile            = "Instruccion de Control: while"
    show  BFor              = "Instruccion de Control: for"
    show  BRep              = "Instruccion de Control: repeat"
    show  Bloque            = "Bloque: bloques, instrucciones"
    show  LBloqueR 			= "Cuerpo: bloque"
    show  AnidS             = "Secuencia: bloques o instrucciones"
    show  Param             = "Parametros: funcion"
    show  ParamD            = "Secuencia: parametros de funcion"
    show  FunDec            = "Declaracion: funcion"
    show  ListaF            = "Secuencia: declaraciones de funciones"
    show  BIf               = "Instruccion de Control: if"
    show  BWith             = "Bloque: with"
    show  ListaIn           = "Secuencia: instrucciones"
    show  Ins               = "Instruccion:"
    show  ListaD            = "Secuencia: declaraciones"
    show  Decl              = "Declaracion:"
    show  Tipo              = "Tipo de Dato"
    show  ListaI            = "Secuencia: identificadores"
    show  Asig              = "Asignacion:"
    show  ArgW              = "Argumento: funcion de I/O"
    show  ExprS             = "Expresion: expresion o string"
    show  Leer              = "Funcion: I/O leer"
    show  Escribir          = "Funcion: I/O escribir"
    show  EscribirLn        = "Funcion: I/O escribir con salto de linea"
    show  Args              = "Argumento:"
    show  Funcion           = "Funcion:"
    show  Expr              = "Expresion:"
    show  TermToken Token x = show x


instance Show Node where
	show ns = showAST "Pablo " 0 ns


showAST :: String -> Int -> Node -> String 
showAST sep h ns =
	case ns of
		(Node ptk []) -> (take h (repeat sep)) ++ show ptk ++ "\n" ++ ""
		(Node ptk chlds) -> (take h (repeat sep)) ++ show ptk ++ "\n" ++ $ concatMap (showAST sep (h+1)) chlds
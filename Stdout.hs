module Stdout where
-- Lets print everything
import qualified Lexer
-- Token List printer
getPos :: Lexer.AlexPosn -> (Int,Int)
getPos (Lexer.AlexPn _ l c) = (l,c)
printPlease :: [Lexer.Token] -> [String]
printPlease = foldr (\x acc -> (makePrintable x) : acc) []


-- Token printers
makePrintable :: Lexer.Token -> String

makePrintable (Lexer.Integer p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": literal numerico '" ++ (show s) ++ "'"

makePrintable (Lexer.Floating p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": literal numerico '" ++ (show s) ++ "'"

makePrintable (Lexer.Str p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": cadena de caracteres " ++ (id s)

makePrintable (Lexer.Identifier p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": identificador '" ++ (id s) ++ "'"

makePrintable (Lexer.Modex p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.Divex p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.Mult p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.Minus p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.CloseP p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.OpenP p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.Plus p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.Def p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.SemiColon p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.Comma p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.Less p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.More p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.Not p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.And p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.Or p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.Eq p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.Neq p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.Moreq p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.Lesseq p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.Div p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.Mod p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.Arrow p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": signo '" ++ (id s) ++ "'"

makePrintable (Lexer.Number p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": tipo de dato '" ++ (id s) ++ "'"

makePrintable (Lexer.Boolean p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": tipo de dato '" ++ (id s) ++ "'"

makePrintable (Lexer.True' p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": literal booleano '" ++ (id s) ++ "'"

makePrintable (Lexer.False' p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": literal booleano '" ++ (id s) ++ "'"

makePrintable (Lexer.With p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Lexer.Do p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
    
makePrintable (Lexer.End p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
   
makePrintable (Lexer.If p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
    
makePrintable (Lexer.Else p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
  
makePrintable (Lexer.Then p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
  
makePrintable (Lexer.While p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
 
makePrintable (Lexer.For p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
   
makePrintable (Lexer.Repeat p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Lexer.Begin p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
 
makePrintable (Lexer.Return p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Lexer.Func p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
  
makePrintable (Lexer.Times p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"
 
makePrintable (Lexer.Program p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Lexer.WriteLn p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Lexer.Write p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Lexer.By p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Lexer.From p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Lexer.To p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Lexer.Read p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": palabra reservada '" ++ (id s) ++ "'"

makePrintable (Lexer.LexError p s) = "linea " ++ show(fst(getPos p)) ++ ", columna " ++ show(snd(getPos p)) ++ ": Caracter inesperado '" ++ (id s) ++ "'"


-- Show token Value
instance Show Lexer.Token where
    show (Lexer.Integer _ s) = "Literal Numerico: '" ++ (show s) ++ "'"

    show (Lexer.Floating _ s) = "Literal Numerico: '" ++ (show s) ++ "'"

    show (Lexer.Str _ s) = "Cadena de Caracteres: " ++ (id s)

    show (Lexer.Identifier _ s) = "Identificador: '" ++ (id s) ++ "'"

    show (Lexer.Modex _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.Divex _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.Mult _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.Minus _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.CloseP _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.OpenP _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.Plus _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.Def _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.SemiColon _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.Comma _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.Less _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.More _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.Not _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.And _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.Or _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.Eq _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.Neq _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.Moreq _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.Lesseq _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.Div _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.Mod _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.Arrow _ s) = "Signo: '" ++ (id s) ++ "'"

    show (Lexer.Number _ s) = "Tipo de Dato: '" ++ (id s) ++ "'"

    show (Lexer.Boolean _ s) = "Tipo de Dato: '" ++ (id s) ++ "'"

    show (Lexer.True' _ s) = "Literal Booleano: '" ++ (id s) ++ "'"

    show (Lexer.False' _ s) = "Literal Booleano: '" ++ (id s) ++ "'"

    show (Lexer.With _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (Lexer.Do _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
        
    show (Lexer.End _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
       
    show (Lexer.If _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
        
    show (Lexer.Else _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
      
    show (Lexer.Then _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
      
    show (Lexer.While _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
     
    show (Lexer.For _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
       
    show (Lexer.Repeat _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (Lexer.Begin _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
     
    show (Lexer.Return _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (Lexer.Func _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
      
    show (Lexer.Times _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
     
    show (Lexer.Program _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (Lexer.WriteLn _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (Lexer.Write _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (Lexer.By _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (Lexer.From _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (Lexer.To _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"

    show (Lexer.Read _ s) = "Palabra Reservada: '" ++ (id s) ++ "'"
    
    show (Lexer.LexError _ s) = "Caracter Inesperado: '" ++ (id s) ++ "'" 


data Init     = Program [FunDec] [AnidS] deriving (Show)

data FunDec   = Proc Lexer.Token [ParamL] [AnidS]                |
                Func Lexer.Token [ParamL] Tipo [AnidS]
                deriving (Show)

data ParamL   = ParamL Tipo Lexer.Token deriving (Show)

data AnidS    = Bifelse Expr [AnidS] [AnidS]                       |
                Bif Expr [AnidS]                                   |
                Bwith [Decl] [AnidS]                               |
                Bwhile Expr [AnidS]                                |
                Bfor Lexer.Token Expr Expr [AnidS]                 |
                Bforby Lexer.Token Expr Expr Expr [AnidS]          |
                Brepeat Expr [AnidS]                               |
                Bdo [AnidS]                                        |
                Asig {leftSide :: Lexer.Token, rightSide :: Expr}  |
                InsFcall Funcion                                   |
                Read Lexer.Token                                   |
                Write [ExprS]                                      |
                WriteLn [ExprS]                                    |
                Return Expr                                        |
                EmptyB                                       
                deriving (Show)

data Decl     = Inicializacion Tipo Lexer.Token Expr        |
                Declaracion Tipo [Lexer.Token]              |
                EmptyD
                deriving (Show)

data Tipo     = NumberT |
                BooleanT
                deriving (Show)

data ExprS    = ExprW Expr           |
                StringW Lexer.Token  
                deriving (Show)

data Funcion  = FuncionSA Lexer.Token         |
                FuncionCA Lexer.Token [Expr]
                deriving (Show)

data Expr     = Or Expr Expr                   |
                And Expr Expr                  |
                Eq Expr Expr                   |
                Neq Expr Expr                  |
                Less Expr Expr                 |
                Lesseq Expr Expr               |
                More Expr Expr                 |
                Moreq Expr Expr                |
                Plus Expr Expr                 |
                Minus Expr Expr                |
                Mult Expr Expr                 |
                Divex Expr Expr                |
                Modex Expr Expr                |
                Div Expr Expr                  |
                Mod Expr Expr                  |
                Not Expr                       |
                Uminus Expr                    |
                Identifier Lexer.Token         |
                Integer Lexer.Token            |
                Floating Lexer.Token           |
                ExpTrue Lexer.Token            |
                ExpFalse Lexer.Token           |
                ExpFcall Funcion               |
                Bracket Expr
                deriving (Show)


{-- Show parser token
instance Show ParserToken where
    show  Init              = "Inicio: programa completo"
    show  Program           = "Bloque: program"
    show  BloqueR           = "Bloque: funcion con return"
    show  LBloqueR          = "Cuerpo: bloque funcion con return"
    show  AnidR             = "Secuencia: bloques, instrucciones o return"
    show  BWhile            = "Instruccion de Control: while"
    show  BFor              = "Instruccion de Control: for"
    show  BRep              = "Instruccion de Control: repeat"
    show  BDo               = "Bloque: do"
    show  Bloque            = "Bloque: bloques, instrucciones"
    show  LBloque           = "Cuerpo: bloque"
    show  AnidS             = "Secuencia: bloques o instrucciones"
    show  Param             = "Parametros: funcion"
    show  ParamD            = "Secuencia: parametros de funcion"
    show  FunDec            = "Declaracion: funcion"
    show  ListaF            = "Secuencia: declaraciones de funciones"
    show  BIf               = "Instruccion de Control: if"
    show  BWith             = "Bloque: with"
    show  ListaIn           = "Secuencia: instrucciones"
    show  Ins               = "Instrucciones:"
    show  ListaD            = "Secuencia: declaraciones"
    show  Decl              = "Declaracion:"
    show  Tipo              = "Tipo de Dato:"
    show  ListaI            = "Secuencia: identificadores"
    show  Asig              = "Asignacion:"
    show  ArgW              = "Argumentos: funcion de I/O"
    show  ExprS             = "Expresion: expresion o string"
    show  Leer              = "Funcion: I/O leer"
    show  Escribir          = "Funcion: I/O escribir"
    show  EscribirLn        = "Funcion: I/O escribir con salto de linea"
    show  Args              = "Argumento:"
    show  Funcion           = "Funcion:"
    show  Expr              = "Expresion:"
    show  Return            = "Retorno de Funcion:"
    show  Empty             = "Nada: lo que no es el algo"
    show  (TermToken x)     = show x


instance Show Node where
    show ns = showAST "| " 0 ns


showAST :: String -> Int -> Node -> String 
showAST sep h ns =
    case ns of
        (Node Empty []) -> ""
        (Node ptk []) ->  (foldr (++) "" (replicate h sep)) ++ show ptk ++ "\n"
        (Node ptk chlds) -> (foldr (++) "" (replicate h sep)) ++ show ptk ++ "\n" ++ concatMap (showAST sep (h+1)) chlds
        --}
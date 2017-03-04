{
{-# LANGUAGE DeriveDataTypeable #-}
module Grammar where
import qualified Lexer
import Stdout
import Control.Exception
import Data.Typeable
}

%name parse
%tokentype { Lexer.Token }
%error { parseError }
%monad { IO }

%token

    '%'         { (Lexer.Modex _ _)         }
    '/'         { (Lexer.Divex _ _)         }
    '*'         { (Lexer.Mult _ _)          }
    '-'         { (Lexer.Minus _ _)         }
    ')'         { (Lexer.CloseP _ _)        }     
    '('         { (Lexer.OpenP _ _)         }     
    '+'         { (Lexer.Plus _ _)          }     
    '='         { (Lexer.Def _ _)           }     
    ';'         { (Lexer.SemiColon _ _)     }     
    ','         { (Lexer.Comma _ _)         }     
    '<'         { (Lexer.Less _ _)          }     
    '>'         { (Lexer.More _ _)          }     
    '=='        { (Lexer.Eq _ _)            }      
    '/='        { (Lexer.Neq _ _)           }      
    '>='        { (Lexer.Moreq _ _)         }      
    '<='        { (Lexer.Lesseq _ _)        }      
    '->'        { (Lexer.Arrow _ _)         }      
    not         { (Lexer.Not _ _)           }    
    and         { (Lexer.And _ _)           }    
    or          { (Lexer.Or _ _)            }    
    div         { (Lexer.Div _ _)           }    
    mod         { (Lexer.Mod _ _)           }    
    number      { (Lexer.Number _ _)        }    
    boolean     { (Lexer.Boolean _ _)       }    
    true        { (Lexer.True' _ _)         }    
    false       { (Lexer.False' _ _)        }    
    with        { (Lexer.With _ _)          }    
    do          { (Lexer.Do _ _)            }    
    end         { (Lexer.End _ _)           }    
    if          { (Lexer.If _ _)            }    
    then        { (Lexer.Then _ _)          }    
    else        { (Lexer.Else _ _)          }    
    while       { (Lexer.While _ _)         }    
    for         { (Lexer.For _ _)           }    
    repeat      { (Lexer.Repeat _ _)        }    
    begin       { (Lexer.Begin _ _)         }    
    return      { (Lexer.Return _ _)        }    
    func        { (Lexer.Func _ _)          }    
    times       { (Lexer.Times _ _)         }    
    program     { (Lexer.Program _ _)       }    
    integer     { (Lexer.Integer _  _)      }   
    floating    { (Lexer.Floating _  _)     }   
    str         { (Lexer.Str _ _)           }   
    identifier  { (Lexer.Identifier _ _)    }
    writeln     { (Lexer.WriteLn _ _)       }
    write       { (Lexer.Write _ _)         }
    read        { (Lexer.Read _ _)          }
    by          { (Lexer.By _ _)            }
    from        { (Lexer.From _ _)          }
    to          { (Lexer.To _ _)            }

%left '-' '+' or
%left '%' mod
%left '*' '/' div and
%nonassoc '>' '<' '<=' '>='
%nonassoc '==' '/='
%right not NEG

%%

Init    : Program           {Node Init [Node ListaF [], $1]}
        | ListaF Program    {Node Init ([Node ListaF $1] ++ [$2])}

Program : program Bloque end';'      {Node Program [$2]}

Bloque  : {- lambda -}  {Node Ins []}
        | LBloque       {Node Ins $1}

LBloque : AnidS         {[$1]}
        | LBloque AnidS {$1 ++ [$2]}

AnidS   : BIf';'                           {$1}
        | BWith';'                         {$1}
        | BWhile';'                        {$1}
        | BFor';'                          {$1}
        | BRep';'                          {$1}
        | Asig';'                          {$1}
        | Funcion';'                       {$1}
        | Leer';'                          {$1}
        | Escribir';'                      {$1}
        | EscribirLn';'                    {$1}
        | return Expr';'                   {Node Return [$2]}
        | ';'                              {Node Empty []}

BWhile  : while Expr do Bloque end     {Node BWhile [$2, $4]}

BFor    : for identifier from Expr to Expr do Bloque end             {Node BFor[leaf $2, $4, $6, $8]}
        | for identifier from Expr to Expr by Expr do Bloque end     {Node BFor[leaf $2, $4, $6, $8, $10]}

BRep    : repeat Expr times Bloque end   {Node BRep [$2, $4]}


        
Param   : {- lambda -}      {Node ParamD []}
        | ParamD            {Node ParamD $1}

ParamD  : Tipo identifier               {[Node Param [$1, leaf $2]]}
        | ParamD ',' Tipo identifier    {$1 ++ [Node Param [$3, leaf $2]]}

FunDec  : func identifier'('Param')' begin Bloque end';'                {Node FunDec [$4, $7]}
        | func identifier'('Param')' '->' Tipo begin Bloque end';'      {Node FunDec [$4, $7, $9]}

ListaF  : FunDec            {[$1]}
        | ListaF FunDec     {$1 ++[$2]}


BIf     : if Expr then Bloque else Bloque end    {Node BIf [$2, $4, $6]}
        | if Expr then Bloque end                {Node BIf [$2, $4]}

BWith   : with do Bloque end         {Node BWith [Node ListaD [], $3]}
        | with ListaD do Bloque end  {Node BWith ([Node ListaD $2] ++ [$4])}

ListaD  : Decl';'                       {[$1]}
        | ListaD Decl';'                {$1 ++ [$2]}

Decl    : Tipo Asig                     {Node Decl [$1, $2]}
        | Tipo ListaI                   {Node Decl [$1, (Node ListaI $2)]} 

Tipo    : number                        {leaf $1}
        | boolean                       {leaf $1}

ListaI  : identifier                    {[leaf $1]}
        | ListaI ',' identifier         {$1 ++ [leaf $3]}

Asig    : identifier '=' Expr           {Node Asig [leaf $1, $3]}

ArgW    : ExprS                         {[$1]}
        | ArgW ',' ExprS                {$1 ++ [$3]}


ExprS   : Expr                          {Node ExprS [$1]}
        | str                           {Node ExprS [leaf $1]}


Leer    : read identifier               {Node Leer [leaf $2]}

Escribir    : write ArgW                {Node Escribir [Node ArgW $2]}

EscribirLn  : writeln ArgW              {Node EscribirLn [Node ArgW $2]}

Args    : Expr                          {[$1]}
        | Args ',' Expr                 {$1 ++ [$3]}

Funcion : identifier'('')'              {Node Funcion [leaf $1, Node Args []]}
        | identifier'(' Args ')'        {Node Funcion [leaf $1, Node Args $3]}
        
Expr    : Expr or Expr                  {Node Expr [$1, leaf $2, $3]}
        | Expr and Expr                 {Node Expr [$1, leaf $2, $3]}
        | Expr '==' Expr                {Node Expr [$1, leaf $2, $3]}
        | Expr '/=' Expr                {Node Expr [$1, leaf $2, $3]}
        | Expr '<' Expr                 {Node Expr [$1, leaf $2, $3]}
        | Expr '<=' Expr                {Node Expr [$1, leaf $2, $3]}
        | Expr '>' Expr                 {Node Expr [$1, leaf $2, $3]}
        | Expr '>=' Expr                {Node Expr [$1, leaf $2, $3]}
        | Expr '+' Expr                 {Node Expr [$1, leaf $2, $3]}
        | Expr '-' Expr                 {Node Expr [$1, leaf $2, $3]}
        | Expr '*' Expr                 {Node Expr [$1, leaf $2, $3]}
        | Expr '/' Expr                 {Node Expr [$1, leaf $2, $3]}
        | Expr '%' Expr                 {Node Expr [$1, leaf $2, $3]}
        | Expr div Expr                 {Node Expr [$1, leaf $2, $3]}
        | Expr mod Expr                 {Node Expr [$1, leaf $2, $3]}
        | not Expr                      {Node Expr [leaf $1, $2]}
        | '-'Expr %prec NEG             {Node Expr [leaf $1, $2]}
        | identifier                    {Node Expr [leaf $1]}
        | integer                       {Node Expr [leaf $1]}
        | floating                      {Node Expr [leaf $1]}
        | true                          {Node Expr [leaf $1]}
        | false                         {Node Expr [leaf $1]}
        | Funcion                       {Node Expr [$1]}
        | '(' Expr ')'                  {Node Expr [$2]}
{

data SyntacticError = SyntacticError String
    deriving (Typeable)

instance Exception SyntacticError
instance Show SyntacticError where
    show (SyntacticError s) = "Error sintáctico: " ++ s

parseError :: [Lexer.Token] -> IO a
parseError [] = throw $ SyntacticError "Archivo Vacio"
parseError ts = throw $ SyntacticError $ "Token inesperado: " ++ show (head ts)


}
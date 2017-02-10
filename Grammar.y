{

module Grammar where
import qualified Lexer
}

%name parse
%tokentype { Lexer.Token }
%error { parseError }
%monad{ Either String }{ >>= }{ return }

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
Expr    : Expr or Expr                  {Or $1 $3}
        | Expr and Expr                 {And $1 $3}
        | Expr '==' Expr                {Eq $1 $3}
        | Expr '/=' Expr                {Neq $1 $3}
        | Expr '<' Expr                 {Less $1 $3}
        | Expr '<=' Expr                {Lesseq $1 $3}
        | Expr '>' Expr                 {More $1 $3}
        | Expr '>=' Expr                {Moreq $1 $3}
        | Expr '+' Expr                 {Plus $1 $3}
        | Expr '-' Expr                 {Minus $1 $3}
        | Expr '*' Expr                 {Mult $1 $3}
        | Expr '/' Expr                 {Divex $1 $3}
        | Expr '%' Expr                 {Modex $1 $3}
        | Expr div Expr                 {Div $1 $3}
        | Expr mod Expr                 {Mod $1 $3}
        | '(' Expr ')'                  {Brack $2}
        | not Expr                      {Not $2}
        | '-'Expr %prec NEG             {Neg $2}
        | identifier                    {Identifier $1}
        | integer                       {Integer $1}
        | floating                      {Floating $1}
        | true                          {True' $1}
        | false                         {False' $1}
        | Funcion                       {$1} 

Funcion : identifier'('')'              {[]}
        | identifier'(' Args ')'        {[]}

Args    : Expr                          {[]}
        | Args ',' Expr                 {[]}

Leer    : read identifier               {[]}

Escribir    : write ArgW                {[]}

EscribirLn  : writeln ArgW              {[]}

ExprS   : Expr                          {[]}
        | str                           {[]}

ArgW    : ExprS                         {[]}
        | ArgW ',' ExprS                {[]}

Asig    : identifier '=' Expr           {[]}

Tipo    : number                        {[]}
        | boolean                       {[]}

ListaI  : identifier                    {[]}
        | ListaI ',' identifier         {[]}

Decl    : Tipo Asig                     {[]}
        | Tipo ListaI                   {[]} 

ListaD  : Decl';'                       {[]}
        | ListaD Decl';'                {[]}

Ins     : Asig                          {[]}
        | Funcion                       {[]}
        | Leer                          {[]}
        | Escribir                      {[]}
        | EscribirLn                    {[]}

ListaIn : Ins';'                        {[]}
        | ListaIn Ins';'                {[]}

BWith   : with do Bloque end';'         {[]}
        | with ListaD do Bloque end';'  {[]}

BIf     : if Expr then Bloque else Bloque end';'    {[]}
        | if Expr then Bloque end';'                {[]}

BWhile  : while Expr then Bloque end';'             {[]}

BFor    : for identifier from Expr to Expr do Bloque end';'             {[]}
        | for identifier from Expr to Expr by Expr do Bloque end';'     {[]}

BRep    : repeat Expr times Bloque end';'           {[]}

Bloque  : AnidS         {[]}
        | Bloque AnidS  {[]}

AnidS   : BIf       {[]}
        | BWith     {[]}
        | BWhile    {[]}
        | BFor      {[]}
        | BRep      {[]}

Param   : {- lambda -}      {[]}
        | ParamD            {[]}

ParamD  : Tipo identifier               {[]}
        | ParamD ',' Tipo identifier    {[]}

FunDec  : func identifier'('Param')' begin Bloque end';'                {[]}
        | func identifier'('Param')' '->' Tipo begin BloqueR end';'      {[]}

ListaF  : FunDec            {[]}
        | ListaF FunDec     {[]}

Init    : Program           {[]}
        | ListaF Program    {[]}

Program : program with do Bloque end';'      {[]}
        | program with ListaD do Bloque end';'      {[]}

BloqueR : AnidR             {[]}
        | BloqueR AnidR     {[]}

AnidR   : AnidS             {[]}
        | return Expr       {[]}

{

data Expr
    = Or Expr Expr
    | And Expr Expr
    | Eq Expr Expr
    | Neq Expr Expr
    | Less Expr Expr
    | Lesseq Expr Expr
    | More Expr Expr
    | Moreq Expr Expr
    | Plus Expr Expr
    | Minus Expr Expr
    | Mult Expr Expr
    | Divex Expr Expr
    | Modex Expr Expr
    | Div Expr Expr
    | Mod Expr Expr
    | Brack Expr
    | Not Expr 
    | Neg Expr 
    | Integer  Lexer.Token
    | Floating Lexer.Token
    | True' Lexer.Token
    | False' Lexer.Token
    | Identifier  Lexer.Token
    deriving (Show,Eq)  
    
parseError ts = error "NO"
--parser :: String -> Either String Expr
--parser input = Lexer.runAlexScan input


}
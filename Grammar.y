{

module Grammar where
import qualified Lexer
import Stdout
}

%name parse
%tokentype { Lexer.Token }
%error { parseError }

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

Init    : Program           {Node Init [$1]}
        | ListaF Program    {Node Init [$1, $2]}

Program : program BWith end';'      {Node Program [leaf $1, $2, leaf $3]}
        | program do Bloque end';' end';' {Node Program [leaf $1, leaf $2, $3, leaf $4, leaf $6]}

AnidR    : AnidS             {Node AnidR [$1]}
         | return Expr';'       {Node AnidR [leaf $1, $2]}

LBloqueR : AnidR             {Node LBloqueR [$1]}
         | AnidR LBloqueR   {Node LBloqueR [$1, $2]}

Bloque  : {- lambda -}  {Node Empty []}
        | LBloque       {Node Bloque [$1]}

BloqueR : {- lambda -}  {Node Empty []}
        | LBloqueR      {Node BloqueR [$1]}

LBloque : AnidS         {Node LBloque [$1]}
        | LBloque AnidS {Node LBloque [$1, $2]}

AnidS   : BIf       {Node AnidS [$1]}
        | BWith     {Node AnidS [$1]}
        | BWhile    {Node AnidS [$1]}
        | BFor      {Node AnidS [$1]}
        | BRep      {Node AnidS [$1]}
        | Ins';'    {Node AnidS [$1]}

BWhile  : while Expr do Bloque end';'     {Node BWhile [leaf $1, $2, leaf $3, $4, leaf $5]}

BFor    : for identifier from Expr to Expr do Bloque end';'             {Node BFor[leaf $1, leaf $2, leaf $3, $4, leaf $5, $6, leaf $7, $8, leaf $9]}
        | for identifier from Expr to Expr by Expr do Bloque end';'     {Node BFor[leaf $1, leaf $2, leaf $3, $4, leaf $5, $6, leaf $7, $8,  leaf $9, $10, leaf $11]}

BRep    : repeat Expr times Bloque end';'   {Node BRep [leaf $1, $2, leaf $3, $4, leaf $5]}


        
Param   : {- lambda -}      {Node Empty []}
        | ParamD            {Node Param [$1]}

ParamD  : Tipo identifier               {Node ParamD [$1 ,leaf $2]}
        | ParamD ',' Tipo identifier    {Node ParamD [$1,$3, leaf $4]}

FunDec  : func identifier'('Param')' begin Bloque end';'                {Node FunDec [leaf $1, leaf $2, $4, leaf $6, $7, leaf $8]}
        | func identifier'('Param')' '->' Tipo begin BloqueR end';'      {Node FunDec [leaf $1, leaf $2, $4, leaf $6, $7, leaf $8, $9, leaf $10]}

ListaF  : FunDec            {Node ListaF [$1]}
        | ListaF FunDec     {Node ListaF [$1, $2]}


BIf     : if Expr then Bloque else Bloque end';'    {Node BIf [leaf $1, $2, leaf $3, $4, leaf $5, $6, leaf $7]}
        | if Expr then Bloque end';'                {Node BIf [leaf $1, $2, leaf $3, $4, leaf $5]}

BWith   : with do Bloque end';'         {Node BWith [leaf $1, leaf $2, $3, leaf $4]}
        | with ListaD do Bloque end';'  {Node BWith [leaf $1, $2, leaf $3, $4, leaf $5]}


Ins     : Asig                          {Node Ins [$1]}
        | Funcion                       {Node Ins [$1]}
        | Leer                          {Node Ins [$1]}
        | Escribir                      {Node Ins [$1]}
        | EscribirLn                    {Node Ins [$1]}
        | ';'                           {Node Ins [leaf $1]}

ListaD  : Decl';'                       {Node ListaD [$1]}
        | ListaD Decl';'                {Node ListaD [$1,$2]}

Decl    : Tipo Asig                     {Node Decl [$1,$2]}
        | Tipo ListaI                   {Node Decl [$1,$2]} 

Tipo    : number                        {Node Tipo [leaf $1]}
        | boolean                       {Node Tipo [leaf $1]}

ListaI  : identifier                    {Node ListaI [leaf $1]}
        | ListaI ',' identifier         {Node ListaI [$1, leaf $3]}

Asig    : identifier '=' Expr           {Node Asig [leaf $1, leaf $2, $3]}

ArgW    : ExprS                         {Node ArgW [$1]}
        | ArgW ',' ExprS                {Node ArgW [$1, $3]}


ExprS   : Expr                          {Node ExprS [$1]}
        | str                           {Node ExprS [leaf $1]}


Leer    : read identifier               {Node Leer [leaf $1, leaf $2]}

Escribir    : write ArgW                {Node Escribir [leaf $1, $2]}

EscribirLn  : writeln ArgW              {Node EscribirLn [leaf $1, $2]}


Args    : Expr                          {Node Args [$1]}
        | Args ',' Expr                 {Node Args [$1, $3]}
        

Funcion : identifier'('')'              {Node Funcion [leaf $1]}
        | identifier'(' Args ')'        {Node Funcion [leaf $1, $3]}
        
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
        | '(' Expr ')'                  {Node Expr [leaf $1, $2, leaf $3]}
        | not Expr                      {Node Expr [leaf $1,$2]}
        | '-'Expr %prec NEG             {Node Expr [leaf $1,$2]}
        | identifier                    {Node Expr [leaf $1]}
        | integer                       {Node Expr [leaf $1]}
        | floating                      {Node Expr [leaf $1]}
        | true                          {Node Expr [leaf $1]}
        | false                         {Node Expr [leaf $1]}
        | Funcion                       {Node Expr [$1]} 
{






parseError ts = error $ makePrintable $ head ts


}
{

module Grammar where
import qualified Lexer
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

Program : program with do Bloque end';'      {Node Program [leaf $1, leaf $2, leaf $3, $4, leaf $5, leaf $6]}
        | program with ListaD do Bloque end';' {Node Program [leaf $1, leaf $2, $3, leaf $4, $5, leaf $6, leaf $7]}

LBloqueR : AnidR             {[Node LBloqueR [$1]]}
        | LBloqueR AnidR     {[Node LBloqueR [$2]] ++ $1}

AnidR   : AnidS             {Node AnidR [$1]}
        | return Expr       {Node AnidR [leaf $1, $2]}

Bloque  : {- lambda -}  {[]}
        | LBloque       {Node Bloque [$1]}

BloqueR : {- lambda -}  {[]}
        | LBloqueR      {Node BloqueR [$1]}


BWhile  : while Expr then Bloque end';'     {Node BWhile [leaf $1, $2, leaf $3, $4, leaf $5, leaf $6]}

BFor    : for identifier from Expr to Expr do Bloque end';'             {Node BFor[leaf $1, leaf $2, leaf $3, $4, leaf $5, $6, leaf $7, $8, leaf $9, leaf $10]}
        | for identifier from Expr to Expr by Expr do Bloque end';'     {Node BFor[leaf $1, leaf $2, leaf $3, $4, leaf $5, $6, leaf $7, $8,  leaf $9, $10, leaf $11, leaf $12]}

BRep    : repeat Expr times Bloque end';'   {Node BRep [leaf $1, $2, leaf $3, $4, leaf $5, leaf $6]}

LBloque : AnidS         {[Node LBloque [$1]]}
        | LBloque AnidS  {[Node LBloque [$2]] ++ $1}

AnidS   : BIf       {Node AnidS [$1]}
        | BWith     {Node AnidS [$1]}
        | BWhile    {Node AnidS [$1]}
        | BFor      {Node AnidS [$1]}
        | BRep      {Node AnidS [$1]}
        | Ins';'    {Node AnidS [$1,leaf $2]}
        
Param   : {- lambda -}      {[]}
        | ParamD            {Node ParamD [$1]}

ParamD  : Tipo identifier               {[Node ParamD [$1,leaf $2]]}
        | ParamD ',' Tipo identifier    {[Node ParamD [$3,leaf $4]] ++ $1}

FunDec  : func identifier'('Param')' begin Bloque end';'                {Node FunDec [leaf $1, leaf $2, leaf $3, $4, leaf $5, leaf $6, $7, leaf $8, leaf $9]}
        | func identifier'('Param')' '->' Tipo begin BloqueR end';'      {Node FunDec [leaf $1, leaf $2, leaf $3, $4, leaf $5, leaf $6, $7, leaf $8, $9, leaf $10, leaf $11]}

ListaF  : FunDec            {Node ListaF [$1]}
        | ListaF FunDec     {[Node ListaF [$2]] ++ $1}


BIf     : if Expr then Bloque else Bloque end';'    {Node BIf [leaf $1, $2, leaf $3, $4, leaf $5, $6, leaf $7, leaf $8]}
        | if Expr then Bloque end';'                {Node BIf [leaf $1, $2, leaf $3, $4, leaf $5, leaf $6]}

BWith   : with do Bloque end';'         {Node BWith [leaf $1, leaf $2, $3, leaf $4, leaf $5]}
        | with ListaD do Bloque end';'  {Node BWith [leaf $1, $2, leaf $3, $4, leaf $5, leaf $6]}


Ins     : Asig                          {$1}
        | Funcion                       {$1}
        | Leer                          {$1}
        | Escribir                      {$1}
        | EscribirLn                    {$1}
        | ';'                           {leaf $1}

ListaD  : Decl';'                       {[Node ListaD [$1,leaf $2]]}
        | ListaD Decl';'                {[Node ListaD [$2,leaf $3]] ++ $1}

Decl    : Tipo Asig                     {Node Decl [$1,$2]}
        | Tipo ListaI                   {Node Decl ([$1] ++ $2)} 

Tipo    : number                        {leaf $1}
        | boolean                       {leaf $1}

ListaI  : identifier                    {[leaf $1]}
        | ListaI ',' identifier         {[leaf $3] ++ $1}

Asig    : identifier '=' Expr           {Node Asig [leaf $1, leaf $2, $3]}

ArgW    : ExprS                         {[$1]}
        | ArgW ',' ExprS                {[$3] ++ $1}


ExprS   : Expr                          {$1}
        | str                           {leaf $1}


Leer    : read identifier               {Node Leer [leaf $1, leaf $2]}

Escribir    : write ArgW                {Node Escribir [leaf $1, Node ArgW $2]}

EscribirLn  : writeln ArgW              {Node EscribirLn [leaf $1, Node ArgW $2]}


Args    : Expr                          {[$1]}
        | Args ',' Expr                 {[$3] ++ $1}
        

Funcion : identifier'('')'              {Node Funcion [leaf $1, leaf $2, leaf $3]}
        | identifier'(' Args ')'        {Node Funcion [leaf $1, leaf $2, Node Args $3, leaf $4]}
        
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
        | identifier                    {leaf $1}
        | integer                       {leaf $1}
        | floating                      {leaf $1}
        | true                          {leaf $1}
        | false                         {leaf $1}
        | Funcion                       {$1} 
{


data ParserToken
    = Init       |
      Program    |
      BloqueR    |
      AnidR      |
      BWhile     |
      BFor       |
      BRep       |
      Bloque     |
      AnidS      |
      Param      |
      ParamD     |
      FunDec     |
      ListaF     |
      BIf        |
      BWith      |
      ListaIn    |
      Ins        |
      ListaD     |
      Decl       |
      Tipo       |
      ListaI     |
      Asig       |
      ArgW       |
      ExprS      |
      Leer       |
      Escribir   |
      EscribirLn |
      Args       |
      Funcion    |
      Expr       |
      LBloqueR   |
      LBloque    |
      TermToken Lexer.Token

data Node = Node ParserToken [Node]
leaf :: Lexer.Token -> Node
leaf t = Node (TermToken t) []



parseError ts = error "NO"
--parser :: String -> Either String Expr
--parser input = Lexer.runAlexScan input


}
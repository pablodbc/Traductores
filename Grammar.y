{

module Grammar where
import Lexer

}

%name parse
%tokentype { (Token,AlexPosn) }
%error { parseError }
%monad{ Either String }{ >>= }{ return }

%token

    '%'         { (\(Modex _,_)        -> Modex _)       }
    '/'         { (\(Divex _,_)         -> Divex _)       }
    '*'         { (\(Mult _,_)           -> Mult _)        }
    '-'         { (\(Minus _,_)          -> Minus _)       }
    ')'         { (\(CloseP _,_)         -> CloseP _)      }     
    '('         { (\(OpenP _,_)          -> OpenP _)       }     
    '+'         { (\(Plus _,_)           -> Plus _)        }     
    '='         { (\(Def _,_)            -> Def _)         }     
    ';'         { (\(SemiColon _,_)      -> SemiColon _)   }     
    ','         { (\(Comma _,_)          -> Comma _)       }     
    '<'         { (\(Less _,_)           -> Less _)        }     
    '>'         { (\(More _,_)           -> More _)        }     
    '=='        { (\(Eq _,_)             -> Eq _)          }      
    '/='        { (\(Neq _,_)            -> Neq _)         }      
    '>='        { (\(Moreq _,_)          -> Moreq _)       }      
    '<='        { (\(Lesseq _,_)         -> Lesseq _)      }      
    '->'        { (\(Arrow _,_)          -> Arrow _)       }      
    not         { (\(Not _,_)            -> Not _)         }    
    and         { (\(And _,_)            -> And _)         }    
    or          { (\(Or _,_)             -> Or _)          }    
    div         { (\(Div _,_)            -> Div _)         }    
    mod         { (\(Mod _,_)            -> Mod _)         }    
    number      { (\(Number _,_)         -> Number _)      }    
    boolean     { (\(Boolean _,_)        -> Boolean _)     }    
    true        { (\(True' _,_)          -> True' _)       }    
    false       { (\(False' _,_)         -> False' _)      }    
    with        { (\(With _,_)           -> With _)        }    
    do          { (\(Do _,_)             -> Do _)          }    
    end         { (\(End _,_)            -> End _)         }    
    if          { (\(If _,_)             -> If _)          }    
    then        { (\(Then _,_)           -> Then _)        }    
    else        { (\(Else _,_)           -> Else _)        }    
    while       { (\(While _,_)          -> While _)       }    
    for         { (\(For _,_)            -> For _)         }    
    repeat      { (\(Repeat _,_)         -> Repeat _)      }    
    begin       { (\(Begin _,_)          -> Begin _)       }    
    return      { (\(Return _,_)         -> Return _)      }    
    func        { (\(Func _,_)           -> Func _)        }    
    times       { (\(Times _,_)          -> Times _)       }    
    program     { (\(Program _,_)        -> Program _)     }    
    integer     { (\(Integer _ ,_)     -> Integer _)       }   
    floating    { (\(Floating _ ,_)    -> FLoating _)      }   
    str         { (\(Str _,_)            -> Str _)         }   
    identifier  { (\(Identifier _,_)     -> Identifier _)  }
    writeln     { (\(WriteLn _,_)        -> WriteLn _)     }
    write       { (\(Write _,_)          -> Write _)       }
    read        {(\(Read _, _) -> Read _)}
    by          {(\(By _, _) -> By _)}
    from        {(\(From _, _) -> From _)}
    to          {(\(To _, _) -> To _)}

%left '-' '+' or
%left '%' mod
%left '*' '/' div and
%nonassoc '>' '<' '<=' '>='
%nonassoc '==' '/='
%right not NEG

%%
<<<<<<< HEAD
Expr    : Expr or Expr                  {Or $1 $3}
        | Expr and Expr                 {[]}
        | Expr '==' Expr                {[]}
        | Expr '/=' Expr                {[]}
        | Expr '<' Expr                 {[]}
        | Expr '>' Expr                 {[]}
        | Expr '<=' Expr                {[]}
        | Expr '>=' Expr                {[]}
        | Expr '+' Expr                 {[]}
        | Expr '-' Expr                 {[]}
        | Expr '*' Expr                 {[]}
        | Expr '/' Expr                 {[]}
        | Expr '%' Expr                 {[]}
        | Expr div Expr                 {[]}
        | Expr mod Expr                 {[]}
        | '(' Expr ')'                  {[]}
        | not Expr                      {[]}
        | '-'Expr %prec NEG             {[]}
        | integer                       {[]}
        | floating                      {[]}
        | true                          {[]}
        | false                         {[]}
        | identifier                    {[]}
        | Funcion                       {[]}

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
=======
Earit   : Termino   {[]}
        | Earit '+' Termino {[]}
        | Earit '-' Termino {[]}

Termino : Factor                 {[]}
        | Termino '*' Factor     {[]}
        | Termino '/' Factor     {[]}
        | Termino '%' Factor     {[]}
        | Termino div Factor     {[]}
        | Termino mod Factor     {[]}

Factor  : '('Earit')'            {[]}
        | '-'Factor %prec NEG    {[]}
        | integer                {[]}
        | floating               {[]}
        --| Funcion                {[]}
        | identifier             {[]}

Expr    : Conj                   {[]}
        | Expr or Conj           {[]}

Conj    : NegBool                {[]}
        | Conj and NegBool       {[]}

NegBool : TermB                  {[]}
        | not NegBool            {[]}

TermB   : '('Expr')'             {[]}
        | true                   {[]}
        | false                  {[]}
        | Expr '==' Expr         {[]}
        | Expr '/=' Expr         {[]}
        | Earit '<' Earit        {[]}
        | Earit '>' Earit        {[]}
        | Earit '<=' Earit       {[]}
        | Earit '>=' Earit       {[]}
       -- | Funcion                {[]}
        | identifier             {[]}
>>>>>>> a9180178909ddc3cc0ab8449a070308fa813b2f1

{
    
parseError ts = error "NO"

}

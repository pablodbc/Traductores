{

module Grammar where
import Lexer

}

%name parse
%tokentype { (Token,AlexPosn) }
%error { parseError }
%monad{ Either String }{ >>= }{ return }

%token

    '%'         { (\(Modex,_)        -> Modex)       }
    '/'         { (\Divex,_)         -> Divex)       }
    '*'         { (Mult,_)           -> Mult)        }
    '-'         { (Minus,_)          -> Minus)       }
    ')'         { (CloseP,_)         -> CloseP)      }     
    '('         { (OpenP,_)          -> OpenP)       }     
    '+'         { (Plus,_)           -> Plus)        }     
    '='         { (Def,_)            -> Def)         }     
    ';'         { (SemiColon,_)      -> SemiColon)   }     
    ','         { (Comma,_)          -> Comma)       }     
    '<'         { (Less,_)           -> Less)        }     
    '>'         { (More,_)           -> More)        }     
    '=='        { (Eq,_)             -> Eq)          }      
    '/='        { (Neq,_)            -> Neq)         }      
    '>='        { (Moreq,_)          -> Moreq)       }      
    '<='        { (Lesseq,_)         -> Lesseq)      }      
    '->'        { (Arrow,_)          -> Arrow)       }      
    not         { (Not,_)            -> Not)         }    
    and         { (And,_)            -> And)         }    
    or          { (Or,_)             -> Or)          }    
    div         { (Div,_)            -> Div)         }    
    mod         { (Mod,_)            -> Mod)         }    
    number      { (Number,_)         -> Number)      }    
    boolean     { (Boolean,_)        -> Boolean)     }    
    true        { (True',_)          -> True')       }    
    false       { (False',_)         -> False')      }    
    with        { (With,_)           -> With)        }    
    do          { (Do,_)             -> Do)          }    
    end         { (End,_)            -> End)         }    
    if          { (If,_)             -> If)          }    
    then        { (Then,_)           -> Then)        }    
    else        { (Else,_)           -> Else)        }    
    while       { (While,_)          -> While)       }    
    for         { (For,_)            -> For)         }    
    repeat      { (Repeat,_)         -> Repeat)      }    
    begin       { (Begin,_)          -> Begin)       }    
    return      { (Return,_)         -> Return)      }    
    func        { (Func,_)           -> Func)        }    
    times       { (Times,_)          -> Times)       }    
    program     { (Program,_)        -> Program)     }    
    integer     { (Integer,_)        -> Integer)     }   
    floating    { (Floating,_)       -> FLoating)    }   
    str         { (Str,_)            -> Str)         }   
    identifier  { (Identifier,_)     -> Identifier)  }
    writeln     { (WriteLn,_)        -> WriteLn)     }
    write       { (Write,_)          -> Write)       }

%left '-' '+' or
%left '%' mod
%left '*' '/' div and
%nonassoc '>' '<' '<=' '>='
%nonassoc '==' '/='
right not NEG

%%
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
        | Funcion                {[]}
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
        | Funcion                {[]}
        | identifier             {[]}

Funcion : identifier'('')'       {[]}
        | identifier'(' Args ')'   {[]}

Args    : Expr                   {[]}
        | Args ',' Expr          {[]}

Expr    : Ebool                  {[]}
        | Earit                  {[]}
        | identifier             {[]}
        | Funcion                {[]}

{
    
parseError ts = error "NO"

}

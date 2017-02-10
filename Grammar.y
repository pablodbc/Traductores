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

%left '-' '+' or
%left '%' mod
%left '*' '/' div and
%nonassoc '>' '<' '<=' '>='
%nonassoc '==' '/='
%right not NEG

%%
Expr    : Expr or Expr           {[]}
        | Expr and Expr          {[]}
        | Expr '==' Expr         {[]}
        | Expr '/=' Expr         {[]}
        | Expr '<' Expr          {[]}
        | Expr '>' Expr          {[]}
        | Expr '<=' Expr         {[]}
        | Expr '>=' Expr         {[]}
        | Expr '+' Expr          {[]}
        | Expr '-' Expr          {[]}
        | Expr '*' Expr          {[]}
        | Expr '/' Expr          {[]}
        | Expr '%' Expr          {[]}
        | Expr div Expr          {[]}
        | Expr mod Expr          {[]}
        | '(' Expr ')'           {[]}
        | not Expr               {[]}
        | '-'Expr %prec NEG      {[]}
        | integer                {[]}
        | floating               {[]}
        | true                   {[]}
        | false                  {[]}
        | identifier             {[]}
        | Funcion                {[]}

Funcion : identifier'('')'       {[]}
        | identifier'(' Args ')'   {[]}

Args    : Expr                   {[]}
        | Args ',' Expr          {[]}

{
    
parseError ts = error "NO"

}

module Expresiones where
import qualified Lexer as Lexer
import Stdout as Out
import qualified Grammar 
import Data.Map.Lazy as M 
import Control.Monad.RWS
import Context as Context
import Control.Exception


anaDecl :: Out.Decl -> Context.ConMonad Context.State
anaDecl (Inicializacion t (Lexer.Identifier p s) e) = do
    st <- get
    let symT = topTable $ tablas st
    case findSym s (onlySymTable(tablas st)) of
        Just (FoundSym _ _ h ) -> do
            case h == (height symT) of
                True -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ". Variable " ++ s ++ " declarada dos veces en el mismo alcance.")
                False -> do
                    put (st)
        _ -> do 
            put (st)

    case Context.stringInExpr s e of
        True -> error "De alguna forma llegue aqui"
        False -> do
            st <- get
            put st
        
    st <- get
    let symT = topTable $ tablas st
    let st = modifyTable popTable st
    case symT of
        (SymTable _ _) -> do
            case t of
                Out.NumberT -> do
                    put $ modifyTable (pushTable (Context.insertSym symT s Context.Number Context.Nein)) st
                    anaExpr e
                    st <- get
                    case topTable $ tablas st of
                        Context.ExprTable Context.Boolean _ _ -> do 
                            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                                            ++ (Out.printPos p)
                                                            ++ " , se declaro Tipo Number pero se inicializo con una expresion Tipo Boolean")
                        Context.ExprTable Context.Number _ _ -> do
                            sep <- ask
                            tell (Out.showLine sep ((h st) +1) (s ++ " : number\n"))
                            return $ modifyTable popTable st
                        _ -> do
                            error "Error interno, algo salio mal y no esta la tabla de la expresion"
                Out.BooleanT -> do
                    put $ modifyTable (pushTable (Context.insertSym symT s Context.Boolean Context.Nein)) st
                    anaExpr e
                    st <- get
                    case topTable $ tablas st of
                        Context.ExprTable Context.Number _ _ -> do 
                            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                                            ++ (Out.printPos p)
                                                            ++ " , se declaro Tipo Boolean pero se inicializo con una expresion Tipo Number")
                        Context.ExprTable Context.Boolean _ _ -> do
                            sep <- ask
                            tell (Out.showLine sep ((h st) +1) (s ++ " : boolean\n"))
                            return $ modifyTable popTable st
                        _ -> do
                            error "Error interno, algo salio mal y no esta la tabla de la expresion"
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la simbolos"
    

anaDecl (Declaracion t ids) = do
    case t of
        Out.NumberT -> anaID Context.Number ids
        Out.BooleanT -> anaID Context.Boolean ids

anaDecl EmptyD = do
    st <- get
    return st


anaID :: Context.Type -> [Lexer.Token] -> Context.ConMonad Context.State
anaID t ((Lexer.Identifier p s):[]) = do
    st <- get
    let symT = topTable $ tablas st
    case symT of
        (SymTable _ _) -> do
            put st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la simbolos"
    case findSym s (onlySymTable(tablas st)) of
        Just (FoundSym _ _ h ) -> do
            case h == (height symT) of
                True -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ". Variable " ++ s ++ " declarada dos veces en el mismo alcance.")
                False -> do
                    put (st)
        _ -> do 
            put (st)
    st <- get
    let symT = topTable $ tablas st
    case symT of
        (SymTable _ _) -> do
            case t of
                Context.Number -> do
                    sep <- ask
                    tell (Out.showLine sep ((h st) +1) (s ++ " : number\n"))
                Context.Boolean -> do
                    sep <- ask
                    tell (Out.showLine sep ((h st) +1) (s ++ " : boolean\n"))
            let st = modifyTable popTable st
            return $ modifyTable (pushTable (Context.insertSym symT s t Context.Nein)) st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la simbolos"

anaID t ((Lexer.Identifier p s):rest) = do
    st <- get
    let symT = topTable $ tablas st
    case symT of
        (SymTable _ _) -> do
            put st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la simbolos"
    case findSym s (onlySymTable(tablas st)) of
        Just (FoundSym _ _ h ) -> do
            case h == (height symT) of
                True -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ". Variable " ++ s ++ " declarada dos veces en el mismo alcance.")
                False -> do
                    put (st)
        _ -> do 
            put (st)
    st <- get
    let symT = topTable $ tablas st
    case symT of
        (SymTable _ _) -> do
            case t of
                Context.Number -> do
                    sep <- ask
                    tell (Out.showLine sep ((h st) +1) (s ++ " : number\n"))
                Context.Boolean -> do
                    sep <- ask
                    tell (Out.showLine sep ((h st) +1) (s ++ " : boolean\n"))
            let st = modifyTable popTable st
            put $ modifyTable (pushTable (Context.insertSym symT s t Context.Nein)) st
            anaID t rest
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la simbolos"


anaExprS :: [Out.ExprS] -> Context.ConMonad Context.State
anaExprS (x:[]) = do
    case x of
        (Out.StringW _) -> do
            st <- get
            return (st)
        (Out.ExprW e) -> do
            anaExpr e
            st <- get
            return (modifyTable popTable st)
anaExprS (x:xs) = do
    case x of
        (Out.StringW _) -> do
            anaExprS xs
        (Out.ExprW e) -> do
            anaExpr e
            st <- get
            put (modifyTable popTable st)
            anaExprS xs


anaFuncion :: Out.Funcion -> Context.ConMonad Context.State
anaFuncion (FuncionSA lt) = do
    let p = takePos lt
    let s = takeStr lt
    st <- get
    case Context.findFun s (funcs st) of
        Nothing -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en llamado a funcion no declarada: " ++ s)
        Just f -> do
            case f of
                FunProto t _ 0 -> do
                    return ( modifyTable (pushTable (Context.FuncionTable t)) st )
                _ -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " funcion: " ++ s ++ " no esperaba argumentos")

anaFuncion (FuncionCA lt xprs) = do
    let p = takePos lt
    let s = takeStr lt
    st <- get
    case Context.findFun s (funcs st) of
        Nothing -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en llamado a funcion no declarada: " ++ s)
        Just f -> do
            case f of
                FunProto t _ 0 -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " funcion: " ++ s ++ " esperaba argumentos")
                FunProto t a i -> do
                    anaArgs a xprs p s
                    return ( modifyTable (pushTable (Context.FuncionTable t)) st )

anaArgs :: [Type] -> [Expr] -> Lexer.AlexPosn -> String -> Context.ConMonad Context.State
anaArgs [] [] _ _= do
    st <- get
    return st
anaArgs a [] p s = do throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " funcion: " ++ s ++ " le faltan argumentos")

anaArgs [] x p s = do throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " funcion: " ++ s ++ " tiene demasiados argumentos")
anaArgs (a:args) (x:xprs) p s = do
    anaExpr x
    st <- get
    put $ modifyTable popTable st
    let tp = tipo $ topTable $ tablas st
    
    case tp == a of
        True -> anaArgs args xprs p s
        False -> do throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " funcion: " ++ s ++ " presenta un desajuste de tipos")

anaExpr :: Out.Expr -> Context.ConMonad Context.State
anaExpr (Out.Or e1 e2 p) = do
    anaExpr e1
    st <- get
    let et1 = topTable $ tablas st
    case et1 of
        Context.ExprTable Context.Number _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion 'or', se esperaba un Tipo Boolean y se encontro expresion Tipo Number en operando izquierdo")
        Context.ExprTable Context.Boolean c n -> do
            put $ modifyTable popTable st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

    anaExpr e2
    st <- get
    let et2 = topTable $ tablas st
    case et2 of
        Context.ExprTable Context.Number _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion 'or', se esperaba un Tipo Boolean y se encontro expresion Tipo Number en operando derecho")
        Context.ExprTable Context.Boolean Context.Dynamic n -> do
            let st = modifyTable popTable st
            return ( modifyTable (pushTable (Context.ExprTable Context.Boolean Context.Dynamic n)) st )
        Context.ExprTable Context.Boolean c n -> do
            case et1 of
                Context.ExprTable Context.Boolean Context.Dynamic n1-> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Boolean Context.Dynamic n)) st )
                Context.ExprTable Context.Boolean c (Context.CBoolean n1) -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Boolean c (modifyBoolValCalc (n1||) n))) st )

        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

anaExpr (Out.And e1 e2 p) = do
    anaExpr e1
    st <- get
    let et1 = topTable $ tablas st
    case et1 of
        Context.ExprTable Context.Number _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion 'and', se esperaba un Tipo Boolean y se encontro expresion Tipo Number en operando izquierdo")
        Context.ExprTable Context.Boolean c n -> do
            put $ modifyTable popTable st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

    anaExpr e2
    st <- get
    let et2 = topTable $ tablas st
    case et2 of
        Context.ExprTable Context.Number _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion 'and', se esperaba un Tipo Boolean y se encontro expresion Tipo Number en operando derecho")
        Context.ExprTable Context.Boolean Context.Dynamic n -> do
            let st = modifyTable popTable st
            return ( modifyTable (pushTable (Context.ExprTable Context.Boolean Context.Dynamic n)) st )
        Context.ExprTable Context.Boolean c n -> do
            case et1 of
                Context.ExprTable Context.Boolean Context.Dynamic n1-> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Boolean Context.Dynamic n)) st )
                Context.ExprTable Context.Boolean c (Context.CBoolean n1) -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Boolean c (modifyBoolValCalc (n1&&) n))) st )

        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

anaExpr (Out.Eq e1 e2 p) = do
    anaExpr e1
    st <- get
    let et1 = topTable $ tablas st
    case et1 of
        Context.ExprTable Context.Boolean _ _ -> do 
            put $ modifyTable popTable st
        Context.ExprTable Context.Number _ _ -> do
            put $ modifyTable popTable st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

    anaExpr e2
    st <- get
    let et2 = topTable $ tablas st
    case et2 of
        Context.ExprTable Context.Boolean Context.Dynamic n2 -> do 
            case et1 of
                Context.ExprTable Context.Boolean _ _ -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Boolean Context.Dynamic n2)) st )
                _ -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                                    ++ (Out.printPos p)
                                                    ++ " en Operacion '==', Conflicto de Tipos comparados. Se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando derecho")
        Context.ExprTable Context.Boolean c2 (CBoolean n2) -> do 
            case et1 of
                Context.ExprTable Context.Boolean Context.Dynamic n1 -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Boolean Context.Dynamic n1)) st )
                Context.ExprTable Context.Boolean c1 (CBoolean n1) -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Boolean c1 (comparisonFunBool (==) n1 n2))) st )
                _ -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                                    ++ (Out.printPos p)
                                                    ++ " en Operacion '==', Conflicto de Tipos comparados. Se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando derecho")
        Context.ExprTable Context.Number Context.Dynamic n2 -> do 
            case et1 of
                Context.ExprTable Context.Number _ _ -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n2)) st )
                _ -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                                    ++ (Out.printPos p)
                                                    ++ " en Operacion '==', Conflicto de Tipos comparados. Se esperaba un Tipo Boolean y se encontro expresion Tipo Number en operando derecho")
        Context.ExprTable Context.Number c2 (CNumber n2) -> do 
            case et1 of
                Context.ExprTable Context.Number Context.Dynamic n1 -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n1)) st )
                Context.ExprTable Context.Number c1 (CNumber n1) -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number c1 (comparisonFunNum (==) n1 n2))) st )
                _ -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                                    ++ (Out.printPos p)
                                                    ++ " en Operacion '/=', Conflicto de Tipos comparados. Se esperaba un Tipo Boolean y se encontro expresion Tipo Number en operando derecho")

        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

anaExpr (Out.Neq e1 e2 p) = do
    anaExpr e1
    st <- get
    let et1 = topTable $ tablas st
    case et1 of
        Context.ExprTable Context.Boolean _ _ -> do 
            put $ modifyTable popTable st
        Context.ExprTable Context.Number _ _ -> do
            put $ modifyTable popTable st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

    anaExpr e2
    st <- get
    let et2 = topTable $ tablas st
    case et2 of
        Context.ExprTable Context.Boolean Context.Dynamic n2 -> do 
            case et1 of
                Context.ExprTable Context.Boolean _ _ -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Boolean Context.Dynamic n2)) st )
                _ -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                                    ++ (Out.printPos p)
                                                    ++ " en Operacion '/=', Conflicto de Tipos comparados. Se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando derecho")
        Context.ExprTable Context.Boolean c2 (CBoolean n2) -> do 
            case et1 of
                Context.ExprTable Context.Boolean Context.Dynamic n1 -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Boolean Context.Dynamic n1)) st )
                Context.ExprTable Context.Boolean c1 (CBoolean n1) -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Boolean c1 (comparisonFunBool (/=) n1 n2))) st )
                _ -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                                    ++ (Out.printPos p)
                                                    ++ " en Operacion '/=', Conflicto de Tipos comparados. Se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando derecho")
        Context.ExprTable Context.Number Context.Dynamic n2 -> do 
            case et1 of
                Context.ExprTable Context.Number _ _ -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n2)) st )
                _ -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                                    ++ (Out.printPos p)
                                                    ++ " en Operacion '/=', Conflicto de Tipos comparados. Se esperaba un Tipo Boolean y se encontro expresion Tipo Number en operando derecho")
        Context.ExprTable Context.Number c2 (CNumber n2) -> do 
            case et1 of
                Context.ExprTable Context.Number Context.Dynamic n1 -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n1)) st )
                Context.ExprTable Context.Number c1 (CNumber n1) -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number c1 (comparisonFunNum (/=) n1 n2))) st )
                _ -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                                    ++ (Out.printPos p)
                                                    ++ " en Operacion '/=', Conflicto de Tipos comparados. Se esperaba un Tipo Boolean y se encontro expresion Tipo Number en operando derecho")

        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

anaExpr (Out.Less e1 e2 p) = do
    anaExpr e1
    st <- get
    let et1 = topTable $ tablas st
    case et1 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '<', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando izquierdo")
        Context.ExprTable Context.Number c n -> do
            put $ modifyTable popTable st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

    anaExpr e2
    st <- get
    let et2 = topTable $ tablas st
    case et2 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '<', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando derecho")
        Context.ExprTable Context.Number Context.Dynamic n -> do
            let st = modifyTable popTable st
            return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
        Context.ExprTable Context.Number c n@(Context.CNumber n2) -> do
            case et1 of
                Context.ExprTable Context.Number Context.Dynamic n1-> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n1)) st )
                Context.ExprTable Context.Number c (Context.CNumber n1) -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number c (comparisonFunNum (<) n1 n2))) st )

        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

anaExpr (Out.Lesseq e1 e2 p) = do
    anaExpr e1
    st <- get
    let et1 = topTable $ tablas st
    case et1 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '<=', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando izquierdo")
        Context.ExprTable Context.Number c n -> do
            put $ modifyTable popTable st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

    anaExpr e2
    st <- get
    let et2 = topTable $ tablas st
    case et2 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '<=', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando derecho")
        Context.ExprTable Context.Number Context.Dynamic n -> do
            let st = modifyTable popTable st
            return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
        Context.ExprTable Context.Number c n@(Context.CNumber n2) -> do
            case et1 of
                Context.ExprTable Context.Number Context.Dynamic n1-> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n1)) st )
                Context.ExprTable Context.Number c (Context.CNumber n1) -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number c (comparisonFunNum (<=) n1 n2))) st )

        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

anaExpr (Out.More e1 e2 p) = do
    anaExpr e1
    st <- get
    let et1 = topTable $ tablas st
    case et1 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '>', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando izquierdo")
        Context.ExprTable Context.Number c n -> do
            put $ modifyTable popTable st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

    anaExpr e2
    st <- get
    let et2 = topTable $ tablas st
    case et2 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '>', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando derecho")
        Context.ExprTable Context.Number Context.Dynamic n -> do
            let st = modifyTable popTable st
            return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
        Context.ExprTable Context.Number c n@(Context.CNumber n2) -> do
            case et1 of
                Context.ExprTable Context.Number Context.Dynamic n1-> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n1)) st )
                Context.ExprTable Context.Number c (Context.CNumber n1) -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number c (comparisonFunNum (>) n1 n2))) st )

        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

anaExpr (Out.Moreq e1 e2 p) = do
    anaExpr e1
    st <- get
    let et1 = topTable $ tablas st
    case et1 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '>=', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando izquierdo")
        Context.ExprTable Context.Number c n -> do
            put $ modifyTable popTable st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

    anaExpr e2
    st <- get
    let et2 = topTable $ tablas st
    case et2 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '>=', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando derecho")
        Context.ExprTable Context.Number Context.Dynamic n -> do
            let st = modifyTable popTable st
            return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
        Context.ExprTable Context.Number c n@(Context.CNumber n2) -> do
            case et1 of
                Context.ExprTable Context.Number Context.Dynamic n1-> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n1)) st )
                Context.ExprTable Context.Number c (Context.CNumber n1) -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number c (comparisonFunNum (>=) n1 n2))) st )

        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

anaExpr (Out.Plus e1 e2 p) = do
    anaExpr e1
    st <- get
    let et1 = topTable $ tablas st
    case et1 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '+', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando izquierdo")
        Context.ExprTable Context.Number c n -> do
            put $ modifyTable popTable st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

    anaExpr e2
    st <- get
    let et2 = topTable $ tablas st
    case et2 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '+', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando derecho")
        Context.ExprTable Context.Number Context.Dynamic n -> do
            let st = modifyTable popTable st
            return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
        Context.ExprTable Context.Number c n -> do
            case et1 of
                Context.ExprTable Context.Number Context.Dynamic n1-> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
                Context.ExprTable Context.Number c (Context.CNumber n1) -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number c (modifyDoubleValCalc (n1+) n))) st )

        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

anaExpr (Out.Minus e1 e2 p) = do
    anaExpr e1
    st <- get
    let et1 = topTable $ tablas st
    case et1 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '-', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando izquierdo")
        Context.ExprTable Context.Number c n -> do
            put $ modifyTable popTable st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

    anaExpr e2
    st <- get
    let et2 = topTable $ tablas st
    case et2 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '-', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando derecho")
        Context.ExprTable Context.Number Context.Dynamic n -> do
            let st = modifyTable popTable st
            return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
        Context.ExprTable Context.Number c n -> do
            case et1 of
                Context.ExprTable Context.Number Context.Dynamic n1-> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
                Context.ExprTable Context.Number c (Context.CNumber n1) -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number c (modifyDoubleValCalc (n1-) n))) st )

        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

anaExpr (Out.Mult e1 e2 p) = do
    anaExpr e1
    st <- get
    let et1 = topTable $ tablas st
    case et1 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '*', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando izquierdo")
        Context.ExprTable Context.Number c n -> do
            put $ modifyTable popTable st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

    anaExpr e2
    st <- get
    let et2 = topTable $ tablas st
    case et2 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '*', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando derecho")
        Context.ExprTable Context.Number Context.Dynamic n -> do
            let st = modifyTable popTable st
            return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
        Context.ExprTable Context.Number c n -> do
            case et1 of
                Context.ExprTable Context.Number Context.Dynamic n1-> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
                Context.ExprTable Context.Number c (Context.CNumber n1) -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number c (modifyDoubleValCalc (*n1) n))) st )

        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

anaExpr (Out.Divex e1 e2 p) = do
    anaExpr e1
    st <- get
    let et1 = topTable $ tablas st
    case et1 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '/', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando izquierdo")
        Context.ExprTable Context.Number c n -> do
            put $ modifyTable popTable st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

    anaExpr e2
    st <- get
    let et2 = topTable $ tablas st
    case et2 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '/', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando derecho")
        Context.ExprTable Context.Number Context.Dynamic n -> do
            let st = modifyTable popTable st
            return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
        Context.ExprTable Context.Number c n -> do
            case et1 of
                Context.ExprTable Context.Number Context.Dynamic n1-> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
                Context.ExprTable Context.Number c (Context.CNumber 0) -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                                                ++ (Out.printPos p)
                                                                ++ " en Operacion '/', division entre 0")
                Context.ExprTable Context.Number c (Context.CNumber n1) -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number c (modifyDoubleValCalc (\x -> n1 / x) n))) st )

        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

anaExpr (Out.Modex e1 e2 p) = do
    anaExpr e1
    st <- get
    let et1 = topTable $ tablas st
    case et1 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '%', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando izquierdo")
        Context.ExprTable Context.Number c n -> do
            put $ modifyTable popTable st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

    anaExpr e2
    st <- get
    let et2 = topTable $ tablas st
    case et2 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '%', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando derecho")
        Context.ExprTable Context.Number Context.Dynamic n -> do
            let st = modifyTable popTable st
            return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
        Context.ExprTable Context.Number c n -> do
            case et1 of
                Context.ExprTable Context.Number Context.Dynamic n1-> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
                Context.ExprTable Context.Number c (Context.CNumber 0) -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                                                ++ (Out.printPos p)
                                                                ++ " en Operacion '%', division entre 0")
                Context.ExprTable Context.Number c (Context.CNumber n1) -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number c (modifyDoubleValCalc (\x -> modex n1 x) n))) st )

        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

anaExpr (Out.Div e1 e2 p) = do
    anaExpr e1
    st <- get
    let et1 = topTable $ tablas st
    case et1 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion 'div', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando izquierdo")
        Context.ExprTable Context.Number c n -> do
            put $ modifyTable popTable st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

    anaExpr e2
    st <- get
    let et2 = topTable $ tablas st
    case et2 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion 'div', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando derecho")
        Context.ExprTable Context.Number Context.Dynamic n -> do
            let st = modifyTable popTable st
            return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
        Context.ExprTable Context.Number c n -> do
            case et1 of
                Context.ExprTable Context.Number Context.Dynamic n1-> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
                Context.ExprTable Context.Number c (Context.CNumber 0) -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                                                ++ (Out.printPos p)
                                                                ++ " en Operacion 'div', division entre 0")
                Context.ExprTable Context.Number c (Context.CNumber n1) -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number c (modifyDoubleValCalc (applyIntegerFun div n1) n))) st )

        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

anaExpr (Out.Mod e1 e2 p) = do
    anaExpr e1
    st <- get
    let et1 = topTable $ tablas st
    case et1 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion 'mod', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando izquierdo")
        Context.ExprTable Context.Number c n -> do
            put $ modifyTable popTable st
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

    anaExpr e2
    st <- get
    let et2 = topTable $ tablas st
    case et2 of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion 'mod', se esperaba un Tipo Number y se encontro expresion Tipo Boolean en operando derecho")
        Context.ExprTable Context.Number Context.Dynamic n -> do
            let st = modifyTable popTable st
            return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
        Context.ExprTable Context.Number c n -> do
            case et1 of
                Context.ExprTable Context.Number Context.Dynamic n1-> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
                Context.ExprTable Context.Number c (Context.CNumber 0) -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                                                ++ (Out.printPos p)
                                                                ++ " en Operacion 'mod', division entre 0")
                Context.ExprTable Context.Number c (Context.CNumber n1) -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable Context.Number c (modifyDoubleValCalc (applyIntegerFun mod n1) n))) st )

        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"


anaExpr (Out.Not e p) = do
    anaExpr e
    st <- get
    case topTable $ tablas st of
        Context.ExprTable Context.Number _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion 'not', se esperaba un Tipo Boolean y se encontro expresion Tipo Number")
        Context.ExprTable Context.Boolean Context.Dynamic n -> do
            let st = modifyTable popTable st
            return ( modifyTable (pushTable (Context.ExprTable Context.Boolean Context.Dynamic n)) st )
        Context.ExprTable Context.Boolean c n -> do
            let st = modifyTable popTable st
            return ( modifyTable (pushTable (Context.ExprTable Context.Boolean c (modifyBoolValCalc (\x -> not x) n))) st )
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

anaExpr (Out.Uminus e p) = do
    anaExpr e
    st <- get
    case topTable $ tablas st of
        Context.ExprTable Context.Boolean _ _ -> do 
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " en Operacion '-', se esperaba un Tipo Number y se encontro expresion Tipo Boolean")
        Context.ExprTable Context.Number Context.Dynamic n -> do
            let st = modifyTable popTable st
            return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Dynamic n)) st )
        Context.ExprTable Context.Number c n -> do
            let st = modifyTable popTable st
            return ( modifyTable (pushTable (Context.ExprTable Context.Number c (modifyDoubleValCalc (\x -> -x) n))) st )
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la expresion"

anaExpr (Out.Identifier i@(Lexer.Identifier p s)) = do
    st <- get
    case findSym s (onlySymTable(tablas st)) of
            Nothing -> do 
                throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ". Variable " ++ s ++ " no declarada.")
            Just (Context.FoundSym t v _ )-> do
                return ( modifyTable (pushTable (Context.ExprTable t Context.Dynamic v)) st )

anaExpr (Out.Integer (Lexer.Number _ s)) = do
    st <- get
    return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Constant (Context.CNumber (read s)))) st )

anaExpr (Out.Floating (Lexer.Number _ s)) = do
    st <- get
    return ( modifyTable (pushTable (Context.ExprTable Context.Number Context.Constant (Context.CNumber (read s)))) st )

anaExpr (Out.ExpTrue (Lexer.Boolean _ s)) = do
    st <- get
    return ( modifyTable (pushTable (Context.ExprTable Context.Boolean Context.Constant (Context.CBoolean True))) st )

anaExpr (Out.ExpFalse (Lexer.Boolean _ s)) = do
    st <- get
    return ( modifyTable (pushTable (Context.ExprTable Context.Boolean Context.Constant (Context.CBoolean False))) st )

anaExpr (Out.ExpFcall f) = do
    anaFuncion f
    st <- get
    case topTable $ tablas st of
        FuncionTable r -> do 
            case r of
                Void -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                                    ++ (Out.showFuncionPos f)
                                                    ++ ", la cual es un llamado de procedimiento (no retorna nada) en una expresion que esperaba tipo de retorno.")
                _ -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable r Context.Dynamic Context.Nein)) st )
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la funcion"

anaExpr (Out.Bracket e) = anaExpr e




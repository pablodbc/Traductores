module Expresiones where
import qualified Lexer as Lexer
import qualified Stdout as Out
import qualified Grammar 
import Data.Map as M 
import Control.Monad.RWS
import Context as Context
import Control.Exception


anaFuncion :: Out.Funcion -> Context.ConMonad Context.State
-- Esto esta terriblemente mal pero es para compilar
anaFuncion f = do
    error "Analizar funcion esta incompleto"
    anaExpr (Out.ExpFcall f)

anaExpr :: Out.Expr -> Context.ConMonad Context.State
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
                Context.ExprTable Context.Number Context.Dynamic n-> do
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


anaExpr (Out.Identifier i) = error "Implementar analisis de llamado a variable"

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




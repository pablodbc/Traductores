module Expresiones where
import qualified Lexer as Lexer
import qualified Stdout as Out
import qualified Grammar 
import Data.Map as M 
import Control.Monad.RWS
import Context as Context


anaFuncion :: Out.Funcion -> Context.ConMonad Context.State
-- Esto esta terriblemente mal pero es para compilar
anaFuncion f = anaExpr (Out.ExpFcall f)

anaExpr :: Out.Expr -> Context.ConMonad Context.State
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
                    error ("Error: Cerca de la siguiente posicion" 
                                            ++ "Sacar aqui pos de f" 
                                            ++ ". Llamado de procedimiento (no retorna nada) en una expresion que esperaba tipo de retorno.")
                _ -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable r Context.Dynamic Context.Nein)) st )
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la funcion"
                




anaExpr (Out.Bracket e) = anaExpr e




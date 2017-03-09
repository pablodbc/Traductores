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
anaExpr (Out.ExpFalse _) = do
    st <- get
    return ( modifyTable (pushTable (Context.ExprTable Context.Boolean Context.Constant False)) st )

anaExpr (Out.ExpFcall f) = do
    anaFuncion f
    st <- get
    case topTable $ tablas st of
        FuncionTable r -> do 
            case r of
                Void -> do
                    error ""
                _ -> do
                    let st = modifyTable popTable st
                    return ( modifyTable (pushTable (Context.ExprTable r Context.Dynamic Context.Nein)) st )
        _ -> do
            error ""
                




anaExpr (Out.Bracket e) = anaExpr e




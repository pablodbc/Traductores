module Expresiones where
import qualified Lexer
import qualified Stdout as Out
import qualified Grammar 
import Data.Map as M 
import Control.Monad.RWS
import Context as Context


anaExpr :: Out.Expr -> Context.ConMonad Context.Tabla

anaExpr (Out.Bracket e) = anaExpr e

--anaExpr (Out.ExpFcall f) = do
--	anaFuncion f


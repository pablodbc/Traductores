module Context where
import qualified Lexer
import qualified Stdout as Out
import qualified Grammar 
import Data.Map as M 
import Control.Monad.RWS


data CompType = Dynamic | Constant

data Type     = Boolean | Number

data Rtype    = Type | Void

type MBoolean = Maybe Bool
type MDouble  = Maybe Double

data ValCalc  = MBoolean | MDouble


data Tabla    = ExprTable {tipo :: Type, compType :: CompType, val :: ValCalc} |
                FuncionTable {rtype :: Rtype}                                  |
                SymTable {tipo :: Type, val :: ValCalc, ht :: Int}

data FunProto = FunProto {retype :: Rtype, args :: [Type], size :: Int}

data FunHandler = FunHandler {id :: String, ret :: Bool} | None

data State = State {funcs :: Map String FunProto, tablas :: [Tabla], funDecl :: FunHandler, h :: Int}

-- Monad que usaremos para hacer estas cosas. El primer tipo es arbitrario (No usaremos el reader)
type DaMonad = RWS Bool [String] State

initialState = State M.empty [] None 0
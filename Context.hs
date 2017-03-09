module Context where
import qualified Lexer
import qualified Stdout as Out
import qualified Grammar 
import Data.Map as M 
import Control.Monad.RWS
import Prelude as P


data CompType = Dynamic | Constant deriving (Eq,Show,Ord)

data Type     = Boolean | Number | Void deriving (Eq,Show,Ord)

data ValCalc  = Bool | Double | Nein deriving (Eq,Show,Ord)


data Tabla    = ExprTable {tipo :: Type, compType :: CompType, val :: ValCalc} |
                FuncionTable {rtype :: Type}                                   |
                SymTable {mapa :: Map String (Type,ValCalc)}
                deriving (Eq,Show,Ord)

data FunProto = FunProto {retype :: Type, args :: [Type], size :: Int} deriving (Eq,Show,Ord)

data FunHandler = FunHandler {id :: String, ret :: Bool} | None deriving (Eq,Show,Ord)

data State = State {funcs :: Map String FunProto, tablas :: [Tabla], funDecl :: FunHandler, h :: Int} deriving (Eq,Show,Ord)

-- Monad que usaremos para hacer estas cosas. El primer tipo es arbitrario (No usaremos el reader)
type ConMonad = RWS Bool String State

initialState = State M.empty [] None 0


pushTable :: Tabla -> [Tabla] -> [Tabla]
pushTable tabla tablas = tabla:tablas

popTable :: [Tabla] -> [Tabla]
popTable (_:tablas) = tablas

topTable :: [Tabla] -> Tabla
topTable (tabla:tablas) = tabla

modifyTable :: ([Tabla] -> [Tabla]) -> State -> State
modifyTable f (State fs t fd h) = State fs (f t) fd h

modifyHeight :: (Int -> Int) -> State -> State
modifyHeight f (State fs t fd h) = State fs t fd (f h)

isSymTable :: Tabla -> Bool
isSymTable (SymTable _) = True
isSymTable _ = False

onlySymTable :: [Tabla] -> [Tabla]
onlySymTable = P.filter (isSymTable)


isNothing :: Maybe a -> Bool
isNothing Nothing = True
isNothing _ = False

findExpr :: String -> [Tabla] -> Maybe (Type,ValCalc)

findExpr _ [] = Nothing
findExpr s (x:xs) = case (isNothing r) of True -> findExpr s xs
                                          otherwise -> r
                            where r = M.lookup s (mapa x)

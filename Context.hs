{-# LANGUAGE DeriveDataTypeable #-}
module Context where
import qualified Lexer
import qualified Stdout as Out
import qualified Grammar 
import Data.Map as M 
import Control.Monad.RWS
import Prelude as P
import Control.Exception as E
import Data.Typeable as T

data ContextError = ContextError String
    deriving (T.Typeable)

instance E.Exception ContextError
instance Show ContextError where
    show (ContextError s) = "Error de Contexto: " ++ s

data CompType = Dynamic | Constant deriving (Eq,Show,Ord)

data Type     = Boolean | Number | Void deriving (Eq,Show,Ord)

data ValCalc  = CBoolean Bool | CNumber Double | Nein deriving (Eq,Show,Ord)


data Tabla    = ExprTable {tipo :: Type, compType :: CompType, val :: ValCalc} |
                FuncionTable {rtype :: Type}                                   |
                SymTable {mapa :: Map String (Type,ValCalc), height :: Int}
                deriving (Eq,Show,Ord)

data FunProto = FunProto {retype :: Type, args :: [Type], size :: Int} deriving (Eq,Show,Ord)

data FunHandler = FunHandler {id :: String, ret :: Bool} | None deriving (Eq,Show,Ord)

data State = State {funcs :: Map String FunProto, tablas :: [Tabla], funDecl :: FunHandler, h :: Int} deriving (Eq,Show,Ord)

data FoundSym = FoundSym Type ValCalc Int deriving (Eq,Show,Ord)

-- Monad que usaremos para hacer estas cosas. El primer tipo es arbitrario (Reader maneja el separador)
type ConMonad = RWS String String State

initialState = State M.empty [] None 0

-- ValCalc Modifiers
modifyBoolValCalc :: (Bool -> Bool) -> ValCalc -> ValCalc
modifyBoolValCalc f (CBoolean b) = CBoolean (f b)

modifyDoubleValCalc :: (Double -> Double) -> ValCalc -> ValCalc
modifyDoubleValCalc f (CNumber n) = CNumber (f n)

-- Number Handlers
numberConversionHandler :: (RealFrac a, Integral b) => a -> b
numberConversionHandler = floor

applyIntegerFun ::(Integral a, RealFrac b) => (a -> a -> a) -> b -> b -> b
applyIntegerFun f x y = fromIntegral(f (numberConversionHandler x) (numberConversionHandler y))

modex :: RealFrac a => a -> a -> a
modex x y = x - (y * (fromIntegral $ truncate (x/y)))


-- Comparison Handler
comparisonFunNum :: (Eq a, Ord a, RealFrac a) => (a -> a -> Bool) -> a -> a -> ValCalc
comparisonFunNum f x y = CBoolean (f x y)

comparisonFunBool :: (Bool -> Bool -> Bool) -> Bool -> Bool -> ValCalc
comparisonFunBool f x y = CBoolean (f x y)





-- State Handlers
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
isSymTable (SymTable _ _) = True
isSymTable _ = False

onlySymTable :: [Tabla] -> [Tabla]
onlySymTable = P.filter (isSymTable)


findSym :: String -> [Tabla] -> Maybe FoundSym

findSym _ [] = Nothing
findSym s (x:xs) = case r of Nothing -> findSym s xs
                             Just (t,v) -> return(FoundSym t v (height x))
                            where r = M.lookup s (mapa x)


-- Para encontrar una funcion con un string creo que sería un simple lookup, lo dejaré aquí

findFun :: String -> Map String FunProto -> Maybe FunProto
findFun s m = M.lookup s m


-- Utilidad para recorrer 2 listas



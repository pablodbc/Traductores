module Programa where
import qualified Lexer as Lexer
import Stdout as Out
import qualified Grammar 
import Data.Map.Lazy as M 
import Control.Monad.RWS
import Context as Context
import Control.Exception
import Expresiones
import Instrucciones
import Prelude as P


anaFunDec :: Out.FunDec -> Context.ConMonad ()
anaFunDec (Out.Proc (Lexer.Identifier p s) params ins) = do
    modify $ modifyHeight (+1)
    modify $ modifyHandler (replace s False)
    st <- get
    sep <- ask
    tell (Out.showLine sep (h st) ("Alcance _" ++ s ++ ":\n"))
    tell (Out.showLine sep ((h st)+1) ("Variables:\n"))
    case Context.findFun s (funcs st) of
        Nothing -> do
            case params of
                [] -> do
                    modify $ insertFunProto s (FunProto Context.Void (getTypeList params) 0)
                _ -> do
                    modify $ insertFunProto s (FunProto Context.Void (getTypeList params) 1)
                    modify $ modifyTable (pushTable (SymTable M.empty (h st)))
                    anaParamLs params

        _ -> do
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " la funcion " ++ s ++ "esta siendo declarada dos veces")
    tell (Out.showLine sep ((h st)+1) ("Sub_Alcances:\n"))
    case ins of
        [] -> do
            return ()
        _ -> mapM_ anaAnidS ins
    modify (modifyHeight (\x -> x-1))
    modify (modifyTable popTable)

anaFunDec (Out.Func idt@(Lexer.Identifier p s) params t ins) = do
    modify $ modifyHeight (+1)
    let tp = fromTipo t
    modify $ modifyHandler (replace s False)
    st <- get
    sep <- ask
    tell (Out.showLine sep (h st) ("Alcance _" ++ s ++ ":\n"))
    tell (Out.showLine sep ((h st)+1) ("Variables:\n"))
    case Context.findFun s (funcs st) of
        Nothing -> do
            case params of
                [] -> do
                    modify $ insertFunProto s (FunProto tp (getTypeList params) 0)
                _ -> do
                    modify $ insertFunProto s (FunProto tp (getTypeList params) 1)
                    modify $ modifyTable (pushTable (SymTable M.empty (h st)))
                    anaParamLs params

        _ -> do
            throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " la funcion " ++ s ++ "esta siendo declarada dos veces")
    tell (Out.showLine sep ((h st)+1) ("Sub_Alcances:\n"))
    case ins of
        [] -> do
            return ()
        _ -> mapM_ anaAnidS ins
    modify (modifyHeight (\x -> x-1))
    modify (modifyTable popTable)




anaParamLs :: [Out.ParamL] -> Context.ConMonad ()
anaParamLs [] = do
    return ()

anaParamLs (ParamL t (Lexer.Identifier p s):rest) = do
    st <- get
    let symT = topTable $ tablas st
    case symT of
        (SymTable _ _) -> do
            return ()
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
                    return ()
        _ -> do 
            return ()
    st <- get
    let symT = topTable $ tablas st
    case symT of
        (SymTable _ _) -> do
            case (fromTipo t) of
                Context.Number -> do
                    sep <- ask
                    tell (Out.showLine sep ((h st) +1) (s ++ " : number\n"))
                Context.Boolean -> do
                    sep <- ask
                    tell (Out.showLine sep ((h st) +1) (s ++ " : boolean\n"))
            modify $ modifyTable popTable
            modify $ modifyTable (pushTable (Context.insertSym symT s (fromTipo t) Context.Nein))
            anaParamLs rest
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la simbolos"

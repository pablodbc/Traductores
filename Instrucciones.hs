module Instrucciones where
import qualified Lexer as Lexer
import Stdout as Out
import qualified Grammar 
import Data.Map as M 
import Control.Monad.RWS
import Context as Context
import Control.Exception
import Expresiones
import Prelude as P




anaAnidS :: Out.AnidS -> Context.ConMonad ()

anaAnidS (Bif e [] p) = do
    anaExpr e
    st <- get
    case (tipo $ topTable $ tablas st) of
        Boolean -> do
            modify(modifyTable popTable)
        Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ", en el If Se esperaba una expresión Tipo Boolean y se detectó una expresión Tipo Number")



anaAnidS (Bif e ins p) = do
    anaExpr e
    st <- get
    case (tipo $ topTable $ tablas st) of
        Boolean -> do
            modify (modifyTable popTable)
            mapM_ anaAnidS ins
        Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ", en el If Se esperaba una expresión Tipo Boolean y se detectó una expresión Tipo Number")



anaAnidS (Bifelse e [] [] p) = do
    anaExpr e
    st <- get
    case (tipo $ topTable $ tablas st) of
        Boolean -> do
            modify(modifyTable popTable)
        Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ", en el If Se esperaba una expresión Tipo Boolean y se detectó una expresión Tipo Number")


anaAnidS (Bifelse e ins1 [] p) = do
    anaExpr e
    st <- get
    case (tipo $ topTable $ tablas st) of
        Boolean -> do
            modify(modifyTable popTable)
            mapM_ anaAnidS ins1
        Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ", en el If Se esperaba una expresión Tipo Boolean y se detectó una expresión Tipo Number")

anaAnidS (Bifelse e [] ins2 p) = do
    anaExpr e
    st <- get
    case (tipo $ topTable $ tablas st) of
        Boolean -> do
            modify(modifyTable popTable)
            mapM_ anaAnidS ins2
        Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ", en el If Se esperaba una expresión Tipo Boolean y se detectó una expresión Tipo Number")


anaAnidS (Bifelse e ins1 ins2 p) = do
    anaExpr e
    st <- get
    case (tipo $ topTable $ tablas st) of
        Boolean -> do
            modify(modifyTable popTable)
            mapM_ anaAnidS ins1
            mapM_ anaAnidS ins2
        Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ", en el If Se esperaba una expresión Tipo Boolean y se detectó una expresión Tipo Number")

anaAnidS (Bwhile e [] p) = do
    anaExpr e
    st <- get
    case (tipo $ topTable $ tablas st) of
        Boolean -> do
            modify(modifyTable popTable)
        Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ", en el While Se esperaba una expresión Tipo Boolean y se detectó una expresión Tipo Number")



anaAnidS (Bwhile e ins p) = do
    anaExpr e
    st <- get
    case (tipo $ topTable $ tablas st) of
        Boolean -> do
            modify (modifyTable popTable)
            mapM_ anaAnidS ins
        Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ", en el While Se esperaba una expresión Tipo Boolean y se detectó una expresión Tipo Number")

anaAnidS (Brepeat e [] p) = do
    anaExpr e
    st <- get
    case (tipo $ topTable $ tablas st) of
        Boolean -> do
            modify(modifyTable popTable)
        Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ", en el Repeat Se esperaba una expresión Tipo Boolean y se detectó una expresión Tipo Number")



anaAnidS (Brepeat e ins p) = do
    anaExpr e
    st <- get
    case (tipo $ topTable $ tablas st) of
        Boolean -> do
            modify (modifyTable popTable)
            mapM_ anaAnidS ins
        Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ", en el Repeat Se esperaba una expresión Tipo Boolean y se detectó una expresión Tipo Number")


anaAnidS (Asig lt e) = do
    let p = takePos lt
    let s = takeStr lt
    st <- get
    case findSym s (onlySymTable(tablas st)) of
            Nothing -> do 
                throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ". Variable " ++ s ++ " no declarada.")
            Just (Context.FoundSym t v alt )-> do
                anaExpr e
                st <- get
                modify (modifyTable popTable)
                case (tipo $ topTable $ tablas st) == t of
                    True -> do
                        return ()
                    False -> do
                        throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                                        ++ (Out.printPos p)
                                                        ++ " Asignacion invalida, expresion de distinto tipo a variable asignada")

anaAnidS (InsFcall f) = do
    anaFuncion f
    st <- get
    case topTable $ tablas st of
        FuncionTable r -> do 
            case r of
                Void -> do
                    modify (modifyTable popTable)
                    return ()
                    
                _ -> do
                    throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                                    ++ (Out.showFuncionPos f)
                                                    ++ ", la cual es un llamado de procedimiento (no retorna nada) en una expresion que esperaba tipo de retorno.")
        _ -> do
            error "Error interno, algo salio mal y no esta la tabla de la funcion"

anaAnidS (Read lt) = do
    let p = takePos lt
    let s = takeStr lt
    st <- get
    case findSym s (onlySymTable(tablas st)) of
            Nothing -> do 
                throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ". Variable " ++ s ++ " no declarada.")
            Just (Context.FoundSym t v _ )-> return ()

anaAnidS (Write args) = do
    anaExprS args
    return ()

anaAnidS (WriteLn args) = do
    anaExprS args
    return()

anaAnidS (Return e p) = do
    anaExpr e
    st <- get
    modify (modifyTable popTable)
    case findFuncionTable (tablas st) of
        Nothing -> do throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ". Instruccion de retorno en bloque principal")
        Just (FuncionTable rt) -> do
            let tExp = tipo $ head $ tablas st
            case tExp == rt of
                True -> return()
                False -> do throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ ". Se esperaba una variable de tipo " ++ show(rt))
        
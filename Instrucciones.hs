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
                                            ++ " Se esperaba una expresión booleana y se detectó una expresión numérica")



anaAnidS (Bif e ins p) = do
	anaExpr e
	st <- get
	case (tipo $ topTable $ tablas st) of
		Boolean -> do
			modify (modifyTable popTable)
			mapM_ anaAnidS ins
		Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " Se esperaba una expresión booleana y se detectó una expresión numérica")



anaAnidS (Bifelse e [] [] p) = do
	anaExpr e
	st <- get
	case (tipo $ topTable $ tablas st) of
		Boolean -> do
			modify(modifyTable popTable)
		Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " Se esperaba una expresión booleana y se detectó una expresión numérica")


anaAnidS (Bifelse e ins1 [] p) = do
	anaExpr e
	st <- get
	case (tipo $ topTable $ tablas st) of
		Boolean -> do
			modify(modifyTable popTable)
			mapM_ anaAnidS ins1
		Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " Se esperaba una expresión booleana y se detectó una expresión numérica")

anaAnidS (Bifelse e [] ins2 p) = do
	anaExpr e
	st <- get
	case (tipo $ topTable $ tablas st) of
		Boolean -> do
			modify(modifyTable popTable)
			mapM_ anaAnidS ins2
		Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " Se esperaba una expresión booleana y se detectó una expresión numérica")


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
                                            ++ " Se esperaba una expresión booleana y se detectó una expresión numérica")

anaAnidS (Bwhile e [] p) = do
	anaExpr e
	st <- get
	case (tipo $ topTable $ tablas st) of
		Boolean -> do
			modify(modifyTable popTable)
		Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " Se esperaba una expresión booleana y se detectó una expresión numérica")



anaAnidS (Bwhile e ins p) = do
	anaExpr e
	st <- get
	case (tipo $ topTable $ tablas st) of
		Boolean -> do
			modify (modifyTable popTable)
			mapM_ anaAnidS ins
		Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " Se esperaba una expresión booleana y se detectó una expresión numérica")

anaAnidS (Brepeat e [] p) = do
	anaExpr e
	st <- get
	case (tipo $ topTable $ tablas st) of
		Boolean -> do
			modify(modifyTable popTable)
		Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " Se esperaba una expresión booleana y se detectó una expresión numérica")



anaAnidS (Brepeat e ins p) = do
	anaExpr e
	st <- get
	case (tipo $ topTable $ tablas st) of
		Boolean -> do
			modify (modifyTable popTable)
			mapM_ anaAnidS ins
		Number -> throw $ Context.ContextError ("Cerca de la siguiente posicion" 
                                            ++ (Out.printPos p)
                                            ++ " Se esperaba una expresión booleana y se detectó una expresión numérica")
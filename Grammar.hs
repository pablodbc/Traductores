{-# OPTIONS_GHC -w #-}
module Grammar where
import Lexer
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10
	= HappyTerminal ((Token,AlexPosn))
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10

action_0 (14) = happyShift action_4
action_0 (16) = happyShift action_5
action_0 (51) = happyShift action_6
action_0 (52) = happyShift action_7
action_0 (54) = happyShift action_8
action_0 (4) = happyGoto action_9
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 _ = happyFail

action_1 (14) = happyShift action_4
action_1 (16) = happyShift action_5
action_1 (51) = happyShift action_6
action_1 (52) = happyShift action_7
action_1 (54) = happyShift action_8
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 _ = happyFail

action_2 (11) = happyShift action_14
action_2 (12) = happyShift action_15
action_2 (13) = happyShift action_16
action_2 (31) = happyShift action_17
action_2 (32) = happyShift action_18
action_2 _ = happyReduce_1

action_3 _ = happyReduce_4

action_4 (14) = happyShift action_4
action_4 (16) = happyShift action_5
action_4 (51) = happyShift action_6
action_4 (52) = happyShift action_7
action_4 (54) = happyShift action_8
action_4 (6) = happyGoto action_13
action_4 _ = happyFail

action_5 (14) = happyShift action_4
action_5 (16) = happyShift action_5
action_5 (51) = happyShift action_6
action_5 (52) = happyShift action_7
action_5 (54) = happyShift action_8
action_5 (4) = happyGoto action_12
action_5 (5) = happyGoto action_2
action_5 (6) = happyGoto action_3
action_5 _ = happyFail

action_6 _ = happyReduce_12

action_7 _ = happyReduce_13

action_8 _ = happyReduce_14

action_9 (14) = happyShift action_10
action_9 (17) = happyShift action_11
action_9 (57) = happyAccept
action_9 _ = happyFail

action_10 (14) = happyShift action_4
action_10 (16) = happyShift action_5
action_10 (51) = happyShift action_6
action_10 (52) = happyShift action_7
action_10 (54) = happyShift action_8
action_10 (5) = happyGoto action_26
action_10 (6) = happyGoto action_3
action_10 _ = happyFail

action_11 (14) = happyShift action_4
action_11 (16) = happyShift action_5
action_11 (51) = happyShift action_6
action_11 (52) = happyShift action_7
action_11 (54) = happyShift action_8
action_11 (5) = happyGoto action_25
action_11 (6) = happyGoto action_3
action_11 _ = happyFail

action_12 (14) = happyShift action_10
action_12 (15) = happyShift action_24
action_12 (17) = happyShift action_11
action_12 _ = happyFail

action_13 _ = happyReduce_11

action_14 (14) = happyShift action_4
action_14 (16) = happyShift action_5
action_14 (51) = happyShift action_6
action_14 (52) = happyShift action_7
action_14 (54) = happyShift action_8
action_14 (6) = happyGoto action_23
action_14 _ = happyFail

action_15 (14) = happyShift action_4
action_15 (16) = happyShift action_5
action_15 (51) = happyShift action_6
action_15 (52) = happyShift action_7
action_15 (54) = happyShift action_8
action_15 (6) = happyGoto action_22
action_15 _ = happyFail

action_16 (14) = happyShift action_4
action_16 (16) = happyShift action_5
action_16 (51) = happyShift action_6
action_16 (52) = happyShift action_7
action_16 (54) = happyShift action_8
action_16 (6) = happyGoto action_21
action_16 _ = happyFail

action_17 (14) = happyShift action_4
action_17 (16) = happyShift action_5
action_17 (51) = happyShift action_6
action_17 (52) = happyShift action_7
action_17 (54) = happyShift action_8
action_17 (6) = happyGoto action_20
action_17 _ = happyFail

action_18 (14) = happyShift action_4
action_18 (16) = happyShift action_5
action_18 (51) = happyShift action_6
action_18 (52) = happyShift action_7
action_18 (54) = happyShift action_8
action_18 (6) = happyGoto action_19
action_18 _ = happyFail

action_19 _ = happyReduce_9

action_20 _ = happyReduce_8

action_21 _ = happyReduce_5

action_22 _ = happyReduce_6

action_23 _ = happyReduce_7

action_24 _ = happyReduce_10

action_25 (11) = happyShift action_14
action_25 (12) = happyShift action_15
action_25 (13) = happyShift action_16
action_25 (31) = happyShift action_17
action_25 (32) = happyShift action_18
action_25 _ = happyReduce_2

action_26 (11) = happyShift action_14
action_26 (12) = happyShift action_15
action_26 (13) = happyShift action_16
action_26 (31) = happyShift action_17
action_26 (32) = happyShift action_18
action_26 _ = happyReduce_3

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 _
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 _
	_
	_
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_3 = happySpecReduce_3  4 happyReduction_3
happyReduction_3 _
	_
	_
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn5
		 ([]
	)

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 _
	_
	_
	 =  HappyAbsSyn5
		 ([]
	)

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 _
	_
	_
	 =  HappyAbsSyn5
		 ([]
	)

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 _
	_
	_
	 =  HappyAbsSyn5
		 ([]
	)

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 _
	_
	_
	 =  HappyAbsSyn5
		 ([]
	)

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 _
	_
	_
	 =  HappyAbsSyn5
		 ([]
	)

happyReduce_10 = happySpecReduce_3  6 happyReduction_10
happyReduction_10 _
	_
	_
	 =  HappyAbsSyn6
		 ([]
	)

happyReduce_11 = happySpecReduce_2  6 happyReduction_11
happyReduction_11 _
	_
	 =  HappyAbsSyn6
		 ([]
	)

happyReduce_12 = happySpecReduce_1  6 happyReduction_12
happyReduction_12 _
	 =  HappyAbsSyn6
		 ([]
	)

happyReduce_13 = happySpecReduce_1  6 happyReduction_13
happyReduction_13 _
	 =  HappyAbsSyn6
		 ([]
	)

happyReduce_14 = happySpecReduce_1  6 happyReduction_14
happyReduction_14 _
	 =  HappyAbsSyn6
		 ([]
	)

happyReduce_15 = happySpecReduce_1  7 happyReduction_15
happyReduction_15 _
	 =  HappyAbsSyn7
		 ([]
	)

happyReduce_16 = happySpecReduce_3  7 happyReduction_16
happyReduction_16 _
	_
	_
	 =  HappyAbsSyn7
		 ([]
	)

happyReduce_17 = happySpecReduce_1  8 happyReduction_17
happyReduction_17 _
	 =  HappyAbsSyn8
		 ([]
	)

happyReduce_18 = happySpecReduce_3  8 happyReduction_18
happyReduction_18 _
	_
	_
	 =  HappyAbsSyn8
		 ([]
	)

happyReduce_19 = happySpecReduce_1  9 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn9
		 ([]
	)

happyReduce_20 = happySpecReduce_2  9 happyReduction_20
happyReduction_20 _
	_
	 =  HappyAbsSyn9
		 ([]
	)

happyReduce_21 = happySpecReduce_3  10 happyReduction_21
happyReduction_21 _
	_
	_
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_22 = happySpecReduce_1  10 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_23 = happySpecReduce_1  10 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_24 = happySpecReduce_3  10 happyReduction_24
happyReduction_24 _
	_
	_
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_25 = happySpecReduce_3  10 happyReduction_25
happyReduction_25 _
	_
	_
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_26 = happySpecReduce_3  10 happyReduction_26
happyReduction_26 _
	_
	_
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_27 = happySpecReduce_3  10 happyReduction_27
happyReduction_27 _
	_
	_
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_28 = happySpecReduce_3  10 happyReduction_28
happyReduction_28 _
	_
	_
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_29 = happySpecReduce_3  10 happyReduction_29
happyReduction_29 _
	_
	_
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_30 = happySpecReduce_1  10 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn10
		 ([]
	)

happyNewToken action sts stk [] =
	action 57 57 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	(\(Modex,_)        -> Modex) -> cont 11;
	(\Divex,_)         -> Divex) -> cont 12;
	(Mult,_)           -> Mult) -> cont 13;
	(Minus,_)          -> Minus) -> cont 14;
	(CloseP,_)         -> CloseP) -> cont 15;
	(OpenP,_)          -> OpenP) -> cont 16;
	(Plus,_)           -> Plus) -> cont 17;
	(Def,_)            -> Def) -> cont 18;
	(SemiColon,_)      -> SemiColon) -> cont 19;
	(Comma,_)          -> Comma) -> cont 20;
	(Less,_)           -> Less) -> cont 21;
	(More,_)           -> More) -> cont 22;
	(Eq,_)             -> Eq) -> cont 23;
	(Neq,_)            -> Neq) -> cont 24;
	(Moreq,_)          -> Moreq) -> cont 25;
	(Lesseq,_)         -> Lesseq) -> cont 26;
	(Arrow,_)          -> Arrow) -> cont 27;
	(Not,_)            -> Not) -> cont 28;
	(And,_)            -> And) -> cont 29;
	(Or,_)             -> Or) -> cont 30;
	(Div,_)            -> Div) -> cont 31;
	(Mod,_)            -> Mod) -> cont 32;
	(Number,_)         -> Number) -> cont 33;
	(Boolean,_)        -> Boolean) -> cont 34;
	(True',_)          -> True') -> cont 35;
	(False',_)         -> False') -> cont 36;
	(With,_)           -> With) -> cont 37;
	(Do,_)             -> Do) -> cont 38;
	(End,_)            -> End) -> cont 39;
	(If,_)             -> If) -> cont 40;
	(Then,_)           -> Then) -> cont 41;
	(Else,_)           -> Else) -> cont 42;
	(While,_)          -> While) -> cont 43;
	(For,_)            -> For) -> cont 44;
	(Repeat,_)         -> Repeat) -> cont 45;
	(Begin,_)          -> Begin) -> cont 46;
	(Return,_)         -> Return) -> cont 47;
	(Func,_)           -> Func) -> cont 48;
	(Times,_)          -> Times) -> cont 49;
	(Program,_)        -> Program) -> cont 50;
	(Integer,_)        -> Integer) -> cont 51;
	(Floating,_)       -> FLoating) -> cont 52;
	(Str,_)            -> Str) -> cont 53;
	(Identifier,_)     -> Identifier) -> cont 54;
	(WriteLn,_)        -> WriteLn) -> cont 55;
	(Write,_)          -> Write) -> cont 56;
	_ -> happyError' (tk:tks)
	}

happyError_ 57 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => Either String a -> (a -> Either String b) -> Either String b
happyThen = (>>=)
happyReturn :: () => a -> Either String a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Either String a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [((Token,AlexPosn))] -> Either String a
happyError' = parseError

parse tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError ts = error "NO"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4










































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}

















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates/GenericTemplate.hs" #-}

{-# LINE 46 "templates/GenericTemplate.hs" #-}








{-# LINE 67 "templates/GenericTemplate.hs" #-}

{-# LINE 77 "templates/GenericTemplate.hs" #-}

{-# LINE 86 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 155 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 256 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 322 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

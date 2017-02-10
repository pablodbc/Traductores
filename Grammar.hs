{-# OPTIONS_GHC -w #-}
module Grammar where
import Lexer
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t4 t5 t6
	= HappyTerminal ((Token,AlexPosn))
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

action_0 (10) = happyShift action_4
action_0 (12) = happyShift action_5
action_0 (24) = happyShift action_6
action_0 (31) = happyShift action_7
action_0 (32) = happyShift action_8
action_0 (47) = happyShift action_9
action_0 (48) = happyShift action_10
action_0 (50) = happyShift action_11
action_0 (4) = happyGoto action_12
action_0 (5) = happyGoto action_3
action_0 _ = happyFail

action_1 (10) = happyShift action_4
action_1 (12) = happyShift action_5
action_1 (24) = happyShift action_6
action_1 (31) = happyShift action_7
action_1 (32) = happyShift action_8
action_1 (47) = happyShift action_9
action_1 (48) = happyShift action_10
action_1 (50) = happyShift action_11
action_1 (4) = happyGoto action_2
action_1 (5) = happyGoto action_3
action_1 _ = happyFail

action_2 (7) = happyShift action_13
action_2 (8) = happyShift action_14
action_2 (9) = happyShift action_15
action_2 (10) = happyShift action_16
action_2 (13) = happyShift action_17
action_2 (17) = happyShift action_18
action_2 (18) = happyShift action_19
action_2 (19) = happyShift action_20
action_2 (20) = happyShift action_21
action_2 (21) = happyShift action_22
action_2 (22) = happyShift action_23
action_2 (25) = happyShift action_24
action_2 (26) = happyShift action_25
action_2 (27) = happyShift action_26
action_2 (28) = happyShift action_27
action_2 _ = happyFail

action_3 _ = happyReduce_24

action_4 (10) = happyShift action_4
action_4 (12) = happyShift action_5
action_4 (24) = happyShift action_6
action_4 (31) = happyShift action_7
action_4 (32) = happyShift action_8
action_4 (47) = happyShift action_9
action_4 (48) = happyShift action_10
action_4 (50) = happyShift action_11
action_4 (4) = happyGoto action_31
action_4 (5) = happyGoto action_3
action_4 _ = happyFail

action_5 (10) = happyShift action_4
action_5 (12) = happyShift action_5
action_5 (24) = happyShift action_6
action_5 (31) = happyShift action_7
action_5 (32) = happyShift action_8
action_5 (47) = happyShift action_9
action_5 (48) = happyShift action_10
action_5 (50) = happyShift action_11
action_5 (4) = happyGoto action_30
action_5 (5) = happyGoto action_3
action_5 _ = happyFail

action_6 (10) = happyShift action_4
action_6 (12) = happyShift action_5
action_6 (24) = happyShift action_6
action_6 (31) = happyShift action_7
action_6 (32) = happyShift action_8
action_6 (47) = happyShift action_9
action_6 (48) = happyShift action_10
action_6 (50) = happyShift action_11
action_6 (4) = happyGoto action_29
action_6 (5) = happyGoto action_3
action_6 _ = happyFail

action_7 _ = happyReduce_21

action_8 _ = happyReduce_22

action_9 _ = happyReduce_19

action_10 _ = happyReduce_20

action_11 (12) = happyShift action_28
action_11 _ = happyReduce_23

action_12 (7) = happyShift action_13
action_12 (8) = happyShift action_14
action_12 (9) = happyShift action_15
action_12 (10) = happyShift action_16
action_12 (13) = happyShift action_17
action_12 (17) = happyShift action_18
action_12 (18) = happyShift action_19
action_12 (19) = happyShift action_20
action_12 (20) = happyShift action_21
action_12 (21) = happyShift action_22
action_12 (22) = happyShift action_23
action_12 (25) = happyShift action_24
action_12 (26) = happyShift action_25
action_12 (27) = happyShift action_26
action_12 (28) = happyShift action_27
action_12 (53) = happyAccept
action_12 _ = happyFail

action_13 (10) = happyShift action_4
action_13 (12) = happyShift action_5
action_13 (24) = happyShift action_6
action_13 (31) = happyShift action_7
action_13 (32) = happyShift action_8
action_13 (47) = happyShift action_9
action_13 (48) = happyShift action_10
action_13 (50) = happyShift action_11
action_13 (4) = happyGoto action_50
action_13 (5) = happyGoto action_3
action_13 _ = happyFail

action_14 (10) = happyShift action_4
action_14 (12) = happyShift action_5
action_14 (24) = happyShift action_6
action_14 (31) = happyShift action_7
action_14 (32) = happyShift action_8
action_14 (47) = happyShift action_9
action_14 (48) = happyShift action_10
action_14 (50) = happyShift action_11
action_14 (4) = happyGoto action_49
action_14 (5) = happyGoto action_3
action_14 _ = happyFail

action_15 (10) = happyShift action_4
action_15 (12) = happyShift action_5
action_15 (24) = happyShift action_6
action_15 (31) = happyShift action_7
action_15 (32) = happyShift action_8
action_15 (47) = happyShift action_9
action_15 (48) = happyShift action_10
action_15 (50) = happyShift action_11
action_15 (4) = happyGoto action_48
action_15 (5) = happyGoto action_3
action_15 _ = happyFail

action_16 (10) = happyShift action_4
action_16 (12) = happyShift action_5
action_16 (24) = happyShift action_6
action_16 (31) = happyShift action_7
action_16 (32) = happyShift action_8
action_16 (47) = happyShift action_9
action_16 (48) = happyShift action_10
action_16 (50) = happyShift action_11
action_16 (4) = happyGoto action_47
action_16 (5) = happyGoto action_3
action_16 _ = happyFail

action_17 (10) = happyShift action_4
action_17 (12) = happyShift action_5
action_17 (24) = happyShift action_6
action_17 (31) = happyShift action_7
action_17 (32) = happyShift action_8
action_17 (47) = happyShift action_9
action_17 (48) = happyShift action_10
action_17 (50) = happyShift action_11
action_17 (4) = happyGoto action_46
action_17 (5) = happyGoto action_3
action_17 _ = happyFail

action_18 (10) = happyShift action_4
action_18 (12) = happyShift action_5
action_18 (24) = happyShift action_6
action_18 (31) = happyShift action_7
action_18 (32) = happyShift action_8
action_18 (47) = happyShift action_9
action_18 (48) = happyShift action_10
action_18 (50) = happyShift action_11
action_18 (4) = happyGoto action_45
action_18 (5) = happyGoto action_3
action_18 _ = happyFail

action_19 (10) = happyShift action_4
action_19 (12) = happyShift action_5
action_19 (24) = happyShift action_6
action_19 (31) = happyShift action_7
action_19 (32) = happyShift action_8
action_19 (47) = happyShift action_9
action_19 (48) = happyShift action_10
action_19 (50) = happyShift action_11
action_19 (4) = happyGoto action_44
action_19 (5) = happyGoto action_3
action_19 _ = happyFail

action_20 (10) = happyShift action_4
action_20 (12) = happyShift action_5
action_20 (24) = happyShift action_6
action_20 (31) = happyShift action_7
action_20 (32) = happyShift action_8
action_20 (47) = happyShift action_9
action_20 (48) = happyShift action_10
action_20 (50) = happyShift action_11
action_20 (4) = happyGoto action_43
action_20 (5) = happyGoto action_3
action_20 _ = happyFail

action_21 (10) = happyShift action_4
action_21 (12) = happyShift action_5
action_21 (24) = happyShift action_6
action_21 (31) = happyShift action_7
action_21 (32) = happyShift action_8
action_21 (47) = happyShift action_9
action_21 (48) = happyShift action_10
action_21 (50) = happyShift action_11
action_21 (4) = happyGoto action_42
action_21 (5) = happyGoto action_3
action_21 _ = happyFail

action_22 (10) = happyShift action_4
action_22 (12) = happyShift action_5
action_22 (24) = happyShift action_6
action_22 (31) = happyShift action_7
action_22 (32) = happyShift action_8
action_22 (47) = happyShift action_9
action_22 (48) = happyShift action_10
action_22 (50) = happyShift action_11
action_22 (4) = happyGoto action_41
action_22 (5) = happyGoto action_3
action_22 _ = happyFail

action_23 (10) = happyShift action_4
action_23 (12) = happyShift action_5
action_23 (24) = happyShift action_6
action_23 (31) = happyShift action_7
action_23 (32) = happyShift action_8
action_23 (47) = happyShift action_9
action_23 (48) = happyShift action_10
action_23 (50) = happyShift action_11
action_23 (4) = happyGoto action_40
action_23 (5) = happyGoto action_3
action_23 _ = happyFail

action_24 (10) = happyShift action_4
action_24 (12) = happyShift action_5
action_24 (24) = happyShift action_6
action_24 (31) = happyShift action_7
action_24 (32) = happyShift action_8
action_24 (47) = happyShift action_9
action_24 (48) = happyShift action_10
action_24 (50) = happyShift action_11
action_24 (4) = happyGoto action_39
action_24 (5) = happyGoto action_3
action_24 _ = happyFail

action_25 (10) = happyShift action_4
action_25 (12) = happyShift action_5
action_25 (24) = happyShift action_6
action_25 (31) = happyShift action_7
action_25 (32) = happyShift action_8
action_25 (47) = happyShift action_9
action_25 (48) = happyShift action_10
action_25 (50) = happyShift action_11
action_25 (4) = happyGoto action_38
action_25 (5) = happyGoto action_3
action_25 _ = happyFail

action_26 (10) = happyShift action_4
action_26 (12) = happyShift action_5
action_26 (24) = happyShift action_6
action_26 (31) = happyShift action_7
action_26 (32) = happyShift action_8
action_26 (47) = happyShift action_9
action_26 (48) = happyShift action_10
action_26 (50) = happyShift action_11
action_26 (4) = happyGoto action_37
action_26 (5) = happyGoto action_3
action_26 _ = happyFail

action_27 (10) = happyShift action_4
action_27 (12) = happyShift action_5
action_27 (24) = happyShift action_6
action_27 (31) = happyShift action_7
action_27 (32) = happyShift action_8
action_27 (47) = happyShift action_9
action_27 (48) = happyShift action_10
action_27 (50) = happyShift action_11
action_27 (4) = happyGoto action_36
action_27 (5) = happyGoto action_3
action_27 _ = happyFail

action_28 (10) = happyShift action_4
action_28 (11) = happyShift action_35
action_28 (12) = happyShift action_5
action_28 (24) = happyShift action_6
action_28 (31) = happyShift action_7
action_28 (32) = happyShift action_8
action_28 (47) = happyShift action_9
action_28 (48) = happyShift action_10
action_28 (50) = happyShift action_11
action_28 (4) = happyGoto action_33
action_28 (5) = happyGoto action_3
action_28 (6) = happyGoto action_34
action_28 _ = happyFail

action_29 _ = happyReduce_17

action_30 (7) = happyShift action_13
action_30 (8) = happyShift action_14
action_30 (9) = happyShift action_15
action_30 (10) = happyShift action_16
action_30 (11) = happyShift action_32
action_30 (13) = happyShift action_17
action_30 (17) = happyShift action_18
action_30 (18) = happyShift action_19
action_30 (19) = happyShift action_20
action_30 (20) = happyShift action_21
action_30 (21) = happyShift action_22
action_30 (22) = happyShift action_23
action_30 (25) = happyShift action_24
action_30 (26) = happyShift action_25
action_30 (27) = happyShift action_26
action_30 (28) = happyShift action_27
action_30 _ = happyFail

action_31 _ = happyReduce_18

action_32 _ = happyReduce_16

action_33 (7) = happyShift action_13
action_33 (8) = happyShift action_14
action_33 (9) = happyShift action_15
action_33 (10) = happyShift action_16
action_33 (13) = happyShift action_17
action_33 (17) = happyShift action_18
action_33 (18) = happyShift action_19
action_33 (19) = happyShift action_20
action_33 (20) = happyShift action_21
action_33 (21) = happyShift action_22
action_33 (22) = happyShift action_23
action_33 (25) = happyShift action_24
action_33 (26) = happyShift action_25
action_33 (27) = happyShift action_26
action_33 (28) = happyShift action_27
action_33 _ = happyReduce_27

action_34 (11) = happyShift action_51
action_34 (16) = happyShift action_52
action_34 _ = happyFail

action_35 _ = happyReduce_25

action_36 (8) = happyShift action_14
action_36 (9) = happyShift action_15
action_36 (17) = happyShift action_18
action_36 (18) = happyShift action_19
action_36 (19) = happyShift action_20
action_36 (20) = happyShift action_21
action_36 (21) = happyShift action_22
action_36 (22) = happyShift action_23
action_36 (25) = happyShift action_24
action_36 (27) = happyShift action_26
action_36 _ = happyReduce_15

action_37 (17) = happyShift action_18
action_37 (18) = happyShift action_19
action_37 (19) = happyShift action_20
action_37 (20) = happyShift action_21
action_37 (21) = happyShift action_22
action_37 (22) = happyShift action_23
action_37 _ = happyReduce_14

action_38 (7) = happyShift action_13
action_38 (8) = happyShift action_14
action_38 (9) = happyShift action_15
action_38 (17) = happyShift action_18
action_38 (18) = happyShift action_19
action_38 (19) = happyShift action_20
action_38 (20) = happyShift action_21
action_38 (21) = happyShift action_22
action_38 (22) = happyShift action_23
action_38 (25) = happyShift action_24
action_38 (27) = happyShift action_26
action_38 (28) = happyShift action_27
action_38 _ = happyReduce_1

action_39 (17) = happyShift action_18
action_39 (18) = happyShift action_19
action_39 (19) = happyShift action_20
action_39 (20) = happyShift action_21
action_39 (21) = happyShift action_22
action_39 (22) = happyShift action_23
action_39 _ = happyReduce_2

action_40 (17) = happyFail
action_40 (18) = happyFail
action_40 (19) = happyShift action_20
action_40 (20) = happyShift action_21
action_40 (21) = happyFail
action_40 (22) = happyFail
action_40 _ = happyReduce_7

action_41 (17) = happyFail
action_41 (18) = happyFail
action_41 (19) = happyShift action_20
action_41 (20) = happyShift action_21
action_41 (21) = happyFail
action_41 (22) = happyFail
action_41 _ = happyReduce_8

action_42 (19) = happyFail
action_42 (20) = happyFail
action_42 _ = happyReduce_4

action_43 (19) = happyFail
action_43 (20) = happyFail
action_43 _ = happyReduce_3

action_44 (17) = happyFail
action_44 (18) = happyFail
action_44 (19) = happyShift action_20
action_44 (20) = happyShift action_21
action_44 (21) = happyFail
action_44 (22) = happyFail
action_44 _ = happyReduce_6

action_45 (17) = happyFail
action_45 (18) = happyFail
action_45 (19) = happyShift action_20
action_45 (20) = happyShift action_21
action_45 (21) = happyFail
action_45 (22) = happyFail
action_45 _ = happyReduce_5

action_46 (7) = happyShift action_13
action_46 (8) = happyShift action_14
action_46 (9) = happyShift action_15
action_46 (17) = happyShift action_18
action_46 (18) = happyShift action_19
action_46 (19) = happyShift action_20
action_46 (20) = happyShift action_21
action_46 (21) = happyShift action_22
action_46 (22) = happyShift action_23
action_46 (25) = happyShift action_24
action_46 (27) = happyShift action_26
action_46 (28) = happyShift action_27
action_46 _ = happyReduce_9

action_47 (7) = happyShift action_13
action_47 (8) = happyShift action_14
action_47 (9) = happyShift action_15
action_47 (17) = happyShift action_18
action_47 (18) = happyShift action_19
action_47 (19) = happyShift action_20
action_47 (20) = happyShift action_21
action_47 (21) = happyShift action_22
action_47 (22) = happyShift action_23
action_47 (25) = happyShift action_24
action_47 (27) = happyShift action_26
action_47 (28) = happyShift action_27
action_47 _ = happyReduce_10

action_48 (17) = happyShift action_18
action_48 (18) = happyShift action_19
action_48 (19) = happyShift action_20
action_48 (20) = happyShift action_21
action_48 (21) = happyShift action_22
action_48 (22) = happyShift action_23
action_48 _ = happyReduce_11

action_49 (17) = happyShift action_18
action_49 (18) = happyShift action_19
action_49 (19) = happyShift action_20
action_49 (20) = happyShift action_21
action_49 (21) = happyShift action_22
action_49 (22) = happyShift action_23
action_49 _ = happyReduce_12

action_50 (8) = happyShift action_14
action_50 (9) = happyShift action_15
action_50 (17) = happyShift action_18
action_50 (18) = happyShift action_19
action_50 (19) = happyShift action_20
action_50 (20) = happyShift action_21
action_50 (21) = happyShift action_22
action_50 (22) = happyShift action_23
action_50 (25) = happyShift action_24
action_50 (27) = happyShift action_26
action_50 _ = happyReduce_13

action_51 _ = happyReduce_26

action_52 (10) = happyShift action_4
action_52 (12) = happyShift action_5
action_52 (24) = happyShift action_6
action_52 (31) = happyShift action_7
action_52 (32) = happyShift action_8
action_52 (47) = happyShift action_9
action_52 (48) = happyShift action_10
action_52 (50) = happyShift action_11
action_52 (4) = happyGoto action_53
action_52 (5) = happyGoto action_3
action_52 _ = happyFail

action_53 (7) = happyShift action_13
action_53 (8) = happyShift action_14
action_53 (9) = happyShift action_15
action_53 (10) = happyShift action_16
action_53 (13) = happyShift action_17
action_53 (17) = happyShift action_18
action_53 (18) = happyShift action_19
action_53 (19) = happyShift action_20
action_53 (20) = happyShift action_21
action_53 (21) = happyShift action_22
action_53 (22) = happyShift action_23
action_53 (25) = happyShift action_24
action_53 (26) = happyShift action_25
action_53 (27) = happyShift action_26
action_53 (28) = happyShift action_27
action_53 _ = happyReduce_28

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 _
	_
	_
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

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 _
	_
	_
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 _
	_
	_
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 _
	_
	_
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 _
	_
	_
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 _
	_
	_
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 _
	_
	_
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 _
	_
	_
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 _
	_
	_
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 _
	_
	_
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 _
	_
	_
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 _
	_
	_
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 _
	_
	_
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 _
	_
	_
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 _
	_
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_18 = happySpecReduce_2  4 happyReduction_18
happyReduction_18 _
	_
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_19 = happySpecReduce_1  4 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_20 = happySpecReduce_1  4 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_21 = happySpecReduce_1  4 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_22 = happySpecReduce_1  4 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_23 = happySpecReduce_1  4 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_24 = happySpecReduce_1  4 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 _
	_
	_
	 =  HappyAbsSyn5
		 ([]
	)

happyReduce_26 = happyReduce 4 5 happyReduction_26
happyReduction_26 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 ([]
	) `HappyStk` happyRest

happyReduce_27 = happySpecReduce_1  6 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn6
		 ([]
	)

happyReduce_28 = happySpecReduce_3  6 happyReduction_28
happyReduction_28 _
	_
	_
	 =  HappyAbsSyn6
		 ([]
	)

happyNewToken action sts stk [] =
	action 53 53 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	(\(Modex _,_)        -> Modex _) -> cont 7;
	(\(Divex _,_)         -> Divex _) -> cont 8;
	(\(Mult _,_)           -> Mult _) -> cont 9;
	(\(Minus _,_)          -> Minus _) -> cont 10;
	(\(CloseP _,_)         -> CloseP _) -> cont 11;
	(\(OpenP _,_)          -> OpenP _) -> cont 12;
	(\(Plus _,_)           -> Plus _) -> cont 13;
	(\(Def _,_)            -> Def _) -> cont 14;
	(\(SemiColon _,_)      -> SemiColon _) -> cont 15;
	(\(Comma _,_)          -> Comma _) -> cont 16;
	(\(Less _,_)           -> Less _) -> cont 17;
	(\(More _,_)           -> More _) -> cont 18;
	(\(Eq _,_)             -> Eq _) -> cont 19;
	(\(Neq _,_)            -> Neq _) -> cont 20;
	(\(Moreq _,_)          -> Moreq _) -> cont 21;
	(\(Lesseq _,_)         -> Lesseq _) -> cont 22;
	(\(Arrow _,_)          -> Arrow _) -> cont 23;
	(\(Not _,_)            -> Not _) -> cont 24;
	(\(And _,_)            -> And _) -> cont 25;
	(\(Or _,_)             -> Or _) -> cont 26;
	(\(Div _,_)            -> Div _) -> cont 27;
	(\(Mod _,_)            -> Mod _) -> cont 28;
	(\(Number _,_)         -> Number _) -> cont 29;
	(\(Boolean _,_)        -> Boolean _) -> cont 30;
	(\(True' _,_)          -> True' _) -> cont 31;
	(\(False' _,_)         -> False' _) -> cont 32;
	(\(With _,_)           -> With _) -> cont 33;
	(\(Do _,_)             -> Do _) -> cont 34;
	(\(End _,_)            -> End _) -> cont 35;
	(\(If _,_)             -> If _) -> cont 36;
	(\(Then _,_)           -> Then _) -> cont 37;
	(\(Else _,_)           -> Else _) -> cont 38;
	(\(While _,_)          -> While _) -> cont 39;
	(\(For _,_)            -> For _) -> cont 40;
	(\(Repeat _,_)         -> Repeat _) -> cont 41;
	(\(Begin _,_)          -> Begin _) -> cont 42;
	(\(Return _,_)         -> Return _) -> cont 43;
	(\(Func _,_)           -> Func _) -> cont 44;
	(\(Times _,_)          -> Times _) -> cont 45;
	(\(Program _,_)        -> Program _) -> cont 46;
	(\(Integer _ ,_)     -> Integer _) -> cont 47;
	(\(Floating _ ,_)    -> FLoating _) -> cont 48;
	(\(Str _,_)            -> Str _) -> cont 49;
	(\(Identifier _,_)     -> Identifier _) -> cont 50;
	(\(WriteLn _,_)        -> WriteLn _) -> cont 51;
	(\(Write _,_)          -> Write _) -> cont 52;
	_ -> happyError' (tk:tks)
	}

happyError_ 53 tk tks = happyError' tks
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

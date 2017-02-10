{-# OPTIONS_GHC -w #-}
module Grammar where
import Lexer
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13
	= HappyTerminal ((Token,AlexPosn))
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13

action_0 (17) = happyShift action_5
action_0 (19) = happyShift action_6
action_0 (54) = happyShift action_7
action_0 (55) = happyShift action_8
action_0 (57) = happyShift action_9
action_0 (4) = happyGoto action_10
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (11) = happyGoto action_4
action_0 _ = happyFail

action_1 (17) = happyShift action_5
action_1 (19) = happyShift action_6
action_1 (54) = happyShift action_7
action_1 (55) = happyShift action_8
action_1 (57) = happyShift action_9
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (11) = happyGoto action_4
action_1 _ = happyFail

action_2 (14) = happyShift action_16
action_2 (15) = happyShift action_17
action_2 (16) = happyShift action_18
action_2 (34) = happyShift action_19
action_2 (35) = happyShift action_20
action_2 _ = happyReduce_1

action_3 _ = happyReduce_4

action_4 _ = happyReduce_14

action_5 (17) = happyShift action_5
action_5 (19) = happyShift action_6
action_5 (54) = happyShift action_7
action_5 (55) = happyShift action_8
action_5 (57) = happyShift action_9
action_5 (6) = happyGoto action_15
action_5 (11) = happyGoto action_4
action_5 _ = happyFail

action_6 (17) = happyShift action_5
action_6 (19) = happyShift action_6
action_6 (54) = happyShift action_7
action_6 (55) = happyShift action_8
action_6 (57) = happyShift action_9
action_6 (4) = happyGoto action_14
action_6 (5) = happyGoto action_2
action_6 (6) = happyGoto action_3
action_6 (11) = happyGoto action_4
action_6 _ = happyFail

action_7 _ = happyReduce_12

action_8 _ = happyReduce_13

action_9 (19) = happyShift action_13
action_9 _ = happyReduce_15

action_10 (17) = happyShift action_11
action_10 (20) = happyShift action_12
action_10 (60) = happyAccept
action_10 _ = happyFail

action_11 (17) = happyShift action_5
action_11 (19) = happyShift action_6
action_11 (54) = happyShift action_7
action_11 (55) = happyShift action_8
action_11 (57) = happyShift action_9
action_11 (5) = happyGoto action_42
action_11 (6) = happyGoto action_3
action_11 (11) = happyGoto action_4
action_11 _ = happyFail

action_12 (17) = happyShift action_5
action_12 (19) = happyShift action_6
action_12 (54) = happyShift action_7
action_12 (55) = happyShift action_8
action_12 (57) = happyShift action_9
action_12 (5) = happyGoto action_41
action_12 (6) = happyGoto action_3
action_12 (11) = happyGoto action_4
action_12 _ = happyFail

action_13 (17) = happyShift action_5
action_13 (18) = happyShift action_35
action_13 (19) = happyShift action_36
action_13 (31) = happyShift action_37
action_13 (38) = happyShift action_38
action_13 (39) = happyShift action_39
action_13 (54) = happyShift action_7
action_13 (55) = happyShift action_8
action_13 (57) = happyShift action_40
action_13 (4) = happyGoto action_27
action_13 (5) = happyGoto action_2
action_13 (6) = happyGoto action_3
action_13 (7) = happyGoto action_28
action_13 (8) = happyGoto action_29
action_13 (9) = happyGoto action_30
action_13 (10) = happyGoto action_31
action_13 (11) = happyGoto action_32
action_13 (12) = happyGoto action_33
action_13 (13) = happyGoto action_34
action_13 _ = happyFail

action_14 (17) = happyShift action_11
action_14 (18) = happyShift action_26
action_14 (20) = happyShift action_12
action_14 _ = happyFail

action_15 _ = happyReduce_11

action_16 (17) = happyShift action_5
action_16 (19) = happyShift action_6
action_16 (54) = happyShift action_7
action_16 (55) = happyShift action_8
action_16 (57) = happyShift action_9
action_16 (6) = happyGoto action_25
action_16 (11) = happyGoto action_4
action_16 _ = happyFail

action_17 (17) = happyShift action_5
action_17 (19) = happyShift action_6
action_17 (54) = happyShift action_7
action_17 (55) = happyShift action_8
action_17 (57) = happyShift action_9
action_17 (6) = happyGoto action_24
action_17 (11) = happyGoto action_4
action_17 _ = happyFail

action_18 (17) = happyShift action_5
action_18 (19) = happyShift action_6
action_18 (54) = happyShift action_7
action_18 (55) = happyShift action_8
action_18 (57) = happyShift action_9
action_18 (6) = happyGoto action_23
action_18 (11) = happyGoto action_4
action_18 _ = happyFail

action_19 (17) = happyShift action_5
action_19 (19) = happyShift action_6
action_19 (54) = happyShift action_7
action_19 (55) = happyShift action_8
action_19 (57) = happyShift action_9
action_19 (6) = happyGoto action_22
action_19 (11) = happyGoto action_4
action_19 _ = happyFail

action_20 (17) = happyShift action_5
action_20 (19) = happyShift action_6
action_20 (54) = happyShift action_7
action_20 (55) = happyShift action_8
action_20 (57) = happyShift action_9
action_20 (6) = happyGoto action_21
action_20 (11) = happyGoto action_4
action_20 _ = happyFail

action_21 _ = happyReduce_9

action_22 _ = happyReduce_8

action_23 _ = happyReduce_5

action_24 _ = happyReduce_6

action_25 _ = happyReduce_7

action_26 _ = happyReduce_10

action_27 (17) = happyShift action_11
action_27 (20) = happyShift action_12
action_27 (24) = happyShift action_56
action_27 (25) = happyShift action_57
action_27 (28) = happyShift action_58
action_27 (29) = happyShift action_59
action_27 _ = happyReduce_38

action_28 (26) = happyShift action_53
action_28 (27) = happyShift action_54
action_28 (33) = happyShift action_55
action_28 _ = happyReduce_37

action_29 (32) = happyShift action_52
action_29 _ = happyReduce_16

action_30 _ = happyReduce_18

action_31 _ = happyReduce_20

action_32 (18) = happyReduce_40
action_32 (23) = happyReduce_40
action_32 (26) = happyReduce_31
action_32 (27) = happyReduce_31
action_32 (32) = happyReduce_31
action_32 (33) = happyReduce_31
action_32 _ = happyReduce_14

action_33 (18) = happyShift action_50
action_33 (23) = happyShift action_51
action_33 _ = happyFail

action_34 _ = happyReduce_35

action_35 _ = happyReduce_33

action_36 (17) = happyShift action_5
action_36 (19) = happyShift action_36
action_36 (31) = happyShift action_37
action_36 (38) = happyShift action_38
action_36 (39) = happyShift action_39
action_36 (54) = happyShift action_7
action_36 (55) = happyShift action_8
action_36 (57) = happyShift action_47
action_36 (4) = happyGoto action_48
action_36 (5) = happyGoto action_2
action_36 (6) = happyGoto action_3
action_36 (7) = happyGoto action_49
action_36 (8) = happyGoto action_29
action_36 (9) = happyGoto action_30
action_36 (10) = happyGoto action_31
action_36 (11) = happyGoto action_46
action_36 _ = happyFail

action_37 (17) = happyShift action_5
action_37 (19) = happyShift action_36
action_37 (31) = happyShift action_37
action_37 (38) = happyShift action_38
action_37 (39) = happyShift action_39
action_37 (54) = happyShift action_7
action_37 (55) = happyShift action_8
action_37 (57) = happyShift action_47
action_37 (4) = happyGoto action_43
action_37 (5) = happyGoto action_2
action_37 (6) = happyGoto action_3
action_37 (7) = happyGoto action_44
action_37 (8) = happyGoto action_29
action_37 (9) = happyGoto action_45
action_37 (10) = happyGoto action_31
action_37 (11) = happyGoto action_46
action_37 _ = happyFail

action_38 _ = happyReduce_23

action_39 _ = happyReduce_24

action_40 (18) = happyReduce_39
action_40 (19) = happyShift action_13
action_40 (23) = happyReduce_39
action_40 (26) = happyReduce_32
action_40 (27) = happyReduce_32
action_40 (32) = happyReduce_32
action_40 (33) = happyReduce_32
action_40 _ = happyReduce_15

action_41 (14) = happyShift action_16
action_41 (15) = happyShift action_17
action_41 (16) = happyShift action_18
action_41 (34) = happyShift action_19
action_41 (35) = happyShift action_20
action_41 _ = happyReduce_2

action_42 (14) = happyShift action_16
action_42 (15) = happyShift action_17
action_42 (16) = happyShift action_18
action_42 (34) = happyShift action_19
action_42 (35) = happyShift action_20
action_42 _ = happyReduce_3

action_43 (17) = happyShift action_11
action_43 (20) = happyShift action_12
action_43 (24) = happyShift action_56
action_43 (25) = happyShift action_57
action_43 (28) = happyShift action_58
action_43 (29) = happyShift action_59
action_43 _ = happyFail

action_44 (26) = happyShift action_53
action_44 (27) = happyShift action_54
action_44 (33) = happyShift action_55
action_44 _ = happyFail

action_45 (26) = happyReduce_21
action_45 (27) = happyReduce_21
action_45 (32) = happyReduce_21
action_45 (33) = happyReduce_21
action_45 _ = happyReduce_21

action_46 (18) = happyReduce_31
action_46 (23) = happyReduce_31
action_46 (26) = happyReduce_31
action_46 (27) = happyReduce_31
action_46 (32) = happyReduce_31
action_46 (33) = happyReduce_31
action_46 _ = happyReduce_14

action_47 (18) = happyReduce_32
action_47 (19) = happyShift action_13
action_47 (23) = happyReduce_32
action_47 (26) = happyReduce_32
action_47 (27) = happyReduce_32
action_47 (32) = happyReduce_32
action_47 (33) = happyReduce_32
action_47 _ = happyReduce_15

action_48 (17) = happyShift action_11
action_48 (18) = happyShift action_26
action_48 (20) = happyShift action_12
action_48 (24) = happyShift action_56
action_48 (25) = happyShift action_57
action_48 (28) = happyShift action_58
action_48 (29) = happyShift action_59
action_48 _ = happyFail

action_49 (18) = happyShift action_69
action_49 (26) = happyShift action_53
action_49 (27) = happyShift action_54
action_49 (33) = happyShift action_55
action_49 _ = happyFail

action_50 _ = happyReduce_34

action_51 (17) = happyShift action_5
action_51 (19) = happyShift action_36
action_51 (31) = happyShift action_37
action_51 (38) = happyShift action_38
action_51 (39) = happyShift action_39
action_51 (54) = happyShift action_7
action_51 (55) = happyShift action_8
action_51 (57) = happyShift action_40
action_51 (4) = happyGoto action_27
action_51 (5) = happyGoto action_2
action_51 (6) = happyGoto action_3
action_51 (7) = happyGoto action_28
action_51 (8) = happyGoto action_29
action_51 (9) = happyGoto action_30
action_51 (10) = happyGoto action_31
action_51 (11) = happyGoto action_32
action_51 (13) = happyGoto action_68
action_51 _ = happyFail

action_52 (17) = happyShift action_5
action_52 (19) = happyShift action_36
action_52 (31) = happyShift action_37
action_52 (38) = happyShift action_38
action_52 (39) = happyShift action_39
action_52 (54) = happyShift action_7
action_52 (55) = happyShift action_8
action_52 (57) = happyShift action_47
action_52 (4) = happyGoto action_43
action_52 (5) = happyGoto action_2
action_52 (6) = happyGoto action_3
action_52 (7) = happyGoto action_44
action_52 (8) = happyGoto action_29
action_52 (9) = happyGoto action_67
action_52 (10) = happyGoto action_31
action_52 (11) = happyGoto action_46
action_52 _ = happyFail

action_53 (17) = happyShift action_5
action_53 (19) = happyShift action_36
action_53 (31) = happyShift action_37
action_53 (38) = happyShift action_38
action_53 (39) = happyShift action_39
action_53 (54) = happyShift action_7
action_53 (55) = happyShift action_8
action_53 (57) = happyShift action_47
action_53 (4) = happyGoto action_43
action_53 (5) = happyGoto action_2
action_53 (6) = happyGoto action_3
action_53 (7) = happyGoto action_66
action_53 (8) = happyGoto action_29
action_53 (9) = happyGoto action_30
action_53 (10) = happyGoto action_31
action_53 (11) = happyGoto action_46
action_53 _ = happyFail

action_54 (17) = happyShift action_5
action_54 (19) = happyShift action_36
action_54 (31) = happyShift action_37
action_54 (38) = happyShift action_38
action_54 (39) = happyShift action_39
action_54 (54) = happyShift action_7
action_54 (55) = happyShift action_8
action_54 (57) = happyShift action_47
action_54 (4) = happyGoto action_43
action_54 (5) = happyGoto action_2
action_54 (6) = happyGoto action_3
action_54 (7) = happyGoto action_65
action_54 (8) = happyGoto action_29
action_54 (9) = happyGoto action_30
action_54 (10) = happyGoto action_31
action_54 (11) = happyGoto action_46
action_54 _ = happyFail

action_55 (17) = happyShift action_5
action_55 (19) = happyShift action_36
action_55 (31) = happyShift action_37
action_55 (38) = happyShift action_38
action_55 (39) = happyShift action_39
action_55 (54) = happyShift action_7
action_55 (55) = happyShift action_8
action_55 (57) = happyShift action_47
action_55 (4) = happyGoto action_43
action_55 (5) = happyGoto action_2
action_55 (6) = happyGoto action_3
action_55 (7) = happyGoto action_44
action_55 (8) = happyGoto action_64
action_55 (9) = happyGoto action_30
action_55 (10) = happyGoto action_31
action_55 (11) = happyGoto action_46
action_55 _ = happyFail

action_56 (17) = happyShift action_5
action_56 (19) = happyShift action_6
action_56 (54) = happyShift action_7
action_56 (55) = happyShift action_8
action_56 (57) = happyShift action_9
action_56 (4) = happyGoto action_63
action_56 (5) = happyGoto action_2
action_56 (6) = happyGoto action_3
action_56 (11) = happyGoto action_4
action_56 _ = happyFail

action_57 (17) = happyShift action_5
action_57 (19) = happyShift action_6
action_57 (54) = happyShift action_7
action_57 (55) = happyShift action_8
action_57 (57) = happyShift action_9
action_57 (4) = happyGoto action_62
action_57 (5) = happyGoto action_2
action_57 (6) = happyGoto action_3
action_57 (11) = happyGoto action_4
action_57 _ = happyFail

action_58 (17) = happyShift action_5
action_58 (19) = happyShift action_6
action_58 (54) = happyShift action_7
action_58 (55) = happyShift action_8
action_58 (57) = happyShift action_9
action_58 (4) = happyGoto action_61
action_58 (5) = happyGoto action_2
action_58 (6) = happyGoto action_3
action_58 (11) = happyGoto action_4
action_58 _ = happyFail

action_59 (17) = happyShift action_5
action_59 (19) = happyShift action_6
action_59 (54) = happyShift action_7
action_59 (55) = happyShift action_8
action_59 (57) = happyShift action_9
action_59 (4) = happyGoto action_60
action_59 (5) = happyGoto action_2
action_59 (6) = happyGoto action_3
action_59 (11) = happyGoto action_4
action_59 _ = happyFail

action_60 (17) = happyShift action_11
action_60 (20) = happyShift action_12
action_60 _ = happyReduce_29

action_61 (17) = happyShift action_11
action_61 (20) = happyShift action_12
action_61 _ = happyReduce_30

action_62 (17) = happyShift action_11
action_62 (20) = happyShift action_12
action_62 _ = happyReduce_28

action_63 (17) = happyShift action_11
action_63 (20) = happyShift action_12
action_63 _ = happyReduce_27

action_64 (26) = happyReduce_17
action_64 (27) = happyReduce_17
action_64 (32) = happyShift action_52
action_64 (33) = happyReduce_17
action_64 _ = happyReduce_17

action_65 (26) = happyFail
action_65 (27) = happyFail
action_65 _ = happyReduce_26

action_66 (26) = happyFail
action_66 (27) = happyFail
action_66 _ = happyReduce_25

action_67 (26) = happyReduce_19
action_67 (27) = happyReduce_19
action_67 (32) = happyReduce_19
action_67 (33) = happyReduce_19
action_67 _ = happyReduce_19

action_68 _ = happyReduce_36

action_69 _ = happyReduce_22

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

happyReduce_15 = happySpecReduce_1  6 happyReduction_15
happyReduction_15 _
	 =  HappyAbsSyn6
		 ([]
	)

happyReduce_16 = happySpecReduce_1  7 happyReduction_16
happyReduction_16 _
	 =  HappyAbsSyn7
		 ([]
	)

happyReduce_17 = happySpecReduce_3  7 happyReduction_17
happyReduction_17 _
	_
	_
	 =  HappyAbsSyn7
		 ([]
	)

happyReduce_18 = happySpecReduce_1  8 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn8
		 ([]
	)

happyReduce_19 = happySpecReduce_3  8 happyReduction_19
happyReduction_19 _
	_
	_
	 =  HappyAbsSyn8
		 ([]
	)

happyReduce_20 = happySpecReduce_1  9 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn9
		 ([]
	)

happyReduce_21 = happySpecReduce_2  9 happyReduction_21
happyReduction_21 _
	_
	 =  HappyAbsSyn9
		 ([]
	)

happyReduce_22 = happySpecReduce_3  10 happyReduction_22
happyReduction_22 _
	_
	_
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_23 = happySpecReduce_1  10 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_24 = happySpecReduce_1  10 happyReduction_24
happyReduction_24 _
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

happyReduce_30 = happySpecReduce_3  10 happyReduction_30
happyReduction_30 _
	_
	_
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_31 = happySpecReduce_1  10 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_32 = happySpecReduce_1  10 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_33 = happySpecReduce_3  11 happyReduction_33
happyReduction_33 _
	_
	_
	 =  HappyAbsSyn11
		 ([]
	)

happyReduce_34 = happyReduce 4 11 happyReduction_34
happyReduction_34 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 ([]
	) `HappyStk` happyRest

happyReduce_35 = happySpecReduce_1  12 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn12
		 ([]
	)

happyReduce_36 = happySpecReduce_3  12 happyReduction_36
happyReduction_36 _
	_
	_
	 =  HappyAbsSyn12
		 ([]
	)

happyReduce_37 = happySpecReduce_1  13 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn13
		 ([]
	)

happyReduce_38 = happySpecReduce_1  13 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn13
		 ([]
	)

happyReduce_39 = happySpecReduce_1  13 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn13
		 ([]
	)

happyReduce_40 = happySpecReduce_1  13 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn13
		 ([]
	)

happyNewToken action sts stk [] =
	action 60 60 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	(\(Modex,_)        -> Modex) -> cont 14;
	(\Divex,_)         -> Divex) -> cont 15;
	(Mult,_)           -> Mult) -> cont 16;
	(Minus,_)          -> Minus) -> cont 17;
	(CloseP,_)         -> CloseP) -> cont 18;
	(OpenP,_)          -> OpenP) -> cont 19;
	(Plus,_)           -> Plus) -> cont 20;
	(Def,_)            -> Def) -> cont 21;
	(SemiColon,_)      -> SemiColon) -> cont 22;
	(Comma,_)          -> Comma) -> cont 23;
	(Less,_)           -> Less) -> cont 24;
	(More,_)           -> More) -> cont 25;
	(Eq,_)             -> Eq) -> cont 26;
	(Neq,_)            -> Neq) -> cont 27;
	(Moreq,_)          -> Moreq) -> cont 28;
	(Lesseq,_)         -> Lesseq) -> cont 29;
	(Arrow,_)          -> Arrow) -> cont 30;
	(Not,_)            -> Not) -> cont 31;
	(And,_)            -> And) -> cont 32;
	(Or,_)             -> Or) -> cont 33;
	(Div,_)            -> Div) -> cont 34;
	(Mod,_)            -> Mod) -> cont 35;
	(Number,_)         -> Number) -> cont 36;
	(Boolean,_)        -> Boolean) -> cont 37;
	(True',_)          -> True') -> cont 38;
	(False',_)         -> False') -> cont 39;
	(With,_)           -> With) -> cont 40;
	(Do,_)             -> Do) -> cont 41;
	(End,_)            -> End) -> cont 42;
	(If,_)             -> If) -> cont 43;
	(Then,_)           -> Then) -> cont 44;
	(Else,_)           -> Else) -> cont 45;
	(While,_)          -> While) -> cont 46;
	(For,_)            -> For) -> cont 47;
	(Repeat,_)         -> Repeat) -> cont 48;
	(Begin,_)          -> Begin) -> cont 49;
	(Return,_)         -> Return) -> cont 50;
	(Func,_)           -> Func) -> cont 51;
	(Times,_)          -> Times) -> cont 52;
	(Program,_)        -> Program) -> cont 53;
	(Integer,_)        -> Integer) -> cont 54;
	(Floating,_)       -> FLoating) -> cont 55;
	(Str,_)            -> Str) -> cont 56;
	(Identifier,_)     -> Identifier) -> cont 57;
	(WriteLn,_)        -> WriteLn) -> cont 58;
	(Write,_)          -> Write) -> cont 59;
	_ -> happyError' (tk:tks)
	}

happyError_ 60 tk tks = happyError' tks
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

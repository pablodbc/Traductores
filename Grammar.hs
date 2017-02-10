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

action_0 (17) = happyShift action_9
action_0 (19) = happyShift action_10
action_0 (31) = happyShift action_11
action_0 (38) = happyShift action_12
action_0 (39) = happyShift action_13
action_0 (54) = happyShift action_14
action_0 (55) = happyShift action_15
action_0 (57) = happyShift action_19
action_0 (4) = happyGoto action_16
action_0 (5) = happyGoto action_17
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_5
action_0 (9) = happyGoto action_6
action_0 (10) = happyGoto action_7
action_0 (11) = happyGoto action_8
action_0 (12) = happyGoto action_18
action_0 _ = happyFail

action_1 (17) = happyShift action_9
action_1 (19) = happyShift action_10
action_1 (31) = happyShift action_11
action_1 (38) = happyShift action_12
action_1 (39) = happyShift action_13
action_1 (54) = happyShift action_14
action_1 (55) = happyShift action_15
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (8) = happyGoto action_5
action_1 (9) = happyGoto action_6
action_1 (10) = happyGoto action_7
action_1 (11) = happyGoto action_8
action_1 _ = happyFail

action_2 (17) = happyShift action_21
action_2 (20) = happyShift action_22
action_2 (24) = happyShift action_23
action_2 (25) = happyShift action_24
action_2 (26) = happyShift action_25
action_2 (27) = happyShift action_26
action_2 (28) = happyShift action_27
action_2 (29) = happyShift action_28
action_2 _ = happyFail

action_3 (14) = happyShift action_39
action_3 (15) = happyShift action_40
action_3 (16) = happyShift action_41
action_3 (34) = happyShift action_42
action_3 (35) = happyShift action_43
action_3 _ = happyReduce_5

action_4 _ = happyReduce_8

action_5 (26) = happyShift action_36
action_5 (27) = happyShift action_37
action_5 (33) = happyShift action_38
action_5 _ = happyReduce_1

action_6 (32) = happyShift action_35
action_6 _ = happyReduce_18

action_7 _ = happyReduce_20

action_8 _ = happyReduce_22

action_9 (17) = happyShift action_9
action_9 (19) = happyShift action_34
action_9 (54) = happyShift action_14
action_9 (55) = happyShift action_15
action_9 (7) = happyGoto action_33
action_9 _ = happyFail

action_10 (17) = happyShift action_9
action_10 (19) = happyShift action_10
action_10 (31) = happyShift action_11
action_10 (38) = happyShift action_12
action_10 (39) = happyShift action_13
action_10 (54) = happyShift action_14
action_10 (55) = happyShift action_15
action_10 (5) = happyGoto action_31
action_10 (6) = happyGoto action_3
action_10 (7) = happyGoto action_4
action_10 (8) = happyGoto action_32
action_10 (9) = happyGoto action_6
action_10 (10) = happyGoto action_7
action_10 (11) = happyGoto action_8
action_10 _ = happyFail

action_11 (17) = happyShift action_9
action_11 (19) = happyShift action_10
action_11 (31) = happyShift action_11
action_11 (38) = happyShift action_12
action_11 (39) = happyShift action_13
action_11 (54) = happyShift action_14
action_11 (55) = happyShift action_15
action_11 (5) = happyGoto action_2
action_11 (6) = happyGoto action_3
action_11 (7) = happyGoto action_4
action_11 (8) = happyGoto action_29
action_11 (9) = happyGoto action_6
action_11 (10) = happyGoto action_30
action_11 (11) = happyGoto action_8
action_11 _ = happyFail

action_12 _ = happyReduce_25

action_13 _ = happyReduce_26

action_14 _ = happyReduce_16

action_15 _ = happyReduce_17

action_16 (60) = happyAccept
action_16 _ = happyFail

action_17 (17) = happyShift action_21
action_17 (20) = happyShift action_22
action_17 (24) = happyShift action_23
action_17 (25) = happyShift action_24
action_17 (26) = happyShift action_25
action_17 (27) = happyShift action_26
action_17 (28) = happyShift action_27
action_17 (29) = happyShift action_28
action_17 _ = happyReduce_2

action_18 _ = happyReduce_4

action_19 (19) = happyShift action_20
action_19 _ = happyReduce_3

action_20 (17) = happyShift action_9
action_20 (18) = happyShift action_66
action_20 (19) = happyShift action_10
action_20 (31) = happyShift action_11
action_20 (38) = happyShift action_12
action_20 (39) = happyShift action_13
action_20 (54) = happyShift action_14
action_20 (55) = happyShift action_15
action_20 (57) = happyShift action_19
action_20 (4) = happyGoto action_64
action_20 (5) = happyGoto action_17
action_20 (6) = happyGoto action_3
action_20 (7) = happyGoto action_4
action_20 (8) = happyGoto action_5
action_20 (9) = happyGoto action_6
action_20 (10) = happyGoto action_7
action_20 (11) = happyGoto action_8
action_20 (12) = happyGoto action_18
action_20 (13) = happyGoto action_65
action_20 _ = happyFail

action_21 (17) = happyShift action_9
action_21 (19) = happyShift action_34
action_21 (54) = happyShift action_14
action_21 (55) = happyShift action_15
action_21 (6) = happyGoto action_63
action_21 (7) = happyGoto action_4
action_21 _ = happyFail

action_22 (17) = happyShift action_9
action_22 (19) = happyShift action_34
action_22 (54) = happyShift action_14
action_22 (55) = happyShift action_15
action_22 (6) = happyGoto action_62
action_22 (7) = happyGoto action_4
action_22 _ = happyFail

action_23 (17) = happyShift action_9
action_23 (19) = happyShift action_34
action_23 (54) = happyShift action_14
action_23 (55) = happyShift action_15
action_23 (5) = happyGoto action_61
action_23 (6) = happyGoto action_3
action_23 (7) = happyGoto action_4
action_23 _ = happyFail

action_24 (17) = happyShift action_9
action_24 (19) = happyShift action_34
action_24 (54) = happyShift action_14
action_24 (55) = happyShift action_15
action_24 (5) = happyGoto action_60
action_24 (6) = happyGoto action_3
action_24 (7) = happyGoto action_4
action_24 _ = happyFail

action_25 (17) = happyShift action_9
action_25 (19) = happyShift action_34
action_25 (54) = happyShift action_14
action_25 (55) = happyShift action_15
action_25 (5) = happyGoto action_59
action_25 (6) = happyGoto action_3
action_25 (7) = happyGoto action_4
action_25 _ = happyFail

action_26 (17) = happyShift action_9
action_26 (19) = happyShift action_34
action_26 (54) = happyShift action_14
action_26 (55) = happyShift action_15
action_26 (5) = happyGoto action_58
action_26 (6) = happyGoto action_3
action_26 (7) = happyGoto action_4
action_26 _ = happyFail

action_27 (17) = happyShift action_9
action_27 (19) = happyShift action_34
action_27 (54) = happyShift action_14
action_27 (55) = happyShift action_15
action_27 (5) = happyGoto action_57
action_27 (6) = happyGoto action_3
action_27 (7) = happyGoto action_4
action_27 _ = happyFail

action_28 (17) = happyShift action_9
action_28 (19) = happyShift action_34
action_28 (54) = happyShift action_14
action_28 (55) = happyShift action_15
action_28 (5) = happyGoto action_56
action_28 (6) = happyGoto action_3
action_28 (7) = happyGoto action_4
action_28 _ = happyFail

action_29 (26) = happyShift action_36
action_29 (27) = happyShift action_37
action_29 (33) = happyShift action_38
action_29 _ = happyFail

action_30 (26) = happyReduce_23
action_30 (27) = happyReduce_23
action_30 (32) = happyReduce_23
action_30 (33) = happyReduce_23
action_30 _ = happyReduce_23

action_31 (17) = happyShift action_21
action_31 (18) = happyShift action_55
action_31 (20) = happyShift action_22
action_31 (24) = happyShift action_23
action_31 (25) = happyShift action_24
action_31 (26) = happyShift action_25
action_31 (27) = happyShift action_26
action_31 (28) = happyShift action_27
action_31 (29) = happyShift action_28
action_31 _ = happyFail

action_32 (18) = happyShift action_54
action_32 (26) = happyShift action_36
action_32 (27) = happyShift action_37
action_32 (33) = happyShift action_38
action_32 _ = happyFail

action_33 _ = happyReduce_15

action_34 (17) = happyShift action_9
action_34 (19) = happyShift action_34
action_34 (54) = happyShift action_14
action_34 (55) = happyShift action_15
action_34 (5) = happyGoto action_53
action_34 (6) = happyGoto action_3
action_34 (7) = happyGoto action_4
action_34 _ = happyFail

action_35 (17) = happyShift action_9
action_35 (19) = happyShift action_10
action_35 (31) = happyShift action_11
action_35 (38) = happyShift action_12
action_35 (39) = happyShift action_13
action_35 (54) = happyShift action_14
action_35 (55) = happyShift action_15
action_35 (5) = happyGoto action_2
action_35 (6) = happyGoto action_3
action_35 (7) = happyGoto action_4
action_35 (8) = happyGoto action_29
action_35 (9) = happyGoto action_6
action_35 (10) = happyGoto action_52
action_35 (11) = happyGoto action_8
action_35 _ = happyFail

action_36 (17) = happyShift action_9
action_36 (19) = happyShift action_10
action_36 (31) = happyShift action_11
action_36 (38) = happyShift action_12
action_36 (39) = happyShift action_13
action_36 (54) = happyShift action_14
action_36 (55) = happyShift action_15
action_36 (5) = happyGoto action_2
action_36 (6) = happyGoto action_3
action_36 (7) = happyGoto action_4
action_36 (8) = happyGoto action_51
action_36 (9) = happyGoto action_6
action_36 (10) = happyGoto action_7
action_36 (11) = happyGoto action_8
action_36 _ = happyFail

action_37 (17) = happyShift action_9
action_37 (19) = happyShift action_10
action_37 (31) = happyShift action_11
action_37 (38) = happyShift action_12
action_37 (39) = happyShift action_13
action_37 (54) = happyShift action_14
action_37 (55) = happyShift action_15
action_37 (5) = happyGoto action_2
action_37 (6) = happyGoto action_3
action_37 (7) = happyGoto action_4
action_37 (8) = happyGoto action_50
action_37 (9) = happyGoto action_6
action_37 (10) = happyGoto action_7
action_37 (11) = happyGoto action_8
action_37 _ = happyFail

action_38 (17) = happyShift action_9
action_38 (19) = happyShift action_10
action_38 (31) = happyShift action_11
action_38 (38) = happyShift action_12
action_38 (39) = happyShift action_13
action_38 (54) = happyShift action_14
action_38 (55) = happyShift action_15
action_38 (5) = happyGoto action_2
action_38 (6) = happyGoto action_3
action_38 (7) = happyGoto action_4
action_38 (8) = happyGoto action_29
action_38 (9) = happyGoto action_49
action_38 (10) = happyGoto action_7
action_38 (11) = happyGoto action_8
action_38 _ = happyFail

action_39 (17) = happyShift action_9
action_39 (19) = happyShift action_34
action_39 (54) = happyShift action_14
action_39 (55) = happyShift action_15
action_39 (7) = happyGoto action_48
action_39 _ = happyFail

action_40 (17) = happyShift action_9
action_40 (19) = happyShift action_34
action_40 (54) = happyShift action_14
action_40 (55) = happyShift action_15
action_40 (7) = happyGoto action_47
action_40 _ = happyFail

action_41 (17) = happyShift action_9
action_41 (19) = happyShift action_34
action_41 (54) = happyShift action_14
action_41 (55) = happyShift action_15
action_41 (7) = happyGoto action_46
action_41 _ = happyFail

action_42 (17) = happyShift action_9
action_42 (19) = happyShift action_34
action_42 (54) = happyShift action_14
action_42 (55) = happyShift action_15
action_42 (7) = happyGoto action_45
action_42 _ = happyFail

action_43 (17) = happyShift action_9
action_43 (19) = happyShift action_34
action_43 (54) = happyShift action_14
action_43 (55) = happyShift action_15
action_43 (7) = happyGoto action_44
action_43 _ = happyFail

action_44 _ = happyReduce_13

action_45 _ = happyReduce_12

action_46 _ = happyReduce_9

action_47 _ = happyReduce_10

action_48 _ = happyReduce_11

action_49 (26) = happyReduce_19
action_49 (27) = happyReduce_19
action_49 (32) = happyShift action_35
action_49 (33) = happyReduce_19
action_49 _ = happyReduce_19

action_50 (26) = happyFail
action_50 (27) = happyFail
action_50 _ = happyReduce_28

action_51 (26) = happyFail
action_51 (27) = happyFail
action_51 _ = happyReduce_27

action_52 (26) = happyReduce_21
action_52 (27) = happyReduce_21
action_52 (32) = happyReduce_21
action_52 (33) = happyReduce_21
action_52 _ = happyReduce_21

action_53 (17) = happyShift action_21
action_53 (18) = happyShift action_55
action_53 (20) = happyShift action_22
action_53 _ = happyFail

action_54 _ = happyReduce_24

action_55 _ = happyReduce_14

action_56 (17) = happyShift action_21
action_56 (20) = happyShift action_22
action_56 _ = happyReduce_33

action_57 (17) = happyShift action_21
action_57 (20) = happyShift action_22
action_57 _ = happyReduce_34

action_58 (17) = happyShift action_21
action_58 (20) = happyShift action_22
action_58 _ = happyReduce_30

action_59 (17) = happyShift action_21
action_59 (20) = happyShift action_22
action_59 _ = happyReduce_29

action_60 (17) = happyShift action_21
action_60 (20) = happyShift action_22
action_60 _ = happyReduce_32

action_61 (17) = happyShift action_21
action_61 (20) = happyShift action_22
action_61 _ = happyReduce_31

action_62 (14) = happyShift action_39
action_62 (15) = happyShift action_40
action_62 (16) = happyShift action_41
action_62 (34) = happyShift action_42
action_62 (35) = happyShift action_43
action_62 _ = happyReduce_6

action_63 (14) = happyShift action_39
action_63 (15) = happyShift action_40
action_63 (16) = happyShift action_41
action_63 (34) = happyShift action_42
action_63 (35) = happyShift action_43
action_63 _ = happyReduce_7

action_64 _ = happyReduce_37

action_65 (18) = happyShift action_67
action_65 (23) = happyShift action_68
action_65 _ = happyFail

action_66 _ = happyReduce_35

action_67 _ = happyReduce_36

action_68 (17) = happyShift action_9
action_68 (19) = happyShift action_10
action_68 (31) = happyShift action_11
action_68 (38) = happyShift action_12
action_68 (39) = happyShift action_13
action_68 (54) = happyShift action_14
action_68 (55) = happyShift action_15
action_68 (57) = happyShift action_19
action_68 (4) = happyGoto action_69
action_68 (5) = happyGoto action_17
action_68 (6) = happyGoto action_3
action_68 (7) = happyGoto action_4
action_68 (8) = happyGoto action_5
action_68 (9) = happyGoto action_6
action_68 (10) = happyGoto action_7
action_68 (11) = happyGoto action_8
action_68 (12) = happyGoto action_18
action_68 _ = happyFail

action_69 _ = happyReduce_38

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 _
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn4
		 ([]
	)

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 _
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

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 _
	 =  HappyAbsSyn6
		 ([]
	)

happyReduce_9 = happySpecReduce_3  6 happyReduction_9
happyReduction_9 _
	_
	_
	 =  HappyAbsSyn6
		 ([]
	)

happyReduce_10 = happySpecReduce_3  6 happyReduction_10
happyReduction_10 _
	_
	_
	 =  HappyAbsSyn6
		 ([]
	)

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 _
	_
	_
	 =  HappyAbsSyn6
		 ([]
	)

happyReduce_12 = happySpecReduce_3  6 happyReduction_12
happyReduction_12 _
	_
	_
	 =  HappyAbsSyn6
		 ([]
	)

happyReduce_13 = happySpecReduce_3  6 happyReduction_13
happyReduction_13 _
	_
	_
	 =  HappyAbsSyn6
		 ([]
	)

happyReduce_14 = happySpecReduce_3  7 happyReduction_14
happyReduction_14 _
	_
	_
	 =  HappyAbsSyn7
		 ([]
	)

happyReduce_15 = happySpecReduce_2  7 happyReduction_15
happyReduction_15 _
	_
	 =  HappyAbsSyn7
		 ([]
	)

happyReduce_16 = happySpecReduce_1  7 happyReduction_16
happyReduction_16 _
	 =  HappyAbsSyn7
		 ([]
	)

happyReduce_17 = happySpecReduce_1  7 happyReduction_17
happyReduction_17 _
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

happyReduce_21 = happySpecReduce_3  9 happyReduction_21
happyReduction_21 _
	_
	_
	 =  HappyAbsSyn9
		 ([]
	)

happyReduce_22 = happySpecReduce_1  10 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_23 = happySpecReduce_2  10 happyReduction_23
happyReduction_23 _
	_
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_24 = happySpecReduce_3  11 happyReduction_24
happyReduction_24 _
	_
	_
	 =  HappyAbsSyn11
		 ([]
	)

happyReduce_25 = happySpecReduce_1  11 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn11
		 ([]
	)

happyReduce_26 = happySpecReduce_1  11 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn11
		 ([]
	)

happyReduce_27 = happySpecReduce_3  11 happyReduction_27
happyReduction_27 _
	_
	_
	 =  HappyAbsSyn11
		 ([]
	)

happyReduce_28 = happySpecReduce_3  11 happyReduction_28
happyReduction_28 _
	_
	_
	 =  HappyAbsSyn11
		 ([]
	)

happyReduce_29 = happySpecReduce_3  11 happyReduction_29
happyReduction_29 _
	_
	_
	 =  HappyAbsSyn11
		 ([]
	)

happyReduce_30 = happySpecReduce_3  11 happyReduction_30
happyReduction_30 _
	_
	_
	 =  HappyAbsSyn11
		 ([]
	)

happyReduce_31 = happySpecReduce_3  11 happyReduction_31
happyReduction_31 _
	_
	_
	 =  HappyAbsSyn11
		 ([]
	)

happyReduce_32 = happySpecReduce_3  11 happyReduction_32
happyReduction_32 _
	_
	_
	 =  HappyAbsSyn11
		 ([]
	)

happyReduce_33 = happySpecReduce_3  11 happyReduction_33
happyReduction_33 _
	_
	_
	 =  HappyAbsSyn11
		 ([]
	)

happyReduce_34 = happySpecReduce_3  11 happyReduction_34
happyReduction_34 _
	_
	_
	 =  HappyAbsSyn11
		 ([]
	)

happyReduce_35 = happySpecReduce_3  12 happyReduction_35
happyReduction_35 _
	_
	_
	 =  HappyAbsSyn12
		 ([]
	)

happyReduce_36 = happyReduce 4 12 happyReduction_36
happyReduction_36 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 ([]
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_1  13 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn13
		 ([]
	)

happyReduce_38 = happySpecReduce_3  13 happyReduction_38
happyReduction_38 _
	_
	_
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

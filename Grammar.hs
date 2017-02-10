{-# OPTIONS_GHC -w #-}
module Grammar where
import Lexer
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25
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
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19
	| HappyAbsSyn20 t20
	| HappyAbsSyn21 t21
	| HappyAbsSyn22 t22
	| HappyAbsSyn23 t23
	| HappyAbsSyn24 t24
	| HappyAbsSyn25 t25

action_0 (29) = happyShift action_4
action_0 (31) = happyShift action_5
action_0 (43) = happyShift action_6
action_0 (50) = happyShift action_7
action_0 (51) = happyShift action_8
action_0 (66) = happyShift action_9
action_0 (67) = happyShift action_10
action_0 (69) = happyShift action_11
action_0 (4) = happyGoto action_12
action_0 (5) = happyGoto action_3
action_0 _ = happyFail

action_1 (29) = happyShift action_4
action_1 (31) = happyShift action_5
action_1 (43) = happyShift action_6
action_1 (50) = happyShift action_7
action_1 (51) = happyShift action_8
action_1 (66) = happyShift action_9
action_1 (67) = happyShift action_10
action_1 (69) = happyShift action_11
action_1 (4) = happyGoto action_2
action_1 (5) = happyGoto action_3
action_1 _ = happyFail

action_2 (26) = happyShift action_13
action_2 (27) = happyShift action_14
action_2 (28) = happyShift action_15
action_2 (29) = happyShift action_16
action_2 (32) = happyShift action_17
action_2 (36) = happyShift action_18
action_2 (37) = happyShift action_19
action_2 (38) = happyShift action_20
action_2 (39) = happyShift action_21
action_2 (40) = happyShift action_22
action_2 (41) = happyShift action_23
action_2 (44) = happyShift action_24
action_2 (45) = happyShift action_25
action_2 (46) = happyShift action_26
action_2 (47) = happyShift action_27
action_2 _ = happyFail

action_3 _ = happyReduce_24

action_4 (29) = happyShift action_4
action_4 (31) = happyShift action_5
action_4 (43) = happyShift action_6
action_4 (50) = happyShift action_7
action_4 (51) = happyShift action_8
action_4 (66) = happyShift action_9
action_4 (67) = happyShift action_10
action_4 (69) = happyShift action_11
action_4 (4) = happyGoto action_31
action_4 (5) = happyGoto action_3
action_4 _ = happyFail

action_5 (29) = happyShift action_4
action_5 (31) = happyShift action_5
action_5 (43) = happyShift action_6
action_5 (50) = happyShift action_7
action_5 (51) = happyShift action_8
action_5 (66) = happyShift action_9
action_5 (67) = happyShift action_10
action_5 (69) = happyShift action_11
action_5 (4) = happyGoto action_30
action_5 (5) = happyGoto action_3
action_5 _ = happyFail

action_6 (29) = happyShift action_4
action_6 (31) = happyShift action_5
action_6 (43) = happyShift action_6
action_6 (50) = happyShift action_7
action_6 (51) = happyShift action_8
action_6 (66) = happyShift action_9
action_6 (67) = happyShift action_10
action_6 (69) = happyShift action_11
action_6 (4) = happyGoto action_29
action_6 (5) = happyGoto action_3
action_6 _ = happyFail

action_7 _ = happyReduce_21

action_8 _ = happyReduce_22

action_9 _ = happyReduce_19

action_10 _ = happyReduce_20

action_11 (31) = happyShift action_28
action_11 _ = happyReduce_23

action_12 (26) = happyShift action_13
action_12 (27) = happyShift action_14
action_12 (28) = happyShift action_15
action_12 (29) = happyShift action_16
action_12 (32) = happyShift action_17
action_12 (36) = happyShift action_18
action_12 (37) = happyShift action_19
action_12 (38) = happyShift action_20
action_12 (39) = happyShift action_21
action_12 (40) = happyShift action_22
action_12 (41) = happyShift action_23
action_12 (44) = happyShift action_24
action_12 (45) = happyShift action_25
action_12 (46) = happyShift action_26
action_12 (47) = happyShift action_27
action_12 (76) = happyAccept
action_12 _ = happyFail

action_13 (29) = happyShift action_4
action_13 (31) = happyShift action_5
action_13 (43) = happyShift action_6
action_13 (50) = happyShift action_7
action_13 (51) = happyShift action_8
action_13 (66) = happyShift action_9
action_13 (67) = happyShift action_10
action_13 (69) = happyShift action_11
action_13 (4) = happyGoto action_50
action_13 (5) = happyGoto action_3
action_13 _ = happyFail

action_14 (29) = happyShift action_4
action_14 (31) = happyShift action_5
action_14 (43) = happyShift action_6
action_14 (50) = happyShift action_7
action_14 (51) = happyShift action_8
action_14 (66) = happyShift action_9
action_14 (67) = happyShift action_10
action_14 (69) = happyShift action_11
action_14 (4) = happyGoto action_49
action_14 (5) = happyGoto action_3
action_14 _ = happyFail

action_15 (29) = happyShift action_4
action_15 (31) = happyShift action_5
action_15 (43) = happyShift action_6
action_15 (50) = happyShift action_7
action_15 (51) = happyShift action_8
action_15 (66) = happyShift action_9
action_15 (67) = happyShift action_10
action_15 (69) = happyShift action_11
action_15 (4) = happyGoto action_48
action_15 (5) = happyGoto action_3
action_15 _ = happyFail

action_16 (29) = happyShift action_4
action_16 (31) = happyShift action_5
action_16 (43) = happyShift action_6
action_16 (50) = happyShift action_7
action_16 (51) = happyShift action_8
action_16 (66) = happyShift action_9
action_16 (67) = happyShift action_10
action_16 (69) = happyShift action_11
action_16 (4) = happyGoto action_47
action_16 (5) = happyGoto action_3
action_16 _ = happyFail

action_17 (29) = happyShift action_4
action_17 (31) = happyShift action_5
action_17 (43) = happyShift action_6
action_17 (50) = happyShift action_7
action_17 (51) = happyShift action_8
action_17 (66) = happyShift action_9
action_17 (67) = happyShift action_10
action_17 (69) = happyShift action_11
action_17 (4) = happyGoto action_46
action_17 (5) = happyGoto action_3
action_17 _ = happyFail

action_18 (29) = happyShift action_4
action_18 (31) = happyShift action_5
action_18 (43) = happyShift action_6
action_18 (50) = happyShift action_7
action_18 (51) = happyShift action_8
action_18 (66) = happyShift action_9
action_18 (67) = happyShift action_10
action_18 (69) = happyShift action_11
action_18 (4) = happyGoto action_45
action_18 (5) = happyGoto action_3
action_18 _ = happyFail

action_19 (29) = happyShift action_4
action_19 (31) = happyShift action_5
action_19 (43) = happyShift action_6
action_19 (50) = happyShift action_7
action_19 (51) = happyShift action_8
action_19 (66) = happyShift action_9
action_19 (67) = happyShift action_10
action_19 (69) = happyShift action_11
action_19 (4) = happyGoto action_44
action_19 (5) = happyGoto action_3
action_19 _ = happyFail

action_20 (29) = happyShift action_4
action_20 (31) = happyShift action_5
action_20 (43) = happyShift action_6
action_20 (50) = happyShift action_7
action_20 (51) = happyShift action_8
action_20 (66) = happyShift action_9
action_20 (67) = happyShift action_10
action_20 (69) = happyShift action_11
action_20 (4) = happyGoto action_43
action_20 (5) = happyGoto action_3
action_20 _ = happyFail

action_21 (29) = happyShift action_4
action_21 (31) = happyShift action_5
action_21 (43) = happyShift action_6
action_21 (50) = happyShift action_7
action_21 (51) = happyShift action_8
action_21 (66) = happyShift action_9
action_21 (67) = happyShift action_10
action_21 (69) = happyShift action_11
action_21 (4) = happyGoto action_42
action_21 (5) = happyGoto action_3
action_21 _ = happyFail

action_22 (29) = happyShift action_4
action_22 (31) = happyShift action_5
action_22 (43) = happyShift action_6
action_22 (50) = happyShift action_7
action_22 (51) = happyShift action_8
action_22 (66) = happyShift action_9
action_22 (67) = happyShift action_10
action_22 (69) = happyShift action_11
action_22 (4) = happyGoto action_41
action_22 (5) = happyGoto action_3
action_22 _ = happyFail

action_23 (29) = happyShift action_4
action_23 (31) = happyShift action_5
action_23 (43) = happyShift action_6
action_23 (50) = happyShift action_7
action_23 (51) = happyShift action_8
action_23 (66) = happyShift action_9
action_23 (67) = happyShift action_10
action_23 (69) = happyShift action_11
action_23 (4) = happyGoto action_40
action_23 (5) = happyGoto action_3
action_23 _ = happyFail

action_24 (29) = happyShift action_4
action_24 (31) = happyShift action_5
action_24 (43) = happyShift action_6
action_24 (50) = happyShift action_7
action_24 (51) = happyShift action_8
action_24 (66) = happyShift action_9
action_24 (67) = happyShift action_10
action_24 (69) = happyShift action_11
action_24 (4) = happyGoto action_39
action_24 (5) = happyGoto action_3
action_24 _ = happyFail

action_25 (29) = happyShift action_4
action_25 (31) = happyShift action_5
action_25 (43) = happyShift action_6
action_25 (50) = happyShift action_7
action_25 (51) = happyShift action_8
action_25 (66) = happyShift action_9
action_25 (67) = happyShift action_10
action_25 (69) = happyShift action_11
action_25 (4) = happyGoto action_38
action_25 (5) = happyGoto action_3
action_25 _ = happyFail

action_26 (29) = happyShift action_4
action_26 (31) = happyShift action_5
action_26 (43) = happyShift action_6
action_26 (50) = happyShift action_7
action_26 (51) = happyShift action_8
action_26 (66) = happyShift action_9
action_26 (67) = happyShift action_10
action_26 (69) = happyShift action_11
action_26 (4) = happyGoto action_37
action_26 (5) = happyGoto action_3
action_26 _ = happyFail

action_27 (29) = happyShift action_4
action_27 (31) = happyShift action_5
action_27 (43) = happyShift action_6
action_27 (50) = happyShift action_7
action_27 (51) = happyShift action_8
action_27 (66) = happyShift action_9
action_27 (67) = happyShift action_10
action_27 (69) = happyShift action_11
action_27 (4) = happyGoto action_36
action_27 (5) = happyGoto action_3
action_27 _ = happyFail

action_28 (29) = happyShift action_4
action_28 (30) = happyShift action_35
action_28 (31) = happyShift action_5
action_28 (43) = happyShift action_6
action_28 (50) = happyShift action_7
action_28 (51) = happyShift action_8
action_28 (66) = happyShift action_9
action_28 (67) = happyShift action_10
action_28 (69) = happyShift action_11
action_28 (4) = happyGoto action_33
action_28 (5) = happyGoto action_3
action_28 (6) = happyGoto action_34
action_28 _ = happyFail

action_29 _ = happyReduce_17

action_30 (26) = happyShift action_13
action_30 (27) = happyShift action_14
action_30 (28) = happyShift action_15
action_30 (29) = happyShift action_16
action_30 (30) = happyShift action_32
action_30 (32) = happyShift action_17
action_30 (36) = happyShift action_18
action_30 (37) = happyShift action_19
action_30 (38) = happyShift action_20
action_30 (39) = happyShift action_21
action_30 (40) = happyShift action_22
action_30 (41) = happyShift action_23
action_30 (44) = happyShift action_24
action_30 (45) = happyShift action_25
action_30 (46) = happyShift action_26
action_30 (47) = happyShift action_27
action_30 _ = happyFail

action_31 _ = happyReduce_18

action_32 _ = happyReduce_16

action_33 (26) = happyShift action_13
action_33 (27) = happyShift action_14
action_33 (28) = happyShift action_15
action_33 (29) = happyShift action_16
action_33 (32) = happyShift action_17
action_33 (36) = happyShift action_18
action_33 (37) = happyShift action_19
action_33 (38) = happyShift action_20
action_33 (39) = happyShift action_21
action_33 (40) = happyShift action_22
action_33 (41) = happyShift action_23
action_33 (44) = happyShift action_24
action_33 (45) = happyShift action_25
action_33 (46) = happyShift action_26
action_33 (47) = happyShift action_27
action_33 _ = happyReduce_27

action_34 (30) = happyShift action_51
action_34 (35) = happyShift action_52
action_34 _ = happyFail

action_35 _ = happyReduce_25

action_36 (27) = happyShift action_14
action_36 (28) = happyShift action_15
action_36 (36) = happyShift action_18
action_36 (37) = happyShift action_19
action_36 (38) = happyShift action_20
action_36 (39) = happyShift action_21
action_36 (40) = happyShift action_22
action_36 (41) = happyShift action_23
action_36 (44) = happyShift action_24
action_36 (46) = happyShift action_26
action_36 _ = happyReduce_15

action_37 (36) = happyShift action_18
action_37 (37) = happyShift action_19
action_37 (38) = happyShift action_20
action_37 (39) = happyShift action_21
action_37 (40) = happyShift action_22
action_37 (41) = happyShift action_23
action_37 _ = happyReduce_14

action_38 (26) = happyShift action_13
action_38 (27) = happyShift action_14
action_38 (28) = happyShift action_15
action_38 (36) = happyShift action_18
action_38 (37) = happyShift action_19
action_38 (38) = happyShift action_20
action_38 (39) = happyShift action_21
action_38 (40) = happyShift action_22
action_38 (41) = happyShift action_23
action_38 (44) = happyShift action_24
action_38 (46) = happyShift action_26
action_38 (47) = happyShift action_27
action_38 _ = happyReduce_1

action_39 (36) = happyShift action_18
action_39 (37) = happyShift action_19
action_39 (38) = happyShift action_20
action_39 (39) = happyShift action_21
action_39 (40) = happyShift action_22
action_39 (41) = happyShift action_23
action_39 _ = happyReduce_2

action_40 (36) = happyFail
action_40 (37) = happyFail
action_40 (38) = happyShift action_20
action_40 (39) = happyShift action_21
action_40 (40) = happyFail
action_40 (41) = happyFail
action_40 _ = happyReduce_7

action_41 (36) = happyFail
action_41 (37) = happyFail
action_41 (38) = happyShift action_20
action_41 (39) = happyShift action_21
action_41 (40) = happyFail
action_41 (41) = happyFail
action_41 _ = happyReduce_8

action_42 (38) = happyFail
action_42 (39) = happyFail
action_42 _ = happyReduce_4

action_43 (38) = happyFail
action_43 (39) = happyFail
action_43 _ = happyReduce_3

action_44 (36) = happyFail
action_44 (37) = happyFail
action_44 (38) = happyShift action_20
action_44 (39) = happyShift action_21
action_44 (40) = happyFail
action_44 (41) = happyFail
action_44 _ = happyReduce_6

action_45 (36) = happyFail
action_45 (37) = happyFail
action_45 (38) = happyShift action_20
action_45 (39) = happyShift action_21
action_45 (40) = happyFail
action_45 (41) = happyFail
action_45 _ = happyReduce_5

action_46 (26) = happyShift action_13
action_46 (27) = happyShift action_14
action_46 (28) = happyShift action_15
action_46 (36) = happyShift action_18
action_46 (37) = happyShift action_19
action_46 (38) = happyShift action_20
action_46 (39) = happyShift action_21
action_46 (40) = happyShift action_22
action_46 (41) = happyShift action_23
action_46 (44) = happyShift action_24
action_46 (46) = happyShift action_26
action_46 (47) = happyShift action_27
action_46 _ = happyReduce_9

action_47 (26) = happyShift action_13
action_47 (27) = happyShift action_14
action_47 (28) = happyShift action_15
action_47 (36) = happyShift action_18
action_47 (37) = happyShift action_19
action_47 (38) = happyShift action_20
action_47 (39) = happyShift action_21
action_47 (40) = happyShift action_22
action_47 (41) = happyShift action_23
action_47 (44) = happyShift action_24
action_47 (46) = happyShift action_26
action_47 (47) = happyShift action_27
action_47 _ = happyReduce_10

action_48 (36) = happyShift action_18
action_48 (37) = happyShift action_19
action_48 (38) = happyShift action_20
action_48 (39) = happyShift action_21
action_48 (40) = happyShift action_22
action_48 (41) = happyShift action_23
action_48 _ = happyReduce_11

action_49 (36) = happyShift action_18
action_49 (37) = happyShift action_19
action_49 (38) = happyShift action_20
action_49 (39) = happyShift action_21
action_49 (40) = happyShift action_22
action_49 (41) = happyShift action_23
action_49 _ = happyReduce_12

action_50 (27) = happyShift action_14
action_50 (28) = happyShift action_15
action_50 (36) = happyShift action_18
action_50 (37) = happyShift action_19
action_50 (38) = happyShift action_20
action_50 (39) = happyShift action_21
action_50 (40) = happyShift action_22
action_50 (41) = happyShift action_23
action_50 (44) = happyShift action_24
action_50 (46) = happyShift action_26
action_50 _ = happyReduce_13

action_51 _ = happyReduce_26

action_52 (29) = happyShift action_4
action_52 (31) = happyShift action_5
action_52 (43) = happyShift action_6
action_52 (50) = happyShift action_7
action_52 (51) = happyShift action_8
action_52 (66) = happyShift action_9
action_52 (67) = happyShift action_10
action_52 (69) = happyShift action_11
action_52 (4) = happyGoto action_53
action_52 (5) = happyGoto action_3
action_52 _ = happyFail

action_53 (26) = happyShift action_13
action_53 (27) = happyShift action_14
action_53 (28) = happyShift action_15
action_53 (29) = happyShift action_16
action_53 (32) = happyShift action_17
action_53 (36) = happyShift action_18
action_53 (37) = happyShift action_19
action_53 (38) = happyShift action_20
action_53 (39) = happyShift action_21
action_53 (40) = happyShift action_22
action_53 (41) = happyShift action_23
action_53 (44) = happyShift action_24
action_53 (45) = happyShift action_25
action_53 (46) = happyShift action_26
action_53 (47) = happyShift action_27
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

happyReduce_29 = happySpecReduce_2  7 happyReduction_29
happyReduction_29 _
	_
	 =  HappyAbsSyn7
		 ([]
	)

happyReduce_30 = happySpecReduce_2  8 happyReduction_30
happyReduction_30 _
	_
	 =  HappyAbsSyn8
		 ([]
	)

happyReduce_31 = happySpecReduce_2  9 happyReduction_31
happyReduction_31 _
	_
	 =  HappyAbsSyn9
		 ([]
	)

happyReduce_32 = happySpecReduce_1  10 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_33 = happySpecReduce_1  10 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn10
		 ([]
	)

happyReduce_34 = happySpecReduce_1  11 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn11
		 ([]
	)

happyReduce_35 = happySpecReduce_3  11 happyReduction_35
happyReduction_35 _
	_
	_
	 =  HappyAbsSyn11
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

happyReduce_39 = happySpecReduce_1  14 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn14
		 ([]
	)

happyReduce_40 = happySpecReduce_3  14 happyReduction_40
happyReduction_40 _
	_
	_
	 =  HappyAbsSyn14
		 ([]
	)

happyReduce_41 = happySpecReduce_2  15 happyReduction_41
happyReduction_41 _
	_
	 =  HappyAbsSyn15
		 ([]
	)

happyReduce_42 = happySpecReduce_2  15 happyReduction_42
happyReduction_42 _
	_
	 =  HappyAbsSyn15
		 ([]
	)

happyReduce_43 = happySpecReduce_2  16 happyReduction_43
happyReduction_43 _
	_
	 =  HappyAbsSyn16
		 ([]
	)

happyReduce_44 = happySpecReduce_3  16 happyReduction_44
happyReduction_44 _
	_
	_
	 =  HappyAbsSyn16
		 ([]
	)

happyReduce_45 = happySpecReduce_1  17 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn17
		 ([]
	)

happyReduce_46 = happySpecReduce_1  17 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn17
		 ([]
	)

happyReduce_47 = happySpecReduce_1  17 happyReduction_47
happyReduction_47 _
	 =  HappyAbsSyn17
		 ([]
	)

happyReduce_48 = happySpecReduce_1  17 happyReduction_48
happyReduction_48 _
	 =  HappyAbsSyn17
		 ([]
	)

happyReduce_49 = happySpecReduce_1  17 happyReduction_49
happyReduction_49 _
	 =  HappyAbsSyn17
		 ([]
	)

happyReduce_50 = happySpecReduce_2  18 happyReduction_50
happyReduction_50 _
	_
	 =  HappyAbsSyn18
		 ([]
	)

happyReduce_51 = happySpecReduce_3  18 happyReduction_51
happyReduction_51 _
	_
	_
	 =  HappyAbsSyn18
		 ([]
	)

happyReduce_52 = happyReduce 5 19 happyReduction_52
happyReduction_52 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 ([]
	) `HappyStk` happyRest

happyReduce_53 = happyReduce 6 19 happyReduction_53
happyReduction_53 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 ([]
	) `HappyStk` happyRest

happyReduce_54 = happyReduce 8 20 happyReduction_54
happyReduction_54 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 ([]
	) `HappyStk` happyRest

happyReduce_55 = happyReduce 6 20 happyReduction_55
happyReduction_55 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 ([]
	) `HappyStk` happyRest

happyReduce_56 = happyReduce 6 21 happyReduction_56
happyReduction_56 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 ([]
	) `HappyStk` happyRest

happyReduce_57 = happyReduce 10 22 happyReduction_57
happyReduction_57 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 ([]
	) `HappyStk` happyRest

happyReduce_58 = happyReduce 12 22 happyReduction_58
happyReduction_58 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 ([]
	) `HappyStk` happyRest

happyReduce_59 = happyReduce 6 23 happyReduction_59
happyReduction_59 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn23
		 ([]
	) `HappyStk` happyRest

happyReduce_60 = happySpecReduce_1  24 happyReduction_60
happyReduction_60 _
	 =  HappyAbsSyn24
		 ([]
	)

happyReduce_61 = happySpecReduce_2  24 happyReduction_61
happyReduction_61 _
	_
	 =  HappyAbsSyn24
		 ([]
	)

happyReduce_62 = happySpecReduce_1  25 happyReduction_62
happyReduction_62 _
	 =  HappyAbsSyn25
		 ([]
	)

happyReduce_63 = happySpecReduce_1  25 happyReduction_63
happyReduction_63 _
	 =  HappyAbsSyn25
		 ([]
	)

happyReduce_64 = happySpecReduce_1  25 happyReduction_64
happyReduction_64 _
	 =  HappyAbsSyn25
		 ([]
	)

happyReduce_65 = happySpecReduce_1  25 happyReduction_65
happyReduction_65 _
	 =  HappyAbsSyn25
		 ([]
	)

happyReduce_66 = happySpecReduce_1  25 happyReduction_66
happyReduction_66 _
	 =  HappyAbsSyn25
		 ([]
	)

happyNewToken action sts stk [] =
	action 76 76 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	(\(Modex _,_)        -> Modex _) -> cont 26;
	(\(Divex _,_)         -> Divex _) -> cont 27;
	(\(Mult _,_)           -> Mult _) -> cont 28;
	(\(Minus _,_)          -> Minus _) -> cont 29;
	(\(CloseP _,_)         -> CloseP _) -> cont 30;
	(\(OpenP _,_)          -> OpenP _) -> cont 31;
	(\(Plus _,_)           -> Plus _) -> cont 32;
	(\(Def _,_)            -> Def _) -> cont 33;
	(\(SemiColon _,_)      -> SemiColon _) -> cont 34;
	(\(Comma _,_)          -> Comma _) -> cont 35;
	(\(Less _,_)           -> Less _) -> cont 36;
	(\(More _,_)           -> More _) -> cont 37;
	(\(Eq _,_)             -> Eq _) -> cont 38;
	(\(Neq _,_)            -> Neq _) -> cont 39;
	(\(Moreq _,_)          -> Moreq _) -> cont 40;
	(\(Lesseq _,_)         -> Lesseq _) -> cont 41;
	(\(Arrow _,_)          -> Arrow _) -> cont 42;
	(\(Not _,_)            -> Not _) -> cont 43;
	(\(And _,_)            -> And _) -> cont 44;
	(\(Or _,_)             -> Or _) -> cont 45;
	(\(Div _,_)            -> Div _) -> cont 46;
	(\(Mod _,_)            -> Mod _) -> cont 47;
	(\(Number _,_)         -> Number _) -> cont 48;
	(\(Boolean _,_)        -> Boolean _) -> cont 49;
	(\(True' _,_)          -> True' _) -> cont 50;
	(\(False' _,_)         -> False' _) -> cont 51;
	(\(With _,_)           -> With _) -> cont 52;
	(\(Do _,_)             -> Do _) -> cont 53;
	(\(End _,_)            -> End _) -> cont 54;
	(\(If _,_)             -> If _) -> cont 55;
	(\(Then _,_)           -> Then _) -> cont 56;
	(\(Else _,_)           -> Else _) -> cont 57;
	(\(While _,_)          -> While _) -> cont 58;
	(\(For _,_)            -> For _) -> cont 59;
	(\(Repeat _,_)         -> Repeat _) -> cont 60;
	(\(Begin _,_)          -> Begin _) -> cont 61;
	(\(Return _,_)         -> Return _) -> cont 62;
	(\(Func _,_)           -> Func _) -> cont 63;
	(\(Times _,_)          -> Times _) -> cont 64;
	(\(Program _,_)        -> Program _) -> cont 65;
	(\(Integer _ ,_)     -> Integer _) -> cont 66;
	(\(Floating _ ,_)    -> FLoating _) -> cont 67;
	(\(Str _,_)            -> Str _) -> cont 68;
	(\(Identifier _,_)     -> Identifier _) -> cont 69;
	(\(WriteLn _,_)        -> WriteLn _) -> cont 70;
	(\(Write _,_)          -> Write _) -> cont 71;
	(\(Read _, _) -> Read _) -> cont 72;
	(\(By _, _) -> By _) -> cont 73;
	(\(From _, _) -> From _) -> cont 74;
	(\(To _, _) -> To _) -> cont 75;
	_ -> happyError' (tk:tks)
	}

happyError_ 76 tk tks = happyError' tks
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

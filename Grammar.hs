{-# OPTIONS_GHC -w #-}
module Grammar where
import Lexer
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33
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
	| HappyAbsSyn26 t26
	| HappyAbsSyn27 t27
	| HappyAbsSyn28 t28
	| HappyAbsSyn29 t29
	| HappyAbsSyn30 t30
	| HappyAbsSyn31 t31
	| HappyAbsSyn32 t32
	| HappyAbsSyn33 t33

action_0 (37) = happyShift action_4
action_0 (39) = happyShift action_5
action_0 (51) = happyShift action_6
action_0 (58) = happyShift action_7
action_0 (59) = happyShift action_8
action_0 (74) = happyShift action_9
action_0 (75) = happyShift action_10
action_0 (77) = happyShift action_11
action_0 (4) = happyGoto action_12
action_0 (5) = happyGoto action_3
action_0 _ = happyFail

action_1 (37) = happyShift action_4
action_1 (39) = happyShift action_5
action_1 (51) = happyShift action_6
action_1 (58) = happyShift action_7
action_1 (59) = happyShift action_8
action_1 (74) = happyShift action_9
action_1 (75) = happyShift action_10
action_1 (77) = happyShift action_11
action_1 (4) = happyGoto action_2
action_1 (5) = happyGoto action_3
action_1 _ = happyFail

action_2 (34) = happyShift action_13
action_2 (35) = happyShift action_14
action_2 (36) = happyShift action_15
action_2 (37) = happyShift action_16
action_2 (40) = happyShift action_17
action_2 (44) = happyShift action_18
action_2 (45) = happyShift action_19
action_2 (46) = happyShift action_20
action_2 (47) = happyShift action_21
action_2 (48) = happyShift action_22
action_2 (49) = happyShift action_23
action_2 (52) = happyShift action_24
action_2 (53) = happyShift action_25
action_2 (54) = happyShift action_26
action_2 (55) = happyShift action_27
action_2 _ = happyFail

action_3 _ = happyReduce_24

action_4 (37) = happyShift action_4
action_4 (39) = happyShift action_5
action_4 (51) = happyShift action_6
action_4 (58) = happyShift action_7
action_4 (59) = happyShift action_8
action_4 (74) = happyShift action_9
action_4 (75) = happyShift action_10
action_4 (77) = happyShift action_11
action_4 (4) = happyGoto action_31
action_4 (5) = happyGoto action_3
action_4 _ = happyFail

action_5 (37) = happyShift action_4
action_5 (39) = happyShift action_5
action_5 (51) = happyShift action_6
action_5 (58) = happyShift action_7
action_5 (59) = happyShift action_8
action_5 (74) = happyShift action_9
action_5 (75) = happyShift action_10
action_5 (77) = happyShift action_11
action_5 (4) = happyGoto action_30
action_5 (5) = happyGoto action_3
action_5 _ = happyFail

action_6 (37) = happyShift action_4
action_6 (39) = happyShift action_5
action_6 (51) = happyShift action_6
action_6 (58) = happyShift action_7
action_6 (59) = happyShift action_8
action_6 (74) = happyShift action_9
action_6 (75) = happyShift action_10
action_6 (77) = happyShift action_11
action_6 (4) = happyGoto action_29
action_6 (5) = happyGoto action_3
action_6 _ = happyFail

action_7 _ = happyReduce_21

action_8 _ = happyReduce_22

action_9 _ = happyReduce_19

action_10 _ = happyReduce_20

action_11 (39) = happyShift action_28
action_11 _ = happyReduce_23

action_12 (34) = happyShift action_13
action_12 (35) = happyShift action_14
action_12 (36) = happyShift action_15
action_12 (37) = happyShift action_16
action_12 (40) = happyShift action_17
action_12 (44) = happyShift action_18
action_12 (45) = happyShift action_19
action_12 (46) = happyShift action_20
action_12 (47) = happyShift action_21
action_12 (48) = happyShift action_22
action_12 (49) = happyShift action_23
action_12 (52) = happyShift action_24
action_12 (53) = happyShift action_25
action_12 (54) = happyShift action_26
action_12 (55) = happyShift action_27
action_12 (84) = happyAccept
action_12 _ = happyFail

action_13 (37) = happyShift action_4
action_13 (39) = happyShift action_5
action_13 (51) = happyShift action_6
action_13 (58) = happyShift action_7
action_13 (59) = happyShift action_8
action_13 (74) = happyShift action_9
action_13 (75) = happyShift action_10
action_13 (77) = happyShift action_11
action_13 (4) = happyGoto action_50
action_13 (5) = happyGoto action_3
action_13 _ = happyFail

action_14 (37) = happyShift action_4
action_14 (39) = happyShift action_5
action_14 (51) = happyShift action_6
action_14 (58) = happyShift action_7
action_14 (59) = happyShift action_8
action_14 (74) = happyShift action_9
action_14 (75) = happyShift action_10
action_14 (77) = happyShift action_11
action_14 (4) = happyGoto action_49
action_14 (5) = happyGoto action_3
action_14 _ = happyFail

action_15 (37) = happyShift action_4
action_15 (39) = happyShift action_5
action_15 (51) = happyShift action_6
action_15 (58) = happyShift action_7
action_15 (59) = happyShift action_8
action_15 (74) = happyShift action_9
action_15 (75) = happyShift action_10
action_15 (77) = happyShift action_11
action_15 (4) = happyGoto action_48
action_15 (5) = happyGoto action_3
action_15 _ = happyFail

action_16 (37) = happyShift action_4
action_16 (39) = happyShift action_5
action_16 (51) = happyShift action_6
action_16 (58) = happyShift action_7
action_16 (59) = happyShift action_8
action_16 (74) = happyShift action_9
action_16 (75) = happyShift action_10
action_16 (77) = happyShift action_11
action_16 (4) = happyGoto action_47
action_16 (5) = happyGoto action_3
action_16 _ = happyFail

action_17 (37) = happyShift action_4
action_17 (39) = happyShift action_5
action_17 (51) = happyShift action_6
action_17 (58) = happyShift action_7
action_17 (59) = happyShift action_8
action_17 (74) = happyShift action_9
action_17 (75) = happyShift action_10
action_17 (77) = happyShift action_11
action_17 (4) = happyGoto action_46
action_17 (5) = happyGoto action_3
action_17 _ = happyFail

action_18 (37) = happyShift action_4
action_18 (39) = happyShift action_5
action_18 (51) = happyShift action_6
action_18 (58) = happyShift action_7
action_18 (59) = happyShift action_8
action_18 (74) = happyShift action_9
action_18 (75) = happyShift action_10
action_18 (77) = happyShift action_11
action_18 (4) = happyGoto action_45
action_18 (5) = happyGoto action_3
action_18 _ = happyFail

action_19 (37) = happyShift action_4
action_19 (39) = happyShift action_5
action_19 (51) = happyShift action_6
action_19 (58) = happyShift action_7
action_19 (59) = happyShift action_8
action_19 (74) = happyShift action_9
action_19 (75) = happyShift action_10
action_19 (77) = happyShift action_11
action_19 (4) = happyGoto action_44
action_19 (5) = happyGoto action_3
action_19 _ = happyFail

action_20 (37) = happyShift action_4
action_20 (39) = happyShift action_5
action_20 (51) = happyShift action_6
action_20 (58) = happyShift action_7
action_20 (59) = happyShift action_8
action_20 (74) = happyShift action_9
action_20 (75) = happyShift action_10
action_20 (77) = happyShift action_11
action_20 (4) = happyGoto action_43
action_20 (5) = happyGoto action_3
action_20 _ = happyFail

action_21 (37) = happyShift action_4
action_21 (39) = happyShift action_5
action_21 (51) = happyShift action_6
action_21 (58) = happyShift action_7
action_21 (59) = happyShift action_8
action_21 (74) = happyShift action_9
action_21 (75) = happyShift action_10
action_21 (77) = happyShift action_11
action_21 (4) = happyGoto action_42
action_21 (5) = happyGoto action_3
action_21 _ = happyFail

action_22 (37) = happyShift action_4
action_22 (39) = happyShift action_5
action_22 (51) = happyShift action_6
action_22 (58) = happyShift action_7
action_22 (59) = happyShift action_8
action_22 (74) = happyShift action_9
action_22 (75) = happyShift action_10
action_22 (77) = happyShift action_11
action_22 (4) = happyGoto action_41
action_22 (5) = happyGoto action_3
action_22 _ = happyFail

action_23 (37) = happyShift action_4
action_23 (39) = happyShift action_5
action_23 (51) = happyShift action_6
action_23 (58) = happyShift action_7
action_23 (59) = happyShift action_8
action_23 (74) = happyShift action_9
action_23 (75) = happyShift action_10
action_23 (77) = happyShift action_11
action_23 (4) = happyGoto action_40
action_23 (5) = happyGoto action_3
action_23 _ = happyFail

action_24 (37) = happyShift action_4
action_24 (39) = happyShift action_5
action_24 (51) = happyShift action_6
action_24 (58) = happyShift action_7
action_24 (59) = happyShift action_8
action_24 (74) = happyShift action_9
action_24 (75) = happyShift action_10
action_24 (77) = happyShift action_11
action_24 (4) = happyGoto action_39
action_24 (5) = happyGoto action_3
action_24 _ = happyFail

action_25 (37) = happyShift action_4
action_25 (39) = happyShift action_5
action_25 (51) = happyShift action_6
action_25 (58) = happyShift action_7
action_25 (59) = happyShift action_8
action_25 (74) = happyShift action_9
action_25 (75) = happyShift action_10
action_25 (77) = happyShift action_11
action_25 (4) = happyGoto action_38
action_25 (5) = happyGoto action_3
action_25 _ = happyFail

action_26 (37) = happyShift action_4
action_26 (39) = happyShift action_5
action_26 (51) = happyShift action_6
action_26 (58) = happyShift action_7
action_26 (59) = happyShift action_8
action_26 (74) = happyShift action_9
action_26 (75) = happyShift action_10
action_26 (77) = happyShift action_11
action_26 (4) = happyGoto action_37
action_26 (5) = happyGoto action_3
action_26 _ = happyFail

action_27 (37) = happyShift action_4
action_27 (39) = happyShift action_5
action_27 (51) = happyShift action_6
action_27 (58) = happyShift action_7
action_27 (59) = happyShift action_8
action_27 (74) = happyShift action_9
action_27 (75) = happyShift action_10
action_27 (77) = happyShift action_11
action_27 (4) = happyGoto action_36
action_27 (5) = happyGoto action_3
action_27 _ = happyFail

action_28 (37) = happyShift action_4
action_28 (38) = happyShift action_35
action_28 (39) = happyShift action_5
action_28 (51) = happyShift action_6
action_28 (58) = happyShift action_7
action_28 (59) = happyShift action_8
action_28 (74) = happyShift action_9
action_28 (75) = happyShift action_10
action_28 (77) = happyShift action_11
action_28 (4) = happyGoto action_33
action_28 (5) = happyGoto action_3
action_28 (6) = happyGoto action_34
action_28 _ = happyFail

action_29 _ = happyReduce_17

action_30 (34) = happyShift action_13
action_30 (35) = happyShift action_14
action_30 (36) = happyShift action_15
action_30 (37) = happyShift action_16
action_30 (38) = happyShift action_32
action_30 (40) = happyShift action_17
action_30 (44) = happyShift action_18
action_30 (45) = happyShift action_19
action_30 (46) = happyShift action_20
action_30 (47) = happyShift action_21
action_30 (48) = happyShift action_22
action_30 (49) = happyShift action_23
action_30 (52) = happyShift action_24
action_30 (53) = happyShift action_25
action_30 (54) = happyShift action_26
action_30 (55) = happyShift action_27
action_30 _ = happyFail

action_31 _ = happyReduce_18

action_32 _ = happyReduce_16

action_33 (34) = happyShift action_13
action_33 (35) = happyShift action_14
action_33 (36) = happyShift action_15
action_33 (37) = happyShift action_16
action_33 (40) = happyShift action_17
action_33 (44) = happyShift action_18
action_33 (45) = happyShift action_19
action_33 (46) = happyShift action_20
action_33 (47) = happyShift action_21
action_33 (48) = happyShift action_22
action_33 (49) = happyShift action_23
action_33 (52) = happyShift action_24
action_33 (53) = happyShift action_25
action_33 (54) = happyShift action_26
action_33 (55) = happyShift action_27
action_33 _ = happyReduce_27

action_34 (38) = happyShift action_51
action_34 (43) = happyShift action_52
action_34 _ = happyFail

action_35 _ = happyReduce_25

action_36 (35) = happyShift action_14
action_36 (36) = happyShift action_15
action_36 (44) = happyShift action_18
action_36 (45) = happyShift action_19
action_36 (46) = happyShift action_20
action_36 (47) = happyShift action_21
action_36 (48) = happyShift action_22
action_36 (49) = happyShift action_23
action_36 (52) = happyShift action_24
action_36 (54) = happyShift action_26
action_36 _ = happyReduce_15

action_37 (44) = happyShift action_18
action_37 (45) = happyShift action_19
action_37 (46) = happyShift action_20
action_37 (47) = happyShift action_21
action_37 (48) = happyShift action_22
action_37 (49) = happyShift action_23
action_37 _ = happyReduce_14

action_38 (34) = happyShift action_13
action_38 (35) = happyShift action_14
action_38 (36) = happyShift action_15
action_38 (44) = happyShift action_18
action_38 (45) = happyShift action_19
action_38 (46) = happyShift action_20
action_38 (47) = happyShift action_21
action_38 (48) = happyShift action_22
action_38 (49) = happyShift action_23
action_38 (52) = happyShift action_24
action_38 (54) = happyShift action_26
action_38 (55) = happyShift action_27
action_38 _ = happyReduce_1

action_39 (44) = happyShift action_18
action_39 (45) = happyShift action_19
action_39 (46) = happyShift action_20
action_39 (47) = happyShift action_21
action_39 (48) = happyShift action_22
action_39 (49) = happyShift action_23
action_39 _ = happyReduce_2

action_40 (44) = happyFail
action_40 (45) = happyFail
action_40 (46) = happyShift action_20
action_40 (47) = happyShift action_21
action_40 (48) = happyFail
action_40 (49) = happyFail
action_40 _ = happyReduce_7

action_41 (44) = happyFail
action_41 (45) = happyFail
action_41 (46) = happyShift action_20
action_41 (47) = happyShift action_21
action_41 (48) = happyFail
action_41 (49) = happyFail
action_41 _ = happyReduce_8

action_42 (46) = happyFail
action_42 (47) = happyFail
action_42 _ = happyReduce_4

action_43 (46) = happyFail
action_43 (47) = happyFail
action_43 _ = happyReduce_3

action_44 (44) = happyFail
action_44 (45) = happyFail
action_44 (46) = happyShift action_20
action_44 (47) = happyShift action_21
action_44 (48) = happyFail
action_44 (49) = happyFail
action_44 _ = happyReduce_6

action_45 (44) = happyFail
action_45 (45) = happyFail
action_45 (46) = happyShift action_20
action_45 (47) = happyShift action_21
action_45 (48) = happyFail
action_45 (49) = happyFail
action_45 _ = happyReduce_5

action_46 (34) = happyShift action_13
action_46 (35) = happyShift action_14
action_46 (36) = happyShift action_15
action_46 (44) = happyShift action_18
action_46 (45) = happyShift action_19
action_46 (46) = happyShift action_20
action_46 (47) = happyShift action_21
action_46 (48) = happyShift action_22
action_46 (49) = happyShift action_23
action_46 (52) = happyShift action_24
action_46 (54) = happyShift action_26
action_46 (55) = happyShift action_27
action_46 _ = happyReduce_9

action_47 (34) = happyShift action_13
action_47 (35) = happyShift action_14
action_47 (36) = happyShift action_15
action_47 (44) = happyShift action_18
action_47 (45) = happyShift action_19
action_47 (46) = happyShift action_20
action_47 (47) = happyShift action_21
action_47 (48) = happyShift action_22
action_47 (49) = happyShift action_23
action_47 (52) = happyShift action_24
action_47 (54) = happyShift action_26
action_47 (55) = happyShift action_27
action_47 _ = happyReduce_10

action_48 (44) = happyShift action_18
action_48 (45) = happyShift action_19
action_48 (46) = happyShift action_20
action_48 (47) = happyShift action_21
action_48 (48) = happyShift action_22
action_48 (49) = happyShift action_23
action_48 _ = happyReduce_11

action_49 (44) = happyShift action_18
action_49 (45) = happyShift action_19
action_49 (46) = happyShift action_20
action_49 (47) = happyShift action_21
action_49 (48) = happyShift action_22
action_49 (49) = happyShift action_23
action_49 _ = happyReduce_12

action_50 (35) = happyShift action_14
action_50 (36) = happyShift action_15
action_50 (44) = happyShift action_18
action_50 (45) = happyShift action_19
action_50 (46) = happyShift action_20
action_50 (47) = happyShift action_21
action_50 (48) = happyShift action_22
action_50 (49) = happyShift action_23
action_50 (52) = happyShift action_24
action_50 (54) = happyShift action_26
action_50 _ = happyReduce_13

action_51 _ = happyReduce_26

action_52 (37) = happyShift action_4
action_52 (39) = happyShift action_5
action_52 (51) = happyShift action_6
action_52 (58) = happyShift action_7
action_52 (59) = happyShift action_8
action_52 (74) = happyShift action_9
action_52 (75) = happyShift action_10
action_52 (77) = happyShift action_11
action_52 (4) = happyGoto action_53
action_52 (5) = happyGoto action_3
action_52 _ = happyFail

action_53 (34) = happyShift action_13
action_53 (35) = happyShift action_14
action_53 (36) = happyShift action_15
action_53 (37) = happyShift action_16
action_53 (40) = happyShift action_17
action_53 (44) = happyShift action_18
action_53 (45) = happyShift action_19
action_53 (46) = happyShift action_20
action_53 (47) = happyShift action_21
action_53 (48) = happyShift action_22
action_53 (49) = happyShift action_23
action_53 (52) = happyShift action_24
action_53 (53) = happyShift action_25
action_53 (54) = happyShift action_26
action_53 (55) = happyShift action_27
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

happyReduce_67 = happySpecReduce_0  26 happyReduction_67
happyReduction_67  =  HappyAbsSyn26
		 ([]
	)

happyReduce_68 = happySpecReduce_1  26 happyReduction_68
happyReduction_68 _
	 =  HappyAbsSyn26
		 ([]
	)

happyReduce_69 = happySpecReduce_2  27 happyReduction_69
happyReduction_69 _
	_
	 =  HappyAbsSyn27
		 ([]
	)

happyReduce_70 = happyReduce 4 27 happyReduction_70
happyReduction_70 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn27
		 ([]
	) `HappyStk` happyRest

happyReduce_71 = happyReduce 9 28 happyReduction_71
happyReduction_71 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn28
		 ([]
	) `HappyStk` happyRest

happyReduce_72 = happyReduce 11 28 happyReduction_72
happyReduction_72 (_ `HappyStk`
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
	 = HappyAbsSyn28
		 ([]
	) `HappyStk` happyRest

happyReduce_73 = happySpecReduce_1  29 happyReduction_73
happyReduction_73 _
	 =  HappyAbsSyn29
		 ([]
	)

happyReduce_74 = happySpecReduce_2  29 happyReduction_74
happyReduction_74 _
	_
	 =  HappyAbsSyn29
		 ([]
	)

happyReduce_75 = happySpecReduce_1  30 happyReduction_75
happyReduction_75 _
	 =  HappyAbsSyn30
		 ([]
	)

happyReduce_76 = happySpecReduce_2  30 happyReduction_76
happyReduction_76 _
	_
	 =  HappyAbsSyn30
		 ([]
	)

happyReduce_77 = happyReduce 6 31 happyReduction_77
happyReduction_77 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn31
		 ([]
	) `HappyStk` happyRest

happyReduce_78 = happyReduce 7 31 happyReduction_78
happyReduction_78 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn31
		 ([]
	) `HappyStk` happyRest

happyReduce_79 = happySpecReduce_1  32 happyReduction_79
happyReduction_79 _
	 =  HappyAbsSyn32
		 ([]
	)

happyReduce_80 = happySpecReduce_2  32 happyReduction_80
happyReduction_80 _
	_
	 =  HappyAbsSyn32
		 ([]
	)

happyReduce_81 = happySpecReduce_1  33 happyReduction_81
happyReduction_81 _
	 =  HappyAbsSyn33
		 ([]
	)

happyReduce_82 = happySpecReduce_2  33 happyReduction_82
happyReduction_82 _
	_
	 =  HappyAbsSyn33
		 ([]
	)

happyNewToken action sts stk [] =
	action 84 84 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	(\(Modex _,_)        -> Modex _) -> cont 34;
	(\(Divex _,_)         -> Divex _) -> cont 35;
	(\(Mult _,_)           -> Mult _) -> cont 36;
	(\(Minus _,_)          -> Minus _) -> cont 37;
	(\(CloseP _,_)         -> CloseP _) -> cont 38;
	(\(OpenP _,_)          -> OpenP _) -> cont 39;
	(\(Plus _,_)           -> Plus _) -> cont 40;
	(\(Def _,_)            -> Def _) -> cont 41;
	(\(SemiColon _,_)      -> SemiColon _) -> cont 42;
	(\(Comma _,_)          -> Comma _) -> cont 43;
	(\(Less _,_)           -> Less _) -> cont 44;
	(\(More _,_)           -> More _) -> cont 45;
	(\(Eq _,_)             -> Eq _) -> cont 46;
	(\(Neq _,_)            -> Neq _) -> cont 47;
	(\(Moreq _,_)          -> Moreq _) -> cont 48;
	(\(Lesseq _,_)         -> Lesseq _) -> cont 49;
	(\(Arrow _,_)          -> Arrow _) -> cont 50;
	(\(Not _,_)            -> Not _) -> cont 51;
	(\(And _,_)            -> And _) -> cont 52;
	(\(Or _,_)             -> Or _) -> cont 53;
	(\(Div _,_)            -> Div _) -> cont 54;
	(\(Mod _,_)            -> Mod _) -> cont 55;
	(\(Number _,_)         -> Number _) -> cont 56;
	(\(Boolean _,_)        -> Boolean _) -> cont 57;
	(\(True' _,_)          -> True' _) -> cont 58;
	(\(False' _,_)         -> False' _) -> cont 59;
	(\(With _,_)           -> With _) -> cont 60;
	(\(Do _,_)             -> Do _) -> cont 61;
	(\(End _,_)            -> End _) -> cont 62;
	(\(If _,_)             -> If _) -> cont 63;
	(\(Then _,_)           -> Then _) -> cont 64;
	(\(Else _,_)           -> Else _) -> cont 65;
	(\(While _,_)          -> While _) -> cont 66;
	(\(For _,_)            -> For _) -> cont 67;
	(\(Repeat _,_)         -> Repeat _) -> cont 68;
	(\(Begin _,_)          -> Begin _) -> cont 69;
	(\(Return _,_)         -> Return _) -> cont 70;
	(\(Func _,_)           -> Func _) -> cont 71;
	(\(Times _,_)          -> Times _) -> cont 72;
	(\(Program _,_)        -> Program _) -> cont 73;
	(\(Integer _ ,_)     -> Integer _) -> cont 74;
	(\(Floating _ ,_)    -> FLoating _) -> cont 75;
	(\(Str _,_)            -> Str _) -> cont 76;
	(\(Identifier _,_)     -> Identifier _) -> cont 77;
	(\(WriteLn _,_)        -> WriteLn _) -> cont 78;
	(\(Write _,_)          -> Write _) -> cont 79;
	(\(Read _, _) -> Read _) -> cont 80;
	(\(By _, _) -> By _) -> cont 81;
	(\(From _, _) -> From _) -> cont 82;
	(\(To _, _) -> To _) -> cont 83;
	_ -> happyError' (tk:tks)
	}

happyError_ 84 tk tks = happyError' tks
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

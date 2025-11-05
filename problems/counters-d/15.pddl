(define (problem counters)
(:domain counters)
(:objects 
	counter0 - counter
	counter1 - counter
	counter2 - counter
	counter3 - counter
	counter4 - counter
	counter5 - counter
	counter6 - counter
	counter7 - counter
	counter8 - counter
	counter9 - counter
	counter10 - counter
	counter11 - counter
	counter12 - counter
	counter13 - counter
	counter14 - counter
	counter15 - counter
	counter16 - counter
	counter17 - counter
	counter18 - counter
	counter19 - counter
	counter20 - counter
	counter21 - counter
	counter22 - counter
	counter23 - counter
	counter24 - counter
	counter25 - counter
	counter26 - counter
	counter27 - counter
	counter28 - counter
	counter29 - counter
	counter30 - counter
	counter31 - counter
	counter32 - counter
	counter33 - counter
	counter34 - counter
	counter35 - counter
	counter36 - counter
	counter37 - counter
	counter38 - counter
	counter39 - counter
	counter40 - counter
	counter41 - counter
	counter42 - counter
	counter43 - counter
	counter44 - counter
	counter45 - counter
	counter46 - counter
	counter47 - counter
	counter48 - counter
	counter49 - counter
	counter50 - counter
	counter51 - counter
	counter52 - counter
	counter53 - counter
	counter54 - counter
	counter55 - counter
	counter56 - counter
	counter57 - counter
	counter58 - counter
	counter59 - counter
	counter60 - counter
	counter61 - counter
	counter62 - counter
	counter63 - counter
	counter64 - counter
	counter65 - counter
	counter66 - counter
	counter67 - counter
	counter68 - counter
	counter69 - counter
	counter70 - counter
	counter71 - counter
	counter72 - counter
	counter73 - counter
)
(:bounds 
	(<= (delta) 148)
	(>= (delta) 0)
)
(:precision 
	(= (delta) 0)
)
(:init
	(= (max_int) 148)
	(= (value counter0) 110)
	(= (value counter1) 10)
	(= (value counter2) 18)
	(= (value counter3) 43)
	(= (value counter4) 41)
	(= (value counter5) 26)
	(= (value counter6) 1)
	(= (value counter7) 121)
	(= (value counter8) 140)
	(= (value counter9) 107)
	(= (value counter10) 82)
	(= (value counter11) 69)
	(= (value counter12) 3)
	(= (value counter13) 1)
	(= (value counter14) 87)
	(= (value counter15) 3)
	(= (value counter16) 65)
	(= (value counter17) 61)
	(= (value counter18) 66)
	(= (value counter19) 47)
	(= (value counter20) 61)
	(= (value counter21) 78)
	(= (value counter22) 5)
	(= (value counter23) 117)
	(= (value counter24) 34)
	(= (value counter25) 116)
	(= (value counter26) 47)
	(= (value counter27) 96)
	(= (value counter28) 23)
	(= (value counter29) 63)
	(= (value counter30) 73)
	(= (value counter31) 137)
	(= (value counter32) 32)
	(= (value counter33) 93)
	(= (value counter34) 42)
	(= (value counter35) 140)
	(= (value counter36) 117)
	(= (value counter37) 37)
	(= (value counter38) 32)
	(= (value counter39) 87)
	(= (value counter40) 44)
	(= (value counter41) 37)
	(= (value counter42) 150)
	(= (value counter43) 98)
	(= (value counter44) 142)
	(= (value counter45) 74)
	(= (value counter46) 95)
	(= (value counter47) 23)
	(= (value counter48) 21)
	(= (value counter49) 147)
	(= (value counter50) 71)
	(= (value counter51) 73)
	(= (value counter52) 83)
	(= (value counter53) 74)
	(= (value counter54) 42)
	(= (value counter55) 80)
	(= (value counter56) 94)
	(= (value counter57) 30)
	(= (value counter58) 123)
	(= (value counter59) 48)
	(= (value counter60) 115)
	(= (value counter61) 34)
	(= (value counter62) 112)
	(= (value counter63) 95)
	(= (value counter64) 91)
	(= (value counter65) 20)
	(= (value counter66) 59)
	(= (value counter67) 4)
	(= (value counter68) 19)
	(= (value counter69) 146)
	(= (value counter70) 6)
	(= (value counter71) 122)
	(= (value counter72) 148)
	(= (value counter73) 140)
)
(:goal (and
	(<= (+ (value counter0) 1) (value counter1))
	(<= (+ (value counter1) 1) (value counter2))
	(<= (+ (value counter2) 1) (value counter3))
	(<= (+ (value counter3) 1) (value counter4))
	(<= (+ (value counter4) 1) (value counter5))
	(<= (+ (value counter5) 1) (value counter6))
	(<= (+ (value counter6) 1) (value counter7))
	(<= (+ (value counter7) 1) (value counter8))
	(<= (+ (value counter8) 1) (value counter9))
	(<= (+ (value counter9) 1) (value counter10))
	(<= (+ (value counter10) 1) (value counter11))
	(<= (+ (value counter11) 1) (value counter12))
	(<= (+ (value counter12) 1) (value counter13))
	(<= (+ (value counter13) 1) (value counter14))
	(<= (+ (value counter14) 1) (value counter15))
	(<= (+ (value counter15) 1) (value counter16))
	(<= (+ (value counter16) 1) (value counter17))
	(<= (+ (value counter17) 1) (value counter18))
	(<= (+ (value counter18) 1) (value counter19))
	(<= (+ (value counter19) 1) (value counter20))
	(<= (+ (value counter20) 1) (value counter21))
	(<= (+ (value counter21) 1) (value counter22))
	(<= (+ (value counter22) 1) (value counter23))
	(<= (+ (value counter23) 1) (value counter24))
	(<= (+ (value counter24) 1) (value counter25))
	(<= (+ (value counter25) 1) (value counter26))
	(<= (+ (value counter26) 1) (value counter27))
	(<= (+ (value counter27) 1) (value counter28))
	(<= (+ (value counter28) 1) (value counter29))
	(<= (+ (value counter29) 1) (value counter30))
	(<= (+ (value counter30) 1) (value counter31))
	(<= (+ (value counter31) 1) (value counter32))
	(<= (+ (value counter32) 1) (value counter33))
	(<= (+ (value counter33) 1) (value counter34))
	(<= (+ (value counter34) 1) (value counter35))
	(<= (+ (value counter35) 1) (value counter36))
	(<= (+ (value counter36) 1) (value counter37))
	(<= (+ (value counter37) 1) (value counter38))
	(<= (+ (value counter38) 1) (value counter39))
	(<= (+ (value counter39) 1) (value counter40))
	(<= (+ (value counter40) 1) (value counter41))
	(<= (+ (value counter41) 1) (value counter42))
	(<= (+ (value counter42) 1) (value counter43))
	(<= (+ (value counter43) 1) (value counter44))
	(<= (+ (value counter44) 1) (value counter45))
	(<= (+ (value counter45) 1) (value counter46))
	(<= (+ (value counter46) 1) (value counter47))
	(<= (+ (value counter47) 1) (value counter48))
	(<= (+ (value counter48) 1) (value counter49))
	(<= (+ (value counter49) 1) (value counter50))
	(<= (+ (value counter50) 1) (value counter51))
	(<= (+ (value counter51) 1) (value counter52))
	(<= (+ (value counter52) 1) (value counter53))
	(<= (+ (value counter53) 1) (value counter54))
	(<= (+ (value counter54) 1) (value counter55))
	(<= (+ (value counter55) 1) (value counter56))
	(<= (+ (value counter56) 1) (value counter57))
	(<= (+ (value counter57) 1) (value counter58))
	(<= (+ (value counter58) 1) (value counter59))
	(<= (+ (value counter59) 1) (value counter60))
	(<= (+ (value counter60) 1) (value counter61))
	(<= (+ (value counter61) 1) (value counter62))
	(<= (+ (value counter62) 1) (value counter63))
	(<= (+ (value counter63) 1) (value counter64))
	(<= (+ (value counter64) 1) (value counter65))
	(<= (+ (value counter65) 1) (value counter66))
	(<= (+ (value counter66) 1) (value counter67))
	(<= (+ (value counter67) 1) (value counter68))
	(<= (+ (value counter68) 1) (value counter69))
	(<= (+ (value counter69) 1) (value counter70))
	(<= (+ (value counter70) 1) (value counter71))
	(<= (+ (value counter71) 1) (value counter72))
	(<= (+ (value counter72) 1) (value counter73))
))
)


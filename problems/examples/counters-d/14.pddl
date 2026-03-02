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
)
(:bounds 
	(<= (delta) 138)
	(>= (delta) 0)
)
(:precision 
	(= (delta) 0)
)
(:init
	(= (max_int) 138)
	(= (value counter0) 117)
	(= (value counter1) 77)
	(= (value counter2) 85)
	(= (value counter3) 13)
	(= (value counter4) 33)
	(= (value counter5) 122)
	(= (value counter6) 1)
	(= (value counter7) 86)
	(= (value counter8) 16)
	(= (value counter9) 117)
	(= (value counter10) 104)
	(= (value counter11) 33)
	(= (value counter12) 71)
	(= (value counter13) 45)
	(= (value counter14) 52)
	(= (value counter15) 115)
	(= (value counter16) 65)
	(= (value counter17) 66)
	(= (value counter18) 20)
	(= (value counter19) 19)
	(= (value counter20) 134)
	(= (value counter21) 18)
	(= (value counter22) 48)
	(= (value counter23) 56)
	(= (value counter24) 116)
	(= (value counter25) 95)
	(= (value counter26) 47)
	(= (value counter27) 99)
	(= (value counter28) 83)
	(= (value counter29) 85)
	(= (value counter30) 78)
	(= (value counter31) 22)
	(= (value counter32) 80)
	(= (value counter33) 103)
	(= (value counter34) 4)
	(= (value counter35) 26)
	(= (value counter36) 74)
	(= (value counter37) 58)
	(= (value counter38) 90)
	(= (value counter39) 62)
	(= (value counter40) 133)
	(= (value counter41) 134)
	(= (value counter42) 33)
	(= (value counter43) 53)
	(= (value counter44) 84)
	(= (value counter45) 115)
	(= (value counter46) 110)
	(= (value counter47) 27)
	(= (value counter48) 11)
	(= (value counter49) 92)
	(= (value counter50) 107)
	(= (value counter51) 25)
	(= (value counter52) 3)
	(= (value counter53) 89)
	(= (value counter54) 87)
	(= (value counter55) 29)
	(= (value counter56) 131)
	(= (value counter57) 72)
	(= (value counter58) 15)
	(= (value counter59) 60)
	(= (value counter60) 140)
	(= (value counter61) 2)
	(= (value counter62) 43)
	(= (value counter63) 31)
	(= (value counter64) 41)
	(= (value counter65) 4)
	(= (value counter66) 92)
	(= (value counter67) 87)
	(= (value counter68) 70)
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
))
)


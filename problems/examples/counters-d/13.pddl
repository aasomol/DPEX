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
)
(:bounds 
	(<= (delta) 128)
	(>= (delta) 0)
)
(:precision 
	(= (delta) 0)
)
(:init
	(= (max_int) 128)
	(= (value counter0) 110)
	(= (value counter1) 29)
	(= (value counter2) 43)
	(= (value counter3) 62)
	(= (value counter4) 34)
	(= (value counter5) 49)
	(= (value counter6) 45)
	(= (value counter7) 27)
	(= (value counter8) 47)
	(= (value counter9) 63)
	(= (value counter10) 55)
	(= (value counter11) 40)
	(= (value counter12) 68)
	(= (value counter13) 64)
	(= (value counter14) 5)
	(= (value counter15) 82)
	(= (value counter16) 101)
	(= (value counter17) 122)
	(= (value counter18) 108)
	(= (value counter19) 35)
	(= (value counter20) 129)
	(= (value counter21) 68)
	(= (value counter22) 60)
	(= (value counter23) 28)
	(= (value counter24) 63)
	(= (value counter25) 62)
	(= (value counter26) 48)
	(= (value counter27) 24)
	(= (value counter28) 35)
	(= (value counter29) 29)
	(= (value counter30) 32)
	(= (value counter31) 45)
	(= (value counter32) 71)
	(= (value counter33) 101)
	(= (value counter34) 53)
	(= (value counter35) 21)
	(= (value counter36) 35)
	(= (value counter37) 27)
	(= (value counter38) 24)
	(= (value counter39) 23)
	(= (value counter40) 69)
	(= (value counter41) 119)
	(= (value counter42) 130)
	(= (value counter43) 9)
	(= (value counter44) 8)
	(= (value counter45) 78)
	(= (value counter46) 85)
	(= (value counter47) 22)
	(= (value counter48) 65)
	(= (value counter49) 25)
	(= (value counter50) 13)
	(= (value counter51) 29)
	(= (value counter52) 105)
	(= (value counter53) 53)
	(= (value counter54) 128)
	(= (value counter55) 38)
	(= (value counter56) 33)
	(= (value counter57) 80)
	(= (value counter58) 67)
	(= (value counter59) 114)
	(= (value counter60) 51)
	(= (value counter61) 125)
	(= (value counter62) 120)
	(= (value counter63) 107)
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
))
)


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
	counter74 - counter
	counter75 - counter
	counter76 - counter
	counter77 - counter
	counter78 - counter
)
(:bounds 
	(<= (delta) 158)
	(>= (delta) 0)
)
(:precision 
	(= (delta) 0)
)
(:init
	(= (max_int) 158)
	(= (value counter0) 132)
	(= (value counter1) 13)
	(= (value counter2) 96)
	(= (value counter3) 153)
	(= (value counter4) 26)
	(= (value counter5) 94)
	(= (value counter6) 129)
	(= (value counter7) 95)
	(= (value counter8) 2)
	(= (value counter9) 15)
	(= (value counter10) 38)
	(= (value counter11) 115)
	(= (value counter12) 115)
	(= (value counter13) 52)
	(= (value counter14) 111)
	(= (value counter15) 87)
	(= (value counter16) 17)
	(= (value counter17) 152)
	(= (value counter18) 106)
	(= (value counter19) 105)
	(= (value counter20) 139)
	(= (value counter21) 22)
	(= (value counter22) 86)
	(= (value counter23) 45)
	(= (value counter24) 121)
	(= (value counter25) 102)
	(= (value counter26) 0)
	(= (value counter27) 154)
	(= (value counter28) 40)
	(= (value counter29) 106)
	(= (value counter30) 27)
	(= (value counter31) 143)
	(= (value counter32) 82)
	(= (value counter33) 29)
	(= (value counter34) 121)
	(= (value counter35) 136)
	(= (value counter36) 2)
	(= (value counter37) 71)
	(= (value counter38) 134)
	(= (value counter39) 128)
	(= (value counter40) 39)
	(= (value counter41) 44)
	(= (value counter42) 12)
	(= (value counter43) 158)
	(= (value counter44) 16)
	(= (value counter45) 47)
	(= (value counter46) 28)
	(= (value counter47) 9)
	(= (value counter48) 63)
	(= (value counter49) 56)
	(= (value counter50) 13)
	(= (value counter51) 128)
	(= (value counter52) 0)
	(= (value counter53) 9)
	(= (value counter54) 22)
	(= (value counter55) 70)
	(= (value counter56) 143)
	(= (value counter57) 49)
	(= (value counter58) 160)
	(= (value counter59) 112)
	(= (value counter60) 97)
	(= (value counter61) 13)
	(= (value counter62) 80)
	(= (value counter63) 144)
	(= (value counter64) 65)
	(= (value counter65) 98)
	(= (value counter66) 50)
	(= (value counter67) 96)
	(= (value counter68) 42)
	(= (value counter69) 101)
	(= (value counter70) 29)
	(= (value counter71) 117)
	(= (value counter72) 31)
	(= (value counter73) 50)
	(= (value counter74) 74)
	(= (value counter75) 111)
	(= (value counter76) 63)
	(= (value counter77) 149)
	(= (value counter78) 38)
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
	(<= (+ (value counter73) 1) (value counter74))
	(<= (+ (value counter74) 1) (value counter75))
	(<= (+ (value counter75) 1) (value counter76))
	(<= (+ (value counter76) 1) (value counter77))
	(<= (+ (value counter77) 1) (value counter78))
))
)


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
	counter79 - counter
	counter80 - counter
	counter81 - counter
	counter82 - counter
	counter83 - counter
	counter84 - counter
	counter85 - counter
	counter86 - counter
	counter87 - counter
	counter88 - counter
	counter89 - counter
	counter90 - counter
	counter91 - counter
	counter92 - counter
	counter93 - counter
)
(:bounds 
	(<= (delta) 188)
	(>= (delta) 0)
)
(:precision 
	(= (delta) 0)
)
(:init
	(= (max_int) 188)
	(= (value counter0) 155)
	(= (value counter1) 186)
	(= (value counter2) 73)
	(= (value counter3) 141)
	(= (value counter4) 28)
	(= (value counter5) 34)
	(= (value counter6) 15)
	(= (value counter7) 80)
	(= (value counter8) 18)
	(= (value counter9) 21)
	(= (value counter10) 162)
	(= (value counter11) 4)
	(= (value counter12) 168)
	(= (value counter13) 91)
	(= (value counter14) 102)
	(= (value counter15) 8)
	(= (value counter16) 40)
	(= (value counter17) 186)
	(= (value counter18) 37)
	(= (value counter19) 169)
	(= (value counter20) 54)
	(= (value counter21) 154)
	(= (value counter22) 150)
	(= (value counter23) 17)
	(= (value counter24) 134)
	(= (value counter25) 186)
	(= (value counter26) 86)
	(= (value counter27) 160)
	(= (value counter28) 137)
	(= (value counter29) 147)
	(= (value counter30) 102)
	(= (value counter31) 45)
	(= (value counter32) 127)
	(= (value counter33) 72)
	(= (value counter34) 154)
	(= (value counter35) 174)
	(= (value counter36) 78)
	(= (value counter37) 9)
	(= (value counter38) 76)
	(= (value counter39) 52)
	(= (value counter40) 180)
	(= (value counter41) 143)
	(= (value counter42) 95)
	(= (value counter43) 149)
	(= (value counter44) 26)
	(= (value counter45) 65)
	(= (value counter46) 173)
	(= (value counter47) 131)
	(= (value counter48) 151)
	(= (value counter49) 183)
	(= (value counter50) 12)
	(= (value counter51) 94)
	(= (value counter52) 76)
	(= (value counter53) 88)
	(= (value counter54) 143)
	(= (value counter55) 38)
	(= (value counter56) 125)
	(= (value counter57) 68)
	(= (value counter58) 38)
	(= (value counter59) 131)
	(= (value counter60) 31)
	(= (value counter61) 10)
	(= (value counter62) 10)
	(= (value counter63) 122)
	(= (value counter64) 22)
	(= (value counter65) 75)
	(= (value counter66) 137)
	(= (value counter67) 117)
	(= (value counter68) 143)
	(= (value counter69) 118)
	(= (value counter70) 181)
	(= (value counter71) 141)
	(= (value counter72) 25)
	(= (value counter73) 119)
	(= (value counter74) 39)
	(= (value counter75) 14)
	(= (value counter76) 20)
	(= (value counter77) 132)
	(= (value counter78) 33)
	(= (value counter79) 91)
	(= (value counter80) 51)
	(= (value counter81) 11)
	(= (value counter82) 55)
	(= (value counter83) 139)
	(= (value counter84) 88)
	(= (value counter85) 154)
	(= (value counter86) 74)
	(= (value counter87) 40)
	(= (value counter88) 141)
	(= (value counter89) 165)
	(= (value counter90) 74)
	(= (value counter91) 36)
	(= (value counter92) 57)
	(= (value counter93) 49)
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
	(<= (+ (value counter78) 1) (value counter79))
	(<= (+ (value counter79) 1) (value counter80))
	(<= (+ (value counter80) 1) (value counter81))
	(<= (+ (value counter81) 1) (value counter82))
	(<= (+ (value counter82) 1) (value counter83))
	(<= (+ (value counter83) 1) (value counter84))
	(<= (+ (value counter84) 1) (value counter85))
	(<= (+ (value counter85) 1) (value counter86))
	(<= (+ (value counter86) 1) (value counter87))
	(<= (+ (value counter87) 1) (value counter88))
	(<= (+ (value counter88) 1) (value counter89))
	(<= (+ (value counter89) 1) (value counter90))
	(<= (+ (value counter90) 1) (value counter91))
	(<= (+ (value counter91) 1) (value counter92))
	(<= (+ (value counter92) 1) (value counter93))
))
)


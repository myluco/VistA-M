IBDEI1U2 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,30691,0)
 ;;=J94.1^^135^1382^23
 ;;^UTILITY(U,$J,358.3,30691,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30691,1,3,0)
 ;;=3^Fibrothorax
 ;;^UTILITY(U,$J,358.3,30691,1,4,0)
 ;;=4^J94.1
 ;;^UTILITY(U,$J,358.3,30691,2)
 ;;=^5008317
 ;;^UTILITY(U,$J,358.3,30692,0)
 ;;=G47.33^^135^1382^31
 ;;^UTILITY(U,$J,358.3,30692,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30692,1,3,0)
 ;;=3^Obstructive Sleep Apnea
 ;;^UTILITY(U,$J,358.3,30692,1,4,0)
 ;;=4^G47.33
 ;;^UTILITY(U,$J,358.3,30692,2)
 ;;=^332763
 ;;^UTILITY(U,$J,358.3,30693,0)
 ;;=R91.1^^135^1382^55
 ;;^UTILITY(U,$J,358.3,30693,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30693,1,3,0)
 ;;=3^Solitary Pulmonary Nodule
 ;;^UTILITY(U,$J,358.3,30693,1,4,0)
 ;;=4^R91.1
 ;;^UTILITY(U,$J,358.3,30693,2)
 ;;=^5019707
 ;;^UTILITY(U,$J,358.3,30694,0)
 ;;=T74.21XA^^135^1383^1
 ;;^UTILITY(U,$J,358.3,30694,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30694,1,3,0)
 ;;=3^Adult Sexual Abuse,Confirmed,Init Encntr
 ;;^UTILITY(U,$J,358.3,30694,1,4,0)
 ;;=4^T74.21XA
 ;;^UTILITY(U,$J,358.3,30694,2)
 ;;=^5054152
 ;;^UTILITY(U,$J,358.3,30695,0)
 ;;=T76.21XA^^135^1383^4
 ;;^UTILITY(U,$J,358.3,30695,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30695,1,3,0)
 ;;=3^Adult Sexual Abuse,Suspected,Init Encntr
 ;;^UTILITY(U,$J,358.3,30695,1,4,0)
 ;;=4^T76.21XA
 ;;^UTILITY(U,$J,358.3,30695,2)
 ;;=^5054227
 ;;^UTILITY(U,$J,358.3,30696,0)
 ;;=Y07.9^^135^1383^9
 ;;^UTILITY(U,$J,358.3,30696,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30696,1,3,0)
 ;;=3^Perpetrator of Maltreatment/Neglect,Unspec
 ;;^UTILITY(U,$J,358.3,30696,1,4,0)
 ;;=4^Y07.9
 ;;^UTILITY(U,$J,358.3,30696,2)
 ;;=^5061209
 ;;^UTILITY(U,$J,358.3,30697,0)
 ;;=T74.21XD^^135^1383^3
 ;;^UTILITY(U,$J,358.3,30697,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30697,1,3,0)
 ;;=3^Adult Sexual Abuse,Confirmed,Sub Encntr
 ;;^UTILITY(U,$J,358.3,30697,1,4,0)
 ;;=4^T74.21XD
 ;;^UTILITY(U,$J,358.3,30697,2)
 ;;=^5054153
 ;;^UTILITY(U,$J,358.3,30698,0)
 ;;=T74.21XS^^135^1383^2
 ;;^UTILITY(U,$J,358.3,30698,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30698,1,3,0)
 ;;=3^Adult Sexual Abuse,Confirmed,Sequela
 ;;^UTILITY(U,$J,358.3,30698,1,4,0)
 ;;=4^T74.21XS
 ;;^UTILITY(U,$J,358.3,30698,2)
 ;;=^5054154
 ;;^UTILITY(U,$J,358.3,30699,0)
 ;;=T76.21XD^^135^1383^6
 ;;^UTILITY(U,$J,358.3,30699,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30699,1,3,0)
 ;;=3^Adult Sexual Abuse,Suspected,Sub Encntr
 ;;^UTILITY(U,$J,358.3,30699,1,4,0)
 ;;=4^T76.21XD
 ;;^UTILITY(U,$J,358.3,30699,2)
 ;;=^5054228
 ;;^UTILITY(U,$J,358.3,30700,0)
 ;;=T76.21XS^^135^1383^5
 ;;^UTILITY(U,$J,358.3,30700,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30700,1,3,0)
 ;;=3^Adult Sexual Abuse,Suspected,Sequela
 ;;^UTILITY(U,$J,358.3,30700,1,4,0)
 ;;=4^T76.21XS
 ;;^UTILITY(U,$J,358.3,30700,2)
 ;;=^5054229
 ;;^UTILITY(U,$J,358.3,30701,0)
 ;;=Y07.53^^135^1383^7
 ;;^UTILITY(U,$J,358.3,30701,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30701,1,3,0)
 ;;=3^Instructor,Perpetrator of MST
 ;;^UTILITY(U,$J,358.3,30701,1,4,0)
 ;;=4^Y07.53
 ;;^UTILITY(U,$J,358.3,30701,2)
 ;;=^5061207
 ;;^UTILITY(U,$J,358.3,30702,0)
 ;;=Y07.59^^135^1383^8
 ;;^UTILITY(U,$J,358.3,30702,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30702,1,3,0)
 ;;=3^Non-Family Member,Perpetrator of MST/Abuse NEC
 ;;^UTILITY(U,$J,358.3,30702,1,4,0)
 ;;=4^Y07.59
 ;;^UTILITY(U,$J,358.3,30702,2)
 ;;=^5061208
 ;;^UTILITY(U,$J,358.3,30703,0)
 ;;=E66.01^^135^1384^120
 ;;^UTILITY(U,$J,358.3,30703,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30703,1,3,0)
 ;;=3^Morbid Obesity
 ;;^UTILITY(U,$J,358.3,30703,1,4,0)
 ;;=4^E66.01
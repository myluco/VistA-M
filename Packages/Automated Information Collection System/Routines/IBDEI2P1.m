IBDEI2P1 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,45205,1,4,0)
 ;;=4^R26.81
 ;;^UTILITY(U,$J,358.3,45205,2)
 ;;=^5019307
 ;;^UTILITY(U,$J,358.3,45206,0)
 ;;=R26.89^^200^2240^30
 ;;^UTILITY(U,$J,358.3,45206,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,45206,1,3,0)
 ;;=3^Abnormalities of Gait and Mobility NEC
 ;;^UTILITY(U,$J,358.3,45206,1,4,0)
 ;;=4^R26.89
 ;;^UTILITY(U,$J,358.3,45206,2)
 ;;=^5019308
 ;;^UTILITY(U,$J,358.3,45207,0)
 ;;=R26.9^^200^2240^31
 ;;^UTILITY(U,$J,358.3,45207,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,45207,1,3,0)
 ;;=3^Abnormalities of Gait and Mobility,Unspec
 ;;^UTILITY(U,$J,358.3,45207,1,4,0)
 ;;=4^R26.9
 ;;^UTILITY(U,$J,358.3,45207,2)
 ;;=^5019309
 ;;^UTILITY(U,$J,358.3,45208,0)
 ;;=R27.0^^200^2240^42
 ;;^UTILITY(U,$J,358.3,45208,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,45208,1,3,0)
 ;;=3^Ataxia,Unspec
 ;;^UTILITY(U,$J,358.3,45208,1,4,0)
 ;;=4^R27.0
 ;;^UTILITY(U,$J,358.3,45208,2)
 ;;=^5019310
 ;;^UTILITY(U,$J,358.3,45209,0)
 ;;=R27.8^^200^2240^100
 ;;^UTILITY(U,$J,358.3,45209,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,45209,1,3,0)
 ;;=3^Lack of Coordination NEC
 ;;^UTILITY(U,$J,358.3,45209,1,4,0)
 ;;=4^R27.8
 ;;^UTILITY(U,$J,358.3,45209,2)
 ;;=^5019311
 ;;^UTILITY(U,$J,358.3,45210,0)
 ;;=R27.9^^200^2240^101
 ;;^UTILITY(U,$J,358.3,45210,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,45210,1,3,0)
 ;;=3^Lack of Coordination,Unspec
 ;;^UTILITY(U,$J,358.3,45210,1,4,0)
 ;;=4^R27.9
 ;;^UTILITY(U,$J,358.3,45210,2)
 ;;=^5019312
 ;;^UTILITY(U,$J,358.3,45211,0)
 ;;=R29.0^^200^2240^153
 ;;^UTILITY(U,$J,358.3,45211,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,45211,1,3,0)
 ;;=3^Tetany
 ;;^UTILITY(U,$J,358.3,45211,1,4,0)
 ;;=4^R29.0
 ;;^UTILITY(U,$J,358.3,45211,2)
 ;;=^118032
 ;;^UTILITY(U,$J,358.3,45212,0)
 ;;=R29.1^^200^2240^118
 ;;^UTILITY(U,$J,358.3,45212,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,45212,1,3,0)
 ;;=3^Meningismus
 ;;^UTILITY(U,$J,358.3,45212,1,4,0)
 ;;=4^R29.1
 ;;^UTILITY(U,$J,358.3,45212,2)
 ;;=^5019313
 ;;^UTILITY(U,$J,358.3,45213,0)
 ;;=R29.5^^200^2240^155
 ;;^UTILITY(U,$J,358.3,45213,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,45213,1,3,0)
 ;;=3^Transient Paralysis
 ;;^UTILITY(U,$J,358.3,45213,1,4,0)
 ;;=4^R29.5
 ;;^UTILITY(U,$J,358.3,45213,2)
 ;;=^5019316
 ;;^UTILITY(U,$J,358.3,45214,0)
 ;;=R34.^^200^2240^39
 ;;^UTILITY(U,$J,358.3,45214,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,45214,1,3,0)
 ;;=3^Anuria and Oliguria
 ;;^UTILITY(U,$J,358.3,45214,1,4,0)
 ;;=4^R34.
 ;;^UTILITY(U,$J,358.3,45214,2)
 ;;=^5019333
 ;;^UTILITY(U,$J,358.3,45215,0)
 ;;=R35.8^^200^2240^140
 ;;^UTILITY(U,$J,358.3,45215,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,45215,1,3,0)
 ;;=3^Polyuria NEC
 ;;^UTILITY(U,$J,358.3,45215,1,4,0)
 ;;=4^R35.8
 ;;^UTILITY(U,$J,358.3,45215,2)
 ;;=^5019336
 ;;^UTILITY(U,$J,358.3,45216,0)
 ;;=R39.12^^200^2240^141
 ;;^UTILITY(U,$J,358.3,45216,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,45216,1,3,0)
 ;;=3^Poor Urinary Stream
 ;;^UTILITY(U,$J,358.3,45216,1,4,0)
 ;;=4^R39.12
 ;;^UTILITY(U,$J,358.3,45216,2)
 ;;=^5019342
 ;;^UTILITY(U,$J,358.3,45217,0)
 ;;=R39.14^^200^2240^73
 ;;^UTILITY(U,$J,358.3,45217,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,45217,1,3,0)
 ;;=3^Feeling of Incomplete Bladder Emptying
 ;;^UTILITY(U,$J,358.3,45217,1,4,0)
 ;;=4^R39.14
 ;;^UTILITY(U,$J,358.3,45217,2)
 ;;=^5019344
 ;;^UTILITY(U,$J,358.3,45218,0)
 ;;=R41.4^^200^2240^122
 ;;^UTILITY(U,$J,358.3,45218,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,45218,1,3,0)
 ;;=3^Neurologic Neglect Syndrome
 ;;^UTILITY(U,$J,358.3,45218,1,4,0)
 ;;=4^R41.4
 ;;^UTILITY(U,$J,358.3,45218,2)
 ;;=^303316
 ;;^UTILITY(U,$J,358.3,45219,0)
 ;;=R41.81^^200^2240^32

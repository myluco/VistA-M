IBDEI0X7 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,15305,1,4,0)
 ;;=4^C43.21
 ;;^UTILITY(U,$J,358.3,15305,2)
 ;;=^5000999
 ;;^UTILITY(U,$J,358.3,15306,0)
 ;;=C43.22^^85^815^3
 ;;^UTILITY(U,$J,358.3,15306,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15306,1,3,0)
 ;;=3^Malig Melanoma of Left Ear/External Auricular Canal
 ;;^UTILITY(U,$J,358.3,15306,1,4,0)
 ;;=4^C43.22
 ;;^UTILITY(U,$J,358.3,15306,2)
 ;;=^5001000
 ;;^UTILITY(U,$J,358.3,15307,0)
 ;;=C43.31^^85^815^8
 ;;^UTILITY(U,$J,358.3,15307,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15307,1,3,0)
 ;;=3^Malig Melanoma of Nose
 ;;^UTILITY(U,$J,358.3,15307,1,4,0)
 ;;=4^C43.31
 ;;^UTILITY(U,$J,358.3,15307,2)
 ;;=^5001002
 ;;^UTILITY(U,$J,358.3,15308,0)
 ;;=C43.39^^85^815^2
 ;;^UTILITY(U,$J,358.3,15308,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15308,1,3,0)
 ;;=3^Malig Melanoma of Face NEC
 ;;^UTILITY(U,$J,358.3,15308,1,4,0)
 ;;=4^C43.39
 ;;^UTILITY(U,$J,358.3,15308,2)
 ;;=^5001003
 ;;^UTILITY(U,$J,358.3,15309,0)
 ;;=C43.4^^85^815^14
 ;;^UTILITY(U,$J,358.3,15309,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15309,1,3,0)
 ;;=3^Malig Melanoma of Scalp/Neck
 ;;^UTILITY(U,$J,358.3,15309,1,4,0)
 ;;=4^C43.4
 ;;^UTILITY(U,$J,358.3,15309,2)
 ;;=^5001004
 ;;^UTILITY(U,$J,358.3,15310,0)
 ;;=C43.51^^85^815^1
 ;;^UTILITY(U,$J,358.3,15310,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15310,1,3,0)
 ;;=3^Malig Melanoma of Anal Skin
 ;;^UTILITY(U,$J,358.3,15310,1,4,0)
 ;;=4^C43.51
 ;;^UTILITY(U,$J,358.3,15310,2)
 ;;=^5001005
 ;;^UTILITY(U,$J,358.3,15311,0)
 ;;=C43.52^^85^815^15
 ;;^UTILITY(U,$J,358.3,15311,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15311,1,3,0)
 ;;=3^Malig Melanoma of Skin of Breast
 ;;^UTILITY(U,$J,358.3,15311,1,4,0)
 ;;=4^C43.52
 ;;^UTILITY(U,$J,358.3,15311,2)
 ;;=^5001006
 ;;^UTILITY(U,$J,358.3,15312,0)
 ;;=C43.59^^85^815^17
 ;;^UTILITY(U,$J,358.3,15312,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15312,1,3,0)
 ;;=3^Malig Melanoma of Trunk NEC
 ;;^UTILITY(U,$J,358.3,15312,1,4,0)
 ;;=4^C43.59
 ;;^UTILITY(U,$J,358.3,15312,2)
 ;;=^5001007
 ;;^UTILITY(U,$J,358.3,15313,0)
 ;;=C43.61^^85^815^13
 ;;^UTILITY(U,$J,358.3,15313,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15313,1,3,0)
 ;;=3^Malig Melanoma of Right Upper Limb
 ;;^UTILITY(U,$J,358.3,15313,1,4,0)
 ;;=4^C43.61
 ;;^UTILITY(U,$J,358.3,15313,2)
 ;;=^5001009
 ;;^UTILITY(U,$J,358.3,15314,0)
 ;;=C43.62^^85^815^6
 ;;^UTILITY(U,$J,358.3,15314,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15314,1,3,0)
 ;;=3^Malig Melanoma of Left Upper Limb
 ;;^UTILITY(U,$J,358.3,15314,1,4,0)
 ;;=4^C43.62
 ;;^UTILITY(U,$J,358.3,15314,2)
 ;;=^5001010
 ;;^UTILITY(U,$J,358.3,15315,0)
 ;;=C43.71^^85^815^12
 ;;^UTILITY(U,$J,358.3,15315,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15315,1,3,0)
 ;;=3^Malig Melanoma of Right Lower Limb
 ;;^UTILITY(U,$J,358.3,15315,1,4,0)
 ;;=4^C43.71
 ;;^UTILITY(U,$J,358.3,15315,2)
 ;;=^5001012
 ;;^UTILITY(U,$J,358.3,15316,0)
 ;;=C43.72^^85^815^5
 ;;^UTILITY(U,$J,358.3,15316,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15316,1,3,0)
 ;;=3^Malig Melanoma of Left Lower Limb
 ;;^UTILITY(U,$J,358.3,15316,1,4,0)
 ;;=4^C43.72
 ;;^UTILITY(U,$J,358.3,15316,2)
 ;;=^5001013
 ;;^UTILITY(U,$J,358.3,15317,0)
 ;;=C43.8^^85^815^9
 ;;^UTILITY(U,$J,358.3,15317,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15317,1,3,0)
 ;;=3^Malig Melanoma of Overlapping Sites of Skin
 ;;^UTILITY(U,$J,358.3,15317,1,4,0)
 ;;=4^C43.8
 ;;^UTILITY(U,$J,358.3,15317,2)
 ;;=^5001014
 ;;^UTILITY(U,$J,358.3,15318,0)
 ;;=D03.0^^85^815^26
 ;;^UTILITY(U,$J,358.3,15318,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15318,1,3,0)
 ;;=3^Melanoma in Situ of Lip
 ;;^UTILITY(U,$J,358.3,15318,1,4,0)
 ;;=4^D03.0
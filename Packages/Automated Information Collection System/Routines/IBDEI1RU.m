IBDEI1RU ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,29658,0)
 ;;=H01.005^^135^1365^1
 ;;^UTILITY(U,$J,358.3,29658,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29658,1,3,0)
 ;;=3^Blepharitis Unspec,Left Lower Eyelid
 ;;^UTILITY(U,$J,358.3,29658,1,4,0)
 ;;=4^H01.005
 ;;^UTILITY(U,$J,358.3,29658,2)
 ;;=^5133380
 ;;^UTILITY(U,$J,358.3,29659,0)
 ;;=H01.001^^135^1365^4
 ;;^UTILITY(U,$J,358.3,29659,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29659,1,3,0)
 ;;=3^Blepharitis Unspec,Right Upper Eyelid
 ;;^UTILITY(U,$J,358.3,29659,1,4,0)
 ;;=4^H01.001
 ;;^UTILITY(U,$J,358.3,29659,2)
 ;;=^5004238
 ;;^UTILITY(U,$J,358.3,29660,0)
 ;;=H57.13^^135^1365^10
 ;;^UTILITY(U,$J,358.3,29660,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29660,1,3,0)
 ;;=3^Ocular Pain,Bilateral
 ;;^UTILITY(U,$J,358.3,29660,1,4,0)
 ;;=4^H57.13
 ;;^UTILITY(U,$J,358.3,29660,2)
 ;;=^5006384
 ;;^UTILITY(U,$J,358.3,29661,0)
 ;;=H57.12^^135^1365^11
 ;;^UTILITY(U,$J,358.3,29661,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29661,1,3,0)
 ;;=3^Ocular Pain,Left Eye
 ;;^UTILITY(U,$J,358.3,29661,1,4,0)
 ;;=4^H57.12
 ;;^UTILITY(U,$J,358.3,29661,2)
 ;;=^5006383
 ;;^UTILITY(U,$J,358.3,29662,0)
 ;;=H57.11^^135^1365^12
 ;;^UTILITY(U,$J,358.3,29662,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29662,1,3,0)
 ;;=3^Ocular Pain,Right Eye
 ;;^UTILITY(U,$J,358.3,29662,1,4,0)
 ;;=4^H57.11
 ;;^UTILITY(U,$J,358.3,29662,2)
 ;;=^5006382
 ;;^UTILITY(U,$J,358.3,29663,0)
 ;;=S05.02XA^^135^1366^3
 ;;^UTILITY(U,$J,358.3,29663,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29663,1,3,0)
 ;;=3^Inj Conjunctiva/Corneal Abrasion w/o FB,Left Eye,Init
 ;;^UTILITY(U,$J,358.3,29663,1,4,0)
 ;;=4^S05.02XA
 ;;^UTILITY(U,$J,358.3,29663,2)
 ;;=^5020582
 ;;^UTILITY(U,$J,358.3,29664,0)
 ;;=S05.01XA^^135^1366^4
 ;;^UTILITY(U,$J,358.3,29664,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29664,1,3,0)
 ;;=3^Inj Conjunctiva/Corneal Abrasion w/o FB,Right Eye,Init
 ;;^UTILITY(U,$J,358.3,29664,1,4,0)
 ;;=4^S05.01XA
 ;;^UTILITY(U,$J,358.3,29664,2)
 ;;=^5020579
 ;;^UTILITY(U,$J,358.3,29665,0)
 ;;=T15.02XA^^135^1366^1
 ;;^UTILITY(U,$J,358.3,29665,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29665,1,3,0)
 ;;=3^Foreign Body in Cornea,Left Eye,Init Encntr
 ;;^UTILITY(U,$J,358.3,29665,1,4,0)
 ;;=4^T15.02XA
 ;;^UTILITY(U,$J,358.3,29665,2)
 ;;=^5046387
 ;;^UTILITY(U,$J,358.3,29666,0)
 ;;=T15.01XA^^135^1366^2
 ;;^UTILITY(U,$J,358.3,29666,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29666,1,3,0)
 ;;=3^Foreign Body in Cornea,Right Eye,Init Encntr
 ;;^UTILITY(U,$J,358.3,29666,1,4,0)
 ;;=4^T15.01XA
 ;;^UTILITY(U,$J,358.3,29666,2)
 ;;=^5046384
 ;;^UTILITY(U,$J,358.3,29667,0)
 ;;=S00.252A^^135^1366^5
 ;;^UTILITY(U,$J,358.3,29667,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29667,1,3,0)
 ;;=3^Superficial FB of Left Eyelid/Periocular Area,Init Encntr
 ;;^UTILITY(U,$J,358.3,29667,1,4,0)
 ;;=4^S00.252A
 ;;^UTILITY(U,$J,358.3,29667,2)
 ;;=^5019820
 ;;^UTILITY(U,$J,358.3,29668,0)
 ;;=S00.251A^^135^1366^6
 ;;^UTILITY(U,$J,358.3,29668,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29668,1,3,0)
 ;;=3^Superficial FB of Right Eyelid/Periocular Area,Init Encntr
 ;;^UTILITY(U,$J,358.3,29668,1,4,0)
 ;;=4^S00.251A
 ;;^UTILITY(U,$J,358.3,29668,2)
 ;;=^5019817
 ;;^UTILITY(U,$J,358.3,29669,0)
 ;;=B96.81^^135^1367^56
 ;;^UTILITY(U,$J,358.3,29669,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,29669,1,3,0)
 ;;=3^H. Pylori as the Cause of Diseases Classified Elsewhere
 ;;^UTILITY(U,$J,358.3,29669,1,4,0)
 ;;=4^B96.81
 ;;^UTILITY(U,$J,358.3,29669,2)
 ;;=^5000857
 ;;^UTILITY(U,$J,358.3,29670,0)
 ;;=B15.9^^135^1367^58
 ;;^UTILITY(U,$J,358.3,29670,1,0)
 ;;=^358.31IA^4^2
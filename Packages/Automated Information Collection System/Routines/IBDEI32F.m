IBDEI32F ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,51391,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51391,1,3,0)
 ;;=3^Radial styloid tenosynovitis [de Quervain]
 ;;^UTILITY(U,$J,358.3,51391,1,4,0)
 ;;=4^M65.4
 ;;^UTILITY(U,$J,358.3,51391,2)
 ;;=^5012792
 ;;^UTILITY(U,$J,358.3,51392,0)
 ;;=M71.50^^222^2476^13
 ;;^UTILITY(U,$J,358.3,51392,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51392,1,3,0)
 ;;=3^Bursitis, NEC, unspec site, oth
 ;;^UTILITY(U,$J,358.3,51392,1,4,0)
 ;;=4^M71.50
 ;;^UTILITY(U,$J,358.3,51392,2)
 ;;=^5013190
 ;;^UTILITY(U,$J,358.3,51393,0)
 ;;=M71.21^^222^2476^45
 ;;^UTILITY(U,$J,358.3,51393,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51393,1,3,0)
 ;;=3^Synvl cyst of popliteal space [Baker], rt knee
 ;;^UTILITY(U,$J,358.3,51393,1,4,0)
 ;;=4^M71.21
 ;;^UTILITY(U,$J,358.3,51393,2)
 ;;=^5013147
 ;;^UTILITY(U,$J,358.3,51394,0)
 ;;=M71.22^^222^2476^46
 ;;^UTILITY(U,$J,358.3,51394,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51394,1,3,0)
 ;;=3^Synvl cyst of popliteal space [Baker], lft knee
 ;;^UTILITY(U,$J,358.3,51394,1,4,0)
 ;;=4^M71.22
 ;;^UTILITY(U,$J,358.3,51394,2)
 ;;=^5013148
 ;;^UTILITY(U,$J,358.3,51395,0)
 ;;=M72.2^^222^2476^34
 ;;^UTILITY(U,$J,358.3,51395,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51395,1,3,0)
 ;;=3^Plantar fascial fibromatosis
 ;;^UTILITY(U,$J,358.3,51395,1,4,0)
 ;;=4^M72.2
 ;;^UTILITY(U,$J,358.3,51395,2)
 ;;=^272598
 ;;^UTILITY(U,$J,358.3,51396,0)
 ;;=M79.0^^222^2476^40
 ;;^UTILITY(U,$J,358.3,51396,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51396,1,3,0)
 ;;=3^Rheumatism, unspec
 ;;^UTILITY(U,$J,358.3,51396,1,4,0)
 ;;=4^M79.0
 ;;^UTILITY(U,$J,358.3,51396,2)
 ;;=^5013320
 ;;^UTILITY(U,$J,358.3,51397,0)
 ;;=G60.9^^222^2476^21
 ;;^UTILITY(U,$J,358.3,51397,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51397,1,3,0)
 ;;=3^Hereditary & idiopathic neurpthy, unspec
 ;;^UTILITY(U,$J,358.3,51397,1,4,0)
 ;;=4^G60.9
 ;;^UTILITY(U,$J,358.3,51397,2)
 ;;=^5004071
 ;;^UTILITY(U,$J,358.3,51398,0)
 ;;=I50.9^^222^2477^3
 ;;^UTILITY(U,$J,358.3,51398,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51398,1,3,0)
 ;;=3^Heart failure, unspec
 ;;^UTILITY(U,$J,358.3,51398,1,4,0)
 ;;=4^I50.9
 ;;^UTILITY(U,$J,358.3,51398,2)
 ;;=^5007251
 ;;^UTILITY(U,$J,358.3,51399,0)
 ;;=R60.9^^222^2477^2
 ;;^UTILITY(U,$J,358.3,51399,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51399,1,3,0)
 ;;=3^Edema, unspec
 ;;^UTILITY(U,$J,358.3,51399,1,4,0)
 ;;=4^R60.9
 ;;^UTILITY(U,$J,358.3,51399,2)
 ;;=^5019534
 ;;^UTILITY(U,$J,358.3,51400,0)
 ;;=I10.^^222^2477^4
 ;;^UTILITY(U,$J,358.3,51400,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51400,1,3,0)
 ;;=3^Hypertension
 ;;^UTILITY(U,$J,358.3,51400,1,4,0)
 ;;=4^I10.
 ;;^UTILITY(U,$J,358.3,51400,2)
 ;;=^5007062
 ;;^UTILITY(U,$J,358.3,51401,0)
 ;;=I82.91^^222^2477^1
 ;;^UTILITY(U,$J,358.3,51401,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51401,1,3,0)
 ;;=3^Chron embolism & thrombosis of unspec vein
 ;;^UTILITY(U,$J,358.3,51401,1,4,0)
 ;;=4^I82.91
 ;;^UTILITY(U,$J,358.3,51401,2)
 ;;=^5007941
 ;;^UTILITY(U,$J,358.3,51402,0)
 ;;=A69.20^^222^2477^7
 ;;^UTILITY(U,$J,358.3,51402,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51402,1,3,0)
 ;;=3^Lyme disease, unspec
 ;;^UTILITY(U,$J,358.3,51402,1,4,0)
 ;;=4^A69.20
 ;;^UTILITY(U,$J,358.3,51402,2)
 ;;=^5000375
 ;;^UTILITY(U,$J,358.3,51403,0)
 ;;=M75.81^^222^2477^9
 ;;^UTILITY(U,$J,358.3,51403,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,51403,1,3,0)
 ;;=3^Shoulder lesions, rt shldr, oth
 ;;^UTILITY(U,$J,358.3,51403,1,4,0)
 ;;=4^M75.81
 ;;^UTILITY(U,$J,358.3,51403,2)
 ;;=^5013261
 ;;^UTILITY(U,$J,358.3,51404,0)
 ;;=M75.82^^222^2477^8
 ;;^UTILITY(U,$J,358.3,51404,1,0)
 ;;=^358.31IA^4^2

IBDEI11A ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,17205,0)
 ;;=M54.5^^88^858^64
 ;;^UTILITY(U,$J,358.3,17205,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17205,1,3,0)
 ;;=3^Pain,Spine,Low Back
 ;;^UTILITY(U,$J,358.3,17205,1,4,0)
 ;;=4^M54.5
 ;;^UTILITY(U,$J,358.3,17205,2)
 ;;=^5012311
 ;;^UTILITY(U,$J,358.3,17206,0)
 ;;=M54.41^^88^858^66
 ;;^UTILITY(U,$J,358.3,17206,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17206,1,3,0)
 ;;=3^Pain,Spine,Lumbago w/ Sciatica,Right Side
 ;;^UTILITY(U,$J,358.3,17206,1,4,0)
 ;;=4^M54.41
 ;;^UTILITY(U,$J,358.3,17206,2)
 ;;=^5012309
 ;;^UTILITY(U,$J,358.3,17207,0)
 ;;=M54.42^^88^858^65
 ;;^UTILITY(U,$J,358.3,17207,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17207,1,3,0)
 ;;=3^Pain,Spine,Lumbago w/ Sciatica,Left Side
 ;;^UTILITY(U,$J,358.3,17207,1,4,0)
 ;;=4^M54.42
 ;;^UTILITY(U,$J,358.3,17207,2)
 ;;=^5012310
 ;;^UTILITY(U,$J,358.3,17208,0)
 ;;=M54.00^^88^858^67
 ;;^UTILITY(U,$J,358.3,17208,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17208,1,3,0)
 ;;=3^Pain,Spine,Neck/Back,Panniculitis,Unspec Site
 ;;^UTILITY(U,$J,358.3,17208,1,4,0)
 ;;=4^M54.00
 ;;^UTILITY(U,$J,358.3,17208,2)
 ;;=^5012285
 ;;^UTILITY(U,$J,358.3,17209,0)
 ;;=M54.10^^88^858^68
 ;;^UTILITY(U,$J,358.3,17209,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17209,1,3,0)
 ;;=3^Pain,Spine,Radiculopathy,Unspec Site
 ;;^UTILITY(U,$J,358.3,17209,1,4,0)
 ;;=4^M54.10
 ;;^UTILITY(U,$J,358.3,17209,2)
 ;;=^5012295
 ;;^UTILITY(U,$J,358.3,17210,0)
 ;;=M54.31^^88^858^70
 ;;^UTILITY(U,$J,358.3,17210,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17210,1,3,0)
 ;;=3^Pain,Spine,Sciatica,Right Side
 ;;^UTILITY(U,$J,358.3,17210,1,4,0)
 ;;=4^M54.31
 ;;^UTILITY(U,$J,358.3,17210,2)
 ;;=^5012306
 ;;^UTILITY(U,$J,358.3,17211,0)
 ;;=M54.32^^88^858^69
 ;;^UTILITY(U,$J,358.3,17211,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17211,1,3,0)
 ;;=3^Pain,Spine,Sciatica,Left Side
 ;;^UTILITY(U,$J,358.3,17211,1,4,0)
 ;;=4^M54.32
 ;;^UTILITY(U,$J,358.3,17211,2)
 ;;=^5012307
 ;;^UTILITY(U,$J,358.3,17212,0)
 ;;=M54.6^^88^858^71
 ;;^UTILITY(U,$J,358.3,17212,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17212,1,3,0)
 ;;=3^Pain,Spine,Thoracic
 ;;^UTILITY(U,$J,358.3,17212,1,4,0)
 ;;=4^M54.6
 ;;^UTILITY(U,$J,358.3,17212,2)
 ;;=^272507
 ;;^UTILITY(U,$J,358.3,17213,0)
 ;;=M79.652^^88^858^72
 ;;^UTILITY(U,$J,358.3,17213,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17213,1,3,0)
 ;;=3^Pain,Thigh,Left
 ;;^UTILITY(U,$J,358.3,17213,1,4,0)
 ;;=4^M79.652
 ;;^UTILITY(U,$J,358.3,17213,2)
 ;;=^5013345
 ;;^UTILITY(U,$J,358.3,17214,0)
 ;;=M79.651^^88^858^73
 ;;^UTILITY(U,$J,358.3,17214,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17214,1,3,0)
 ;;=3^Pain,Thigh,Right
 ;;^UTILITY(U,$J,358.3,17214,1,4,0)
 ;;=4^M79.651
 ;;^UTILITY(U,$J,358.3,17214,2)
 ;;=^5013344
 ;;^UTILITY(U,$J,358.3,17215,0)
 ;;=R07.0^^88^858^74
 ;;^UTILITY(U,$J,358.3,17215,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17215,1,3,0)
 ;;=3^Pain,Throat
 ;;^UTILITY(U,$J,358.3,17215,1,4,0)
 ;;=4^R07.0
 ;;^UTILITY(U,$J,358.3,17215,2)
 ;;=^5019195
 ;;^UTILITY(U,$J,358.3,17216,0)
 ;;=M79.675^^88^858^75
 ;;^UTILITY(U,$J,358.3,17216,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17216,1,3,0)
 ;;=3^Pain,Toe(s),Left
 ;;^UTILITY(U,$J,358.3,17216,1,4,0)
 ;;=4^M79.675
 ;;^UTILITY(U,$J,358.3,17216,2)
 ;;=^5013354
 ;;^UTILITY(U,$J,358.3,17217,0)
 ;;=M79.674^^88^858^76
 ;;^UTILITY(U,$J,358.3,17217,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,17217,1,3,0)
 ;;=3^Pain,Toe(s),Right
 ;;^UTILITY(U,$J,358.3,17217,1,4,0)
 ;;=4^M79.674
 ;;^UTILITY(U,$J,358.3,17217,2)
 ;;=^5013353
 ;;^UTILITY(U,$J,358.3,17218,0)
 ;;=R52.^^88^858^77
 ;;^UTILITY(U,$J,358.3,17218,1,0)
 ;;=^358.31IA^4^2

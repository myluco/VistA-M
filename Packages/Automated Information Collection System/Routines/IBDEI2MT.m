IBDEI2MT ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,44167,1,4,0)
 ;;=4^K50.114
 ;;^UTILITY(U,$J,358.3,44167,2)
 ;;=^5008635
 ;;^UTILITY(U,$J,358.3,44168,0)
 ;;=D12.6^^200^2223^7
 ;;^UTILITY(U,$J,358.3,44168,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44168,1,3,0)
 ;;=3^Adenomatous Polyp of Colon
 ;;^UTILITY(U,$J,358.3,44168,1,4,0)
 ;;=4^D12.6
 ;;^UTILITY(U,$J,358.3,44168,2)
 ;;=^5001969
 ;;^UTILITY(U,$J,358.3,44169,0)
 ;;=K64.9^^200^2223^57
 ;;^UTILITY(U,$J,358.3,44169,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44169,1,3,0)
 ;;=3^Hemorrhoids w/o Complication
 ;;^UTILITY(U,$J,358.3,44169,1,4,0)
 ;;=4^K64.9
 ;;^UTILITY(U,$J,358.3,44169,2)
 ;;=^5008775
 ;;^UTILITY(U,$J,358.3,44170,0)
 ;;=K50.814^^200^2223^30
 ;;^UTILITY(U,$J,358.3,44170,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44170,1,3,0)
 ;;=3^Crohn's Disease,Small/Large Intestine w/ Abscess
 ;;^UTILITY(U,$J,358.3,44170,1,4,0)
 ;;=4^K50.814
 ;;^UTILITY(U,$J,358.3,44170,2)
 ;;=^5008642
 ;;^UTILITY(U,$J,358.3,44171,0)
 ;;=D12.9^^200^2223^9
 ;;^UTILITY(U,$J,358.3,44171,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44171,1,3,0)
 ;;=3^Benign Neop of Anus
 ;;^UTILITY(U,$J,358.3,44171,1,4,0)
 ;;=4^D12.9
 ;;^UTILITY(U,$J,358.3,44171,2)
 ;;=^5001972
 ;;^UTILITY(U,$J,358.3,44172,0)
 ;;=D12.8^^200^2223^15
 ;;^UTILITY(U,$J,358.3,44172,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44172,1,3,0)
 ;;=3^Benign Neop of Rectum
 ;;^UTILITY(U,$J,358.3,44172,1,4,0)
 ;;=4^D12.8
 ;;^UTILITY(U,$J,358.3,44172,2)
 ;;=^5001971
 ;;^UTILITY(U,$J,358.3,44173,0)
 ;;=K92.2^^200^2223^49
 ;;^UTILITY(U,$J,358.3,44173,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44173,1,3,0)
 ;;=3^GI Bleed,Unspec
 ;;^UTILITY(U,$J,358.3,44173,1,4,0)
 ;;=4^K92.2
 ;;^UTILITY(U,$J,358.3,44173,2)
 ;;=^5008915
 ;;^UTILITY(U,$J,358.3,44174,0)
 ;;=K62.5^^200^2223^8
 ;;^UTILITY(U,$J,358.3,44174,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44174,1,3,0)
 ;;=3^BRBPR
 ;;^UTILITY(U,$J,358.3,44174,1,4,0)
 ;;=4^K62.5
 ;;^UTILITY(U,$J,358.3,44174,2)
 ;;=^5008755
 ;;^UTILITY(U,$J,358.3,44175,0)
 ;;=K92.1^^200^2223^71
 ;;^UTILITY(U,$J,358.3,44175,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44175,1,3,0)
 ;;=3^Melena
 ;;^UTILITY(U,$J,358.3,44175,1,4,0)
 ;;=4^K92.1
 ;;^UTILITY(U,$J,358.3,44175,2)
 ;;=^5008914
 ;;^UTILITY(U,$J,358.3,44176,0)
 ;;=R19.5^^200^2223^48
 ;;^UTILITY(U,$J,358.3,44176,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44176,1,3,0)
 ;;=3^Fecal Abnormalities NEC
 ;;^UTILITY(U,$J,358.3,44176,1,4,0)
 ;;=4^R19.5
 ;;^UTILITY(U,$J,358.3,44176,2)
 ;;=^5019274
 ;;^UTILITY(U,$J,358.3,44177,0)
 ;;=A54.00^^200^2224^47
 ;;^UTILITY(U,$J,358.3,44177,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44177,1,3,0)
 ;;=3^Gonococcal Infection Lower Genitourinary Tract,Unspec
 ;;^UTILITY(U,$J,358.3,44177,1,4,0)
 ;;=4^A54.00
 ;;^UTILITY(U,$J,358.3,44177,2)
 ;;=^5000311
 ;;^UTILITY(U,$J,358.3,44178,0)
 ;;=A54.09^^200^2224^48
 ;;^UTILITY(U,$J,358.3,44178,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44178,1,3,0)
 ;;=3^Gonococcal Infection Lower Genitourinary Tract,Other
 ;;^UTILITY(U,$J,358.3,44178,1,4,0)
 ;;=4^A54.09
 ;;^UTILITY(U,$J,358.3,44178,2)
 ;;=^5000315
 ;;^UTILITY(U,$J,358.3,44179,0)
 ;;=A54.02^^200^2224^49
 ;;^UTILITY(U,$J,358.3,44179,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44179,1,3,0)
 ;;=3^Gonococcal Vulvovaginitis,Unspec
 ;;^UTILITY(U,$J,358.3,44179,1,4,0)
 ;;=4^A54.02
 ;;^UTILITY(U,$J,358.3,44179,2)
 ;;=^5000313
 ;;^UTILITY(U,$J,358.3,44180,0)
 ;;=A54.1^^200^2224^46
 ;;^UTILITY(U,$J,358.3,44180,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,44180,1,3,0)
 ;;=3^Gonococcal Infection Lower GU Tract w/ Periureth & Acc Gland Abscess
 ;;^UTILITY(U,$J,358.3,44180,1,4,0)
 ;;=4^A54.1

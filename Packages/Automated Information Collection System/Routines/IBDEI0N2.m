IBDEI0N2 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,10533,1,3,0)
 ;;=3^Crohn's Disease,Small/Large Intestine w/ Abscess
 ;;^UTILITY(U,$J,358.3,10533,1,4,0)
 ;;=4^K50.814
 ;;^UTILITY(U,$J,358.3,10533,2)
 ;;=^5008642
 ;;^UTILITY(U,$J,358.3,10534,0)
 ;;=D12.9^^68^670^9
 ;;^UTILITY(U,$J,358.3,10534,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10534,1,3,0)
 ;;=3^Benign Neop of Anus
 ;;^UTILITY(U,$J,358.3,10534,1,4,0)
 ;;=4^D12.9
 ;;^UTILITY(U,$J,358.3,10534,2)
 ;;=^5001972
 ;;^UTILITY(U,$J,358.3,10535,0)
 ;;=D12.8^^68^670^15
 ;;^UTILITY(U,$J,358.3,10535,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10535,1,3,0)
 ;;=3^Benign Neop of Rectum
 ;;^UTILITY(U,$J,358.3,10535,1,4,0)
 ;;=4^D12.8
 ;;^UTILITY(U,$J,358.3,10535,2)
 ;;=^5001971
 ;;^UTILITY(U,$J,358.3,10536,0)
 ;;=K92.2^^68^670^49
 ;;^UTILITY(U,$J,358.3,10536,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10536,1,3,0)
 ;;=3^GI Bleed,Unspec
 ;;^UTILITY(U,$J,358.3,10536,1,4,0)
 ;;=4^K92.2
 ;;^UTILITY(U,$J,358.3,10536,2)
 ;;=^5008915
 ;;^UTILITY(U,$J,358.3,10537,0)
 ;;=K62.5^^68^670^8
 ;;^UTILITY(U,$J,358.3,10537,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10537,1,3,0)
 ;;=3^BRBPR
 ;;^UTILITY(U,$J,358.3,10537,1,4,0)
 ;;=4^K62.5
 ;;^UTILITY(U,$J,358.3,10537,2)
 ;;=^5008755
 ;;^UTILITY(U,$J,358.3,10538,0)
 ;;=K92.1^^68^670^71
 ;;^UTILITY(U,$J,358.3,10538,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10538,1,3,0)
 ;;=3^Melena
 ;;^UTILITY(U,$J,358.3,10538,1,4,0)
 ;;=4^K92.1
 ;;^UTILITY(U,$J,358.3,10538,2)
 ;;=^5008914
 ;;^UTILITY(U,$J,358.3,10539,0)
 ;;=R19.5^^68^670^48
 ;;^UTILITY(U,$J,358.3,10539,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10539,1,3,0)
 ;;=3^Fecal Abnormalities NEC
 ;;^UTILITY(U,$J,358.3,10539,1,4,0)
 ;;=4^R19.5
 ;;^UTILITY(U,$J,358.3,10539,2)
 ;;=^5019274
 ;;^UTILITY(U,$J,358.3,10540,0)
 ;;=A54.00^^68^671^47
 ;;^UTILITY(U,$J,358.3,10540,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10540,1,3,0)
 ;;=3^Gonococcal Infection Lower Genitourinary Tract,Unspec
 ;;^UTILITY(U,$J,358.3,10540,1,4,0)
 ;;=4^A54.00
 ;;^UTILITY(U,$J,358.3,10540,2)
 ;;=^5000311
 ;;^UTILITY(U,$J,358.3,10541,0)
 ;;=A54.09^^68^671^48
 ;;^UTILITY(U,$J,358.3,10541,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10541,1,3,0)
 ;;=3^Gonococcal Infection Lower Genitourinary Tract,Other
 ;;^UTILITY(U,$J,358.3,10541,1,4,0)
 ;;=4^A54.09
 ;;^UTILITY(U,$J,358.3,10541,2)
 ;;=^5000315
 ;;^UTILITY(U,$J,358.3,10542,0)
 ;;=A54.02^^68^671^49
 ;;^UTILITY(U,$J,358.3,10542,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10542,1,3,0)
 ;;=3^Gonococcal Vulvovaginitis,Unspec
 ;;^UTILITY(U,$J,358.3,10542,1,4,0)
 ;;=4^A54.02
 ;;^UTILITY(U,$J,358.3,10542,2)
 ;;=^5000313
 ;;^UTILITY(U,$J,358.3,10543,0)
 ;;=A54.1^^68^671^46
 ;;^UTILITY(U,$J,358.3,10543,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10543,1,3,0)
 ;;=3^Gonococcal Infection Lower GU Tract w/ Periureth & Acc Gland Abscess
 ;;^UTILITY(U,$J,358.3,10543,1,4,0)
 ;;=4^A54.1
 ;;^UTILITY(U,$J,358.3,10543,2)
 ;;=^5000316
 ;;^UTILITY(U,$J,358.3,10544,0)
 ;;=A54.01^^68^671^45
 ;;^UTILITY(U,$J,358.3,10544,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10544,1,3,0)
 ;;=3^Gonococcal Cystitis & Urethritis,Unspec
 ;;^UTILITY(U,$J,358.3,10544,1,4,0)
 ;;=4^A54.01
 ;;^UTILITY(U,$J,358.3,10544,2)
 ;;=^5000312
 ;;^UTILITY(U,$J,358.3,10545,0)
 ;;=B37.49^^68^671^12
 ;;^UTILITY(U,$J,358.3,10545,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10545,1,3,0)
 ;;=3^Candidiasis Urogenital,Other
 ;;^UTILITY(U,$J,358.3,10545,1,4,0)
 ;;=4^B37.49
 ;;^UTILITY(U,$J,358.3,10545,2)
 ;;=^5000618
 ;;^UTILITY(U,$J,358.3,10546,0)
 ;;=B37.41^^68^671^11
 ;;^UTILITY(U,$J,358.3,10546,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10546,1,3,0)
 ;;=3^Candidal Cystitis & Urethritis
IBDEI227 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,34523,2)
 ;;=^5012299
 ;;^UTILITY(U,$J,358.3,34524,0)
 ;;=M54.15^^157^1755^25
 ;;^UTILITY(U,$J,358.3,34524,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34524,1,3,0)
 ;;=3^Radiculopathy,Thoracolumbar Region
 ;;^UTILITY(U,$J,358.3,34524,1,4,0)
 ;;=4^M54.15
 ;;^UTILITY(U,$J,358.3,34524,2)
 ;;=^5012300
 ;;^UTILITY(U,$J,358.3,34525,0)
 ;;=M54.16^^157^1755^21
 ;;^UTILITY(U,$J,358.3,34525,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34525,1,3,0)
 ;;=3^Radiculopathy,Lumbar Region
 ;;^UTILITY(U,$J,358.3,34525,1,4,0)
 ;;=4^M54.16
 ;;^UTILITY(U,$J,358.3,34525,2)
 ;;=^5012301
 ;;^UTILITY(U,$J,358.3,34526,0)
 ;;=M54.17^^157^1755^22
 ;;^UTILITY(U,$J,358.3,34526,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34526,1,3,0)
 ;;=3^Radiculopathy,Lumbosacral Region
 ;;^UTILITY(U,$J,358.3,34526,1,4,0)
 ;;=4^M54.17
 ;;^UTILITY(U,$J,358.3,34526,2)
 ;;=^5012302
 ;;^UTILITY(U,$J,358.3,34527,0)
 ;;=M54.18^^157^1755^23
 ;;^UTILITY(U,$J,358.3,34527,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34527,1,3,0)
 ;;=3^Radiculopathy,Sacral & Sacrococcygeal Region
 ;;^UTILITY(U,$J,358.3,34527,1,4,0)
 ;;=4^M54.18
 ;;^UTILITY(U,$J,358.3,34527,2)
 ;;=^5012303
 ;;^UTILITY(U,$J,358.3,34528,0)
 ;;=E11.42^^157^1755^4
 ;;^UTILITY(U,$J,358.3,34528,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34528,1,3,0)
 ;;=3^DM Type 2 w/ DM Polyneuropathy
 ;;^UTILITY(U,$J,358.3,34528,1,4,0)
 ;;=4^E11.42
 ;;^UTILITY(U,$J,358.3,34528,2)
 ;;=^5002646
 ;;^UTILITY(U,$J,358.3,34529,0)
 ;;=G62.9^^157^1755^18
 ;;^UTILITY(U,$J,358.3,34529,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,34529,1,3,0)
 ;;=3^Polyneuropathy,Unspec
 ;;^UTILITY(U,$J,358.3,34529,1,4,0)
 ;;=4^G62.9
 ;;^UTILITY(U,$J,358.3,34529,2)
 ;;=^5004079
 ;;^UTILITY(U,$J,358.3,34530,0)
 ;;=20600^^158^1756^5^^^^1
 ;;^UTILITY(U,$J,358.3,34530,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,34530,1,1,0)
 ;;=1^20600
 ;;^UTILITY(U,$J,358.3,34530,1,3,0)
 ;;=3^Arthrocentesis,Small Joint
 ;;^UTILITY(U,$J,358.3,34531,0)
 ;;=20605^^158^1756^3^^^^1
 ;;^UTILITY(U,$J,358.3,34531,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,34531,1,1,0)
 ;;=1^20605
 ;;^UTILITY(U,$J,358.3,34531,1,3,0)
 ;;=3^Arthrocentesis,Interme Joint
 ;;^UTILITY(U,$J,358.3,34532,0)
 ;;=20610^^158^1756^4^^^^1
 ;;^UTILITY(U,$J,358.3,34532,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,34532,1,1,0)
 ;;=1^20610
 ;;^UTILITY(U,$J,358.3,34532,1,3,0)
 ;;=3^Arthrocentesis,Major Joint
 ;;^UTILITY(U,$J,358.3,34533,0)
 ;;=20661^^158^1756^2^^^^1
 ;;^UTILITY(U,$J,358.3,34533,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,34533,1,1,0)
 ;;=1^20661
 ;;^UTILITY(U,$J,358.3,34533,1,3,0)
 ;;=3^Apply/Remove Halo
 ;;^UTILITY(U,$J,358.3,34534,0)
 ;;=20200^^158^1756^16^^^^1
 ;;^UTILITY(U,$J,358.3,34534,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,34534,1,1,0)
 ;;=1^20200
 ;;^UTILITY(U,$J,358.3,34534,1,3,0)
 ;;=3^Muscle Biopsy
 ;;^UTILITY(U,$J,358.3,34535,0)
 ;;=20206^^158^1756^17^^^^1
 ;;^UTILITY(U,$J,358.3,34535,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,34535,1,1,0)
 ;;=1^20206
 ;;^UTILITY(U,$J,358.3,34535,1,3,0)
 ;;=3^Needle Biopsy,Muscle
 ;;^UTILITY(U,$J,358.3,34536,0)
 ;;=64795^^158^1756^7^^^^1
 ;;^UTILITY(U,$J,358.3,34536,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,34536,1,1,0)
 ;;=1^64795
 ;;^UTILITY(U,$J,358.3,34536,1,3,0)
 ;;=3^Biopsy of Nerve
 ;;^UTILITY(U,$J,358.3,34537,0)
 ;;=10060^^158^1756^13^^^^1
 ;;^UTILITY(U,$J,358.3,34537,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,34537,1,1,0)
 ;;=1^10060
 ;;^UTILITY(U,$J,358.3,34537,1,3,0)
 ;;=3^I&D Abscess,Simple
 ;;^UTILITY(U,$J,358.3,34538,0)
 ;;=10061^^158^1756^12^^^^1
 ;;^UTILITY(U,$J,358.3,34538,1,0)
 ;;=^358.31IA^3^2
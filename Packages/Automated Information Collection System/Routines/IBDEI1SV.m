IBDEI1SV ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,30133,1,4,0)
 ;;=4^Z77.123
 ;;^UTILITY(U,$J,358.3,30133,2)
 ;;=^5063321
 ;;^UTILITY(U,$J,358.3,30134,0)
 ;;=Z77.122^^135^1373^68
 ;;^UTILITY(U,$J,358.3,30134,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30134,1,3,0)
 ;;=3^Noise Contact/Exposure
 ;;^UTILITY(U,$J,358.3,30134,1,4,0)
 ;;=4^Z77.122
 ;;^UTILITY(U,$J,358.3,30134,2)
 ;;=^5063320
 ;;^UTILITY(U,$J,358.3,30135,0)
 ;;=Z77.118^^135^1373^19
 ;;^UTILITY(U,$J,358.3,30135,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30135,1,3,0)
 ;;=3^Environmental Pollution Contact/Exposure
 ;;^UTILITY(U,$J,358.3,30135,1,4,0)
 ;;=4^Z77.118
 ;;^UTILITY(U,$J,358.3,30135,2)
 ;;=^5063317
 ;;^UTILITY(U,$J,358.3,30136,0)
 ;;=Z77.9^^135^1373^54
 ;;^UTILITY(U,$J,358.3,30136,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30136,1,3,0)
 ;;=3^Health Hazard Contact/Exposure
 ;;^UTILITY(U,$J,358.3,30136,1,4,0)
 ;;=4^Z77.9
 ;;^UTILITY(U,$J,358.3,30136,2)
 ;;=^5063326
 ;;^UTILITY(U,$J,358.3,30137,0)
 ;;=Z77.22^^135^1373^18
 ;;^UTILITY(U,$J,358.3,30137,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30137,1,3,0)
 ;;=3^Environmental Exposure Tobacco Smoke/Second-Hand Smoke
 ;;^UTILITY(U,$J,358.3,30137,1,4,0)
 ;;=4^Z77.22
 ;;^UTILITY(U,$J,358.3,30137,2)
 ;;=^5063324
 ;;^UTILITY(U,$J,358.3,30138,0)
 ;;=Z80.0^^135^1373^35
 ;;^UTILITY(U,$J,358.3,30138,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30138,1,3,0)
 ;;=3^Family Hx of Malig Neop of Digestive Organs
 ;;^UTILITY(U,$J,358.3,30138,1,4,0)
 ;;=4^Z80.0
 ;;^UTILITY(U,$J,358.3,30138,2)
 ;;=^5063344
 ;;^UTILITY(U,$J,358.3,30139,0)
 ;;=Z80.1^^135^1373^41
 ;;^UTILITY(U,$J,358.3,30139,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30139,1,3,0)
 ;;=3^Family Hx of Malig Neop of Trachea,Bronc & Lung
 ;;^UTILITY(U,$J,358.3,30139,1,4,0)
 ;;=4^Z80.1
 ;;^UTILITY(U,$J,358.3,30139,2)
 ;;=^5063345
 ;;^UTILITY(U,$J,358.3,30140,0)
 ;;=Z80.3^^135^1373^34
 ;;^UTILITY(U,$J,358.3,30140,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30140,1,3,0)
 ;;=3^Family Hx of Malig Neop of Breast
 ;;^UTILITY(U,$J,358.3,30140,1,4,0)
 ;;=4^Z80.3
 ;;^UTILITY(U,$J,358.3,30140,2)
 ;;=^5063347
 ;;^UTILITY(U,$J,358.3,30141,0)
 ;;=Z80.41^^135^1373^38
 ;;^UTILITY(U,$J,358.3,30141,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30141,1,3,0)
 ;;=3^Family Hx of Malig Neop of Ovary
 ;;^UTILITY(U,$J,358.3,30141,1,4,0)
 ;;=4^Z80.41
 ;;^UTILITY(U,$J,358.3,30141,2)
 ;;=^5063348
 ;;^UTILITY(U,$J,358.3,30142,0)
 ;;=Z80.42^^135^1373^39
 ;;^UTILITY(U,$J,358.3,30142,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30142,1,3,0)
 ;;=3^Family Hx of Malig Neop of Prostate
 ;;^UTILITY(U,$J,358.3,30142,1,4,0)
 ;;=4^Z80.42
 ;;^UTILITY(U,$J,358.3,30142,2)
 ;;=^5063349
 ;;^UTILITY(U,$J,358.3,30143,0)
 ;;=Z80.43^^135^1373^40
 ;;^UTILITY(U,$J,358.3,30143,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30143,1,3,0)
 ;;=3^Family Hx of Malig Neop of Testis
 ;;^UTILITY(U,$J,358.3,30143,1,4,0)
 ;;=4^Z80.43
 ;;^UTILITY(U,$J,358.3,30143,2)
 ;;=^5063350
 ;;^UTILITY(U,$J,358.3,30144,0)
 ;;=Z80.6^^135^1373^32
 ;;^UTILITY(U,$J,358.3,30144,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30144,1,3,0)
 ;;=3^Family Hx of Leukemia
 ;;^UTILITY(U,$J,358.3,30144,1,4,0)
 ;;=4^Z80.6
 ;;^UTILITY(U,$J,358.3,30144,2)
 ;;=^5063354
 ;;^UTILITY(U,$J,358.3,30145,0)
 ;;=Z80.8^^135^1373^37
 ;;^UTILITY(U,$J,358.3,30145,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,30145,1,3,0)
 ;;=3^Family Hx of Malig Neop of Organs/Systems
 ;;^UTILITY(U,$J,358.3,30145,1,4,0)
 ;;=4^Z80.8
 ;;^UTILITY(U,$J,358.3,30145,2)
 ;;=^5063356
 ;;^UTILITY(U,$J,358.3,30146,0)
 ;;=Z81.8^^135^1373^42
 ;;^UTILITY(U,$J,358.3,30146,1,0)
 ;;=^358.31IA^4^2

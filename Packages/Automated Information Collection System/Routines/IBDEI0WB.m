IBDEI0WB ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,14889,1,3,0)
 ;;=3^Alcoholic Cirrhosis of Liver w/ Ascites
 ;;^UTILITY(U,$J,358.3,14889,1,4,0)
 ;;=4^K70.31
 ;;^UTILITY(U,$J,358.3,14889,2)
 ;;=^5008789
 ;;^UTILITY(U,$J,358.3,14890,0)
 ;;=K74.60^^85^800^5
 ;;^UTILITY(U,$J,358.3,14890,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14890,1,3,0)
 ;;=3^Cirrhosis of Liver,Unspec
 ;;^UTILITY(U,$J,358.3,14890,1,4,0)
 ;;=4^K74.60
 ;;^UTILITY(U,$J,358.3,14890,2)
 ;;=^5008822
 ;;^UTILITY(U,$J,358.3,14891,0)
 ;;=K74.69^^85^800^4
 ;;^UTILITY(U,$J,358.3,14891,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14891,1,3,0)
 ;;=3^Cirrhosis of Liver NEC
 ;;^UTILITY(U,$J,358.3,14891,1,4,0)
 ;;=4^K74.69
 ;;^UTILITY(U,$J,358.3,14891,2)
 ;;=^5008823
 ;;^UTILITY(U,$J,358.3,14892,0)
 ;;=K70.2^^85^800^3
 ;;^UTILITY(U,$J,358.3,14892,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14892,1,3,0)
 ;;=3^Alcoholic Fibrosis/Sclerosis of Liver
 ;;^UTILITY(U,$J,358.3,14892,1,4,0)
 ;;=4^K70.2
 ;;^UTILITY(U,$J,358.3,14892,2)
 ;;=^5008787
 ;;^UTILITY(U,$J,358.3,14893,0)
 ;;=K74.0^^85^800^6
 ;;^UTILITY(U,$J,358.3,14893,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14893,1,3,0)
 ;;=3^Hepatic Fibrosis
 ;;^UTILITY(U,$J,358.3,14893,1,4,0)
 ;;=4^K74.0
 ;;^UTILITY(U,$J,358.3,14893,2)
 ;;=^5008816
 ;;^UTILITY(U,$J,358.3,14894,0)
 ;;=K74.2^^85^800^7
 ;;^UTILITY(U,$J,358.3,14894,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14894,1,3,0)
 ;;=3^Hepatic Fibrosis w/ Hepatic Sclerosis
 ;;^UTILITY(U,$J,358.3,14894,1,4,0)
 ;;=4^K74.2
 ;;^UTILITY(U,$J,358.3,14894,2)
 ;;=^5008818
 ;;^UTILITY(U,$J,358.3,14895,0)
 ;;=K74.1^^85^800^8
 ;;^UTILITY(U,$J,358.3,14895,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14895,1,3,0)
 ;;=3^Hepatic Sclerosis
 ;;^UTILITY(U,$J,358.3,14895,1,4,0)
 ;;=4^K74.1
 ;;^UTILITY(U,$J,358.3,14895,2)
 ;;=^5008817
 ;;^UTILITY(U,$J,358.3,14896,0)
 ;;=K52.2^^85^801^1
 ;;^UTILITY(U,$J,358.3,14896,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14896,1,3,0)
 ;;=3^Allergic/Dietetic Gastroenteritis/Colitis
 ;;^UTILITY(U,$J,358.3,14896,1,4,0)
 ;;=4^K52.2
 ;;^UTILITY(U,$J,358.3,14896,2)
 ;;=^5008701
 ;;^UTILITY(U,$J,358.3,14897,0)
 ;;=K52.89^^85^801^2
 ;;^UTILITY(U,$J,358.3,14897,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14897,1,3,0)
 ;;=3^Noninfective Gastroenteritis/Colitis NEC
 ;;^UTILITY(U,$J,358.3,14897,1,4,0)
 ;;=4^K52.89
 ;;^UTILITY(U,$J,358.3,14897,2)
 ;;=^5008703
 ;;^UTILITY(U,$J,358.3,14898,0)
 ;;=K51.90^^85^801^9
 ;;^UTILITY(U,$J,358.3,14898,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14898,1,3,0)
 ;;=3^Ulcerative Colitis w/o Complications,Unspec
 ;;^UTILITY(U,$J,358.3,14898,1,4,0)
 ;;=4^K51.90
 ;;^UTILITY(U,$J,358.3,14898,2)
 ;;=^5008694
 ;;^UTILITY(U,$J,358.3,14899,0)
 ;;=K51.919^^85^801^8
 ;;^UTILITY(U,$J,358.3,14899,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14899,1,3,0)
 ;;=3^Ulcerative Colitis w/ Unspec Complications,Unspec
 ;;^UTILITY(U,$J,358.3,14899,1,4,0)
 ;;=4^K51.919
 ;;^UTILITY(U,$J,358.3,14899,2)
 ;;=^5008700
 ;;^UTILITY(U,$J,358.3,14900,0)
 ;;=K51.912^^85^801^5
 ;;^UTILITY(U,$J,358.3,14900,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14900,1,3,0)
 ;;=3^Ulcerative Colitis w/ Intestinal Obstruction,Unspec
 ;;^UTILITY(U,$J,358.3,14900,1,4,0)
 ;;=4^K51.912
 ;;^UTILITY(U,$J,358.3,14900,2)
 ;;=^5008696
 ;;^UTILITY(U,$J,358.3,14901,0)
 ;;=K51.913^^85^801^4
 ;;^UTILITY(U,$J,358.3,14901,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,14901,1,3,0)
 ;;=3^Ulcerative Colitis w/ Fistula,Unspec
 ;;^UTILITY(U,$J,358.3,14901,1,4,0)
 ;;=4^K51.913
 ;;^UTILITY(U,$J,358.3,14901,2)
 ;;=^5008697
 ;;^UTILITY(U,$J,358.3,14902,0)
 ;;=K51.914^^85^801^3
 ;;^UTILITY(U,$J,358.3,14902,1,0)
 ;;=^358.31IA^4^2
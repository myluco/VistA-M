IBDEI15J ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,19241,0)
 ;;=K70.0^^94^919^3
 ;;^UTILITY(U,$J,358.3,19241,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19241,1,3,0)
 ;;=3^Alcoholic Fatty Liver
 ;;^UTILITY(U,$J,358.3,19241,1,4,0)
 ;;=4^K70.0
 ;;^UTILITY(U,$J,358.3,19241,2)
 ;;=^5008784
 ;;^UTILITY(U,$J,358.3,19242,0)
 ;;=K70.11^^94^919^7
 ;;^UTILITY(U,$J,358.3,19242,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19242,1,3,0)
 ;;=3^Alcoholic Hepatitis w/ Ascites
 ;;^UTILITY(U,$J,358.3,19242,1,4,0)
 ;;=4^K70.11
 ;;^UTILITY(U,$J,358.3,19242,2)
 ;;=^5008786
 ;;^UTILITY(U,$J,358.3,19243,0)
 ;;=K70.10^^94^919^8
 ;;^UTILITY(U,$J,358.3,19243,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19243,1,3,0)
 ;;=3^Alcoholic Hepatitis w/o Ascites
 ;;^UTILITY(U,$J,358.3,19243,1,4,0)
 ;;=4^K70.10
 ;;^UTILITY(U,$J,358.3,19243,2)
 ;;=^5008785
 ;;^UTILITY(U,$J,358.3,19244,0)
 ;;=K70.2^^94^919^4
 ;;^UTILITY(U,$J,358.3,19244,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19244,1,3,0)
 ;;=3^Alcoholic Fibrosis & Sclerosis of Liver
 ;;^UTILITY(U,$J,358.3,19244,1,4,0)
 ;;=4^K70.2
 ;;^UTILITY(U,$J,358.3,19244,2)
 ;;=^5008787
 ;;^UTILITY(U,$J,358.3,19245,0)
 ;;=K70.30^^94^919^2
 ;;^UTILITY(U,$J,358.3,19245,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19245,1,3,0)
 ;;=3^Alcoholic Cirrhosis of Liver w/o Ascites
 ;;^UTILITY(U,$J,358.3,19245,1,4,0)
 ;;=4^K70.30
 ;;^UTILITY(U,$J,358.3,19245,2)
 ;;=^5008788
 ;;^UTILITY(U,$J,358.3,19246,0)
 ;;=K70.31^^94^919^1
 ;;^UTILITY(U,$J,358.3,19246,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19246,1,3,0)
 ;;=3^Alcoholic Cirrhosis of Liver w/ Ascites
 ;;^UTILITY(U,$J,358.3,19246,1,4,0)
 ;;=4^K70.31
 ;;^UTILITY(U,$J,358.3,19246,2)
 ;;=^5008789
 ;;^UTILITY(U,$J,358.3,19247,0)
 ;;=K70.9^^94^919^9
 ;;^UTILITY(U,$J,358.3,19247,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19247,1,3,0)
 ;;=3^Alcoholic Liver Disease,Unspec
 ;;^UTILITY(U,$J,358.3,19247,1,4,0)
 ;;=4^K70.9
 ;;^UTILITY(U,$J,358.3,19247,2)
 ;;=^5008792
 ;;^UTILITY(U,$J,358.3,19248,0)
 ;;=K70.40^^94^919^6
 ;;^UTILITY(U,$J,358.3,19248,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19248,1,3,0)
 ;;=3^Alcoholic Hepatic Failure w/o Coma
 ;;^UTILITY(U,$J,358.3,19248,1,4,0)
 ;;=4^K70.40
 ;;^UTILITY(U,$J,358.3,19248,2)
 ;;=^5008790
 ;;^UTILITY(U,$J,358.3,19249,0)
 ;;=K70.41^^94^919^5
 ;;^UTILITY(U,$J,358.3,19249,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19249,1,3,0)
 ;;=3^Alcoholic Hepatic Failure w/ Coma
 ;;^UTILITY(U,$J,358.3,19249,1,4,0)
 ;;=4^K70.41
 ;;^UTILITY(U,$J,358.3,19249,2)
 ;;=^5008791
 ;;^UTILITY(U,$J,358.3,19250,0)
 ;;=K73.0^^94^919^15
 ;;^UTILITY(U,$J,358.3,19250,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19250,1,3,0)
 ;;=3^Hepatitis, Chronic Persistent NEC
 ;;^UTILITY(U,$J,358.3,19250,1,4,0)
 ;;=4^K73.0
 ;;^UTILITY(U,$J,358.3,19250,2)
 ;;=^5008811
 ;;^UTILITY(U,$J,358.3,19251,0)
 ;;=K74.0^^94^919^14
 ;;^UTILITY(U,$J,358.3,19251,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19251,1,3,0)
 ;;=3^Hepatic Fibrosis
 ;;^UTILITY(U,$J,358.3,19251,1,4,0)
 ;;=4^K74.0
 ;;^UTILITY(U,$J,358.3,19251,2)
 ;;=^5008816
 ;;^UTILITY(U,$J,358.3,19252,0)
 ;;=K74.69^^94^919^10
 ;;^UTILITY(U,$J,358.3,19252,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19252,1,3,0)
 ;;=3^Cirrhosis of Liver,Oth
 ;;^UTILITY(U,$J,358.3,19252,1,4,0)
 ;;=4^K74.69
 ;;^UTILITY(U,$J,358.3,19252,2)
 ;;=^5008823
 ;;^UTILITY(U,$J,358.3,19253,0)
 ;;=K74.60^^94^919^11
 ;;^UTILITY(U,$J,358.3,19253,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,19253,1,3,0)
 ;;=3^Cirrhosis of Liver,Unspec
 ;;^UTILITY(U,$J,358.3,19253,1,4,0)
 ;;=4^K74.60
 ;;^UTILITY(U,$J,358.3,19253,2)
 ;;=^5008822
 ;;^UTILITY(U,$J,358.3,19254,0)
 ;;=K76.0^^94^919^12
IBDEI1KC ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,26132,1,3,0)
 ;;=3^HIV Disease
 ;;^UTILITY(U,$J,358.3,26132,1,4,0)
 ;;=4^B20.
 ;;^UTILITY(U,$J,358.3,26132,2)
 ;;=^5000555
 ;;^UTILITY(U,$J,358.3,26133,0)
 ;;=B02.9^^127^1272^108
 ;;^UTILITY(U,$J,358.3,26133,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26133,1,3,0)
 ;;=3^Zoster w/o Complications
 ;;^UTILITY(U,$J,358.3,26133,1,4,0)
 ;;=4^B02.9
 ;;^UTILITY(U,$J,358.3,26133,2)
 ;;=^5000501
 ;;^UTILITY(U,$J,358.3,26134,0)
 ;;=A60.9^^127^1272^14
 ;;^UTILITY(U,$J,358.3,26134,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26134,1,3,0)
 ;;=3^Anogenital Herpesviral Infection,Unspec
 ;;^UTILITY(U,$J,358.3,26134,1,4,0)
 ;;=4^A60.9
 ;;^UTILITY(U,$J,358.3,26134,2)
 ;;=^5000359
 ;;^UTILITY(U,$J,358.3,26135,0)
 ;;=A60.04^^127^1272^65
 ;;^UTILITY(U,$J,358.3,26135,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26135,1,3,0)
 ;;=3^Herpesviral Vulvovaginitis
 ;;^UTILITY(U,$J,358.3,26135,1,4,0)
 ;;=4^A60.04
 ;;^UTILITY(U,$J,358.3,26135,2)
 ;;=^5000356
 ;;^UTILITY(U,$J,358.3,26136,0)
 ;;=A60.01^^127^1272^63
 ;;^UTILITY(U,$J,358.3,26136,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26136,1,3,0)
 ;;=3^Herpesviral Infection of Penis
 ;;^UTILITY(U,$J,358.3,26136,1,4,0)
 ;;=4^A60.01
 ;;^UTILITY(U,$J,358.3,26136,2)
 ;;=^5000353
 ;;^UTILITY(U,$J,358.3,26137,0)
 ;;=B00.1^^127^1272^64
 ;;^UTILITY(U,$J,358.3,26137,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26137,1,3,0)
 ;;=3^Herpesviral Vesicular Dermatitis
 ;;^UTILITY(U,$J,358.3,26137,1,4,0)
 ;;=4^B00.1
 ;;^UTILITY(U,$J,358.3,26137,2)
 ;;=^5000468
 ;;^UTILITY(U,$J,358.3,26138,0)
 ;;=B00.2^^127^1272^62
 ;;^UTILITY(U,$J,358.3,26138,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26138,1,3,0)
 ;;=3^Herpesviral Gingivostomatitis/Pharyngotonsillitis
 ;;^UTILITY(U,$J,358.3,26138,1,4,0)
 ;;=4^B00.2
 ;;^UTILITY(U,$J,358.3,26138,2)
 ;;=^5000469
 ;;^UTILITY(U,$J,358.3,26139,0)
 ;;=B15.9^^127^1272^59
 ;;^UTILITY(U,$J,358.3,26139,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26139,1,3,0)
 ;;=3^Hepatitis A w/o Hepatic Coma
 ;;^UTILITY(U,$J,358.3,26139,1,4,0)
 ;;=4^B15.9
 ;;^UTILITY(U,$J,358.3,26139,2)
 ;;=^5000536
 ;;^UTILITY(U,$J,358.3,26140,0)
 ;;=B16.9^^127^1272^60
 ;;^UTILITY(U,$J,358.3,26140,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26140,1,3,0)
 ;;=3^Hepatitis B w/o Delta-Agent & w/o Hepatic Coma
 ;;^UTILITY(U,$J,358.3,26140,1,4,0)
 ;;=4^B16.9
 ;;^UTILITY(U,$J,358.3,26140,2)
 ;;=^5000540
 ;;^UTILITY(U,$J,358.3,26141,0)
 ;;=B18.1^^127^1272^36
 ;;^UTILITY(U,$J,358.3,26141,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26141,1,3,0)
 ;;=3^Chronic Viral Hepatitis B w/o Delta-Agent
 ;;^UTILITY(U,$J,358.3,26141,1,4,0)
 ;;=4^B18.1
 ;;^UTILITY(U,$J,358.3,26141,2)
 ;;=^5000547
 ;;^UTILITY(U,$J,358.3,26142,0)
 ;;=B17.10^^127^1272^61
 ;;^UTILITY(U,$J,358.3,26142,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26142,1,3,0)
 ;;=3^Hepatitis C w/o Hepatic Coma
 ;;^UTILITY(U,$J,358.3,26142,1,4,0)
 ;;=4^B17.10
 ;;^UTILITY(U,$J,358.3,26142,2)
 ;;=^5000542
 ;;^UTILITY(U,$J,358.3,26143,0)
 ;;=B18.2^^127^1272^37
 ;;^UTILITY(U,$J,358.3,26143,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26143,1,3,0)
 ;;=3^Chronic Viral Hepatitis C
 ;;^UTILITY(U,$J,358.3,26143,1,4,0)
 ;;=4^B18.2
 ;;^UTILITY(U,$J,358.3,26143,2)
 ;;=^5000548
 ;;^UTILITY(U,$J,358.3,26144,0)
 ;;=B17.8^^127^1272^107
 ;;^UTILITY(U,$J,358.3,26144,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26144,1,3,0)
 ;;=3^Viral Hepatitis NEC
 ;;^UTILITY(U,$J,358.3,26144,1,4,0)
 ;;=4^B17.8
 ;;^UTILITY(U,$J,358.3,26144,2)
 ;;=^5000544
 ;;^UTILITY(U,$J,358.3,26145,0)
 ;;=B18.8^^127^1272^38
 ;;^UTILITY(U,$J,358.3,26145,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,26145,1,3,0)
 ;;=3^Chronic Viral Hepatitis NEC

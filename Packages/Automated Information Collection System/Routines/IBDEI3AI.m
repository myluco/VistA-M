IBDEI3AI ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,55286,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55286,1,3,0)
 ;;=3^Influenza d/t Oth ID'd Flu Virus w/ Same Oth ID'd Flu Virus Pneumonia
 ;;^UTILITY(U,$J,358.3,55286,1,4,0)
 ;;=4^J10.01
 ;;^UTILITY(U,$J,358.3,55286,2)
 ;;=^5008149
 ;;^UTILITY(U,$J,358.3,55287,0)
 ;;=J11.1^^256^2777^44
 ;;^UTILITY(U,$J,358.3,55287,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55287,1,3,0)
 ;;=3^Influenza d/t Unident Influenza Virus w/ Oth Resp Manifest
 ;;^UTILITY(U,$J,358.3,55287,1,4,0)
 ;;=4^J11.1
 ;;^UTILITY(U,$J,358.3,55287,2)
 ;;=^5008158
 ;;^UTILITY(U,$J,358.3,55288,0)
 ;;=N12.^^256^2777^85
 ;;^UTILITY(U,$J,358.3,55288,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55288,1,3,0)
 ;;=3^Tubulo-Interstitial Nephritis
 ;;^UTILITY(U,$J,358.3,55288,1,4,0)
 ;;=4^N12.
 ;;^UTILITY(U,$J,358.3,55288,2)
 ;;=^5015575
 ;;^UTILITY(U,$J,358.3,55289,0)
 ;;=N11.9^^256^2777^86
 ;;^UTILITY(U,$J,358.3,55289,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55289,1,3,0)
 ;;=3^Tubulo-Interstitial Nephritis,Chronic
 ;;^UTILITY(U,$J,358.3,55289,1,4,0)
 ;;=4^N11.9
 ;;^UTILITY(U,$J,358.3,55289,2)
 ;;=^5015574
 ;;^UTILITY(U,$J,358.3,55290,0)
 ;;=N13.6^^256^2777^73
 ;;^UTILITY(U,$J,358.3,55290,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55290,1,3,0)
 ;;=3^Pyonephrosis
 ;;^UTILITY(U,$J,358.3,55290,1,4,0)
 ;;=4^N13.6
 ;;^UTILITY(U,$J,358.3,55290,2)
 ;;=^101552
 ;;^UTILITY(U,$J,358.3,55291,0)
 ;;=N30.91^^256^2777^19
 ;;^UTILITY(U,$J,358.3,55291,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55291,1,3,0)
 ;;=3^Cystitis w/ Hematuria,Unspec
 ;;^UTILITY(U,$J,358.3,55291,1,4,0)
 ;;=4^N30.91
 ;;^UTILITY(U,$J,358.3,55291,2)
 ;;=^5015643
 ;;^UTILITY(U,$J,358.3,55292,0)
 ;;=N30.90^^256^2777^20
 ;;^UTILITY(U,$J,358.3,55292,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55292,1,3,0)
 ;;=3^Cystitis w/o Hematuria,Unspec
 ;;^UTILITY(U,$J,358.3,55292,1,4,0)
 ;;=4^N30.90
 ;;^UTILITY(U,$J,358.3,55292,2)
 ;;=^5015642
 ;;^UTILITY(U,$J,358.3,55293,0)
 ;;=N41.9^^256^2777^38
 ;;^UTILITY(U,$J,358.3,55293,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55293,1,3,0)
 ;;=3^Inflammatory Disease of Prostate,Unspec
 ;;^UTILITY(U,$J,358.3,55293,1,4,0)
 ;;=4^N41.9
 ;;^UTILITY(U,$J,358.3,55293,2)
 ;;=^5015694
 ;;^UTILITY(U,$J,358.3,55294,0)
 ;;=N70.91^^256^2777^75
 ;;^UTILITY(U,$J,358.3,55294,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55294,1,3,0)
 ;;=3^Salpingitis,Unspec
 ;;^UTILITY(U,$J,358.3,55294,1,4,0)
 ;;=4^N70.91
 ;;^UTILITY(U,$J,358.3,55294,2)
 ;;=^5015806
 ;;^UTILITY(U,$J,358.3,55295,0)
 ;;=N70.93^^256^2777^74
 ;;^UTILITY(U,$J,358.3,55295,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55295,1,3,0)
 ;;=3^Salpingitis & Oophoritis,Unspec
 ;;^UTILITY(U,$J,358.3,55295,1,4,0)
 ;;=4^N70.93
 ;;^UTILITY(U,$J,358.3,55295,2)
 ;;=^5015808
 ;;^UTILITY(U,$J,358.3,55296,0)
 ;;=N70.92^^256^2777^55
 ;;^UTILITY(U,$J,358.3,55296,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55296,1,3,0)
 ;;=3^Oophoritis,Unspec
 ;;^UTILITY(U,$J,358.3,55296,1,4,0)
 ;;=4^N70.92
 ;;^UTILITY(U,$J,358.3,55296,2)
 ;;=^5015807
 ;;^UTILITY(U,$J,358.3,55297,0)
 ;;=N73.9^^256^2777^37
 ;;^UTILITY(U,$J,358.3,55297,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55297,1,3,0)
 ;;=3^Inflammatory Disease Female Pelvic,Unspec
 ;;^UTILITY(U,$J,358.3,55297,1,4,0)
 ;;=4^N73.9
 ;;^UTILITY(U,$J,358.3,55297,2)
 ;;=^5015820
 ;;^UTILITY(U,$J,358.3,55298,0)
 ;;=A56.11^^256^2777^36
 ;;^UTILITY(U,$J,358.3,55298,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55298,1,3,0)
 ;;=3^Inflammatory Disease Chlamydial Female Pelvic
 ;;^UTILITY(U,$J,358.3,55298,1,4,0)
 ;;=4^A56.11
 ;;^UTILITY(U,$J,358.3,55298,2)
 ;;=^5000342
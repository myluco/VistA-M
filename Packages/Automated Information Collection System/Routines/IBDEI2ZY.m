IBDEI2ZY ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,50237,1,4,0)
 ;;=4^B45.1
 ;;^UTILITY(U,$J,358.3,50237,2)
 ;;=^5000670
 ;;^UTILITY(U,$J,358.3,50238,0)
 ;;=J16.0^^219^2446^50
 ;;^UTILITY(U,$J,358.3,50238,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50238,1,3,0)
 ;;=3^Chlamydial Pneumonia
 ;;^UTILITY(U,$J,358.3,50238,1,4,0)
 ;;=4^J16.0
 ;;^UTILITY(U,$J,358.3,50238,2)
 ;;=^5008179
 ;;^UTILITY(U,$J,358.3,50239,0)
 ;;=B40.1^^219^2446^51
 ;;^UTILITY(U,$J,358.3,50239,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50239,1,3,0)
 ;;=3^Chr Pulmonary Blastomycosis
 ;;^UTILITY(U,$J,358.3,50239,1,4,0)
 ;;=4^B40.1
 ;;^UTILITY(U,$J,358.3,50239,2)
 ;;=^5000640
 ;;^UTILITY(U,$J,358.3,50240,0)
 ;;=J32.9^^219^2446^52
 ;;^UTILITY(U,$J,358.3,50240,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50240,1,3,0)
 ;;=3^Chr Sinusitis,Unspec
 ;;^UTILITY(U,$J,358.3,50240,1,4,0)
 ;;=4^J32.9
 ;;^UTILITY(U,$J,358.3,50240,2)
 ;;=^5008207
 ;;^UTILITY(U,$J,358.3,50241,0)
 ;;=B45.9^^219^2446^54
 ;;^UTILITY(U,$J,358.3,50241,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50241,1,3,0)
 ;;=3^Cryptococcosis,Unspec
 ;;^UTILITY(U,$J,358.3,50241,1,4,0)
 ;;=4^B45.9
 ;;^UTILITY(U,$J,358.3,50241,2)
 ;;=^5000675
 ;;^UTILITY(U,$J,358.3,50242,0)
 ;;=B45.2^^219^2446^55
 ;;^UTILITY(U,$J,358.3,50242,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50242,1,3,0)
 ;;=3^Cutaneous Cryptococcosis
 ;;^UTILITY(U,$J,358.3,50242,1,4,0)
 ;;=4^B45.2
 ;;^UTILITY(U,$J,358.3,50242,2)
 ;;=^5000671
 ;;^UTILITY(U,$J,358.3,50243,0)
 ;;=B44.7^^219^2446^56
 ;;^UTILITY(U,$J,358.3,50243,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50243,1,3,0)
 ;;=3^Disseminated Aspergillosis
 ;;^UTILITY(U,$J,358.3,50243,1,4,0)
 ;;=4^B44.7
 ;;^UTILITY(U,$J,358.3,50243,2)
 ;;=^5000666
 ;;^UTILITY(U,$J,358.3,50244,0)
 ;;=B45.7^^219^2446^57
 ;;^UTILITY(U,$J,358.3,50244,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50244,1,3,0)
 ;;=3^Disseminated Cryptococcosis
 ;;^UTILITY(U,$J,358.3,50244,1,4,0)
 ;;=4^B45.7
 ;;^UTILITY(U,$J,358.3,50244,2)
 ;;=^5000673
 ;;^UTILITY(U,$J,358.3,50245,0)
 ;;=B39.9^^219^2446^59
 ;;^UTILITY(U,$J,358.3,50245,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50245,1,3,0)
 ;;=3^Histoplasmosis,Unspec
 ;;^UTILITY(U,$J,358.3,50245,1,4,0)
 ;;=4^B39.9
 ;;^UTILITY(U,$J,358.3,50245,2)
 ;;=^5000638
 ;;^UTILITY(U,$J,358.3,50246,0)
 ;;=J18.2^^219^2446^60
 ;;^UTILITY(U,$J,358.3,50246,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50246,1,3,0)
 ;;=3^Hypostatic Pneumonia,Unspec Organism
 ;;^UTILITY(U,$J,358.3,50246,1,4,0)
 ;;=4^J18.2
 ;;^UTILITY(U,$J,358.3,50246,2)
 ;;=^5008184
 ;;^UTILITY(U,$J,358.3,50247,0)
 ;;=B44.0^^219^2446^61
 ;;^UTILITY(U,$J,358.3,50247,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50247,1,3,0)
 ;;=3^Invasive Pulmonary Aspergillosis
 ;;^UTILITY(U,$J,358.3,50247,1,4,0)
 ;;=4^B44.0
 ;;^UTILITY(U,$J,358.3,50247,2)
 ;;=^5000663
 ;;^UTILITY(U,$J,358.3,50248,0)
 ;;=J18.1^^219^2446^62
 ;;^UTILITY(U,$J,358.3,50248,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50248,1,3,0)
 ;;=3^Lobar Pneumonia,Unspec Organism
 ;;^UTILITY(U,$J,358.3,50248,1,4,0)
 ;;=4^J18.1
 ;;^UTILITY(U,$J,358.3,50248,2)
 ;;=^5008183
 ;;^UTILITY(U,$J,358.3,50249,0)
 ;;=A19.9^^219^2446^63
 ;;^UTILITY(U,$J,358.3,50249,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50249,1,3,0)
 ;;=3^Miliary Tuberculosis,Unspec
 ;;^UTILITY(U,$J,358.3,50249,1,4,0)
 ;;=4^A19.9
 ;;^UTILITY(U,$J,358.3,50249,2)
 ;;=^5000104
 ;;^UTILITY(U,$J,358.3,50250,0)
 ;;=R76.11^^219^2446^82
 ;;^UTILITY(U,$J,358.3,50250,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50250,1,3,0)
 ;;=3^Reaction to Skin Test w/o Active TB
 ;;^UTILITY(U,$J,358.3,50250,1,4,0)
 ;;=4^R76.11
 ;;^UTILITY(U,$J,358.3,50250,2)
 ;;=^5019570
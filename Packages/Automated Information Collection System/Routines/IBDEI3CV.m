IBDEI3CV ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,56398,1,3,0)
 ;;=3^TRUS to Guide Needle
 ;;^UTILITY(U,$J,358.3,56399,0)
 ;;=76872^^258^2806^3^^^^1
 ;;^UTILITY(U,$J,358.3,56399,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,56399,1,2,0)
 ;;=2^76872
 ;;^UTILITY(U,$J,358.3,56399,1,3,0)
 ;;=3^TRUS for Evaluation
 ;;^UTILITY(U,$J,358.3,56400,0)
 ;;=55876^^258^2806^1^^^^1
 ;;^UTILITY(U,$J,358.3,56400,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,56400,1,2,0)
 ;;=2^55876
 ;;^UTILITY(U,$J,358.3,56400,1,3,0)
 ;;=3^Fiducial Seed Placement
 ;;^UTILITY(U,$J,358.3,56401,0)
 ;;=51701^^258^2807^8^^^^1
 ;;^UTILITY(U,$J,358.3,56401,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,56401,1,2,0)
 ;;=2^51701
 ;;^UTILITY(U,$J,358.3,56401,1,3,0)
 ;;=3^Insert Non-Dwelling Cath
 ;;^UTILITY(U,$J,358.3,56402,0)
 ;;=51702^^258^2807^5^^^^1
 ;;^UTILITY(U,$J,358.3,56402,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,56402,1,2,0)
 ;;=2^51702
 ;;^UTILITY(U,$J,358.3,56402,1,3,0)
 ;;=3^Foley Placement,Simple
 ;;^UTILITY(U,$J,358.3,56403,0)
 ;;=51703^^258^2807^4^^^^1
 ;;^UTILITY(U,$J,358.3,56403,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,56403,1,2,0)
 ;;=2^51703
 ;;^UTILITY(U,$J,358.3,56403,1,3,0)
 ;;=3^Foley Placement,Comp
 ;;^UTILITY(U,$J,358.3,56404,0)
 ;;=51700^^258^2807^3^^^^1
 ;;^UTILITY(U,$J,358.3,56404,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,56404,1,2,0)
 ;;=2^51700
 ;;^UTILITY(U,$J,358.3,56404,1,3,0)
 ;;=3^Bladder Irrigation,Simple
 ;;^UTILITY(U,$J,358.3,56405,0)
 ;;=51720^^258^2807^2^^^^1
 ;;^UTILITY(U,$J,358.3,56405,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,56405,1,2,0)
 ;;=2^51720
 ;;^UTILITY(U,$J,358.3,56405,1,3,0)
 ;;=3^Bladder Instill Anticarc
 ;;^UTILITY(U,$J,358.3,56406,0)
 ;;=90586^^258^2807^1^^^^1
 ;;^UTILITY(U,$J,358.3,56406,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,56406,1,2,0)
 ;;=2^90586
 ;;^UTILITY(U,$J,358.3,56406,1,3,0)
 ;;=3^BCG for Bladder CA,Live,Intravesical Use
 ;;^UTILITY(U,$J,358.3,56407,0)
 ;;=51736^^258^2807^12^^^^1
 ;;^UTILITY(U,$J,358.3,56407,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,56407,1,2,0)
 ;;=2^51736
 ;;^UTILITY(U,$J,358.3,56407,1,3,0)
 ;;=3^Uroflow,Simple
 ;;^UTILITY(U,$J,358.3,56408,0)
 ;;=51798^^258^2807^9^^^^1
 ;;^UTILITY(U,$J,358.3,56408,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,56408,1,2,0)
 ;;=2^51798
 ;;^UTILITY(U,$J,358.3,56408,1,3,0)
 ;;=3^PVR by US
 ;;^UTILITY(U,$J,358.3,56409,0)
 ;;=54235^^258^2807^7^^^^1
 ;;^UTILITY(U,$J,358.3,56409,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,56409,1,2,0)
 ;;=2^54235
 ;;^UTILITY(U,$J,358.3,56409,1,3,0)
 ;;=3^Inj of Corpora w/ Drugs
 ;;^UTILITY(U,$J,358.3,56410,0)
 ;;=99071^^258^2807^10^^^^1
 ;;^UTILITY(U,$J,358.3,56410,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,56410,1,2,0)
 ;;=2^99071
 ;;^UTILITY(U,$J,358.3,56410,1,3,0)
 ;;=3^Patient Education Materials
 ;;^UTILITY(U,$J,358.3,56411,0)
 ;;=99078^^258^2807^6^^^^1
 ;;^UTILITY(U,$J,358.3,56411,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,56411,1,2,0)
 ;;=2^99078
 ;;^UTILITY(U,$J,358.3,56411,1,3,0)
 ;;=3^Group Health Education
 ;;^UTILITY(U,$J,358.3,56412,0)
 ;;=S9445^^258^2807^11^^^^1
 ;;^UTILITY(U,$J,358.3,56412,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,56412,1,2,0)
 ;;=2^S9445
 ;;^UTILITY(U,$J,358.3,56412,1,3,0)
 ;;=3^Pt Education NOC,Individual
 ;;^UTILITY(U,$J,358.3,56413,0)
 ;;=99071^^258^2808^7^^^^1
 ;;^UTILITY(U,$J,358.3,56413,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,56413,1,2,0)
 ;;=2^99071
 ;;^UTILITY(U,$J,358.3,56413,1,3,0)
 ;;=3^Patient Education Materials
 ;;^UTILITY(U,$J,358.3,56414,0)
 ;;=57160^^258^2808^4^^^^1
 ;;^UTILITY(U,$J,358.3,56414,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,56414,1,2,0)
 ;;=2^57160

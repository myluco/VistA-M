IBDEI19F ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,21065,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21065,1,3,0)
 ;;=3^PTSD,Acute
 ;;^UTILITY(U,$J,358.3,21065,1,4,0)
 ;;=4^F43.11
 ;;^UTILITY(U,$J,358.3,21065,2)
 ;;=^5003571
 ;;^UTILITY(U,$J,358.3,21066,0)
 ;;=F43.12^^99^1016^11
 ;;^UTILITY(U,$J,358.3,21066,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21066,1,3,0)
 ;;=3^PTSD,Chronic
 ;;^UTILITY(U,$J,358.3,21066,1,4,0)
 ;;=4^F43.12
 ;;^UTILITY(U,$J,358.3,21066,2)
 ;;=^5003572
 ;;^UTILITY(U,$J,358.3,21067,0)
 ;;=F43.10^^99^1016^12
 ;;^UTILITY(U,$J,358.3,21067,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21067,1,3,0)
 ;;=3^PTSD,Unspec
 ;;^UTILITY(U,$J,358.3,21067,1,4,0)
 ;;=4^F43.10
 ;;^UTILITY(U,$J,358.3,21067,2)
 ;;=^5003570
 ;;^UTILITY(U,$J,358.3,21068,0)
 ;;=F43.8^^99^1016^13
 ;;^UTILITY(U,$J,358.3,21068,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21068,1,3,0)
 ;;=3^Reaction to Severe Stress,Other
 ;;^UTILITY(U,$J,358.3,21068,1,4,0)
 ;;=4^F43.8
 ;;^UTILITY(U,$J,358.3,21068,2)
 ;;=^5003575
 ;;^UTILITY(U,$J,358.3,21069,0)
 ;;=F43.9^^99^1016^14
 ;;^UTILITY(U,$J,358.3,21069,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21069,1,3,0)
 ;;=3^Reaction to Severe Stress,Unspec
 ;;^UTILITY(U,$J,358.3,21069,1,4,0)
 ;;=4^F43.9
 ;;^UTILITY(U,$J,358.3,21069,2)
 ;;=^5003576
 ;;^UTILITY(U,$J,358.3,21070,0)
 ;;=F18.10^^99^1017^1
 ;;^UTILITY(U,$J,358.3,21070,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21070,1,3,0)
 ;;=3^Inhalant Use Disorder,Mild
 ;;^UTILITY(U,$J,358.3,21070,1,4,0)
 ;;=4^F18.10
 ;;^UTILITY(U,$J,358.3,21070,2)
 ;;=^5003380
 ;;^UTILITY(U,$J,358.3,21071,0)
 ;;=F18.20^^99^1017^2
 ;;^UTILITY(U,$J,358.3,21071,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21071,1,3,0)
 ;;=3^Inhalant Use Disorder,Moderate-Severe
 ;;^UTILITY(U,$J,358.3,21071,1,4,0)
 ;;=4^F18.20
 ;;^UTILITY(U,$J,358.3,21071,2)
 ;;=^5003392
 ;;^UTILITY(U,$J,358.3,21072,0)
 ;;=F18.21^^99^1017^3
 ;;^UTILITY(U,$J,358.3,21072,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21072,1,3,0)
 ;;=3^Inhalant Use Disorder,Moderate-Severe,In Remission
 ;;^UTILITY(U,$J,358.3,21072,1,4,0)
 ;;=4^F18.21
 ;;^UTILITY(U,$J,358.3,21072,2)
 ;;=^5003393
 ;;^UTILITY(U,$J,358.3,21073,0)
 ;;=F18.14^^99^1017^4
 ;;^UTILITY(U,$J,358.3,21073,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21073,1,3,0)
 ;;=3^Inhalant-Induced Depressive Disorder w/ Mild Use Disorder
 ;;^UTILITY(U,$J,358.3,21073,1,4,0)
 ;;=4^F18.14
 ;;^UTILITY(U,$J,358.3,21073,2)
 ;;=^5003384
 ;;^UTILITY(U,$J,358.3,21074,0)
 ;;=F18.24^^99^1017^5
 ;;^UTILITY(U,$J,358.3,21074,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21074,1,3,0)
 ;;=3^Inhalant-Induced Depressive Disorder w/ Moderate to Severe Use Disorder
 ;;^UTILITY(U,$J,358.3,21074,1,4,0)
 ;;=4^F18.24
 ;;^UTILITY(U,$J,358.3,21074,2)
 ;;=^5003397
 ;;^UTILITY(U,$J,358.3,21075,0)
 ;;=F70.^^99^1018^1
 ;;^UTILITY(U,$J,358.3,21075,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21075,1,3,0)
 ;;=3^Intellectual Disabilities,Mild
 ;;^UTILITY(U,$J,358.3,21075,1,4,0)
 ;;=4^F70.
 ;;^UTILITY(U,$J,358.3,21075,2)
 ;;=^5003668
 ;;^UTILITY(U,$J,358.3,21076,0)
 ;;=F71.^^99^1018^2
 ;;^UTILITY(U,$J,358.3,21076,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21076,1,3,0)
 ;;=3^Intellectual Disabilities,Moderate
 ;;^UTILITY(U,$J,358.3,21076,1,4,0)
 ;;=4^F71.
 ;;^UTILITY(U,$J,358.3,21076,2)
 ;;=^5003669
 ;;^UTILITY(U,$J,358.3,21077,0)
 ;;=F72.^^99^1018^3
 ;;^UTILITY(U,$J,358.3,21077,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,21077,1,3,0)
 ;;=3^Intellectual Disabilities,Severe
 ;;^UTILITY(U,$J,358.3,21077,1,4,0)
 ;;=4^F72.
 ;;^UTILITY(U,$J,358.3,21077,2)
 ;;=^5003670
 ;;^UTILITY(U,$J,358.3,21078,0)
 ;;=F73.^^99^1018^4
IBDEI2ZN ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,50095,1,3,0)
 ;;=3^Athscl Hrt Disease Native Cor Art w/o Ang Pctrs
 ;;^UTILITY(U,$J,358.3,50095,1,4,0)
 ;;=4^I25.10
 ;;^UTILITY(U,$J,358.3,50095,2)
 ;;=^5007107
 ;;^UTILITY(U,$J,358.3,50096,0)
 ;;=I48.0^^219^2439^42
 ;;^UTILITY(U,$J,358.3,50096,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50096,1,3,0)
 ;;=3^Atrial Fibrillation
 ;;^UTILITY(U,$J,358.3,50096,1,4,0)
 ;;=4^I48.0
 ;;^UTILITY(U,$J,358.3,50096,2)
 ;;=^90473
 ;;^UTILITY(U,$J,358.3,50097,0)
 ;;=I49.9^^219^2439^44
 ;;^UTILITY(U,$J,358.3,50097,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50097,1,3,0)
 ;;=3^Cardiac Arrhythmia,Unspec
 ;;^UTILITY(U,$J,358.3,50097,1,4,0)
 ;;=4^I49.9
 ;;^UTILITY(U,$J,358.3,50097,2)
 ;;=^5007237
 ;;^UTILITY(U,$J,358.3,50098,0)
 ;;=I42.9^^219^2439^45
 ;;^UTILITY(U,$J,358.3,50098,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50098,1,3,0)
 ;;=3^Cardiomyopathy,Unspec
 ;;^UTILITY(U,$J,358.3,50098,1,4,0)
 ;;=4^I42.9
 ;;^UTILITY(U,$J,358.3,50098,2)
 ;;=^5007200
 ;;^UTILITY(U,$J,358.3,50099,0)
 ;;=I50.42^^219^2439^47
 ;;^UTILITY(U,$J,358.3,50099,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50099,1,3,0)
 ;;=3^Chr Combined Systolic & Diastolic Congestive Hrt Failure
 ;;^UTILITY(U,$J,358.3,50099,1,4,0)
 ;;=4^I50.42
 ;;^UTILITY(U,$J,358.3,50099,2)
 ;;=^5007249
 ;;^UTILITY(U,$J,358.3,50100,0)
 ;;=I50.32^^219^2439^48
 ;;^UTILITY(U,$J,358.3,50100,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50100,1,3,0)
 ;;=3^Chr Diastolic Congestive Hrt Failure
 ;;^UTILITY(U,$J,358.3,50100,1,4,0)
 ;;=4^I50.32
 ;;^UTILITY(U,$J,358.3,50100,2)
 ;;=^5007245
 ;;^UTILITY(U,$J,358.3,50101,0)
 ;;=I27.82^^219^2439^49
 ;;^UTILITY(U,$J,358.3,50101,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50101,1,3,0)
 ;;=3^Chr Pulmonary Embolism
 ;;^UTILITY(U,$J,358.3,50101,1,4,0)
 ;;=4^I27.82
 ;;^UTILITY(U,$J,358.3,50101,2)
 ;;=^338238
 ;;^UTILITY(U,$J,358.3,50102,0)
 ;;=I50.22^^219^2439^50
 ;;^UTILITY(U,$J,358.3,50102,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50102,1,3,0)
 ;;=3^Chr Systolic Congestive Hrt Failure
 ;;^UTILITY(U,$J,358.3,50102,1,4,0)
 ;;=4^I50.22
 ;;^UTILITY(U,$J,358.3,50102,2)
 ;;=^5007241
 ;;^UTILITY(U,$J,358.3,50103,0)
 ;;=I42.0^^219^2439^53
 ;;^UTILITY(U,$J,358.3,50103,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50103,1,3,0)
 ;;=3^Dilated Cardiomyopathy
 ;;^UTILITY(U,$J,358.3,50103,1,4,0)
 ;;=4^I42.0
 ;;^UTILITY(U,$J,358.3,50103,2)
 ;;=^5007194
 ;;^UTILITY(U,$J,358.3,50104,0)
 ;;=I10.^^219^2439^54
 ;;^UTILITY(U,$J,358.3,50104,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50104,1,3,0)
 ;;=3^Essential Hypertension
 ;;^UTILITY(U,$J,358.3,50104,1,4,0)
 ;;=4^I10.
 ;;^UTILITY(U,$J,358.3,50104,2)
 ;;=^5007062
 ;;^UTILITY(U,$J,358.3,50105,0)
 ;;=I50.9^^219^2439^55
 ;;^UTILITY(U,$J,358.3,50105,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50105,1,3,0)
 ;;=3^Heart Failure,Unspec
 ;;^UTILITY(U,$J,358.3,50105,1,4,0)
 ;;=4^I50.9
 ;;^UTILITY(U,$J,358.3,50105,2)
 ;;=^5007251
 ;;^UTILITY(U,$J,358.3,50106,0)
 ;;=I35.1^^219^2439^60
 ;;^UTILITY(U,$J,358.3,50106,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50106,1,3,0)
 ;;=3^Nonrheumatic Aortic Valve Insufficiency
 ;;^UTILITY(U,$J,358.3,50106,1,4,0)
 ;;=4^I35.1
 ;;^UTILITY(U,$J,358.3,50106,2)
 ;;=^5007175
 ;;^UTILITY(U,$J,358.3,50107,0)
 ;;=I35.0^^219^2439^61
 ;;^UTILITY(U,$J,358.3,50107,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50107,1,3,0)
 ;;=3^Nonrheumatic Aortic Valve Stenosis
 ;;^UTILITY(U,$J,358.3,50107,1,4,0)
 ;;=4^I35.0
 ;;^UTILITY(U,$J,358.3,50107,2)
 ;;=^5007174
 ;;^UTILITY(U,$J,358.3,50108,0)
 ;;=I35.2^^219^2439^62
 ;;^UTILITY(U,$J,358.3,50108,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50108,1,3,0)
 ;;=3^Nonrheumatic Aortic Valve Stenosis w/ Insufficiency

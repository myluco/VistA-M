IBDEI3BP ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,55847,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55847,1,3,0)
 ;;=3^Abnormal Liver Function Studies
 ;;^UTILITY(U,$J,358.3,55847,1,4,0)
 ;;=4^R94.5
 ;;^UTILITY(U,$J,358.3,55847,2)
 ;;=^5019742
 ;;^UTILITY(U,$J,358.3,55848,0)
 ;;=R94.6^^256^2787^21
 ;;^UTILITY(U,$J,358.3,55848,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55848,1,3,0)
 ;;=3^Abnormal Thyroid Function Studies
 ;;^UTILITY(U,$J,358.3,55848,1,4,0)
 ;;=4^R94.6
 ;;^UTILITY(U,$J,358.3,55848,2)
 ;;=^5019743
 ;;^UTILITY(U,$J,358.3,55849,0)
 ;;=R94.7^^256^2787^5
 ;;^UTILITY(U,$J,358.3,55849,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55849,1,3,0)
 ;;=3^Abnormal Endocrine Function Sutdies NEC
 ;;^UTILITY(U,$J,358.3,55849,1,4,0)
 ;;=4^R94.7
 ;;^UTILITY(U,$J,358.3,55849,2)
 ;;=^5019744
 ;;^UTILITY(U,$J,358.3,55850,0)
 ;;=R94.31^^256^2787^4
 ;;^UTILITY(U,$J,358.3,55850,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55850,1,3,0)
 ;;=3^Abnormal EKG
 ;;^UTILITY(U,$J,358.3,55850,1,4,0)
 ;;=4^R94.31
 ;;^UTILITY(U,$J,358.3,55850,2)
 ;;=^5019739
 ;;^UTILITY(U,$J,358.3,55851,0)
 ;;=R97.0^^256^2787^67
 ;;^UTILITY(U,$J,358.3,55851,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55851,1,3,0)
 ;;=3^Elevated Carcinoembryonic Antigen 
 ;;^UTILITY(U,$J,358.3,55851,1,4,0)
 ;;=4^R97.0
 ;;^UTILITY(U,$J,358.3,55851,2)
 ;;=^5019746
 ;;^UTILITY(U,$J,358.3,55852,0)
 ;;=R97.1^^256^2787^66
 ;;^UTILITY(U,$J,358.3,55852,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55852,1,3,0)
 ;;=3^Elevated Cancer Antigen 125
 ;;^UTILITY(U,$J,358.3,55852,1,4,0)
 ;;=4^R97.1
 ;;^UTILITY(U,$J,358.3,55852,2)
 ;;=^5019747
 ;;^UTILITY(U,$J,358.3,55853,0)
 ;;=R97.2^^256^2787^68
 ;;^UTILITY(U,$J,358.3,55853,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55853,1,3,0)
 ;;=3^Elevated PSA
 ;;^UTILITY(U,$J,358.3,55853,1,4,0)
 ;;=4^R97.2
 ;;^UTILITY(U,$J,358.3,55853,2)
 ;;=^5019748
 ;;^UTILITY(U,$J,358.3,55854,0)
 ;;=R97.8^^256^2787^22
 ;;^UTILITY(U,$J,358.3,55854,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55854,1,3,0)
 ;;=3^Abnormal Tumor Markers NEC
 ;;^UTILITY(U,$J,358.3,55854,1,4,0)
 ;;=4^R97.8
 ;;^UTILITY(U,$J,358.3,55854,2)
 ;;=^5019749
 ;;^UTILITY(U,$J,358.3,55855,0)
 ;;=R93.8^^256^2787^12
 ;;^UTILITY(U,$J,358.3,55855,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55855,1,3,0)
 ;;=3^Abnormal Findings on Dx Imaging of Body Structures
 ;;^UTILITY(U,$J,358.3,55855,1,4,0)
 ;;=4^R93.8
 ;;^UTILITY(U,$J,358.3,55855,2)
 ;;=^5019721
 ;;^UTILITY(U,$J,358.3,55856,0)
 ;;=R93.1^^256^2787^14
 ;;^UTILITY(U,$J,358.3,55856,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55856,1,3,0)
 ;;=3^Abnormal Findings on Dx Imaging of Heart/Cor Circ
 ;;^UTILITY(U,$J,358.3,55856,1,4,0)
 ;;=4^R93.1
 ;;^UTILITY(U,$J,358.3,55856,2)
 ;;=^5019714
 ;;^UTILITY(U,$J,358.3,55857,0)
 ;;=R68.83^^256^2787^48
 ;;^UTILITY(U,$J,358.3,55857,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55857,1,3,0)
 ;;=3^Chills w/o Fever
 ;;^UTILITY(U,$J,358.3,55857,1,4,0)
 ;;=4^R68.83
 ;;^UTILITY(U,$J,358.3,55857,2)
 ;;=^5019555
 ;;^UTILITY(U,$J,358.3,55858,0)
 ;;=R68.2^^256^2787^62
 ;;^UTILITY(U,$J,358.3,55858,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55858,1,3,0)
 ;;=3^Dry Mouth,Unspec
 ;;^UTILITY(U,$J,358.3,55858,1,4,0)
 ;;=4^R68.2
 ;;^UTILITY(U,$J,358.3,55858,2)
 ;;=^5019552
 ;;^UTILITY(U,$J,358.3,55859,0)
 ;;=R09.02^^256^2787^88
 ;;^UTILITY(U,$J,358.3,55859,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,55859,1,3,0)
 ;;=3^Hypoxemia
 ;;^UTILITY(U,$J,358.3,55859,1,4,0)
 ;;=4^R09.02
 ;;^UTILITY(U,$J,358.3,55859,2)
 ;;=^332831
 ;;^UTILITY(U,$J,358.3,55860,0)
 ;;=R39.81^^256^2787^92
 ;;^UTILITY(U,$J,358.3,55860,1,0)
 ;;=^358.31IA^4^2
IBDEI2ZU ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,50185,1,3,0)
 ;;=3^Anemia,Unspec
 ;;^UTILITY(U,$J,358.3,50185,1,4,0)
 ;;=4^D64.9
 ;;^UTILITY(U,$J,358.3,50185,2)
 ;;=^5002351
 ;;^UTILITY(U,$J,358.3,50186,0)
 ;;=R79.9^^219^2445^1
 ;;^UTILITY(U,$J,358.3,50186,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50186,1,3,0)
 ;;=3^Abnormal Finding of Blood Chemistry,Unspec
 ;;^UTILITY(U,$J,358.3,50186,1,4,0)
 ;;=4^R79.9
 ;;^UTILITY(U,$J,358.3,50186,2)
 ;;=^5019594
 ;;^UTILITY(U,$J,358.3,50187,0)
 ;;=R78.71^^219^2445^2
 ;;^UTILITY(U,$J,358.3,50187,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50187,1,3,0)
 ;;=3^Abnormal Lead Level in Blood
 ;;^UTILITY(U,$J,358.3,50187,1,4,0)
 ;;=4^R78.71
 ;;^UTILITY(U,$J,358.3,50187,2)
 ;;=^5019586
 ;;^UTILITY(U,$J,358.3,50188,0)
 ;;=R79.0^^219^2445^3
 ;;^UTILITY(U,$J,358.3,50188,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50188,1,3,0)
 ;;=3^Abnormal Level of Blood Mineral
 ;;^UTILITY(U,$J,358.3,50188,1,4,0)
 ;;=4^R79.0
 ;;^UTILITY(U,$J,358.3,50188,2)
 ;;=^5019590
 ;;^UTILITY(U,$J,358.3,50189,0)
 ;;=R78.79^^219^2445^4
 ;;^UTILITY(U,$J,358.3,50189,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50189,1,3,0)
 ;;=3^Abnormal Level of Heavy Metals in Blood
 ;;^UTILITY(U,$J,358.3,50189,1,4,0)
 ;;=4^R78.79
 ;;^UTILITY(U,$J,358.3,50189,2)
 ;;=^5019587
 ;;^UTILITY(U,$J,358.3,50190,0)
 ;;=K74.0^^219^2445^7
 ;;^UTILITY(U,$J,358.3,50190,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50190,1,3,0)
 ;;=3^Hepatic Fibrosis
 ;;^UTILITY(U,$J,358.3,50190,1,4,0)
 ;;=4^K74.0
 ;;^UTILITY(U,$J,358.3,50190,2)
 ;;=^5008816
 ;;^UTILITY(U,$J,358.3,50191,0)
 ;;=E79.0^^219^2445^8
 ;;^UTILITY(U,$J,358.3,50191,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50191,1,3,0)
 ;;=3^Hyperuricemia w/o Signs of Inflam Arthrit/Tophaceous Disease
 ;;^UTILITY(U,$J,358.3,50191,1,4,0)
 ;;=4^E79.0
 ;;^UTILITY(U,$J,358.3,50191,2)
 ;;=^5002978
 ;;^UTILITY(U,$J,358.3,50192,0)
 ;;=K74.69^^219^2445^5
 ;;^UTILITY(U,$J,358.3,50192,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50192,1,3,0)
 ;;=3^Cirrhosis of Liver NEC
 ;;^UTILITY(U,$J,358.3,50192,1,4,0)
 ;;=4^K74.69
 ;;^UTILITY(U,$J,358.3,50192,2)
 ;;=^5008823
 ;;^UTILITY(U,$J,358.3,50193,0)
 ;;=K74.60^^219^2445^6
 ;;^UTILITY(U,$J,358.3,50193,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50193,1,3,0)
 ;;=3^Cirrhosis of Liver,Unspec
 ;;^UTILITY(U,$J,358.3,50193,1,4,0)
 ;;=4^K74.60
 ;;^UTILITY(U,$J,358.3,50193,2)
 ;;=^5008822
 ;;^UTILITY(U,$J,358.3,50194,0)
 ;;=J85.1^^219^2446^41
 ;;^UTILITY(U,$J,358.3,50194,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50194,1,3,0)
 ;;=3^Abscess of Lung w/ Pneumonia
 ;;^UTILITY(U,$J,358.3,50194,1,4,0)
 ;;=4^J85.1
 ;;^UTILITY(U,$J,358.3,50194,2)
 ;;=^5008306
 ;;^UTILITY(U,$J,358.3,50195,0)
 ;;=J85.2^^219^2446^42
 ;;^UTILITY(U,$J,358.3,50195,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50195,1,3,0)
 ;;=3^Abscess of Lung w/o Pneumonia
 ;;^UTILITY(U,$J,358.3,50195,1,4,0)
 ;;=4^J85.2
 ;;^UTILITY(U,$J,358.3,50195,2)
 ;;=^5008307
 ;;^UTILITY(U,$J,358.3,50196,0)
 ;;=H60.513^^219^2446^1
 ;;^UTILITY(U,$J,358.3,50196,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50196,1,3,0)
 ;;=3^AC Actinic Otitis Externa,Bilateral
 ;;^UTILITY(U,$J,358.3,50196,1,4,0)
 ;;=4^H60.513
 ;;^UTILITY(U,$J,358.3,50196,2)
 ;;=^5006472
 ;;^UTILITY(U,$J,358.3,50197,0)
 ;;=H60.512^^219^2446^2
 ;;^UTILITY(U,$J,358.3,50197,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,50197,1,3,0)
 ;;=3^AC Actinic Otitis Externa,Left Ear
 ;;^UTILITY(U,$J,358.3,50197,1,4,0)
 ;;=4^H60.512
 ;;^UTILITY(U,$J,358.3,50197,2)
 ;;=^5006471
 ;;^UTILITY(U,$J,358.3,50198,0)
 ;;=H60.511^^219^2446^3
 ;;^UTILITY(U,$J,358.3,50198,1,0)
 ;;=^358.31IA^4^2

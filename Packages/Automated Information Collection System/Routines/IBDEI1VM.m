IBDEI1VM ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,31427,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31427,1,1,0)
 ;;=1^DETAILED HX OR EXAM;MOD COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31427,1,2,0)
 ;;=2^99226
 ;;^UTILITY(U,$J,358.3,31428,0)
 ;;=99334^^137^1421^1
 ;;^UTILITY(U,$J,358.3,31428,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31428,1,1,0)
 ;;=1^PROBLEM FOCUSED HX OR EXAM;SF MDM
 ;;^UTILITY(U,$J,358.3,31428,1,2,0)
 ;;=2^99334
 ;;^UTILITY(U,$J,358.3,31429,0)
 ;;=99335^^137^1421^2
 ;;^UTILITY(U,$J,358.3,31429,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31429,1,1,0)
 ;;=1^EXPAND PROB FOCUS HX OR EXAM;LOW COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31429,1,2,0)
 ;;=2^99335
 ;;^UTILITY(U,$J,358.3,31430,0)
 ;;=99336^^137^1421^3
 ;;^UTILITY(U,$J,358.3,31430,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31430,1,1,0)
 ;;=1^DETAILED HX OR EXAM;MOD COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31430,1,2,0)
 ;;=2^99336
 ;;^UTILITY(U,$J,358.3,31431,0)
 ;;=99337^^137^1421^4
 ;;^UTILITY(U,$J,358.3,31431,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31431,1,1,0)
 ;;=1^COMPREH HX OR EXAM;HIGH COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31431,1,2,0)
 ;;=2^99337
 ;;^UTILITY(U,$J,358.3,31432,0)
 ;;=99324^^137^1422^1
 ;;^UTILITY(U,$J,358.3,31432,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31432,1,1,0)
 ;;=1^PROBLEM FOCUSED HX & EXAM;SF MDM
 ;;^UTILITY(U,$J,358.3,31432,1,2,0)
 ;;=2^99324
 ;;^UTILITY(U,$J,358.3,31433,0)
 ;;=99325^^137^1422^2
 ;;^UTILITY(U,$J,358.3,31433,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31433,1,1,0)
 ;;=1^EXPAND PROB FOCUS HX & EXAM;LOW COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31433,1,2,0)
 ;;=2^99325
 ;;^UTILITY(U,$J,358.3,31434,0)
 ;;=99326^^137^1422^3
 ;;^UTILITY(U,$J,358.3,31434,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31434,1,1,0)
 ;;=1^DETAILED HX & EXAM;MOD COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31434,1,2,0)
 ;;=2^99326
 ;;^UTILITY(U,$J,358.3,31435,0)
 ;;=99327^^137^1422^4
 ;;^UTILITY(U,$J,358.3,31435,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31435,1,1,0)
 ;;=1^COMPREH HX & EXAM;MOD COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31435,1,2,0)
 ;;=2^99327
 ;;^UTILITY(U,$J,358.3,31436,0)
 ;;=99328^^137^1422^5
 ;;^UTILITY(U,$J,358.3,31436,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31436,1,1,0)
 ;;=1^COMPREH HX & EXAM;HIGH COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31436,1,2,0)
 ;;=2^99328
 ;;^UTILITY(U,$J,358.3,31437,0)
 ;;=99347^^137^1423^1
 ;;^UTILITY(U,$J,358.3,31437,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31437,1,1,0)
 ;;=1^PROBLEM FOCUSED HX OR EXAM;SF MDM
 ;;^UTILITY(U,$J,358.3,31437,1,2,0)
 ;;=2^99347
 ;;^UTILITY(U,$J,358.3,31438,0)
 ;;=99348^^137^1423^2
 ;;^UTILITY(U,$J,358.3,31438,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31438,1,1,0)
 ;;=1^EXPAND PROB FOCUS HX OR EXAM;LOW COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31438,1,2,0)
 ;;=2^99348
 ;;^UTILITY(U,$J,358.3,31439,0)
 ;;=99349^^137^1423^3
 ;;^UTILITY(U,$J,358.3,31439,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31439,1,1,0)
 ;;=1^DETAILED HX OR EXAM;MOD COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31439,1,2,0)
 ;;=2^99349
 ;;^UTILITY(U,$J,358.3,31440,0)
 ;;=99350^^137^1423^4
 ;;^UTILITY(U,$J,358.3,31440,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31440,1,1,0)
 ;;=1^COMPREH HX OR EXAM;HIGH COMPLEX MDM
 ;;^UTILITY(U,$J,358.3,31440,1,2,0)
 ;;=2^99350
 ;;^UTILITY(U,$J,358.3,31441,0)
 ;;=99341^^137^1424^1
 ;;^UTILITY(U,$J,358.3,31441,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31441,1,1,0)
 ;;=1^PROBLEM FOCUSED HX & EXAM;SF MDM
 ;;^UTILITY(U,$J,358.3,31441,1,2,0)
 ;;=2^99341
 ;;^UTILITY(U,$J,358.3,31442,0)
 ;;=99342^^137^1424^2
 ;;^UTILITY(U,$J,358.3,31442,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,31442,1,1,0)
 ;;=1^EXPAND PROB FOCUS HX & EXAM;SF MDM
IBDEI1Q5 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,28848,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28848,1,3,0)
 ;;=3^Fall from Building/Structure,Subs Encntr
 ;;^UTILITY(U,$J,358.3,28848,1,4,0)
 ;;=4^W13.8XXD
 ;;^UTILITY(U,$J,358.3,28848,2)
 ;;=^5059617
 ;;^UTILITY(U,$J,358.3,28849,0)
 ;;=W13.9XXA^^132^1339^33
 ;;^UTILITY(U,$J,358.3,28849,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28849,1,3,0)
 ;;=3^Fall from Building NOS,Init Encntr
 ;;^UTILITY(U,$J,358.3,28849,1,4,0)
 ;;=4^W13.9XXA
 ;;^UTILITY(U,$J,358.3,28849,2)
 ;;=^5059619
 ;;^UTILITY(U,$J,358.3,28850,0)
 ;;=W13.9XXD^^132^1339^34
 ;;^UTILITY(U,$J,358.3,28850,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28850,1,3,0)
 ;;=3^Fall from Building NOS,Subs Encntr
 ;;^UTILITY(U,$J,358.3,28850,1,4,0)
 ;;=4^W13.9XXD
 ;;^UTILITY(U,$J,358.3,28850,2)
 ;;=^5059620
 ;;^UTILITY(U,$J,358.3,28851,0)
 ;;=W14.XXXA^^132^1339^65
 ;;^UTILITY(U,$J,358.3,28851,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28851,1,3,0)
 ;;=3^Fall from Tree,Init Encntr
 ;;^UTILITY(U,$J,358.3,28851,1,4,0)
 ;;=4^W14.XXXA
 ;;^UTILITY(U,$J,358.3,28851,2)
 ;;=^5059622
 ;;^UTILITY(U,$J,358.3,28852,0)
 ;;=W14.XXXD^^132^1339^66
 ;;^UTILITY(U,$J,358.3,28852,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28852,1,3,0)
 ;;=3^Fall from Tree,Subs Encntr
 ;;^UTILITY(U,$J,358.3,28852,1,4,0)
 ;;=4^W14.XXXD
 ;;^UTILITY(U,$J,358.3,28852,2)
 ;;=^5059623
 ;;^UTILITY(U,$J,358.3,28853,0)
 ;;=W17.2XXA^^132^1339^77
 ;;^UTILITY(U,$J,358.3,28853,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28853,1,3,0)
 ;;=3^Fall into Hole,Init Encntr
 ;;^UTILITY(U,$J,358.3,28853,1,4,0)
 ;;=4^W17.2XXA
 ;;^UTILITY(U,$J,358.3,28853,2)
 ;;=^5059772
 ;;^UTILITY(U,$J,358.3,28854,0)
 ;;=W17.2XXD^^132^1339^78
 ;;^UTILITY(U,$J,358.3,28854,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28854,1,3,0)
 ;;=3^Fall into Hole,Subs Encntr
 ;;^UTILITY(U,$J,358.3,28854,1,4,0)
 ;;=4^W17.2XXD
 ;;^UTILITY(U,$J,358.3,28854,2)
 ;;=^5059773
 ;;^UTILITY(U,$J,358.3,28855,0)
 ;;=W17.3XXA^^132^1339^75
 ;;^UTILITY(U,$J,358.3,28855,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28855,1,3,0)
 ;;=3^Fall into Empty Swimming Pool,Init Encntr
 ;;^UTILITY(U,$J,358.3,28855,1,4,0)
 ;;=4^W17.3XXA
 ;;^UTILITY(U,$J,358.3,28855,2)
 ;;=^5059775
 ;;^UTILITY(U,$J,358.3,28856,0)
 ;;=W17.3XXD^^132^1339^76
 ;;^UTILITY(U,$J,358.3,28856,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28856,1,3,0)
 ;;=3^Fall into Empty Swimming Pool,Subs Encntr
 ;;^UTILITY(U,$J,358.3,28856,1,4,0)
 ;;=4^W17.3XXD
 ;;^UTILITY(U,$J,358.3,28856,2)
 ;;=^5059776
 ;;^UTILITY(U,$J,358.3,28857,0)
 ;;=W17.4XXA^^132^1339^39
 ;;^UTILITY(U,$J,358.3,28857,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28857,1,3,0)
 ;;=3^Fall from Dock,Init Encntr
 ;;^UTILITY(U,$J,358.3,28857,1,4,0)
 ;;=4^W17.4XXA
 ;;^UTILITY(U,$J,358.3,28857,2)
 ;;=^5059778
 ;;^UTILITY(U,$J,358.3,28858,0)
 ;;=W17.4XXD^^132^1339^40
 ;;^UTILITY(U,$J,358.3,28858,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28858,1,3,0)
 ;;=3^Fall from Dock,Subs Encntr
 ;;^UTILITY(U,$J,358.3,28858,1,4,0)
 ;;=4^W17.4XXD
 ;;^UTILITY(U,$J,358.3,28858,2)
 ;;=^5059779
 ;;^UTILITY(U,$J,358.3,28859,0)
 ;;=W17.81XA^^132^1339^27
 ;;^UTILITY(U,$J,358.3,28859,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28859,1,3,0)
 ;;=3^Fall down Embankment,Init Encntr
 ;;^UTILITY(U,$J,358.3,28859,1,4,0)
 ;;=4^W17.81XA
 ;;^UTILITY(U,$J,358.3,28859,2)
 ;;=^5059781
 ;;^UTILITY(U,$J,358.3,28860,0)
 ;;=W17.81XD^^132^1339^28
 ;;^UTILITY(U,$J,358.3,28860,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28860,1,3,0)
 ;;=3^Fall down Embankment,Subs Encntr
 ;;^UTILITY(U,$J,358.3,28860,1,4,0)
 ;;=4^W17.81XD
 ;;^UTILITY(U,$J,358.3,28860,2)
 ;;=^5059782
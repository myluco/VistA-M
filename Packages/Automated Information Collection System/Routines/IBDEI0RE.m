IBDEI0RE ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,12559,1,2,0)
 ;;=2^ABLATE INF TURBINATE SUBMUC
 ;;^UTILITY(U,$J,358.3,12560,0)
 ;;=92511^^75^724^15^^^^1
 ;;^UTILITY(U,$J,358.3,12560,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,12560,1,1,0)
 ;;=1^92511
 ;;^UTILITY(U,$J,358.3,12560,1,2,0)
 ;;=2^NASOPHARYNGOSCOPY W/ ENDOSCOPE
 ;;^UTILITY(U,$J,358.3,12561,0)
 ;;=41100^^75^725^2^^^^1
 ;;^UTILITY(U,$J,358.3,12561,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,12561,1,1,0)
 ;;=1^41100
 ;;^UTILITY(U,$J,358.3,12561,1,2,0)
 ;;=2^BIOPSY OF TONGUE
 ;;^UTILITY(U,$J,358.3,12562,0)
 ;;=41108^^75^725^1^^^^1
 ;;^UTILITY(U,$J,358.3,12562,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,12562,1,1,0)
 ;;=1^41108
 ;;^UTILITY(U,$J,358.3,12562,1,2,0)
 ;;=2^BIOPSY OF FLOOR OF MOUTH
 ;;^UTILITY(U,$J,358.3,12563,0)
 ;;=41000^^75^725^4^^^^1
 ;;^UTILITY(U,$J,358.3,12563,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,12563,1,1,0)
 ;;=1^41000
 ;;^UTILITY(U,$J,358.3,12563,1,2,0)
 ;;=2^DRAINAGE INTRAORAL LESION
 ;;^UTILITY(U,$J,358.3,12564,0)
 ;;=42300^^75^725^3^^^^1
 ;;^UTILITY(U,$J,358.3,12564,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,12564,1,1,0)
 ;;=1^42300
 ;;^UTILITY(U,$J,358.3,12564,1,2,0)
 ;;=2^DRAINAGE ABSCESS PAROTID
 ;;^UTILITY(U,$J,358.3,12565,0)
 ;;=42310^^75^725^5^^^^1
 ;;^UTILITY(U,$J,358.3,12565,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,12565,1,1,0)
 ;;=1^42310
 ;;^UTILITY(U,$J,358.3,12565,1,2,0)
 ;;=2^MARSUPIALIZATION RANULA
 ;;^UTILITY(U,$J,358.3,12566,0)
 ;;=41250^^75^725^6^^^^1
 ;;^UTILITY(U,$J,358.3,12566,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,12566,1,1,0)
 ;;=1^41250
 ;;^UTILITY(U,$J,358.3,12566,1,2,0)
 ;;=2^REPAIR LACERATION MOUTH FLOOR
 ;;^UTILITY(U,$J,358.3,12567,0)
 ;;=42330^^75^725^8^^^^1
 ;;^UTILITY(U,$J,358.3,12567,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,12567,1,1,0)
 ;;=1^42330
 ;;^UTILITY(U,$J,358.3,12567,1,2,0)
 ;;=2^SIALOLITHOTOMY
 ;;^UTILITY(U,$J,358.3,12568,0)
 ;;=42550^^75^725^7^^^^1
 ;;^UTILITY(U,$J,358.3,12568,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,12568,1,1,0)
 ;;=1^42550
 ;;^UTILITY(U,$J,358.3,12568,1,2,0)
 ;;=2^SIALOGRAPHY
 ;;^UTILITY(U,$J,358.3,12569,0)
 ;;=69100^^75^726^1^^^^1
 ;;^UTILITY(U,$J,358.3,12569,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,12569,1,1,0)
 ;;=1^69100
 ;;^UTILITY(U,$J,358.3,12569,1,2,0)
 ;;=2^BIOPSY AURICLE
 ;;^UTILITY(U,$J,358.3,12570,0)
 ;;=69105^^75^726^2^^^^1
 ;;^UTILITY(U,$J,358.3,12570,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,12570,1,1,0)
 ;;=1^69105
 ;;^UTILITY(U,$J,358.3,12570,1,2,0)
 ;;=2^BIOPSY EXTERNAL AUDITORY CANAL
 ;;^UTILITY(U,$J,358.3,12571,0)
 ;;=69200^^75^726^8^^^^1
 ;;^UTILITY(U,$J,358.3,12571,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,12571,1,1,0)
 ;;=1^69200
 ;;^UTILITY(U,$J,358.3,12571,1,2,0)
 ;;=2^REMOVE FB EXT AUD CANAL
 ;;^UTILITY(U,$J,358.3,12572,0)
 ;;=69220^^75^726^3^^^^1
 ;;^UTILITY(U,$J,358.3,12572,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,12572,1,1,0)
 ;;=1^69220
 ;;^UTILITY(U,$J,358.3,12572,1,2,0)
 ;;=2^DEBRIDE MASTOID CAVITY
 ;;^UTILITY(U,$J,358.3,12573,0)
 ;;=69000^^75^726^4^^^^1
 ;;^UTILITY(U,$J,358.3,12573,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,12573,1,1,0)
 ;;=1^69000
 ;;^UTILITY(U,$J,358.3,12573,1,2,0)
 ;;=2^DRAIN EXTERNAL EAR LESION
 ;;^UTILITY(U,$J,358.3,12574,0)
 ;;=69420^^75^726^7^^^^1
 ;;^UTILITY(U,$J,358.3,12574,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,12574,1,1,0)
 ;;=1^69420
 ;;^UTILITY(U,$J,358.3,12574,1,2,0)
 ;;=2^MYRINGOTOMY
 ;;^UTILITY(U,$J,358.3,12575,0)
 ;;=69210^^75^726^9^^^^1
 ;;^UTILITY(U,$J,358.3,12575,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,12575,1,1,0)
 ;;=1^69210
 ;;^UTILITY(U,$J,358.3,12575,1,2,0)
 ;;=2^REMOVE IMPACTED EAR WAX
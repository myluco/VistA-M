PRC5B1 ;WISC/PLT-PRC5B continue ; 07/07/94  2:47 PM
V ;;5.0;IFCAP;;4/21/95
 QUIT  ;invalid entry
 ;
ALD ;called by PRC5B
 N PRCA,PRCB,PRCC
 D EN^DDIOL("POST INITIAL: Move name (.01) to ald (5) for file 420.3"_" at "_$$NOW^PRC5A)
 S PRCA=0 F  S PRCA=$O(^PRCD(420.3,PRCA)) Q:'PRCA  S PRCB=^(PRCA,0) D:$P(PRCB,"^",7)=""&($P(PRCB,"^",6)="")
 . S PRCC=$P(PRCB,"^")
 . D EDIT^PRC0B(.X,"420.3;;"_PRCA,"5///^S X="""_PRCC_"""")
 . QUIT
 D EN^DDIOL("POST INITIAL: Move name (.01) to ald (5) for file 420.3 DONE"_" at "_$$NOW^PRC5A)
 QUIT
 ;
FND ;add fund code to file 420.3
 N PRCRI,PRCA,PRCB,PRCC,PRCSTRI
 D EN^DDIOL("POST INITIAL: Process FMS FND-DOCUMENT"_" at "_$$NOW^PRC5A)
 S PRCSTRI=$O(^PRCD(420.1999,"AC","A",""))
 S PRCRI(420.92)=0 F  S PRCRI(420.92)=$O(^PRCU(420.92,"B","FND",PRCRI(420.92))) Q:'PRCRI(420.92)  S PRCA=^PRCU(420.92,PRCRI(420.92),0) D:$P(PRCA,"^",4)]""&($P(PRCA,"^",6)="")
 . D ED(PRCRI(420.92),1)
 . S PRCRI(420.923)=0
 . F  S PRCRI(420.923)=$O(^PRCU(420.92,PRCRI(420.92),1,PRCRI(420.923))) Q:'PRCRI(420.923)  D:$P(^(PRCRI(420.923),0),"^",2)="" FNDED(PRCRI(420.92),PRCRI(420.923))
 . D ED(PRCRI(420.92),2)
 D EN^DDIOL("POST INITIAL: Process FMS FND-DOCUMENT done!"_" at "_$$NOW^PRC5A)
 QUIT
 ;
FNDED(PRCA,PRCB) ;start convert
 N PRCRI,PRCAPP,PRCFUND,PRCFUNDD,PRCYB,PRCYE,A
 S A=^PRCU(420.92,PRCA,1,PRCB,1),PRCAPP=$P(A,"~",2),PRCFUND=$P(A,"~",5)
 S PRCYB=+$$YEAR^PRC0C($P(A,"~",3)),PRCYE=+$$YEAR^PRC0C($S($P(A,"~",4):$P(A,"~",4),1:PRCYB)),PRCFUNDD=$P(A,"~",6)
 Q:PRCAPP=""!(PRCFUND="")!'PRCYB!'PRCYE
 ;add/edit fund file 420.14
 S PRCRI(420.14)=$O(^PRCD(420.14,"UNQ",PRCFUND,PRCYB,PRCYE,"")) D  QUIT:'PRCRI(420.14)
 . I PRCRI(420.14) D EDIT^PRC0B(.X,"420.14;;"_PRCRI(420.14),"1///^S X="""_PRCFUNDD_"""") I 1
 . E  S (PRCUQ,PRCK01,PRCK2,PRCK3)="" D
 .. S X=PRCFUND,X("DR")="1////"_PRCFUNDD_";2///^S X="""_PRCYB_""";3///^S X="""_PRCYE_""";5////"_PRCSTRI
 .. D ADD^PRC0B1(.X,.Y,"420.14;^PRCD(420.14,")
 .. S:Y>0 PRCRI(420.14)=+Y
 .. Q
 . Q
 S PRCRI(420.3)=0 F  S PRCRI(420.3)=$O(^PRCD(420.3,"B",PRCFUND,PRCRI(420.3))) Q:'PRCRI(420.3)  Q:$P($G(^PRCD(420.3,PRCRI(420.3),0)),"^",6)=""
 I 'PRCRI(420.3) D  QUIT:'PRCRI(420.3)
 . S X=PRCFUND,X("DR")="2////"_PRCAPP_";4////"_$TR(PRCAPP,"_"," ")
 . D ADD^PRC0B1(.X,.Y,"420.3;^PRCD(420.3,")
 . S:Y>0 PRCRI(420.3)=+Y
 D ED1(PRCA,PRCB) ;edit convert field
 QUIT
 ;
PCL ;set-up program dic (called from prc5a)
 N PRCRI,PRCA,PRCB,PRCC,PRCSTRI
 D EN^DDIOL("POST INITIAL: Process FMS PCL-DOCUMENT"_" at "_$$NOW^PRC5A)
 S PRCSTRI=$O(^PRCD(420.1999,"AC","A",""))
 S PRCRI(420.92)=0 F  S PRCRI(420.92)=$O(^PRCU(420.92,"B","PCL",PRCRI(420.92))) Q:'PRCRI(420.92)  S PRCA=^PRCU(420.92,PRCRI(420.92),0) D:$P(PRCA,"^",4)]""&($P(PRCA,"^",6)="")
 . D ED(PRCRI(420.92),1)
 . S PRCRI(420.923)=0
 . F  S PRCRI(420.923)=$O(^PRCU(420.92,PRCRI(420.92),1,PRCRI(420.923))) Q:'PRCRI(420.923)  D:$P(^(PRCRI(420.923),0),"^",2)="" PCLED(PRCRI(420.92),PRCRI(420.923))
 . D ED(PRCRI(420.92),2)
 D EN^DDIOL("POST INITIAL: Process FMS PCL-DOCUMENT done!"_" at "_$$NOW^PRC5A)
 QUIT
 ;
PCLED(PRCA,PRCB) ;set-up program dic
 N PRCRI,PRCPGM,PRCPGMD,A
 S A=^PRCU(420.92,PRCA,1,PRCB,1),PRCPGM=$P(A,"~",3),PRCPGMD=$P(A,"~",4)
 Q:PRCPGM=""
 S PRCRI(420.13)=$O(^PRCD(420.13,"B",PRCPGM,""))
 I PRCRI(420.13)="" D  QUIT:'PRCRI(420.13)
 . N X,Y
 . S X=PRCPGM,X("DR")="1////"_PRCPGMD_";2////"_PRCSTRI
 . D ADD^PRC0B1(.X,.Y,"420.13;^PRCD(420.13,")
 . S:Y>0 PRCRI(420.13)=+Y
 . QUIT
 D ED1(PRCA,PRCB) ;edit convert field
 QUIT
 ;
PAC ;set-up fcp/prj dic (called by prc5a)
 G PAC^PRC5B3
 QUIT
 ;
CPF ;fill-in fms fields in file 420 (fcp file) (called from prc5a)
 G CPF^PRC5B2
 ;
 QUIT
 ;
ED(PRCA,PRCB) ;edit convert start/end time,PRCA=RI, PRCB=1 if start, 2 if end
 S PRCB=$S(PRCB=1:2.6,1:2.7)
 D EDIT^PRC0B(.X,"420.92;;"_PRCA,PRCB_"///^S X=""N""")
 QUIT
 ;
ED1(PRCA,PRCB) ;edit converted y/n
 N A
 S A="420.92;^PRCU(420.92,;"_PRCA
 S A=A_"~"_"420.923;^PRCU(420.92,"_PRCA_",1,;"_PRCB
 D EDIT^PRC0B(.X,A,"2////Y")
 QUIT
 ;

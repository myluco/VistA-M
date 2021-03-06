GMTSOBD ; SLC/KER - HS Object - Display Type            ; 01/06/2003
 ;;2.7;Health Summary;**58**;Oct 20, 1995
 ;                
 ; External References
 ;   DBIA  10104  $$UP^XLFSTR
 ;   DBIA  10088  ENDR^%ZISS
 ;   DBIA   2056  $$GET1^DIQ  (file #200)
 ;   DBIA  10086  ^%ZIS
 ;   DBIA  10063  ^%ZTLOAD
 ;   DBIA  10089  ^%ZISC
 ;            
 Q
DDT(X) ; Detailed Display HS Type
 N GMTSDTD S GMTSDTD="" D DT(+($G(X))) Q
DT(X) ; Display HS Type
 K ^TMP("GMTSOBT",$J)
 N GMTSCCT,GMTSCNT,GMTSCMP,GMTSCPN,GMTSCPT,GMTSHD1,GMTSHD2,GMTSHOS
 N GMTSI,GMTSICD,GMTSIT,GMTSITC,GMTSITM,GMTSITS,GMTSLEN,GMTSLI,GMTSNAM
 N GMTSNAR,GMTSND0,GMTSOCC,GMTSOWN,GMTSPAR,GMTSPRT,GMTSS,GMTSTIM,GMTSTR
 N GMTSTTL,GMTSTXT,GMTST1,GMTST2,GMTSUNT,GMTSX,I
 S GMTSX=+($G(X)),(GMTSCCT,GMTSCNT)=0,GMTSND0=$G(^GMT(142,+($G(X)),0)),U="^"
 S GMTSNAM=$P(GMTSND0,U,1) Q:'$L(GMTSNAM)
 S GMTSOWN=$P(GMTSND0,U,3),GMTSOWN=$S(+GMTSOWN>0:$$GET1^DIQ(200,(+GMTSOWN_","),.01),1:"")
 S GMTSTTL=$G(^GMT(142,+($G(X)),"T"))
 S GMTST1=GMTSNAM,GMTSS=$J("",(35-$L(GMTST1)))
 S GMTSTXT=GMTSNAM S GMTSTXT=$G(BOLD)_GMTSTXT_$G(NORM)
 S:$L(GMTSTTL) GMTSTXT=GMTSTXT_GMTSS_GMTSTTL
 S GMTSCNT=GMTSCNT+1 S ^TMP("GMTSOBT",$J,GMTSCNT)=" "_GMTSTXT,^TMP("GMTSOBT",$J,0)=GMTSCNT
 S GMTSI=0 F  S GMTSI=$O(^GMT(142,+X,1,GMTSI)) Q:+GMTSI=0  D
 . N GMTSTR,GMTSCMP,GMTSCPN,GMTSHD1,GMTSHD2,GMTSITS S GMTSTR=$G(^GMT(142,+X,1,+GMTSI,0))
 . S GMTSCMP=$P(GMTSTR,U,2)
 . S GMTSPAR=$$PAR(+X,+GMTSI)
 . S GMTSCPN=$P($G(^GMT(142.1,+GMTSCMP,0)),U,1) Q:'$L(GMTSCPN)
 . S GMTSHD2=$P(GMTSTR,U,5),GMTSHD1=$P($G(^GMT(142.1,+GMTSCMP,0)),U,9)
 . S:$L(GMTSHD1) GMTSHD2=GMTSHD1
 . S GMTSITS=$S($D(^GMT(142,+X,1,+GMTSI,1,"B")):1,1:0),GMTSCCT=GMTSCCT+1
 . S GMTST1=" "_$J(GMTSCCT,3)_"  "_GMTSCPN,GMTSS=$J("",(40-$L(GMTST1)))
 . S GMTSTXT=" "_$G(BOLD)_$J(GMTSCCT,3)_"  "_GMTSCPN_$G(NORM)
 . S:$L(GMTSHD2) GMTSTXT=GMTSTXT_GMTSS_GMTSHD2_" "
 . S GMTST2=$S($L(GMTSHD2):(GMTST1_GMTSS_GMTSHD2),1:GMTST1)
 . S:+GMTSITS GMTSTXT=GMTSTXT_$S($L(GMTSTXT)<40:$J("",(40-$L(GMTST2))),1:"")_"(w/Selected Items)"
 . S GMTSCNT=GMTSCNT+1 S ^TMP("GMTSOBT",$J,GMTSCNT)=GMTSTXT,^TMP("GMTSOBT",$J,0)=GMTSCNT
 . I $L(GMTSPAR),$D(GMTSDTD) D
 . . S GMTSTXT="        "_GMTSPAR
 . . S GMTSCNT=GMTSCNT+1 S ^TMP("GMTSOBT",$J,GMTSCNT)=GMTSTXT,^TMP("GMTSOBT",$J,0)=GMTSCNT
 . N GMTSIT,GMTSITC S (GMTSIT,GMTSITC)=0
 . F  S GMTSIT=$O(^GMT(142,+X,1,+GMTSI,1,GMTSIT)) Q:+GMTSIT=0  D
 . . N GMTSLI,GMTSITM,GMTSNAM
 . . S GMTSLI=$G(^GMT(142,+X,1,+GMTSI,1,GMTSIT,0)),GMTSITM=$P(GMTSLI,U,1) Q:'$L(GMTSITM)
 . . Q:'$L($P(GMTSITM,";",2))  Q:+($P(GMTSITM,";",1))'>0  Q:'$D(@(U_$P(GMTSITM,";",2)_"0)"))
 . . S GMTSITM=U_$P(GMTSITM,";",2)_$P(GMTSITM,";",1)_",0)" S GMTSITM=@GMTSITM
 . . S GMTSNAM=$P(GMTSITM,U,1) Q:'$L(GMTSNAM)
 . . S GMTSITC=GMTSITC+1
 . . S GMTST1="       "_$J(GMTSITC,5)_"  "_GMTSNAM
 . . S GMTSTXT="       "_$G(BOLD)_$J(GMTSITC,5)_"  "_GMTSNAM_$G(NORM)
 . . S GMTSCNT=GMTSCNT+1 S ^TMP("GMTSOBT",$J,GMTSCNT)=GMTSTXT,^TMP("GMTSOBT",$J,0)=GMTSCNT
 I '$D(GMTSNOQ) D:+($G(^TMP("GMTSOBT",$J,0)))>0 DEV K ^TMP("GMTSOBT",$J)
 Q
PAR(X,I) ; Component Parameters
 N GMTSCPT,GMTSHOS,GMTSICD,GMTSLEN,GMTSNAR,GMTSOCC,GMTSPRT,GMTSTR
 N GMTSTIM,GMTSTXT,GMTSUNT
 S (GMTSTXT,GMTSPRT)="",GMTSTR=$G(^GMT(142,+X,1,+I,0))
 S GMTSOCC=$P(GMTSTR,U,3),GMTSOCC=$S(+GMTSOCC>0:(+GMTSOCC_" occ"),1:"")
 S GMTSTIM=$P(GMTSTR,U,4),GMTSUNT=$E(GMTSTIM,$L(GMTSTIM)),GMTSLEN=+GMTSTIM
 S GMTSUNT=$S(+GMTSUNT>0:"day",GMTSUNT="D":"day",GMTSUNT="W":"week",GMTSUNT="M":"month",GMTSUNT="Y":"year",1:"") S:$L(GMTSUNT)&(+GMTSLEN>1) GMTSUNT=GMTSUNT_"s"
 S GMTSTIM=$S(+GMTSTIM>0&($L(GMTSUNT)):(+GMTSTIM_" "_GMTSUNT),1:"")
 S GMTSHOS=$P(GMTSTR,U,6),GMTSHOS=$S($$UP^XLFSTR(GMTSHOS)="Y":"Hosp Loc",1:"")
 S GMTSICD=$$UP^XLFSTR($P(GMTSTR,U,7)),GMTSICD=$S(GMTSICD="L":"GMTSICD (long)",GMTSICD="S":"GMTSICD (short)",GMTSICD="C":"GMTSICD code",GMTSICD="T":"GMTSICD text",GMTSICD="N":"",1:"")
 S GMTSNAR=$$UP^XLFSTR($P(GMTSTR,U,8)),GMTSNAR=$S(GMTSNAR="Y":"Prov Narr",1:"")
 S GMTSCPT=$$UP^XLFSTR($P(GMTSTR,U,9)),GMTSCPT=$S(GMTSCPT="Y":"GMTSCPT Mod",1:"")
 S:$L(GMTSOCC) GMTSTXT=GMTSOCC
 S:$L(GMTSTIM)&($L(GMTSTXT)) GMTSTXT=GMTSTXT_" or "_GMTSTIM S:$L(GMTSTIM)&('$L(GMTSTXT)) GMTSTXT=GMTSTIM
 S:$L(GMTSHOS) GMTSPRT=GMTSHOS S:$L(GMTSICD)&($L(GMTSPRT)) GMTSPRT=GMTSPRT_", "_GMTSICD S:$L(GMTSICD)&('$L(GMTSPRT)) GMTSPRT=GMTSICD
 S:$L(GMTSNAR)&($L(GMTSPRT)) GMTSPRT=GMTSPRT_", "_GMTSNAR S:$L(GMTSNAR)&('$L(GMTSPRT)) GMTSPRT=GMTSNAR
 S:$L(GMTSCPT)&($L(GMTSPRT)) GMTSPRT=GMTSPRT_", "_GMTSCPT S:$L(GMTSCPT)&('$L(GMTSPRT)) GMTSPRT=GMTSCPT
 S:GMTSPRT[", " GMTSPRT=$P(GMTSPRT,", ",($L(GMTSPRT,", ")-1))_" and "_$P(GMTSPRT,", ",$L(GMTSPRT,", "))
 S:$L(GMTSPRT)&($L(GMTSTXT)) GMTSTXT=GMTSTXT_", and print "_GMTSPRT
 S:$L(GMTSPRT)&('$L(GMTSTXT)) GMTSTXT="Print "_GMTSPRT S X=GMTSTXT
 Q X
DEV ; Device
 I $D(CAP) D NODEV Q
 N ZTRTN,%ZIS,IOP,POP S %ZIS="PQ" D ^%ZIS Q:POP  I $D(IO("Q")) D QUE Q
NOQUE ; Print without Queuing
 N ZTRTN S ZTRTN="DSP^GMTSOBD"
 I $D(IOST),$D(IOF) W:IOST["C-"&('$D(GMTSNOI)) @IOF
 D @ZTRTN,^%ZISC Q
QUE ; Queued Print
 N %,ZTDESC,ZTDTH,ZTIO,ZTSAVE,ZTSK,ZTRTN S ZTRTN="DSP^GMTSOBD" K IO("Q"),ZTSAVE
 S ZTSAVE("^TMP(""GMTSOBJ"","_$J_",")=""
 S:$L($G(GMTSHDR)) ZTSAVE("GMTSHDR")=""
 S ZTDESC="Display Health Summary Type" S ZTIO=ION,ZTDTH=$H
 D ^%ZTLOAD I '$D(ZTSK) W !!,"Request Cancelled",! H 3 W:$D(IOF) @IOF
 I $D(ZTSK) W !!,"Request Queued",! H 3 W:$D(IOF) @IOF
 K ZTSK,ZTDESC,ZTDTH,ZTIO,ZTRTN,ZTSAVE D ^%ZISC Q
 Q
NODEV ; Print without Device Selection
 W !! N ZTRTN,POP,IOP,%ZIS,IOSL S IOSL=99999999999
 S ZTRTN="DSP^GMTSOBD" D @ZTRTN,^%ZISC
 Q
DSP ; Print Health Summary Type
 N GMTST,GMTSI,GMTSC,GMTSP,GMTSL,GMTSE,GMTSCR,GMTSPL
 S GMTSPL=3,GMTSE=0,GMTSP=$G(IOST),GMTSL=+($G(IOSL)) S:+GMTSL=0 GMTSL=24
 I $D(GMTSHDR) S (GMTSI,GMTSC)=0 D
 . F  S GMTSI=$O(GMTSHDR(GMTSI)) Q:+GMTSI=0  D  Q:GMTSE>0
 . . S GMTST=$G(GMTSHDR(GMTSI)) Q:'$L(GMTST)
 . . S GMTSC=GMTSC+1 I GMTSC=1 W ! S GMTSPL=GMTSPL+1
 . . W !,GMTST S GMTSPL=GMTSPL+1
 S GMTSI=0 F  S GMTSI=$O(^TMP("GMTSOBT",$J,GMTSI)) Q:+GMTSI=0  D
 . W !,$G(^TMP("GMTSOBT",$J,GMTSI)) S GMTSPL=GMTSPL+1 D CONT Q:GMTSE
 D CONT I '$D(CAP) W:GMTSP["P-"&($D(IOF)) @IOF
 Q
CONT ; Press <Return> to Continue
 I GMTSP["P-" W:$L($G(IOF))&($D(IOF)) @IOF Q
 Q:(GMTSP["C-"!(GMTSP=""))&(GMTSPL'>(GMTSL-4))  S GMTSPL=0 Q:GMTSE
 N GMTSCR S GMTSPL=0 W !!,"  Press <Return> to Continue  "
 R GMTSCR:660 I '$T!(GMTSCR["^") S GMTSCR="^",GMTSE=1
 W:GMTSP'["P-"&($D(IOF)) @IOF Q
 Q
ATTR ; Set Screen Attributes
 N X,IOINHI,IOINORM S X="IOINHI;IOINORM" D ENDR^%ZISS S BOLD=$G(IOINHI),NORM=$G(IOINORM) Q
KATTR ; Kill Screen Attributes
 K NORM,BOLD Q

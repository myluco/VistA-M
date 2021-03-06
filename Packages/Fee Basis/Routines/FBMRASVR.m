FBMRASVR ;AISC/CMR-Server Routine for MRA Messages ;11 Apr 2006  2:50 PM
 ;;3.5;FEE BASIS;**9,39,50,97,98**;JAN 30, 1995;Build 54
 ;;Per VHA Directive 10-93-142, this routine should not be modified.
 S X="TRAP^FBMRASV2" S @^%ZOSF("TRAP")
 ;K XMY S XMY("G.FEE DEVELOPERS@ISC-ALBANY.DOMAIN.EXT")="" D ENT1^XMD
 K ^TMP("FBMRA",$J),^TMP("FBER",$J)
 F I=1:1 X XMREC Q:XMER<0   S:$S($E(XMRG,1)=1:1,$E(XMRG,1)=4:1,1:0)&($S($E(XMRG,2)="C":1,$E(XMRG,2)="A":1,$E(XMRG,2)="Q":1,$E(XMRG,2)="F":1,1:0)) ^TMP("FBMRA",$J,I)=XMRG
TEST S (FBCNT,FBATOT,FBCTOT,FBFTOT,FBQTOT,FBI,FBID,FBER)=0 D STATION^FBAAUTL
 F  S FBI=$O(^TMP("FBMRA",$J,FBI)) Q:'FBI  S FBERR=0,FBJ=^(FBI),FBRT=$E(FBJ,1),FBAC=$E(FBJ,2) D PARSE D
 .I 'FBERR D EXTRACT S FBID=$$CKID(FBVID) S FBERR=$S('FBID:1,1:0) D:'FBERR ADD:FBAC="A"!(FBAC="Q"),CHANGE^FBMRASV1:FBAC="C",FPDS:FBAC="F" I FBERR D ER^FBMRASV2(1,FBJ,.FBER)
 .S:FBAC="A" FBATOT=FBATOT+1 S:FBAC="C" FBCTOT=FBCTOT+1 S:FBAC="Q" FBQTOT=FBQTOT+1 S:FBAC="F" FBFTOT=FBFTOT+1
 D MSG^FBMRASV2 Q
PARSE ;Extracts pharmacy or medical mra data
 D:FBRT=4  ;pharmacy record
 .I $L(FBJ)=167 S FBJ=$E(FBJ,1,166)_"                      $"
 .I $L(FBJ)'=189 D ER^FBMRASV2(2,FBJ,.FBER) S FBERR=1 Q
 .S FBVID=$E(FBJ,9,17),FBCHAIN=$E(FBJ,18,21),FBFEEO=$E(FBJ,22),FBVNAME=$E(FBJ,23,52),FBADD1=$E(FBJ,53,82),FBADD2=$E(FBJ,83,112),FBCITY=$E(FBJ,113,131),FBST=$E(FBJ,132,133),FBZIP=$E(FBJ,134,142),FBMRC=$E(FBJ,143,144)
 .S FBCC=$E(FBJ,145,147),FBPC=$E(FBJ,148),FBTID=$E(FBJ,149),FB1099=$E(FBJ,150),FBVT=$E(FBJ,151),FBICN=$E(FBJ,152,166),FBNPI=$E(FBJ,179,188)
 .S FBBT=$E(FBJ,167,168) F I=1:1:5 S FBSG(I)=$E(FBJ,I*2+167,I*2+168)
 .S FBCHAIN=$$EXTRL(FBCHAIN,1),FBCHAIN=$S(FBCHAIN=0:"",1:FBCHAIN)
 D:FBRT=1  ;medical record
 .I $L(FBJ)=171 S FBJ=$E(FBJ,1,170)_"                      $"
 .I $L(FBJ)'=193 D ER^FBMRASV2(2,FBJ,.FBER) S FBERR=1 Q
 .S FBVID=$E(FBJ,9,19),FBFEEO=$E(FBJ,22),FBSC=$E(FBJ,23,24),FBPART=$E(FBJ,25,26),FBVNAME=$E(FBJ,27,56),FBADD1=$E(FBJ,57,86),FBADD2=$E(FBJ,87,116),FBCITY=$E(FBJ,117,135),FBST=$E(FBJ,136,137),FBZIP=$E(FBJ,138,146),FBNPI=$E(FBJ,183,192)
 .S FBMRC=$E(FBJ,147,148),FBCC=$E(FBJ,149,151),FBPC=$E(FBJ,152),FBTID=$E(FBJ,153),FB1099=$E(FBJ,154),FBVT=$E(FBJ,155),FBICN=$E(FBJ,156,170)
 .S FBBT=$E(FBJ,171,172) F I=1:1:5 S FBSG(I)=$E(FBJ,I*2+171,I*2+172)
 .S FBSC=$S(FBSC="  ":"",$O(^FBAA(161.6,"C",FBSC,0))>0:$O(^FBAA(161.6,"C",FBSC,0)),1:""),FBPART=$$EXTRL(FBPART),FBPART=$O(^FBAA(161.81,"C",+FBPART,0))
 Q
EXTRACT ;Calls to remove leading/trailing spaces and zeros
 D:$D(XRTL) T0^%ZOSV
 S FBVID=$$EXTRT(FBVID),FBVNAME=$$EXTRT(FBVNAME),FBADD1=$$EXTRT(FBADD1),FBADD2=$$EXTRT(FBADD2),FBCITY=$$EXTRT(FBCITY),FBICN=$$EXTRL(FBICN,1),FBST=$$EXTRT(FBST),FBSTN=$E(FBICN,1,3)
 S FBMRC=$$EXTRL(FBMRC)
 S FBBT=$$EXTRT(FBBT)
 F I=1:1 Q:'$D(FBSG(I))  S FBSG(I)=$$EXTRT(FBSG(I)) I FBSG(I)="" K FBSG(I)
 ;Conversion from external to internal format.
 S FBSTATE=$S(FBST']"":"",$D(^DIC(5,"C",FBST)):$O(^DIC(5,"C",FBST,0)),1:""),FBZIP=$S($L(FBZIP)>5:$E(FBZIP,1,5)_"-"_$E(FBZIP,6,$L(FBZIP)),1:FBZIP),FBZIP1=$E(FBZIP,6,9) I '+FBZIP1 S FBZIP=$E(FBZIP,1,5)
 S FBCC=$S(FBCC="   ":"",FBCC']"":"",FBCC="000":"",$D(^DIC(5,+FBSTATE,1,"C",FBCC)):$O(^(FBCC,0)),1:"") I FBCC']"" S FBCC=$P($G(^FBAAV(+FBICN,0)),"^",13)
 D:FBAC="Q" EDIT^FBMRASV2
 S:FBNPI="          " FBNPI=""
 I $D(XRT0) S XRTN=$T(+0) D T1^%ZOSV
 Q
CKID(X) ;determine if 1st 9 char of id is numeric
 ;INPUT:  X = vendor id
 ;OUTPUT: 1 if ok, 0 if not
 Q $S('+$G(X):0,X'?9N.2AN:0,1:1) ;$E(X,1,9)?9N:1,1:0)
 ;
ADD ;Process Add or Unsolicted Add Record
 I FBSTN'=FBSN D ER^FBMRASV2(3,FBJ,.FBER) Q
 D GET D:FBMRA']"" ER^FBMRASV2(5,FBJ,.FBER) I FBMRA]"" S FBCNT=FBCNT+1 D FILEV,DELMRA
 Q
FPDS ;Process FPDS-Only or Unsolicated FPDS-Only Record
 I FBSTN'=FBSN D
 .N EC S (FBICN,FBOUT)=0,FBERR=1,EC="" D
 ..F  S FBICN=$O(^FBAAV("C",FBVID,FBICN)) Q:'FBICN!(FBOUT)  D
 ...Q:$P($G(^FBAAV(FBICN,"ADEL")),"^")="Y"
 ...S EC="" I FBRT=4 Q:$P(^FBAAV(FBICN,0),U,7)'=3  Q:$P(^FBAAV(FBICN,0),U,10)'=FBCHAIN
 ...I FBRT=1 Q:$P($G(^FBAAV(FBICN,0)),U,7)=3
 ...I $E(FBVNAME,1,5)'=$E($P($G(^FBAAV(FBICN,"AMS")),U),1,5),'+$P($G(^FBAAV(FBICN,"ADEL")),U,4) S EC=4 Q
 ...S FBCNT=FBCNT+1,FBOUT=1,FBERR=0 D FILEV
 .I FBERR S:EC']"" EC=4.1 D ER^FBMRASV2(EC,FBJ,.FBER) S FBERR=0
 Q:FBSTN'=FBSN
 D GET D:FBMRA']"" ER^FBMRASV2(5,FBJ,.FBER) I FBMRA]"" S FBCNT=FBCNT+1 D FILEV,DELMRA
 Q
GET ;Get ICN and MRA entry from MRA file.
 S FBICN=$E(FBICN,4,$L(FBICN))
 S FBMRA=$G(^FBAA(161.25,FBICN,0))
 Q
FILEV ;Files MRA fm Austin in Vendor file.
 Q:'$D(^FBAAV(FBICN,0))  N FBNAM S:'FBCC FBCC=$P(^(0),"^",13) S:"ST"'[FBTID FBTID=""
 I FBAC="C",($G(FBICN1)]""),(FBICN1'=FBICN) S DIK="^FBAAV(",DA=FBICN D ^DIK K DA,DIK S %X="^FBAAV(FBICN1,",%Y="^FBAAV(FBICN," D %XY^%RCR K %X,%Y S DIK="^FBAAV(",DA=FBICN D IX1^DIK K DIK,DA
 S DIE="^FBAAV(",DA=FBICN
 S DR="1////^S X=FBVID;2////^S X=FBADD1;2.5////@;2.5////^S X=FBADD2;3////^S X=FBCITY;4////^S X=FBSTATE;5////^S X=FBZIP;5.5////^S X=FBCC;5.18////^S X=FBMRC;"_$S(FBRT=1:".05////^S X=FBSC;7////^S X=FBPART",1:"8////^S X=FBCHAIN")
 S DR(1,161.2,1)="12.1////^S X=DT;13.1////^S X=$S(FBSTN]"""":FBSTN,1:""000"");30.01////^S X=FBVNAME;30.03////^S X=FB1099;30.04////^S X=FBVT;30.05////^S X=FBPC;30.06////^S X=FBTID"_$S(FBBT]"":";24////^S X=FBBT",1:"")_";41.01////^S X=FBNPI"
 L +^FBAAV(FBICN):1
 D ^DIE K DIE,DA,DR
 I $O(FBSG(0)) D UPDGRP^FBAAUTL6(FBICN)
 L -^FBAAV(FBICN)
 Q
DELMRA ;Deletes MRA entry in FB Vendor Correction File.
 S FBVIEN=$S(FBAC="C":FBICN1,1:FBICN),DIE="^FBAA(161.25,"
 I FBAC="C"!(FBAC="Q"),$D(^FBAA(161.25,"AF",FBVIEN)) S FB1=0 F  S FB1=$O(^FBAA(161.25,"AF",FBVIEN,FB1)) Q:'FB1  S DA=FB1,FBLDA=$P($G(^FBAA(161.25,FBVIEN,0)),"^",6),DR="5////^S X=FBLDA" D
 .D LOCK^FBUCUTL(DIE,DA,1) I FBLOCK D ^DIE L -^FBAA(161.25,DA)
 .K FBLOCK
 S DA=FBVIEN,DIK="^FBAA(161.25," D ^DIK K DA,DIK,FB1,FBLDA,FBVIEN
 Q
EXTRL(V,T) ;Removes leading spaces or zeros.
 ;V=variable to be parced
 ;T=1 remove leading zeros, T="" remove leading spaces
 ;Q VAR
 S T=$S($D(T):0,1:" ")
 F  Q:$E(V)'=T  S V=$E(V,2,$L(V))
 Q V
EXTRT(V,T) ;Removes trailing spaces or zeros.
 ;V=variable to be parced
 ;T=1 remove trailing zeros, T="" remove trailing spaces
 N FBL
 S T=$S($D(T):0,1:" ")
 F  S FBL=$L(V) Q:$E(V,FBL)'=T  S V=$E(V,1,FBL-1)
 Q V

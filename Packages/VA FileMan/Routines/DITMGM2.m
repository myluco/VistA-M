DITMGM2 ;SFISC/EDE(OHPRD)-GENERAL RELINK/MERGE ;
 ;;22.0;VA FileMan;;Mar 30, 1999
 ;Per VHA Directive 10-93-142, this routine should not be modified.
 ;
START ;
 D INIT^DITMGM2B
 I $D(DITMGMQF) D EOJ Q
 D FILES
 D EOJ
 Q
 ;
FILES ; PROCESS ALL FILES/SUBFILES
 W:'$D(DITMGM2("NOTALK")) !!,"Merging entries",!
 F DITMGMFL=0:0 S DITMGMFL=$O(^UTILITY("DITMGMRG",$J,DITMGMFL)) Q:DITMGMFL=""  D FILE
 Q
 ;
FILE ; PROCESS ONE FILE/SUBFILE
 K DITMGMGM
 I $D(^DD(DITMGMFL,0,"UP")) S DITMGMMU=1 D ^DITMU2(DITMGMFL,.DITMGMGM,1) S DITMGMG=$P(DITMGMGM,"DA(",1),DITMGMGM=$P(DITMGMGM,"DA,",1) I 1
 E  S DITMGMMU=0,DITMGMG=^DIC(DITMGMFL,0,"GL")
 F DITMGMFD=0:0 S DITMGMFD=$O(^UTILITY("DITMGMRG",$J,DITMGMFL,DITMGMFD)) Q:DITMGMFD'=+DITMGMFD  S DITMGMFS=DITMGMF,DITMGMTS=DITMGMT D FIELD^DITMGM2A S DITMGMF=DITMGMFS,DITMGMT=DITMGMTS
 Q
 ;
ZTM ; ENTRY POINT FOR TASKMAN
 S DITMGM2("NOTALK")=1
 D SEARCH^DITMGM2B
 D EOJ
 Q
 ;
EOJ ;
 K %K,D1,D2,DA,DIC,DI,DIPGM,DQ,I,V
 K DITMGDA,DITMGMDI,DITMGMDN,DITMGMEC,DITMGMFD,DITMGMFL,DITMGMFG,DITMGMFS,DITMGMG,DITMGMGG,DITMGMI,DITMGML,DITMGMGM,DITMGMN,DITMGMNO,DITMGMPC,DITMGMTS,DITMGMTY,DITMGMTZ,DITMGMMU,DITMGMPF,DITMGMV,DITMGMX,DITMGMXR
 I $D(ZTQUEUED) S ZTREQ="@"
 E  K:$D(ZTSK) ^%ZTSK(ZTSK),ZTSK ; old Kernel
 Q
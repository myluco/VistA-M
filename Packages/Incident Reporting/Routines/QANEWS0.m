QANEWS0 ;HISC/GJC-GENERATE `EARLY WARNING SYSTEM' BULLETINS ;7/8/91  11:02
 ;;2.0;Incident Reporting;**25**;08/07/1992
EN1 ; *** MANUAL ENTRY POINT
 S QANTASK=0
 G EN
EN2 ; *** TASKED ENTRY POINT
 S QANTASK=1
EN S QANZERO=$S($D(^QA(740,1,0))#2:^(0),1:0) I +QANZERO'>0 S QANERROR=1 D ERROR G EXIT
 S QANSITE=$S($D(^DIC(4,+QANZERO,0))#2:$P(^(0),"^"),1:"") I QANSITE="" S QANERROR=2 D ERROR G EXIT
 S QANSTNO=$S($D(^DIC(4,+QANZERO,99))#2:$P(^(99),"^"),1:"") I QANSTNO="" S QANERROR=3 D ERROR G EXIT
 S QANSERV=$P(QANZERO,"^",2) I QANSERV="" S QANERROR=4 D ERROR G EXIT
 S QANDOM=$P(QANZERO,"^",3) I QANDOM="" S QANERROR=5 D ERROR G EXIT
 S QA=+$O(^DIC(4.2,"B",QANDOM,0)) I $S('$D(^DIC(4.2,QA,0))#2:1,$P(^(0),"^")'=QANDOM:1,1:0) S ERROR=6 D ERROR G EXIT
 D:QANTASK MONTH,EN2^QANEWS
 I 'QANTASK W !!,"Select the reporting period:" D EN1^QANEWS G:QAQQUIT EXIT
 W:'QANTASK !!,"Finished."
EXIT ;
 K QA,QAN,QAN1,QANIN,QANOUT,ERROR,QANCLIN,QANCREV,QAND0,QAND1,QANDATE
 K QANDOM,QANEWS,QANFIND,QANLEVL,QANQUIT,QANRFPR,QANSCRN,QANSERV,QANSITE
 K QANERROR,QANTASK,QANSTNO,QANTEMP,QANVAL,QANZERO,^UTILITY($J)
 D K^QAQDATE,KILL^XM,KILL^QAQDATE
 Q
ERROR ;
 W *7,!!,"*** ",$P($T(ERR+QANERROR),";;",2)," ***",!!,*7
 Q
MONTH ;
 S QANSY=$E(DT,1,3),QANSM=$E(DT,4,5)
 I QANSM>1 S QANSM=QANSM-1
 E  S QANSM=12,QANSY=QANSY-1
 S QANSM=$E("0",1,2-$L(QANSM))_QANSM
 S QAQNBEG=QANSY_QANSM_"01",Y=1700+QANSY,Y=(Y#4=0)&((Y#100)!(Y#400=0))
 S QAQNEND=QANSY_QANSM_$P("31^28^31^30^31^30^31^31^30^31^30^31",U,+QANSM)+$S(+QANSM=2:Y,1:0)
 K QANSY,QANSM
 Q
ERR ;;ERROR MESSAGES: REASONS EWS BULLETIN COULD NOT BE SENT
 ;;SITE NOT FOUND IN QA SITE PARAMETERS FILE
 ;;SITE NOT FOUND IN INSTITUTION FILE
 ;;SITE NUMBER NOT FOUND IN INSTITUTION FILE
 ;;EWS MAIL GROUP/SERVER NOT FOUND IN QA SITE PARAMETERS FILE
 ;;EWS DOMAIN NOT FOUND IN QA SITE PARAMETERS FILE
 ;;EWS DOMAIN NOT FOUND IN DOMAIN FILE

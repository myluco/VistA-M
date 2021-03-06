ENFAR5 ;WIRMFO/SAB-FIXED ASSET RPT, VOUCHER SUMMARY; 4/7/97
 ;;7.0;ENGINEERING;**29,39**;Aug 17, 1993
 ; Voucher Summary of FAP Documents for Station during Accounting Period
EN ;
 ; ask STATION
 S DIR(0)="F^3:5",DIR("A")="STATION NUMBER"
 S DIR("B")=$$GET1^DIQ(6910,"1,",1)
 D ^DIR K DIR G:$D(DIRUT) EXIT
 S ENSNR=Y
 ; ask start date
 S DIR(0)="D^::EX",DIR("A")="Start Date"
 S ENDT("Y")=$E(DT,1,3),ENDT("M")=$E(DT,4,5)
 S ENDTS=$S(ENDT("M")="01":(ENDT("Y")-1)_"12",1:ENDT("Y")_$E("00",1,2-$L(ENDT("M")-1))_(ENDT("M")-1))_"01"
 S DIR("B")=$$FMTE^XLFDT(ENDTS,"2D")
 D ^DIR K DIR G:$D(DIRUT) EXIT
 S ENDTS=Y
ASKDTE ; ask end date
 S DIR(0)="D^::EX",DIR("A")="End Date"
 S ENDTE=$$EOM^ENUTL(ENDTS)
 S DIR("B")=$$FMTE^XLFDT(ENDTE,"2D")
 D ^DIR K DIR G:$D(DIRUT) EXIT
 I Y<ENDTS W $C(7),!,"End date must be after start date!",! G ASKDTE
 S ENDTE=Y
 ; ask device
 S %ZIS="QM" D ^%ZIS G:POP EXIT
 I $D(IO("Q")) D  G EXIT
 . S ZTRTN="QEN^ENFAR5",ZTDESC="Voucher Summary for Station"
 . F X="ENSNR","ENDTS","ENDTE" S ZTSAVE(X)=""
 . D ^%ZTLOAD,HOME^%ZIS K ZTSK
QEN ; queued entry
 U IO
 ; determine 2 months for which balances should be reported
 S ENDT("Y")=$E(ENDTS,1,3),ENDT("M")=$E(ENDTS,4,5)
 S ENDTM1=$S(ENDT("M")="01":(ENDT("Y")-1)_"12",1:ENDT("Y")_$E("00",1,2-$L(ENDT("M")-1))_(ENDT("M")-1))_"00"
 S ENDTM2=$E(ENDTE,1,5)_"00"
 ;
 D GETDATA^ENFAR5A
 D GETBAL^ENFAR5B
 D PRINT^ENFAR5B
 D ^%ZISC
EXIT I $D(ZTQUEUED) S ZTREQ="@"
 K DIR,DIROUT,DIRUT,DIWF,DIWL,DTOUT,DUOUT,X,Y
 K ^TMP($J),ENAMT,ENBAL,ENBAL1,ENBAL2,END,ENDA,ENDT,ENDTE
 K ENDTM1,ENDTM2,ENDTR,ENDTS,ENFAY3,ENFILE,ENFUND,ENFUNDNW
 K ENI,ENIEN,ENL,ENPG,ENNOTE,ENSGL,ENSNR,ENT,ENY,ENY0,ENY1
 Q
 ;ENFAR5

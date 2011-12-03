FSCRPCGN ;SLC/STAFF-NOIS RPC Package Info ;1/11/98  15:24
 ;;1.1;NOIS;;Sep 06, 1998
 ;
SPEC(SPEC) ; from FSCRPCG
 N CNT,PHONE
 S CNT=0
 S PHONE=$$PH(SPEC)
 I $L(PHONE) S CNT=CNT+1,^TMP("FSCRPC",$J,"OUTPUT",CNT)="Office Phone: "_PHONE
 D MAILINFO(.CNT,SPEC)
 D NOIS(.CNT,SPEC)
 Q
 ;
CONTACT(PERSON) ; from FSCRPCG
 N CNT,PHONE
 S CNT=0
 S PHONE=$$PH(PERSON)
 I $L(PHONE) S CNT=CNT+1,^TMP("FSCRPC",$J,"OUTPUT",CNT)="Office Phone: "_PHONE
 D MAILINFO(.CNT,PERSON)
 D NOIS(.CNT,PERSON)
 Q
 ;
MAILINFO(CNT,USER) ;
 N LINE,NUM
 I '$O(^XMB(3.7,+$G(USER),1,0)) Q
 S CNT=+$G(CNT)
 S CNT=CNT+1,^TMP("FSCRPC",$J,"OUTPUT",CNT)=""
 S CNT=CNT+1,^TMP("FSCRPC",$J,"OUTPUT",CNT)="MailMan Introduction:"
 S NUM=0 F  S NUM=$O(^XMB(3.7,USER,1,NUM)) Q:NUM<1  S LINE=$G(^(NUM,0)) D
 .S CNT=CNT+1,^TMP("FSCRPC",$J,"OUTPUT",CNT)=LINE
 Q
 ;
NOIS(CNT,USER) ;
 N FUNC,LINE,NUM,OFFICE,WORKSAT,ZERO
 S ZERO=$G(^FSC("SPEC",+$G(USER),0)) I '$L(ZERO) Q
 S CNT=CNT+1,^TMP("FSCRPC",$J,"OUTPUT",CNT)=""
 I '$P(ZERO,U,2) D
 .S FUNC=$$VALUE^FSCGET($P(ZERO,U,4),7105.2,4)
 .S WORKSAT=$$VALUE^FSCGET($P(ZERO,U,3),7105.2,3)
 .S OFFICE=$$VALUE^FSCGET($P(ZERO,U,16),7105.2,3.5)
 .I $L(FUNC) S CNT=CNT+1,^TMP("FSCRPC",$J,"OUTPUT",CNT)="Primary Functional Area: "_FUNC
 .S CNT=CNT+1,^TMP("FSCRPC",$J,"OUTPUT",CNT)="Office: "_OFFICE_"      Works at: "_WORKSAT
 I $O(^FSC("SPEC",USER,20,0)) D
 .S CNT=CNT+1,^TMP("FSCRPC",$J,"OUTPUT",CNT)="Group Affiliations:"
 S NUM=0 F  S NUM=$O(^FSC("SPEC",USER,20,NUM)) Q:NUM<1  S LINE=$G(^(NUM,0)) D
 .S CNT=CNT+1,^TMP("FSCRPC",$J,"OUTPUT",CNT)="  "_$$VALUE^FSCGET($P(LINE,U),7100,3.3)_"  "_$P(LINE,U,2)
 I $O(^FSC("SPEC",USER,30,0)) D
 .S CNT=CNT+1,^TMP("FSCRPC",$J,"OUTPUT",CNT)="Package Affiliations:"
 S NUM=0 F  S NUM=$O(^FSC("SPEC",USER,30,NUM)) Q:NUM<1  S LINE=$G(^(NUM,0)) D
 .S CNT=CNT+1,^TMP("FSCRPC",$J,"OUTPUT",CNT)="  "_$$VALUE^FSCGET($P(LINE,U),7100,3.1)_"  "_$P(LINE,U,2)
 Q
 ;
MOD(MOD) ;
 N ADPAC,NUM,OUTCNT,PACK,PACKNAME,SITE,SITENAME,STSITE,USER,USERS K USERS
 S PACK=+$P($G(^FSC("MOD",+MOD,0)),U,8)
 I 'PACK Q
 S PACKNAME=$P(^FSC("PACK",PACK,0),U)
 S OUTCNT=0
 S OUTCNT=OUTCNT+1,^TMP("FSCRPC",$J,"OUTPUT",OUTCNT)="Those affiliated with "_PACKNAME_":"
 D AFFIL(PACK,.USERS)
 S USER="" F  S USER=$O(USERS(USER)) Q:USER=""  D
 .S NUM=0 F  S NUM=$O(USERS(USER,NUM)) Q:NUM<1  D
 ..S OUTCNT=OUTCNT+1,^TMP("FSCRPC",$J,"OUTPUT",OUTCNT)=USER_"  "_USERS(USER,NUM)
 S OUTCNT=OUTCNT+1,^TMP("FSCRPC",$J,"OUTPUT",OUTCNT)=""
 S OUTCNT=OUTCNT+1,^TMP("FSCRPC",$J,"OUTPUT",OUTCNT)="ADPACs:"
 S SITENAME="" F  S SITENAME=$O(^FSC("SITE","B",SITENAME)) Q:SITENAME=""  D
 .S SITE=0 F  S SITE=$O(^FSC("SITE","B",SITENAME,SITE)) Q:SITE<1  D
 ..S STSITE=$$STSITE(SITE)
 ..I 'STSITE Q
 ..S ADPAC=$$APINFO(STSITE,PACK)
 ..I $L(ADPAC) S OUTCNT=OUTCNT+1,^TMP("FSCRPC",$J,"OUTPUT",OUTCNT)="  "_SITENAME_"   "_ADPAC
 K USERS
 Q
 ;
AFFIL(PACK,USERS) ;
 N DUTIES,FUNC,PACKGP,USER,USERNAME K USERS
 S PACKGP=+$P(^FSC("PACK",PACK,0),U,2)
 S USER=0 F  S USER=$O(^FSC("SPEC","AG",PACKGP,USER)) Q:USER<.1  D
 .S USERNAME=$P(^VA(200,USER,0),U)
 .I $P($G(^FSC("SPEC",USER,20,+$O(^FSC("SPEC","AG",PACKGP,USER,0)),0)),U,3) D
 ..S DUTIES=$P($G(^FSC("SPEC",USER,20,+$O(^FSC("SPEC","AG",PACKGP,USER,0)),0)),U,2)
 ..S FUNC=$$VALUE^FSCGET($P(^FSC("SPEC",USER,0),U,4),7105.2,4) I $L(FUNC) S FUNC="("_FUNC_")"
 ..S USERS(USERNAME,USER)=FUNC_"    "_DUTIES_"    "_$$PH(USER)
 S USER=0 F  S USER=$O(^FSC("SPEC","AP",PACK,USER)) Q:USER<.1  D
 .S USERNAME=$P(^VA(200,USER,0),U)
 .S DUTIES=$P($G(^FSC("SPEC",USER,30,+$O(^FSC("SPEC","AP",PACK,USER,0)),0)),U,2)
 .S FUNC=$$VALUE^FSCGET($P(^FSC("SPEC",USER,0),U,4),7105.2,4) I $L(FUNC) S FUNC="("_FUNC_")"
 .S USERS(USERNAME,USER)=FUNC_"    "_DUTIES_"    "_$$PH(USER)
 Q
 ;
NOISINFO(SITE) ; $$(site) -> contact & phone #
 N INFO
 S INFO=$P($G(^FSC("SITE",SITE,0)),U,6) I 'INFO Q ""
 S INFO=$$VALUE^FSCGET(INFO,7100,2.1)
 S INFO=INFO_"  "_$S($L($P(^FSC("SITE",SITE,0),U,7)):$P(^(0),U,7),1:$P(^(0),U,8))
 Q INFO
 ;
PH(PERSON) ; $$(person) -> phone # from file 200
 Q $P($G(^VA(200,PERSON,.13)),U,2)
 ;
IRMINFO(STSITE) ; $$(site) -> irm chief & phone #
 N INFO,IRM
 S IRM=$G(^NTS(2050,STSITE,21))
 S INFO=$P(IRM,U)_"  "_$P(IRM,U,2) I $L(INFO)=2 Q ""
 Q INFO
 ;
APINFO(STSITE,PACK) ; $$(site, pack) -> adpac & phone #
 N ADPAC,INFO,STPACK
 S STPACK=$$STPACK(PACK) I 'STPACK Q ""
 S ADPAC=$G(^NTS(2050,STSITE,8,STPACK,0))
 S INFO=$P(ADPAC,U,2)_"  "_$P(ADPAC,U,3) I $L(INFO)=2 Q ""
 Q INFO
 ;
STSITE(SITE) ; $$(site) -> site tracking site
 N DOMAIN,STSITE
 S DOMAIN=+$P(^FSC("SITE",SITE,0),U,14) I 'DOMAIN Q ""
 S DOMAIN=$$VALUE^FSCGET(DOMAIN,7105.1,9)
 S STSITE=+$O(^NTS(2050,"AE",DOMAIN,0)) I 'STSITE Q ""
 Q STSITE
 ;
STPACK(PACK) ; $$(package) -> site tracking package
 N OPACK,STPACK
 S OPACK=+$P($G(^FSC("PACK",+$G(PACK),0)),U,3) I 'OPACK Q ""
 S STPACK=+$O(^DIC(120102,"AP",OPACK,0)) I 'STPACK Q ""
 Q STPACK
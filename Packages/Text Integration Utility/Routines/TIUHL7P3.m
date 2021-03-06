TIUHL7P3 ; SLC/AJB - TIUHL7 Msg Processing; March 23, 2005
 ;;1.0;TEXT INTEGRATION UTILITIES;**200**;Jun 20, 1997
 Q
CONTINUE ;
 ;
 ; DOCUMENT TITLE & VISIT LIMITATION
 I '+$$MEMBEROF^TIUHL7U1(TIU("TITLE"),"OPERATION REPORTS")!'+($$MEMBEROF^TIUHL7U1(TIU("TITLE"),"PROCEDURE REPORT (NON-O.R.)")) D TIUVISIT^TIUSRVA(.TIUTMP,TIU("TDA"),$G(DFN),$G(TIU("VSTR"))) I +TIUTMP D
 . S TIUDA=+$$EXIST^TIUEDI3(+$G(DFN),+TIU("TDA"),$G(TIU("VSTR")),0,+TIU("AUDA")) I '+TIUDA D ERR^TIUHL7U1("TXA",16,"0000.00",TIU("TITLE")_" already exists for this visit; only one record of this type is allowed per visit.")
 ;
 ; get document parameters
 D DOCPRM^TIUHL7U2(TIU("TDA"),.TIUDPRM)
 ;
 ; verify upload support for SURGICAL REPORT titles
 I $$MEMBEROF^TIUHL7U1(TIU("TITLE"),"SURGICAL REPORTS") D
 . I $$MEMBEROF^TIUHL7U1(TIU("TITLE"),"OPERATION REPORTS")!($$MEMBEROF^TIUHL7U1(TIU("TITLE"),"PROCEDURE REPORT (NON-O.R.)")) Q
 . D ERR^TIUHL7U1("TXA",16,"0000.00","This SURGICAL REPORT ["_TIU("TITLE")_"] title is not a supported upload title.")
 ;
 ; send APPLICATION REJECT if any data element verification failed
 I +TIU("EC") D ACK^TIUHL7U1("AR",TIUNAME,-1) Q
 ;
 ; validate and process OPERATION REPORTS or PROCEDURE REPORTS
 I $$MEMBEROF^TIUHL7U1(TIU("TITLE"),"OPERATION REPORTS")!($$MEMBEROF^TIUHL7U1(TIU("TITLE"),"PROCEDURE REPORT (NON-O.R.)")) D  Q
 . N SUCCESS,TIUD0,TIUDA,TIUDAD,TIUSR0,TIUSRCN,TIUOPDT,TIUSTAT
 . S TIUSRCN=+$G(TIU("SRCN")),TIUOPDT=+$P($G(TIU("EPDT")),"."),TIUDA=""
 . I '+TIUSRCN,'+TIUOPDT D ERR^TIUHL7U1("TXA",12,"0000.000","HL7 message missing SURGICAL CASE # and OPERATION DATE.")
 . I '+TIUSRCN,+TIUOPDT S TIUSRCN=$$FINDCASE^TIUPUTS($G(DFN),TIUOPDT) I '+TIUSRCN D ERR^TIUHL7U1("TXA",12,"0000.000","Unable to find a SURGICAL CASE # using the EPISODE BEGIN DATE ["_$$FMTE^XLFDT(TIUOPDT)_"].")
 . I +TIUSRCN,$D(^SRF(TIUSRCN,"TIU")) S TIUDA=$$GETSDA^TIUPUTS(TIUSRCN) I '+TIUDA D ERR^TIUHL7U1("TXA",12,"0000.000","Unable to find "_TIU("TITLE")_" document stub for SURGICAL CASE #"_TIUSRCN_".")
 . I +TIUSRCN'>0 D ERR^TIUHL7U1("TXA",12,"0000.000","SURGICAL CASE # cannot be determined.")
 . I +TIUDA'>0 D ERR^TIUHL7U1("TXA",12,"0000.000","Unable to find "_TIU("TITLE")_" document stub for SURGICAL CASE #"_TIUSRCN_".")
 . I '+TIU("EC") D
 . . S TIUD0=$G(^TIU(8925,TIUDA,0)),TIUSR0=$G(^SRF(TIUSRCN,0))
 . . I '+TIUOPDT S TIU("EPDT")=$P($P(TIUSR0,U,9),"."),TIUOPDT=TIU("EPDT")
 . . I +TIUSR0'=$G(DFN) D ERR^TIUHL7U1("TXA",12,"0000.000","PATIENT mismatch between HL7 message ["_$$GET1^DIQ(2,$G(DFN),.01)_"] and SURGICAL CASE #"_TIUSRCN_" ["_$$GET1^DIQ(2,+TIUSR0,.01)_"].")
 . . I +$P(TIUD0,U,2)'=$G(DFN) D ERR^TIUHL7U1("TXA",12,"0000.000","PATIENT mismatch between HL7 message ["_$$GET1^DIQ(2,$G(DFN),.01)_"] and "_TIU("TITLE")_" stub ["_$$GET1^DIQ(2,+$P(TIUD0,U,2),.01)_"].")
 . . I TIUOPDT'=$P($P(TIUSR0,U,9),".") D ERR^TIUHL7U1("TXA",12,"0000.000","OPERATION DATE mismatch between HL7 message ["_$$FMTE^XLFDT(TIUOPDT)_"] and SURGICAL CASE #"_TIUSRCN_" ["_$$FMTE^XLFDT($P($P(TIUSR0,U,9),"."))_"].") Q
 . . I +TIU("EC") Q
 . . I +$G(TIUDA),'$$CANEDIT^TIUHL7U1(TIUDA),'+TIU("EC") G MAKEADD
 . . S TIUZ("HDR")="1^1" D SETTEXT^TIUSRVPT(.SUCCESS,+TIUDA,.TIUZ)
 . . I '+$G(SUCCESS) D ERR^TIUHL7U1("OBX",1,"0000.00","DOCUMENT TEXT failed to update.")
 . I +TIU("EC") D ACK^TIUHL7U1("AR",TIUNAME,-1) Q
 . D FOLLOWUP^TIUPUTS(+TIUDA)
 . S $P(^TIU(8925,+TIUDA,13),U,2)=$S(+$G(TIU("EBDA")):TIU("EBDA"),1:TIU("AUDA"))
 . D SIGNDOC^TIUHL7U1(+TIUDA) I +TIU("EC") D ACK^TIUHL7U1("AR",TIUNAME,-1) Q
 . D ACK^TIUHL7U1("AA",TIUNAME,+TIUDA)
 ;
MAKEADD ;
 ; validate CONSULT title
 I $$MEMBEROF^TIUHL7U1(TIU("TITLE"),"CONSULTS") D
 . I '+$G(TIU("CNCN")) D ERR^TIUHL7U1("TXA",12,"0000.00","HL7 message missing CONSULT #.") Q
 . I '$$CPPAT^GMRCCP(TIU("CNCN"),$G(DFN)) D ERR^TIUHL7U1("TXA",12,"0000.00","PATIENT NAME ["_TIU("PTNAME")_"] mismatch between HL7 message and CONSULT ["_$$GET1^DIQ(123,TIU("CNCN"),.02)_"].") Q
 . S TIUZ(1405)=TIU("CNCN")_";GMR(123,"
 ;
 I +TIU("EC") D ACK^TIUHL7U1("AR",TIUNAME,-1) Q
 ;
 ; set data fields
 ; set appropriate DOCUMENT STATUS from document parameters
 S DUZ=$G(TIU("AUDA")),DUZ(2)=$$GETDIV^TIUHL7U1(DUZ),TIU("DIVISION")=DUZ(2)
 I $P(TIUDPRM(0),U,2)=1 S TIUZ(.05)=3
 I '+$G(TIUZ(.05)),$P(TIUDPRM(0),U,3)>0,$P(TIUDPRM(0),U,3)'>2 S TIUZ(.05)=4
 I '+$G(TIUZ(.05)) S TIUZ(.05)=5
 ;
 S TIUZ(.07)=$S(+$G(TIU("EPDT")):TIU("EPDT"),+$G(TIU("RFDT")):TIU("RFDT"),1:$$NOW^XLFDT)
 S TIUZ(1201)=$$NOW^XLFDT
 S TIUZ(1202)=$G(TIU("AUDA"))
 S TIUZ(1204)=$G(TIU("AUDA"))
 S TIUZ(1208)=$G(TIU("CSDA"))
 S TIUZ(1212)=$G(TIU("DIVISION"))
 S TIUZ(1301)=$G(TIU("RFDT"))
 S TIUZ(1302)=$S(+$G(TIU("EBDA")):TIU("EBDA"),1:TIU("AUDA")),TIU("EBDA")=TIUZ(1302)
 S TIUZ(1307)=$G(TIU("DICDT"))
 S TIUZ(1701)=$G(TIU("SUB"))
 ;
 ; check if document was found and editable
 ; if not editable, make addendum
 I +$G(TIUDA),'$$CANEDIT^TIUHL7U1(TIUDA),'+TIU("EC") D  Q
 . N PERSON,SUCCESS
 . S PERSON=$G(TIU("AUDA"))
 . D MAKEADD^TIUHL7U2(.SUCCESS,TIUDA,.TIUZ,1)
 . I '+SUCCESS D ERR^TIUHL7U1("TIU",1,"0000.000",$P(SUCCESS,U,2))
 . I +TIU("EC") D ACK^TIUHL7U1("AR",TIUNAME,-1) Q
 . S $P(^TIU(8925,+SUCCESS,13),U,3)="U",$P(^TIU(8925,+SUCCESS,13),U,2)=$S(+$G(TIU("EBDA")):TIU("EBDA"),1:TIU("AUDA"))
 . D SIGNDOC^TIUHL7U1(+SUCCESS) I +TIU("EC") D ACK^TIUHL7U1("AR",TIUNAME,+SUCCESS) Q
 . D ACK^TIUHL7U1("AA",TIUNAME,SUCCESS),SEND^TIUALRT(SUCCESS),SENDADD^TIUALRT(+TIUDA)
 ;
 ; if editable, make changes to document
 I +$G(TIUDA),$$CANEDIT^TIUHL7U1(TIUDA),'+TIU("EC") D  Q
 . N SUCCESS
 . D DELTEXT^TIUPUTPN(TIUDA)
 . S TIUZ("HDR")="1^1" D SETTEXT^TIUSRVPT(.SUCCESS,+TIUDA,.TIUZ) K TIUZ("HDR"),TIUZ("TEXT")
 . I '+SUCCESS D ERR^TIUHL7U1("TIU",1,"0000.000",$P(SUCCESS,U,2))
 . D FILE^TIUSRVP(.SUCCESS,+TIUDA,.TIUZ)
 . I '+SUCCESS D ERR^TIUHL7U1("TIU",1,"0000.000",$P(SUCCESS,U,2))
 . I +TIU("EC") D ACK^TIUHL7U1("AR",TIUNAME,-1) Q
 . S $P(^TIU(8925,+SUCCESS,13),U,3)="U",$P(^TIU(8925,+SUCCESS,13),U,2)=$S(+$G(TIU("EBDA")):TIU("EBDA"),1:TIU("AUDA"))
 . D SIGNDOC^TIUHL7U1(+SUCCESS) I +TIU("EC") D ACK^TIUHL7U1("AR",TIUNAME,+SUCCESS) Q
 . D ACK^TIUHL7U1("AA",TIUNAME,TIUDA),SEND^TIUALRT(TIUDA) Q
 ;
 I +TIU("EC") D ACK^TIUHL7U1("AR",TIUNAME,-1) Q
 ;
 ; document creation
 N SDCNT,TIUDIV1,TIUFPRIV,TIUPRM0,TIUPRM1
 D MAKE^TIUSRVP(.TIUDA,DFN,TIU("TDA"),,,,.TIUZ,TIU("VSTR"))
 ;
 ; verify creation & and set capture method to UPLOAD & ENTERED BY (if applicable)
 I '+TIUDA D ERR^TIUHL7U1("TIU",1,"0000.00",$P(TIUDA,U,2)),ACK^TIUHL7U1("AR",TIUNAME,-1) Q
 S $P(^TIU(8925,+TIUDA,13),U,3)="U",$P(^TIU(8925,+TIUDA,13),U,2)=$S(+$G(TIU("EBDA")):TIU("EBDA"),1:TIU("AUDA"))
 S $P(^TIU(8925,+TIUDA,0),U,7)=$S(+$G(TIU("EPDT")):TIU("EPDT"),+$G(TIU("RFDT")):TIU("RFDT"),1:$$NOW^XLFDT)
 ;
 ; process signature/co-signature
 D SIGNDOC^TIUHL7U1(+TIUDA) I +TIU("EC") D ACK^TIUHL7U1("AR",TIUNAME,+TIUDA) Q
 ;
 ; update the consult as necessary
 I $$MEMBEROF^TIUHL7U1(TIU("TITLE"),"CONSULTS") D
 . N TIUSTAT S TIUSTAT=$P($G(^TIU(8925,+TIUDA,0)),U,5)
 . S TIUSTAT=$S(TIUSTAT>6:"COMPLETED",1:"INCOMPLETE")
 . D GET^GMRCTIU(TIU("CNCN"),+TIUDA,TIUSTAT,TIU("AUDA"))
 ;
 D ACK^TIUHL7U1("AA",TIUNAME,+TIUDA)
 D SEND^TIUALRT(+TIUDA)
 D AUDIT^TIUHL7U1(+TIUDA,0,$$CHKSUM^TIULC("^TIU(8925,"_+TIUDA_",""TEXT"")"))
 ;
 Q

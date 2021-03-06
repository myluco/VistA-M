IBBACDM ;OAK/ELZ - PFSS SERVICE MASTER API ;15-MAR-2005
 ;;2.0;INTEGRATED BILLING;**286**;21-MAR-94
 ;;Per VHA Directive 10-93-142, this routine should not be modified.
 ;
GETCODE(IBBCPT,IBBCPTDT) ;return service code based on cpt/hcpcs and date of service
 ;
 ;input IBBCPT = pointer to file #81
 ;      IBBCPTDT = service date
 ;output IBBBSRVC = ien in file #374
 ;       RETURN = service_code^activation_date^inactivation_date
 N IBBSRVC,ACTDT,INACTDT,IEN,SUBIEN,NEXTSUB,RETURN,X,XX,XD
 S IBBSRVC=999999
 Q:'$G(IBBCPT) IBBSRVC_"^^"
 Q:'$G(IBBCPTDT) IBBSRVC_"^^"
 S ACTDT="",INACTDT="",IEN="",SUBIEN=""
 S XD=9999999 F  S XD=$O(^IBBAS(374,"AA",IBBCPT,XD),-1) Q:'XD  D  Q:$G(ACTDT)
 .Q:(XD>IBBCPTDT)
 .S ACTDT=XD
 .S IEN=$O(^IBBAS(374,"AA",IBBCPT,ACTDT,0)),SUBIEN=$O(^IBBAS(374,"AA",IBBCPT,ACTDT,IEN,0))
 .S NEXTSUB=$O(^IBBAS(374,IEN,1,SUBIEN)) I 'NEXTSUB Q
 .S INACTDT=$P(^IBBAS(374,IEN,1,NEXTSUB,0),"^",2)
 .I INACTDT'>IBBCPTDT S IEN=""
 I IEN S IBBSRVC=IEN,RETURN=IBBSRVC_"^"_ACTDT_"^"_INACTDT
 E  S RETURN=IBBSRVC_"^^"
 Q RETURN
 ;

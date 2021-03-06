FHOMRBL1 ;Hines OIFO/RVD-OUTPATIENT REPORT UTILITY2  ;2/03/04  10:05
 ;;5.5;DIETETICS;**5**;Jan 28, 2005;Build 53
 ;
 ;PATCH #5 - added the cancelled guest meal status and a screen for cancelled meals.
 ;
GETGM(FHGDT,FHGCOM,FHGLOC,FHGDFN) ;get guest meals data
 ;ENTRY POINTS:
 ;          GETGM - get outpatient guest meals data from starting dt.
 ;input variable:
 ;         FHGDT        = starting date
 ;         FHGCOM       = IEN of communication office, 'ALL' for all.
 ;                      = if NULL, considered 'ALL'
 ;         FHGLOC       = IEN of location, 'ALL' for all.
 ;                      = if NULL, considered 'ALL'
 ;         FHGDFN       = IEN of file #115, 'ALL' for all.
 ;                      = if NULL, considered 'ALL'
 ;
 ;output variable:
 ;         ^TMP($J,"OP","G",COMM OFF,PATIENT NAME,DTE)
 ;
 ;error:
 ;         ^TMP($J,"OP","ER")
 K ^TMP($J,"OP","G")
 D NEWVAR
 S:FHGDFN="" FHGDFN="ALL"
 S:FHGCOM="" FHGCOM="ALL"
 S:FHGLOC="" FHGLOC="ALL"
 S FHGDT=FHGDT-.000001
 I '$O(^FHPT("GM",FHGDT)) S ^TMP($J,"OP","ER")="NO GUEST MEALS FOR THIS DATE RANGE" Q
 ;
 F FHGMDT=FHGDT:0 S FHGMDT=$O(^FHPT("GM",FHGMDT)) Q:FHGMDT'>0  D
 .F FHDFN=0:0 S FHDFN=$O(^FHPT("GM",FHGMDT,FHDFN)) Q:FHDFN'>0  D
 ..I $G(FHGDFN),(FHGDFN'=FHDFN) Q
 ..S (FHGCOMN,FHPTNM,FHLOCN)=""
 ..S FHNODE=$G(^FHPT(FHDFN,"GM",FHGMDT,0))
 ..S FHCL=$P(FHNODE,U,2)
 ..S FHML=$P(FHNODE,U,3)
 ..S FHCH=$P(FHNODE,U,4)
 ..S FHLPT=$P(FHNODE,U,5)
 ..S FHDIET=$P(FHNODE,U,6)
 ..S FHSTAT=$P(FHNODE,U,9)
 ..I $G(FHGLOC),FHGLOC'=FHLPT Q   ;quit if location is not the same
 ..S:$G(FHLPT) FHLCOM=$P($G(^FH(119.6,FHLPT,0)),U,8)
 ..I $G(FHGCOM),FHGCOM'=FHLCOM Q  ;quit if d same communication office
 ..S:$G(FHLCOM) FHGCOMN=$P($G(^FH(119.73,FHLCOM,0)),U,1)
 ..S:FHGCOMN="" FHGCOMN="***"
 ..I $G(FHLPT) D
 ...S FHLOCN=$P($G(^FH(119.6,FHLPT,0)),U,1)
 ..S:FHLOCN="" FHLOCN="***"
 ..;
 ..S FHCL=$S(FHCL="E":"EMPLOYEE",FHCL="G":"GRATUITOUS",FHCL="O":"OOD",FHCL="P":"PAID",1:"VOLUNTEER")
 ..S FHD=$$FMTE^XLFDT(FHGMDT,"P")
 ..S FHD=$E(FHD,1,12)
 ..D PATNAME^FHOMUTL S FHPTNM=$E(FHPTNM,1,24)
 ..S:FHPTNM="" FHPTNM="***"
 ..S ^TMP($J,"OP","G",FHGCOMN,FHLOCN,FHPTNM,FHGMDT)=FHDFN_"^"_FHD_"^"_FHML_"^"_FHCL_"^"_FHCH_"^"_FHDIET_"^"_FHSTAT
 Q
 ;
NEWVAR ;new all variables.
 N FHPTNM,FHD,FHDIET,FHMEAL,FHELTT,FHELBG,FHDAT,FHSTAT,FHLPT
 N FHAGE,FHCH,FHCL,FHDOB,FHGMDT,FHML,FHNODE,FHPCZN,FHSEX,FHSSN,FILE
 N FHDAT,FHDPT,FHEL,FHLPT,FHS,FHSMDT,FHSTAT,FHNN,FH
 Q
 ;
GETOUT ;get outpatient data for TODAY.
 ;output variables:
 ;         ^TMP($J,"FH",##LOCATION,PATIENT NAME,DATE)=OP or SM or GM^IEN OF 115^MEAL^
 ;
 K ^TMP($J)
 N FHMEAL,FHDT,DT3,FHI,I,J,FHRMD,FHRMLNM,FHSMD,FHSMSTA,DFN,FHDFN
 N DTTST,FHSMLNM,FHGMLNM
 ;recurring meals
 S FHDT=DT-.00001,DT3=DT+.999999
 F FHI=FHDT:0 S FHI=$O(^FHPT("RM",FHI)) Q:(FHI>DT3)!(FHI="")  F I=0:0 S I=$O(^FHPT("RM",FHI,I)) Q:I'>0  D
 .F J=0:0 S J=$O(^FHPT("RM",FHI,I,J)) Q:J'>0  D
 ..S (FHRMD,FHMEAL)=""
 ..S FHRMLNM="***"
 ..I $D(^FHPT(I,"OP",J,0)) S FHRMD=$G(^FHPT(I,"OP",J,0))
 ..Q:$P(FHRMD,U,15)="C"
 ..I $D(FHRMD) S FHMEAL=$P(FHRMD,U,2)
 ..S FHDFN=I D PATNAME^FHOMUTL Q:DFN=""
 ..S:FHMEAL="" FHMEAL=$P(FHRMD,U,7)
 ..S:FHMEAL="" FHMEAL=$P(FHRMD,U,8)
 ..S:FHMEAL="" FHMEAL=$P(FHRMD,U,9)
 ..S:FHMEAL="" FHMEAL=$P(FHRMD,U,10)
 ..S:FHMEAL="" FHMEAL=$P(FHRMD,U,11)
 ..S FHRMLOC=$P(FHRMD,U,3) Q:FHRMLOC=""
 ..S FHML=$P(FHRMD,U,4)
 ..I $G(FHRMLOC),$D(^FH(119.6,FHRMLOC,0)) D
 ...S FHRMLNM=$P(^FH(119.6,FHRMLOC,0),U,1)
 ...S FHRMPR=$P(^FH(119.6,FHRMLOC,0),U,4)
 ...S FHRMSTA=$P(^FH(119.6,FHRMLOC,0),U,8)
 ...S:FHRMPR<10 FHRMPR=0_FHRMPR
 ...S:FHRMPR="" FHRMPR=99
 ..S ^TMP($J,"FH",FHRMPR_FHRMLNM,FHPTNM,FHI,J)="OP"_"^"_I_"^"_FHMEAL_"^"_FHRMSTA_"^"_FHML_"^"_FHRMLOC_"^"_J
SM ;special meals
 S FHDT=DT-.00001,DTTST=$P(DT,".",1),DT3=DTTST+1
 F FHI=FHDT:0 S FHI=$O(^FHPT("SM",FHI)) Q:(FHI>DT3)!(FHI="")  F I=0:0 S I=$O(^FHPT("SM",FHI,I)) Q:I'>0  D
 .F J=0:0 S J=$O(^FHPT("SM",FHI,I,J)) Q:J'>0  D
 ..S (FHSMD,FHMEAL)=""
 ..S FHSMSTA=""
 ..I $D(^FHPT(I,"SM",J,0)) S FHSMD=$G(^FHPT(I,"SM",J,0))
 ..Q:$P(FHSMD,U,2)'="A"
 ..I $D(FHSMD) S FHMEAL=$P(FHSMD,U,4)
 ..S FHDFN=I D PATNAME^FHOMUTL Q:DFN=""
 ..S FHSMLOC=$P(FHSMD,U,3) Q:FHSMLOC=""
 ..S FHSMSTA=$P(FHSMD,U,2)
 ..S FHML=$P(FHSMD,U,9)
 ..I $G(FHSMLOC),$D(^FH(119.6,FHSMLOC,0)) D
 ...S FHSMLNM=$P(^FH(119.6,FHSMLOC,0),U,1)
 ...S FHSMPR=$P(^FH(119.6,FHSMLOC,0),U,4)
 ...S FHSMSTA=$P(^FH(119.6,FHSMLOC,0),U,8)
 ...S:FHSMPR<10 FHSMPR=0_FHSMPR
 ...S:FHSMPR="" FHSMPR=99
 ..S ^TMP($J,"FH",FHSMPR_FHSMLNM,FHPTNM,J)="SM"_"^"_I_"^"_FHMEAL_"^"_FHSMSTA_"^"_FHML_"^"_FHSMLOC_"^"_J
 ;guest meals
 S FHDT=DT-.00001,DTTST=$P(DT,".",1),DT3=DTTST+1
 F FHI=FHDT:0 S FHI=$O(^FHPT("GM",FHI)) Q:(FHI>DT3)!(FHI="")  F I=0:0 S I=$O(^FHPT("GM",FHI,I)) Q:I'>0  D
 .F J=0:0 S J=$O(^FHPT("GM",FHI,I,J)) Q:J'>0  D
 ..S (FHSMD,FHMEAL)=""
 ..S FHSMSTA=""
 ..S FHSMLNM="***"
 ..I $D(^FHPT(I,"GM",J,0)) S FHSMD=$G(^FHPT(I,"GM",J,0))
 ..Q:$P(FHSMD,U,9)="C"
 ..I $D(FHSMD) S FHMEAL=$P(FHSMD,U,6)
 ..S FHDFN=I D PATNAME^FHOMUTL Q:DFN=""
 ..S FHSMLOC=$P(FHSMD,U,5) Q:FHSMLOC=""
 ..S FHML=$P(FHSMD,U,3)
 ..I $G(FHSMLOC),$D(^FH(119.6,FHSMLOC,0)) D
 ...S FHSMLNM=$P(^FH(119.6,FHSMLOC,0),U,1)
 ...S FHSMSTA=$P(^FH(119.6,FHSMLOC,0),U,8)
 ...S FHSMPR=$P(^FH(119.6,FHSMLOC,0),U,4)
 ...S:FHSMPR<10 FHSMPR=0_FHSMPR
 ...S:FHSMPR="" FHSMPR=99
 ..S ^TMP($J,"FH",FHSMPR_FHSMLNM,FHPTNM,J)="GM"_"^"_I_"^"_FHMEAL_"^"_FHSMSTA_"^"_FHML_"^"_FHSMLOC_"^"_J
 Q

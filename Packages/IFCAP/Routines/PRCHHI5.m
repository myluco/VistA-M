PRCHHI5 ;WISC/TGH/DL-IFCAP SEGMENT AC ;2/2/98  1350
V ;;5.1;IFCAP;;Oct 20, 2000
 ;Per VHA Directive 10-93-142, this routine should not be modified.
AC(A,A1,VAR1,CNTR,NUM) ;ACCOUNTING INFORMATION SEGMENT
 N PRCHAPPR,PRCHAPLE,FILL,OBCL,CL22,PRCHOB22
 S PRCHED=A
 S PRCHFOB=$P(A1,U,6)
 S PRCHTP(1,CNTR+1)="S X=""|AC"";570"
 S PRCHTP(1,CNTR+2)="S X=$P(PRCHED,U,4);578"
 ;
 ;APPROPRIATION CODE UPTO 6 CHARS. W TRAILING SPACES
 S PRCHAPPR=$E($P($P(PRCHED,U,4),"."),4,99)
 ;I $D(PRCHAPPR) S PRCHAPLE=6-$L(PRCHAPPR) F FILL=1:1:PRCHAPLE S PRCHAPPR=PRCHAPPR_" "
 I $D(PRCHAPPR) S PRCHAPPR=PRCHAPPR_"      ",PRCHAPPR=$E(PRCHAPPR,1,6)
 ;
 S PRCHEFY=$P(A1,U,15)
 S PRCHEFY=$E(100+$E(PRCHEFY,2,3)+$E(PRCHEFY,4),2,3)
 S PRCHTP(1,CNTR+3)="S X=PRCHEFY;580"
 S PRCHTP(1,CNTR+4)="S X=$P(PRCHED,U,5);581"
 S PRCHTP(1,CNTR+5)="S X=$P(PRCHED,U,3);582"
 S PRCHTP(1,CNTR+6)="S X=$P(PRCHED,U,6);584"
 ;S PRCHTP(1,CNTR+7)="S X=PRCHFOB;572"
 ;S PRCHTP(1,CNTR+8)="S X=$P(PRCHED,U,6);574"
 ;S PRCHTP(1,CNTR+9)="S X=+$P(PRCHED,U,6);575"
 S NUM=NUM+1
 ;
 ;OBJECT CLASS (BOC OR BOC1)
 ;V4 HAD ROLLED-UP 2 SUBA/C WHERE AS V5 HAS MULTI BOC'S IN NODE 22
 S OBCL=0
 S OBCL=$O(^PRC(442,VAR1,22,OBCL)) Q:OBCL'>0  D
  .S CL22=$G(^PRC(442,VAR1,22,OBCL,0))
  .S PRCHOB22=$P(CL22,"^")
 ;
 S ^TMP($J,"STRING",NUM)="AC"_"^^^^^^^^"_PRCHAPPR_"^^"_PRCHEFY_"^"_$P(PRCHED,U,5)_"^"_+$P(PRCHED,U,3)_"^^"_PRCHOB22_"^^^^|"
 S CNTR=CNTR+6
 Q

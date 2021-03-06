WVALERTC ;HCIOFO/FT-Display Report Data from Lab Package ;9/29/04  14:28
 ;;1.0;WOMEN'S HEALTH;**16**;Sep 30, 1998
 ;
 ; This routine uses the following IAs:
 ;  #2770 - ^TMP("LRCY",$J) references   (controlled)
 ; #10103 - ^XLFDT calls                 (supported)
 ; #10104 - ^XLFSTR calls                (supported)
 ;
EN ; Move data from ^TMP("LRCY",$J) to ^TMP("WV RPT",$J) for display.
 ; Called from WVLABWP and WVPROC
 Q:'$D(^TMP("LRCY",$J))
 N WVDATE,WVLINE,WVNODE,WVRPTDT,WVSUB2,WVSUB3,WVSUB4,WVTMP
 S WVDATE=$O(^TMP("LRCY",$J,0)) Q:'WVDATE
 S WVTMP=$G(^TMP("LRCY",$J,WVDATE,0))
 S WVLINE=0
 D ADD
 S ^TMP("WV RPT",$J,WVLINE,0)="      Collected: "_$P(WVTMP,U,1)
 D ADD
 S ^TMP("WV RPT",$J,WVLINE,0)="Lab Accession #: "_$P(WVTMP,U,2)
 D ADD
 S WVTMP=$G(^TMP("LRCY",$J,WVDATE,1))
 S ^TMP("WV RPT",$J,WVLINE,0)="       Specimen: "_$P(WVTMP,U,1)
 S WVSUB2=0
 F  S WVSUB2=$O(^TMP("LRCY",$J,WVDATE,1,WVSUB2)) Q:'WVSUB2  D
 .D ADD
 .S ^TMP("WV RPT",$J,WVLINE,0)=$$REPEAT^XLFSTR(" ",17)_^TMP("LRCY",$J,WVDATE,1,WVSUB2)
 .Q
 D ADD,BLANK
 I $P(WVTMP,U,2)'>0 D  Q
 .D ADD
 .S ^TMP("WV RPT",$J,WVLINE,0)=$$REPEAT^XLFSTR(" ",18)_"** REPORT NOT YET RELEASED **"
 .Q
 S WVSUB2=1
 F  S WVSUB2=$O(^TMP("LRCY",$J,WVDATE,WVSUB2)) Q:WVSUB2=""  D
 .D @$E(WVSUB2,1,2)
 .Q
 ; NOTE: Calling routine should kill ^TMP("LRCY",$J)
 Q
AH ; Clinical History
 D ADD
 S ^TMP("WV RPT",$J,WVLINE,0)="<Brief Clinical Hx>"
 S WVSUB3=0
 F  S WVSUB3=$O(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3)) Q:'WVSUB3  D
 .D ADD
 .S ^TMP("WV RPT",$J,WVLINE,0)=$G(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3))
 .Q
 D ADD,BLANK
 Q
G ; Gross Description
 D ADD
 S ^TMP("WV RPT",$J,WVLINE,0)="<Gross Description>"
 S WVSUB3=0
 F  S WVSUB3=$O(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3)) Q:'WVSUB3  D
 .D ADD
 .S ^TMP("WV RPT",$J,WVLINE,0)=$G(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3))
 .Q
 D ADD,BLANK
 Q
MI ; Microscopic exam/diagnosis field
 D ADD
 S ^TMP("WV RPT",$J,WVLINE,0)="<Microscopic Exam>"
 S WVSUB3=0
 F  S WVSUB3=$O(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3)) Q:'WVSUB3  D
 .D ADD
 .S ^TMP("WV RPT",$J,WVLINE,0)=$G(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3))
 .Q
 D ADD,BLANK
 Q
ND ; Cytopathology Dx
 D ADD
 S ^TMP("WV RPT",$J,WVLINE,0)="<Cytopathology Dx>"
 S WVSUB3=0
 F  S WVSUB3=$O(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3)) Q:'WVSUB3  D
 .D ADD
 .S ^TMP("WV RPT",$J,WVLINE,0)=$G(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3))
 .Q
 D ADD,BLANK
 Q
OT ; Topography
 D ADD
 S WVSUB3=0
 S ^TMP("WV RPT",$J,WVLINE,0)="Topography: "_$G(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3))
 F  S WVSUB3=$O(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3)) Q:WVSUB3=""  D @$E(WVSUB3,1)
 Q
D ; Disease
 D ADD
 S ^TMP("WV RPT",$J,WVLINE,0)=$$REPEAT^XLFSTR(" ",8)_$S(WVSUB3="D1":"Diseases: ",1:$$REPEAT^XLFSTR(" ",10))_$G(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3))
 Q
M ; Morphology
 D ADD
 S ^TMP("WV RPT",$J,WVLINE,0)=$$REPEAT^XLFSTR(" ",8)_$P($G(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3)),U,1)
 S WVSUB4=""
 F  S WVSUB4=$O(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3,WVSUB4)) Q:WVSUB4=""  D
 .D ADD
 .S ^TMP("WV RPT",$J,WVLINE,0)=$$REPEAT^XLFSTR(" ",8)_$S(WVSUB4=1:"Diseases: ",1:$$REPEAT^XLFSTR(" ",10))_$G(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3,WVSUB4))
 .Q
 Q
P ; Procedure
 D ADD
 S ^TMP("WV RPT",$J,WVLINE,0)=$$REPEAT^XLFSTR(" ",7)_$S(WVSUB3="P1":"Procedures: ",1:$$REPEAT^XLFSTR(" ",12))_$P($G(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3)),U,1)
 Q
SR ; Supplementary Report
 S WVSUB3=0
 F  S WVSUB3=$O(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3)) Q:'WVSUB3  D
 .S WVRPTDT=$G(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3,0))
 .S WVRPTDT=$$FMTE^XLFDT(WVRPTDT,"2P")
 .D ADD
 .S ^TMP("WV RPT",$J,WVLINE,0)="Supplementary Rpt: "_WVRPTDT
 .S WVSUB4=0
 .F  S WVSUB4=$O(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3,WVSUB4)) Q:'WVSUB4  D
 ..S WVNODE=$G(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3,WVSUB4))
 ..D ADD
 ..S ^TMP("WV RPT",$J,WVLINE,0)=WVNODE
 ..Q
 .Q
 Q
XI ; ICD Diagnoses
 D ADD
 S ^TMP("WV RPT",$J,WVLINE,0)="<ICD-9 Diagnoses>"
 S WVSUB3=0
 F  S WVSUB3=$O(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3)) Q:'WVSUB3  D
 .D ADD
 .S WVTMP=$G(^TMP("LRCY",$J,WVDATE,WVSUB2,WVSUB3))
 .S ^TMP("WV RPT",$J,WVLINE,0)=$P(WVTMP,U,1)_"  "_$P(WVTMP,U,2)
 .Q
 Q
ADD ; Bump up line counter
 S WVLINE=WVLINE+1
 Q
BLANK ; Add a blank line
 S ^TMP("WV RPT",$J,WVLINE,0)=" "
 Q

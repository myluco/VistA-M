PXCACPT1 ;ISL/dee & LEA/Chylton - Validates & Translates data from the PCE Device Interface into PCE's PXK format for CPTs ;8/1/96
 ;;1.0;PCE PATIENT CARE ENCOUNTER;**73,121,124**;Aug 12, 1996
 Q
 ; Variables
 ;   PXCA      Copy of PXCA array
 ;   PXCAPROC  Copy of a Procedure node of the PXCA array
 ;   PXCAPRV   Pointer to the provider (200)
 ;   PXCANUMB  Count of the number if CPTs and treatments
 ;   PXCAINDX  Count of the number of procedures for one provider
 ;   PXCAFTER  Temp used to build ^TMP(PXCAGLB,$J,"CPT",PXCANPRV,0,"AFTER")
 ;               or to build ^TMP(PXCAGLB,$J,"TRT",PXCANPRV,0,"AFTER")
 ;
CPT(PXCA,PXCAPROC,PXCANUMB,PXCAPRV,PXCAINDX,PXCAERRS) ;CPT
 N PXCAFTER,PXCACNT,PXCASTR,PXCAWARN,PXMDIEN
 S PXCAFTER=$P(PXCAPROC,"^",1)_"^"
 S PXCAFTER=PXCAFTER_PXCAPAT_"^"_PXCAVSIT_"^"
 S PXCAFTER=PXCAFTER_$P(PXCAPROC,"^",6)_"^"
 S PXCAFTER=PXCAFTER_$P(PXCAPROC,"^",5)_"^^" ;1ST Dx
 S PXCAFTER=PXCAFTER_$S($P(PXCAPROC,"^",3)="P":"Y",$P(PXCAPROC,"^",3)="S":"N",1:"")_"^^"
 S PXCAFTER=PXCAFTER_$P(PXCAPROC,"^",8)_"^" ;2nd Dx
 S PXCAFTER=PXCAFTER_$P(PXCAPROC,"^",9)_"^" ;3rd Dx
 S PXCAFTER=PXCAFTER_$P(PXCAPROC,"^",10)_"^" ;4th Dx
 S PXCAFTER=PXCAFTER_$P(PXCAPROC,"^",11)_"^" ;5th Dx
 S PXCAFTER=PXCAFTER_$P(PXCAPROC,"^",12)_"^" ;6th Dx
 S PXCAFTER=PXCAFTER_$P(PXCAPROC,"^",13)_"^" ;7th Dx
 S PXCAFTER=PXCAFTER_$P(PXCAPROC,"^",14)_"^" ;8th Dx
 S PXCAFTER=PXCAFTER_$P(PXCAPROC,"^",2)
 S ^TMP(PXCAGLB,$J,"CPT",PXCANUMB,"IEN")=""
 S ^TMP(PXCAGLB,$J,"CPT",PXCANUMB,0,"BEFORE")=""
 S ^TMP(PXCAGLB,$J,"CPT",PXCANUMB,0,"AFTER")=PXCAFTER
 IF $P(PXCAFTER,"^",5)]"" D ANOTHPOV^PXCAPOV($P(PXCAFTER,"^",5))
 IF $P(PXCAFTER,"^",9)]"" D ANOTHPOV^PXCAPOV($P(PXCAFTER,"^",9))
 IF $P(PXCAFTER,"^",10)]"" D ANOTHPOV^PXCAPOV($P(PXCAFTER,"^",10))
 IF $P(PXCAFTER,"^",11)]"" D ANOTHPOV^PXCAPOV($P(PXCAFTER,"^",11))
 IF $P(PXCAFTER,"^",12)]"" D ANOTHPOV^PXCAPOV($P(PXCAFTER,"^",12))
 IF $P(PXCAFTER,"^",13)]"" D ANOTHPOV^PXCAPOV($P(PXCAFTER,"^",13))
 IF $P(PXCAFTER,"^",14)]"" D ANOTHPOV^PXCAPOV($P(PXCAFTER,"^",14))
 IF $P(PXCAFTER,"^",15)]"" D ANOTHPOV^PXCAPOV($P(PXCAFTER,"^",15))
 ;Set modifier nodes
 S (PXCAMOD,PXCAWARN)=""
 F PXCACNT=1:1 S PXCAMOD=$O(PXCA("PROCEDURE",PXCAPRV,PXCAINDX,PXCAMOD)) Q:PXCAMOD=""  D
 . S PXMDIEN=$$MODP^ICPTMOD(+PXCAFTER,PXCAMOD,"E",PXCADT)
 . I +PXMDIEN<1 D  Q
 .. S PXCAWARN=$S(PXCAWARN="":"",1:PXCAWARN_",")_PXCAMOD
 .. S PXCA("PROCEDURE",PXCAPRV,PXCAINDX,PXCAMOD)="Invalid Modifier"
 . S PXCASTR=$$MOD^ICPTMOD(PXMDIEN,"I",PXCADT)
 . S ^TMP(PXCAGLB,$J,"CPT",PXCANUMB,1,PXCACNT,"BEFORE")=""
 . S ^TMP(PXCAGLB,$J,"CPT",PXCANUMB,1,PXCACNT,"AFTER")=+PXCASTR
 . I PXCA("PROCEDURE",PXCAPRV,PXCAINDX,PXCAMOD)="" D
 .. S PXCA("PROCEDURE",PXCAPRV,PXCAINDX,PXCAMOD)=$P(PXCASTR,"^",1,3)
 I PXCAWARN]"" D
 . S PXCA("WARNING","PROCEDURE",PXCAPRV,PXCAINDX,0)="CPT Modifier(s) "_PXCAWARN_" invalid. Code(s) not stored."
 S ^TMP(PXCAGLB,$J,"CPT",PXCANUMB,12,"BEFORE")=""
 S ^TMP(PXCAGLB,$J,"CPT",PXCANUMB,12,"AFTER")=$P(PXCAPROC,"^",4)_"^^^"_$S(PXCAPRV>0:PXCAPRV,1:"")
 S ^TMP(PXCAGLB,$J,"CPT",PXCANUMB,802,"BEFORE")=""
 S ^TMP(PXCAGLB,$J,"CPT",PXCANUMB,802,"AFTER")=$P(PXCAPROC,"^",7)
 S ^TMP(PXCAGLB,$J,"CPT",PXCANUMB,812,"BEFORE")=""
 S ^TMP(PXCAGLB,$J,"CPT",PXCANUMB,812,"AFTER")="^"_PXCAPKG_"^"_PXCASOR
 Q
 ;

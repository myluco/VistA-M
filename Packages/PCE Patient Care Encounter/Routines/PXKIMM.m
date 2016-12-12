PXKIMM ;BP/LMT - Main Routine for filing immunization multiples ;04/16/15  08:22
 ;;1.0;PCE PATIENT CARE ENCOUNTER;**210**;Aug 12, 1996;Build 21
 ;
CLEAN(PXKNODE) ; Clean for IMM multiples. Check to see if PXKAV=PXKBV
 ;
 N PXKSAME
 ;
 I $D(PXKAV(PXKNODE)) D
 . ;
 . S PXKSAME=1
 . ;
 . I PXKNODE=11 S PXKSAME=$$CMPRWP("PXKBV("_PXKNODE_")","PXKAV("_PXKNODE_")")
 . I PXKNODE'=11 S PXKSAME=$$CMPR(,"PXKBV("_PXKNODE_")","PXKAV("_PXKNODE_")")
 . ;
 . I PXKSAME K PXKAV(PXKNODE)
 ;
 Q
 ;
DIE ; File data for multiples
 ;
 N PXKSUB,PXKSUBFILE,PXKWP,PXKIENS,PXKFDA,PXKERR
 ;
 I $G(PXKAV(PXKNOD,0))="@" D PURGE(PXKNOD) Q
 ;
 S PXKIENS=PXKPIEN_","
 ;
 I PXKNOD?1(1"2",1"3") D
 . ;
 . S PXKSUBFILE=$S(PXKNOD=2:9000010.112,1:9000010.113)
 . ;
 . S PXKSUB=0
 . F  S PXKSUB=$O(PXKAV(PXKNOD,PXKSUB)) Q:'PXKSUB  D
 . . I $G(PXKAV(PXKNOD,PXKSUB,1))="" Q
 . . S PXKFDA(1,PXKSUBFILE,"+"_PXKSUB_","_PXKIENS,.01)=PXKAV(PXKNOD,PXKSUB,1)
 . . I PXKNOD=2,$G(PXKAV(PXKNOD,PXKSUB,2))'="" D
 . . . S PXKFDA(1,PXKSUBFILE,"+"_PXKSUB_","_PXKIENS,.02)=PXKAV(PXKNOD,PXKSUB,2)
 . ;
 . I '$D(PXKFDA(1)) Q
 . ;
 . ; Purge previous data before filing updates
 . I PXKFGED D PURGE(PXKNOD)
 . ;
 . D UPDATE^DIE("","PXKFDA(1)",,"PXKERR")
 ;
 I PXKNOD=11 D
 . ;
 . S PXKSUB=0
 . F  S PXKSUB=$O(PXKAV(PXKNOD,PXKSUB)) Q:'PXKSUB  D
 . . S PXKWP(PXKSUB)=$G(PXKAV(PXKNOD,PXKSUB,1))
 . ;
 . I '$D(PXKWP) Q
 . ;
 . I PXKFGED D PURGE(PXKNOD)
 . ;
 . L +@PXKLR:10
 . D WP^DIE(9000010.11,PXKIENS,1101,"","PXKWP","PXKERR")
 . L -@PXKLR
 ;
 Q
 ;
PURGE(PXKNODE) ; Before filing edits for an entry, purge multiples
 ;
 I '$G(PXKPIEN) Q
 ;
 L +@PXKLR:10
 ;
 ; Delete data in REMARKS Word-processing field
 I PXKNODE=11 D  Q
 . D WP^DIE("9000010.11",PXKPIEN_",","1101",,"@")
 ;
 ; Delete data in VIS and OTHER DIAGNOSIS multiple
 I PXKNODE?1(1"2",1"3") D
 . N DIK,DA
 . S DA(1)=PXKPIEN
 . S DIK="^AUPNVIMM("_DA(1)_","_PXKNODE_","
 . S DA=0 F  S DA=$O(^AUPNVIMM(DA(1),PXKNODE,DA)) Q:'DA  D ^DIK
 ;
 L -@PXKLR
 ;
 Q
 ;
CMPRWP(PXKLIST1,PXKLIST2) ; Compares two word-processing arrays for equivalence.
 ;
 N PXKSAME,PXKCOUNT1,PXKCOUNT2,PXKSUBIEN1,PXKSUBIEN2,PXKX1,PXKX2
 ;
 S PXKSAME=1 ; flag if before and after arrays are equivalent
 ;
 ; check # entries
 S PXKCOUNT1=0
 S PXKCOUNT2=0
 S PXKSUBIEN1=0
 F  S PXKSUBIEN1=$O(@PXKLIST1@(PXKSUBIEN1)) Q:'PXKSUBIEN1  D
 . I $D(@PXKLIST1@(PXKSUBIEN1,0))!($D(@PXKLIST1@(PXKSUBIEN1,1))) S PXKCOUNT1=PXKCOUNT1+1
 S PXKSUBIEN2=0
 F  S PXKSUBIEN2=$O(@PXKLIST2@(PXKSUBIEN2)) Q:'PXKSUBIEN2  D
 . I $D(@PXKLIST2@(PXKSUBIEN2,0))!($D(@PXKLIST2@(PXKSUBIEN2,1))) S PXKCOUNT2=PXKCOUNT2+1
 I PXKCOUNT1'=PXKCOUNT2 S PXKSAME=0 Q PXKSAME
 ;
 ; Check word-processind field. Order and content need to match
 S PXKSUBIEN1=0
 S PXKSUBIEN2=0
 F  S PXKSUBIEN1=$O(@PXKLIST1@(PXKSUBIEN1)) Q:'PXKSUBIEN1  D
 . S PXKSUBIEN2=$O(@PXKLIST2@(PXKSUBIEN2))
 . S PXKX1=$S($G(@PXKLIST1@(PXKSUBIEN1,0))'="":$G(@PXKLIST1@(PXKSUBIEN1,0)),1:$G(@PXKLIST1@(PXKSUBIEN1,1)))
 . S PXKX2=$S($G(@PXKLIST2@(PXKSUBIEN2,0))'="":$G(@PXKLIST2@(PXKSUBIEN2,0)),1:$G(@PXKLIST2@(PXKSUBIEN2,1)))
 . I PXKX1'=PXKX2 S PXKSAME=0
 ;
 Q PXKSAME
 ;
CMPR(PXKDIFF,PXKLIST1,PXKLIST2) ;
 ;
 ; Compares two arrays for equivalence.
 ; Returns any data that was in PXKLIST1 that was not in PXKLIST2 in PXKDIFF
 ;
 ; PXKLIST1 is in same format as PXKAV and PXKBV arrays
 ; PXKLIST2 can be in the format of PXKAV/PXKBV arrays or can be in global format.
 ;
 N PXKMATCH,PXKSAME,PXKSUBIEN,PXKVAL,PXKVAL1,PXKTMPBV,PXKSUBIENB
 ;
 S PXKSAME=1 ; flag if before and after arrays are equivalent
 ;
 ; Check multiple to see if before and after arrays match. Content needs to match, but order doesn't matter
 S PXKSUBIEN=0
 F  S PXKSUBIEN=$O(@PXKLIST1@(PXKSUBIEN)) Q:'PXKSUBIEN  D
 . S PXKVAL=$$CONCAT($NA(@PXKLIST1@(PXKSUBIEN)))  ; returns array as caret ('^') delimited string
 . S PXKVAL1=$P(PXKVAL,U,1)
 . I PXKVAL1="" S PXKVAL1=" "
 . S PXKTMPBV(PXKVAL1,PXKSUBIEN)=PXKVAL
 S PXKSUBIEN=0
 F  S PXKSUBIEN=$O(@PXKLIST2@(PXKSUBIEN)) Q:'PXKSUBIEN  D
 . S PXKVAL=$S(PXKLIST2["^":$G(@PXKLIST2@(PXKSUBIEN,0)),1:$$CONCAT($NA(@PXKLIST2@(PXKSUBIEN))))
 . S PXKVAL1=$P(PXKVAL,U,1)
 . I PXKVAL1="" S PXKVAL1=" "
 . S PXKSUBIENB=0
 . S PXKMATCH=0
 . F  S PXKSUBIENB=$O(PXKTMPBV(PXKVAL1,PXKSUBIENB)) Q:'PXKSUBIENB!(PXKMATCH)  D
 . . I PXKVAL=$G(PXKTMPBV(PXKVAL1,PXKSUBIENB)) D
 . . . S PXKMATCH=1
 . . . K PXKTMPBV(PXKVAL1,PXKSUBIENB)
 . I 'PXKMATCH S PXKSAME=0
 ;
 I $D(PXKTMPBV) D
 . S PXKSAME=0
 . S PXKVAL1="" F  S PXKVAL1=$O(PXKTMPBV(PXKVAL1)) Q:PXKVAL1=""  D
 . . S PXKSUBIEN=0 F  S PXKSUBIEN=$O(PXKTMPBV(PXKVAL1,PXKSUBIEN)) Q:'PXKSUBIEN  D
 . . . S PXKDIFF(PXKSUBIEN)=$G(PXKTMPBV(PXKVAL1,PXKSUBIEN))
 ;
 Q PXKSAME
 ;
CONCAT(PXKLIST) ; Concatenates array into a caret ('^') delimited string
 ;
 N PXKI,PXKRESULT
 ;
 S PXKRESULT=""
 ;
 S PXKI=0
 F  S PXKI=$O(@PXKLIST@(PXKI)) Q:'PXKI  D
 . S $P(PXKRESULT,U,PXKI)=$G(@PXKLIST@(PXKI))
 ;
 Q PXKRESULT
 ;
ER ; Check if data was filed ok
 ;
 N PXKSAME,PXKDIFF,PXKFLD,PXKNODE,PXKSUB,PXKSTR
 ;
 ; Check VIS and OTHER DIAGNOSIS multiple
 F PXKNODE=2,3 D
 . K PXKDIFF
 . S PXKSAME=$$CMPR(.PXKDIFF,"PXKAV("_PXKNODE_")","^AUPNVIMM("_DA_","_PXKNODE_")")
 . I 'PXKSAME,$D(PXKDIFF) D
 . . S PXKSUB=0 F  S PXKSUB=$O(PXKDIFF(PXKSUB)) Q:'PXKSUB  D
 . . . S PXKSTR="Not Stored = "_$G(PXKDIFF(PXKSUB))
 . . . I $G(PXKERROR(PXKCAT,PXKSEQ,DA,PXKNODE,PXKSUB))'="" D
 . . . .  S PXKSTR=PXKERROR(PXKCAT,PXKSEQ,DA,PXKNODE,PXKSUB)_","_$G(PXKDIFF(PXKSUB))
 . . . S PXKERROR(PXKCAT,PXKSEQ,DA,PXKNODE,PXKSUB)=PXKSTR
 ;
 ; Check REMARKS word-processing fields
 S PXKSAME=$$CMPRWP("PXKAV(11)","^AUPNVIMM("_DA_",11)")
 I 'PXKSAME D
 . S PXKFLD=1101
 . S PXKSTR="Not Stored = REMARKS Word-processing"
 . I $G(PXKERROR(PXKCAT,PXKSEQ,DA,PXKFLD))]"" D
 . .  S PXKSTR=PXKERROR(PXKCAT,PXKSEQ,DA,PXKFLD)_",REMARKS Word-processing"
 . S PXKERROR(PXKCAT,PXKSEQ,DA,PXKFLD)=PXKSTR
 ;
 Q
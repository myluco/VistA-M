RORHIV03 ;HCIOFO/SG - CONVERSION OF THE FILE #158 ; 5/12/05 2:53pm
 ;;1.5;CLINICAL CASE REGISTRIES;;Feb 17, 2006
 ;
 Q
 ;
 ;***** TRANSFERS THE CDC COMMENTS TO THE MULTIPLE #25
CDCOMM() ;
 N CNT,I,IENS,RC,RORBUF,RORFDA,RORMSG,TMP
 S (CNT,RC)=0
 ;--- Load the old comments (non-empty ones)
 F I=3,2,1  D
 . S TMP=$G(^IMR(158,IMRIEN,I+9))
 . S:(TMP'="")!CNT RORBUF(I,0)=TMP,CNT=CNT+1
 ;--- Store the comments in the new word processing field
 D:$D(RORBUF)>1
 . S IENS=RORIEN_","
 . S RORFDA(799.4,IENS,25)="RORBUF"
 . D UPDATE^DIE(,"RORFDA",,"RORMSG")
 . I $G(DIERR)  D
 . . S RC=$$DBS^RORERR("RORMSG",-9,,,799.4,IENS)
 Q $S(RC<0:RC,1:0)
 ;
 ;***** TRANSFERS THE PATIENT'S DATA FROM FILE #158 TO FILE #799.4
 ;
 ; IMRIEN        IEN of the IMMUNOLOGY CASE STUDY file record
 ; RORIEN        IEN of the record of the ROR HIV RECORD file
 ;
 ; Return Values:
 ;       <0  Error code
 ;        0  Ok
 ;
CNVPTDAT(IMRIEN,RORIEN) ;
 N DA,DIK,RC,RORNODE,TMP
 S RORNODE=""
 ;--- Check the parameters
 I '$D(^IMR(158,IMRIEN,0))  D  Q RC
 . S RC=$$ERROR^RORERR(-88,,,,"IMRIEN",IMRIEN)
 I '$D(^RORDATA(799.4,RORIEN,0))  D  Q RC
 . S RC=$$ERROR^RORERR(-88,,,,"RORIEN",RORIEN)
 ;---
 S RORNODE=^RORDATA(799.4,RORIEN,0)
 D COPY(0,"42>2,23>3")
 D COPY(1,"7>4")
 I $P(RORNODE,U,2)=4  D  ; CLINICAL AIDS
 . S $P(RORNODE,U,2)=1,TMP=$P(RORNODE,U,3)\1
 . I TMP<1000000  S $P(RORNODE,U,3)=""  Q
 . S:'$E(TMP,4,5) $E(TMP,4,5)="01"
 . S:'$E(TMP,6,7) $E(TMP,6,7)="01"
 . S $P(RORNODE,U,3)=TMP
 E  S $P(RORNODE,U,2,3)=U
 D STORE(0)
 ;---
 D COPY(1,"6>1,34>5,9>9,10>10,11>11,12>12,13>13,14>14")
 D COPY(2,"16>4")
 D COPY(102,"8>7,23>8")
 D COPY(110,"1>2,2>3")
 D COPY(112,"5>6")
 D STORE(9)
 ;---
 D COPY(102,"19>5")
 D COPY(110,"4>1,5>4")
 D COPY(112,"7>2,8>3")
 D STORE(11)
 ;---
 D COPY(1,"16>2,17>3,18>4")
 D COPY(2,"54>1")
 D COPY(102,"10>7")
 D COPY(110,"16>5")
 D COPY(112,"6>6")
 D STORE(12)
 ;---
 D COPY(1,"26>3,20>6,28>7,29>8,30>9,31>10,32>12,21>13,22>14,23>15,24>17")
 D TRANSL(1,19,5,"1,2,3","1,2,8")
 D COPY(2,"21>1,23>2,53>4,55>18")
 D COPY(102,"14>16")
 D COPY(110,"3>11")
 D STORE(14)
 ;---
 D COPY(1,"35>1,36>9")
 D COPY(2,"49>5"),TRANSL(2,50,7,"P,N,I,U","1,0,8,9")
 D COPY(102,"20>11")
 D COPY(108,"27>2,28>6,29>8,30>12")
 D COPY(110,"17>3,18>4,19>13,20>14")
 D STORE(16)
 ;---
 D COPY(111,"10>1,11>2,12>3,13>4,14>5,1>6,2>7,3>8,4>9")
 D STORE(18)
 ;---
 D COPY(102,"21>1,22>3")
 D COPY(108,"31>2")
 D COPY(111,"5>4,6>5,7>6,8>7,9>8")
 D STORE(20)
 ;---
 D COPY(110,"6>1,7>2,8>4,9>5,10>6,11>7,12>8")
 D COPY(112,"11>3")
 D STORE(22)
 ;---
 D TRANSL(110,13,1,"1,2,9","1,0,9")
 D TRANSL(110,14,2,"1,2,9","1,0,9")
 D TRANSL(110,15,3,"1,2,9","1,0,9")
 D COPY(112,"1>4,2>5,3>6,4>7")
 D STORE(23)
 ;---
 S RC=$$INIDIAGS()  Q:RC<0 RC
 S RC=$$CDCOMM()  Q:RC<0 RC
 ;--- Reindex the entry
 S DIK="^RORDATA(799.4,",DA=RORIEN  D IX1^DIK
 Q 0
 ;
 ;***** COPY THE FIELD DATA
COPY(SRCN,PTLIST) ;
 N DSTP,I,SRCP,TMP
 S:'$D(RORNODE(SRCN)) RORNODE(SRCN)=$G(^IMR(158,IMRIEN,SRCN))
 F I=1:1  S TMP=$P(PTLIST,",",I)  Q:TMP=""  D
 . S SRCP=+$P(TMP,">"),DSTP=+$P(TMP,">",2)
 . S TMP=$P(RORNODE(SRCN),U,SRCP)
 . S:TMP'="" $P(RORNODE,U,DSTP)=TMP
 Q
 ;
 ;***** TRANSFER INITIAL DIAGNOSES
INIDIAGS() ;
 ;;01^2;24^108;1
 ;;02^2;25^108;2
 ;;03^102;15^108;3
 ;;04^2;26^108;4
 ;;05^2;27^108;5
 ;;06^2;28^108;6
 ;;07^2;29^108;7
 ;;08^2;30^108;8
 ;;09^2;31^108;9
 ;;10^2;32^108;10
 ;;11^2;33^108;11
 ;;12^2;34^108;12
 ;;13^2;35^108;13
 ;;14^1;36^108;14
 ;;15^2;37^108;15
 ;;16^2;38^108;16
 ;;17^2;39^108;17
 ;;18^102;16^108;18
 ;;19^2;40^108;19
 ;;20^2;41^108;20
 ;;21^2;42^108;21
 ;;22^102;17^108;22
 ;;23^2;43^108;23
 ;;24^2;44^108;24
 ;;25^2;45^108;25
 ;;26^2;46^108;26
 ;
 N BUF,DATE,DIAG,DIEN,I,IENS,RC,RORFDA,RORILST,RORMSG,TMP
 K ^RORDATA(799.4,RORIEN,10)  S RC=0
 ;--- Load the old data nodes (if they have not been loaded yet)
 F I=2,102,108  D:'$D(RORNODE(I))
 . S RORNODE(I)=$G(^IMR(158,IMRIEN,I))
 ;--- Prepare the data
 F I=1:1  S BUF=$P($T(INIDIAGS+I),";;",2,99)  Q:BUF=""  D
 . S DIEN=+BUF
 . S TMP=$P(BUF,U,2),DX=$P(RORNODE(+TMP),U,$P(TMP,";",2))
 . S DX=$TR(DX,"DPN0","12")  Q:DX=""
 . S TMP=$P(BUF,U,3),DATE=$P(RORNODE(+TMP),U,$P(TMP,";",2))
 . ;---
 . S IENS="+"_I_","_RORIEN_","
 . S RORFDA(799.41,IENS,.01)=DIEN
 . S RORFDA(799.41,IENS,.02)=DX
 . S RORFDA(799.41,IENS,.03)=DATE
 . S RORILST(I)=DIEN
 ;--- Store the data
 D:$D(RORFDA)>1
 . D UPDATE^DIE(,"RORFDA","RORILST","RORMSG")
 . I $G(DIERR)  D  Q
 . . S RC=$$DBS^RORERR("RORMSG",-9,,,799.41)
 ;---
 Q $S(RC<0:RC,1:0)
 ;
 ;***** TEMPORARY 'AFTER UPDATE' CALL-BACK ENTRY POINT
 ;
 ; RORIEN        An IEN of the newly added registry record
 ; PATIEN        Patient IEN
 ; REGIEN        Registry IEN
 ;
 ; Return Values:
 ;       <0  Error Code
 ;        0  Ok
 ;
POSTUPD(RORIEN,PATIEN,REGIEN) ;
 N CODE,IEN158,IENS,RC,RORFDA,RORMSG,TMP
 ;--- Perform the standard HIV post-update actions
 S RC=$$POSTUPD^RORUPD62(RORIEN,PATIEN,REGIEN)  Q:RC<0 RC
 ;--- Check if the patient is in the ICR v2.1
 S CODE=$$XOR^RORUTL03(PATIEN)
 S IEN158=$O(^IMR(158,"B",CODE,""))  Q:IEN158'>0 0
 S IENS=RORIEN_","
 ;--- Populate the DATE ENTERED with the date of first selection rule
 S TMP=$$GET1^DIQ(798,IENS,3.2,"I",,"RORMSG")
 D:$G(DIERR) DBS^RORERR("RORMSG",-9,,PATIEN,798,IENS)
 S:TMP>0 RORFDA(798,IENS,1)=TMP
 ;--- Convert the patient's data
 D:$$CNVPTDAT(IEN158,RORIEN)'<0
 . ;--- Replace the 'Pending' flag with 'Active'
 . S RORFDA(798,IENS,3)=0    ; STATUS (Pending -> Active)
 . S RORFDA(798,IENS,11)="@" ; DON'T SEND
 ;--- Update the registry record if necessary
 I $D(RORFDA)>1  D  Q:RC<0 RC
 . D FILE^DIE(,"RORFDA","RORMSG")
 . S:$G(DIERR) RC=$$DBS^RORERR("RORMSG",-9,,PATIEN,798,IENS)
 ;---
 Q 0
 ;
 ;***** CREATES THE NEW DATA NODE IN THE RECORD OF THE FILE #799.4
STORE(DSTN) ;
 K ^RORDATA(799.4,RORIEN,DSTN)
 S:RORNODE'="" ^RORDATA(799.4,RORIEN,DSTN)=RORNODE
 S RORNODE=""
 Q
 ;
 ;***** TRANSLATE THE SET OF CODES
TRANSL(SRCN,SRCP,DSTP,FROM,TO) ;
 N TMP
 S:'$D(RORNODE(SRCN)) RORNODE(SRCN)=$G(^IMR(158,IMRIEN,SRCN))
 S TMP=$P(RORNODE(SRCN),U,SRCP)
 S:TMP'="" $P(RORNODE,U,DSTP)=$TR(TMP,FROM,TO)
 Q
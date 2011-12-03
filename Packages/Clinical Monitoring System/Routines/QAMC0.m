QAMC0 ;HISC/DAD-CONDITION: DESCRIPTION ;2/10/92  07:33
 ;;1.0;Clinical Monitoring System;;09/13/1993
 ;
EN1 ; *** CONDITION CODE
 ;
 ; This part of a condition routine generates the list of patients
 ; who meet the requirements of the condition and optionally its
 ; parameters (see below).  The list generated by the condition
 ; should be of the following form:
 ;  S ^UTILITY($J,"QAM CONDITION",QAMD1,DFN)=""
 ;  S ^UTILITY($J,"QAM CONDITION",QAMD1,DFN,DATE/TIME(FM))=D0^D1^D2^...
 ;   QAMD1     = The IEN of the condition in the CONDITION multiple
 ;               in the QA MONITOR file (#743)
 ;   DFN       = The IEN of a record in the PATIENT file (#2)
 ;   DATE/TIME = The date/time in FileMan format for this condition
 ;               If the condition has no date associated with it the
 ;               variable QAMTODAY (see below) may be used
 ;   D0,D1,D2  = The internal entry numbers to get to the data.
 ;
 ; The following variables may be used, but should NOT be changed
 ;  QAMD0    = The IEN of a record in the QA MONITOR file (#743)
 ;  QAMD1    = See above
 ;  QAMTODAY = The date for which auto enroll is running
 ;  QAMZERO  = The zero node of the monitor
 ;  QAMONE   = The one node of the monitor
 ; The following variables should NOT be used or changed
 ;  QAMRANGE, QAQNBEG, QAQNEND, QAMARUN, QAMHISD0
 ;
EN2 ; *** PARAMETER CODE
 ;
 ; The parameter code section should ask the user any parameters
 ; associated with the condition, e.g., Sex: M or F, Age: upper
 ; lower limit, etc.  The parameters edit section should support
 ; full FileMan editing conventions: add, edit, delete, and error
 ; handling.  The entry point EN3^QAMUTL1 may be called to perform
 ; the edit of a parameter. This routine uses a DIR call to get the
 ; parameter.  If the edit of the involves a screened look up on a
 ; file the entry point EN2^QAMUTL1 should be used.  For this call
 ; the appropriate DIC variables should be set, also the DIR("?")
 ; and DIR("??") variables may be used as well.
 ; The required variables are:
 ;  QAMPARAM = Node parameter should be stored in, P1,P2,P3,P4,P5
 ;  DIR      = See FileMan documentation
 ; Other variables:
 ;  QAMD0, QAMD1 = Same as above
 ;  QAMFIN = Do NOT use this variable or change it
 ; Returned variables:
 ;  DIRUT    = See FileMan documentation
 ;  Y        = See FileMan documentation
 ;             (Y="" if deleted or ^ or some problem with the edit)
 ;  DIR is killed by this call
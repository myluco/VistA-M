PXRMG2E3 ;SLC/JVS -GEC #2 EXTRACT #3  ;2/13/05  20:08
 ;;2.0;CLINICAL REMINDERS;**2**;Feb 04, 2005
 Q
 ;
CRITER4 ; Extracts the IEN for the health factors that represents
 ; the 3 IADL'S
 I $D(^AUTTHF("B","GEC DIFFICULT TRANSPORTATION/LAST 7D-YES")) D
 .S C142($O(^AUTTHF("B","GEC DIFFICULT TRANSPORTATION/LAST 7D-YES",0)))=""
 I $D(^AUTTHF("B","GEC DIFFICULTY MANAGING MEDS/LAST 7D-YES")) D
 .S C144($O(^AUTTHF("B","GEC DIFFICULTY MANAGING MEDS/LAST 7D-YES",0)))=""
 I $D(^AUTTHF("B","GEC DIFFICULTY MNG FINANCES/LAST 7D-YES")) D
 .S C146($O(^AUTTHF("B","GEC DIFFICULTY MNG FINANCES/LAST 7D-YES",0)))=""
 I $D(^AUTTHF("B","GEC DIFFICULTY PREPARE MEALS/LAST 7D-YES")) D
 .S C148($O(^AUTTHF("B","GEC DIFFICULTY PREPARE MEALS/LAST 7D-YES",0)))=""
 I $D(^AUTTHF("B","GEC DIFFICULTY USING PHONE/LAST 7D-YES")) D
 .S C1410($O(^AUTTHF("B","GEC DIFFICULTY USING PHONE/LAST 7D-YES",0)))=""
 I $D(^AUTTHF("B","GEC DIFFICULTY W/ HOUSEWORK/LAST 7D-YES")) D
 .S C1412($O(^AUTTHF("B","GEC DIFFICULTY W/ HOUSEWORK/LAST 7D-YES",0)))=""
 I $D(^AUTTHF("B","GEC DIFFICULTY WITH SHOPPING/LAST 7D-YES")) D
 .S C1414($O(^AUTTHF("B","GEC DIFFICULTY WITH SHOPPING/LAST 7D-YES",0)))=""
 I $D(^AUTTHF("B","GEC COMMUNITY NRSNG HOME (REFERRED FROM)")) D
 .S C1101($O(^AUTTHF("B","GEC COMMUNITY NRSNG HOME (REFERRED FROM)",0)))=""
 I $D(^AUTTHF("B","GEC VA DOMICILIARY (REFERRED FROM)")) D
 .S C1107($O(^AUTTHF("B","GEC VA DOMICILIARY (REFERRED FROM)",0)))=""
 I $D(^AUTTHF("B","GEC VA NURSING HOME")) D
 .S C1108($O(^AUTTHF("B","GEC VA NURSING HOME",0)))=""
 I $D(^AUTTHF("B","GEC ALONE")) D
 .S C171($O(^AUTTHF("B","GEC ALONE",0)))=""
 I $D(^AUTTHF("B","GEC NURSING HOME")) D
 .S C166($O(^AUTTHF("B","GEC NURSING HOME",0)))=""
 ;
 Q
 ;Continued in..
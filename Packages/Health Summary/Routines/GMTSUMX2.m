GMTSUMX2 ; SLC/KER - Convert Text to Mix Case (1-4) ; 08/27/2002
 ;;2.7;Health Summary;**30,37,56**;Oct 20, 1995
 ;         
1 I "^B^C^D^E^F^G^H^I^J^K^M^N^O^P^Q^S^T^U^V^X^Y^Z^"[X S Y=$$UP(X) Q
 I "^W^L^R^"[X S Y=$$LO(X) Q
 I "^MM^CM^IN^FT^CM^CC^"[X S Y=$$LO(X) Q
 Q
2 ; 2 Characters
 S J=$G(J)
 I J'="",J'=" ","^OR^"[X S Y=$$UP(X) Q
 S:X="DA" Y="dA" S:X="DC" Y="dC" S:X="DG" Y="dG" S:X="DT" Y="dT" S:X="DU" Y="dU" S:X="GB" Y="gB" S:X="GC" Y="gC" S:X="GH" Y="gH" S:X="KB" Y="kB" Q:$L($G(Y))
 S:X="KD" Y="kD" S:X="PH" Y="pH" S:X="PX" Y="pX" Q:$L($G(Y))
 I "^WO^W/^IN^IS^IT^AT^OR^TO^OF^ON^BE^BY^"[X S Y=$$LO(X) Q
 I "^ST^"[X S Y=$$MX(X) Q
 I "^DG^DI^DS^EC^EN^ES^FB^ID^FH^HL^IB^LA^LR^MD^MC^NS^OR^PX^RA^RG^RT^SD^SR^SW^VA^WV^XH^XM^XT^XU^YS^"[X S Y=$$UP(X) Q
 I "^BA^BT^CD^CH^CM^CN^CP^CR^CY^BW^7S^OL^CA^MC^EP^II^RO^ZP^ZY^SH^ES^MF^GP^"[X S Y=$$UP(X) Q
 I "^CW^DD^DI^DS^EM^HF^IM^LH^LO^OD^OE^PN^RI^RP^RS^SP^SR^ST^SW^TP^TR^TS^VS^"[X S Y=$$UP(X) Q
 I "^EP^AA^AB^AC^AD^AF^AG^AH^AP^AR^AV^BA^BB^BC^BE^BG^BH^BK^BL^BM^BP^BR^BS^BW^CA^CB^CD^CE^CF^CG^CH^CI^CK^CL^CO^CP^CR^CS^CT^CV^DB^DD^DL^DM^DN^DP^DQ^DR^EA^EB^EC^EF^EM^EO^EP^ET^FA^FD^FK^FR^FU^GA^GI^GL^GP^GR^GS^GT^HA^HB^HC^"[X S Y=$$UP(X) Q
 I "^HC^HL^HO^HP^HR^HS^HT^HU^HX^IA^IB^IE^IF^II^IL^IP^IV^IX^KO^KS^LA^LD^LE^LF^LH^LL^LR^LY^MA^MB^MC^ME^MF^MI^MK^MP^MR^MS^MT^NA^NB^NF^NG^NH^NK^NL^NP^NS^NT^OC^OD^OH^OP^OT^OX^PA^PC^PD^PE^PF^PG^PI^PK^PL^PM^PP^PR^PS^PT^PZ^RA^"[X S Y=$$UP(X) Q
 I "^RA^RC^RF^RH^RI^RP^RR^RS^RX^SA^SB^SC^SD^SE^SF^SG^SH^SI^SK^SL^SM^SP^SR^SS^SV^TA^TB^TC^TF^TH^TI^TK^TL^TP^TT^UK^UD^UV^VA^VC^VH^VI^VO^VP^VZ^WB^WS^XI^YM^YY^"[X S Y=$$UP(X) Q
 I "^AN^AS^AT^BY^CM^DE^IN^MG^NO^OF^ON^OR^SQ^TO^UP^YL^"[X S Y=$$LO(X) Q
 Q
3 ; 3 Characters
 S:X="BRZ" Y="BrZ" S:X="COA" Y="CoA" S:X="COM" Y="CoM" S:X="EIF" Y="eIF" S:X="HGH" Y="hGH" S:X="HPR" Y="HPr" S:X="IGA" Y="IgA" S:X="IGD" Y="IgD" S:X="IGE" Y="IgE" Q:$L($G(Y))
 S:X="IGG" Y="IgG" S:X="IGM" Y="IgM" S:X="IIB" Y="IIb" S:X="KDA" Y="kDa" S:X="MEC" Y="MeC" S:X="MEO" Y="MeO" S:X="NAC" Y="NAc" S:X="NIA" Y="NIa" S:X="OET" Y="OEt" Q:$L($G(Y))
 S:X="OME" Y="OMe" S:X="PNA" Y="pNA" S:X="PRP" Y="PrP" S:X="SMB" Y="SmB" S:X="VPG" Y="VPg" Q:$L($G(Y))
 I "^DIR^MED^APR^AUG^BAY^FEB^HOT^JAN^JCT^JUL^JUN^LAS^LOS^MAR^FAC^MAY^MTN^NEW^NOV^OCT^OUT^SAN^SEP^SKY^"[X S Y=$$MX(X) Q
 I "^ALL^AND^ARE^BUT^SET^NOW^ANY^HAD^DUE^MED^TOO^FAR^OWN^MIN^ITS^HIM^OUR^HIS^HER^NEW^LOW^ITS^MAY^HOW^OUT^WAS^W/O^FOR^NOT^THE^CAN^PUT^"[X S Y=$$LO(X) Q
 I "^ADC^ADR^ADT^BDS^BLO^BPN^BSR^CRS^OER^OEX^CVF^CVP^DCS^DEM^EDL^HCS^"[X S Y=$$UP(X) Q
 I "^MIC^NSR^NTM^OPC^ORC^PLA^PLI^PLL^PRC^SCD^SHF^SLT^SPN^SRI^SRO^"[X S Y=$$UP(X) Q
 I "^CWT^IOL^SVS^VSO^EES^EPO^DVC^ASC^"[X S Y=$$UP(X) Q
 I "^ICU^NOS^NEC^SLC^ISC^A3A^A3F^A7R^DPT^DVB^ECT^ECX^EDR^EEO^GEC^IBD^IBJ^CPT^ICD^IMR^IVM^LA7^LEX^LRS^LRX^MC2^MPR^NUR^PCE^ORA^"[X S Y=$$UP(X) Q
 I "^NLM^DIC^DIR^DIK^XMB^ORB^PRC^PRS^PSA^PSD^PSG^PSJ^PSN^PSO^PSS^PSU^PSX^QAC^QAM^QAN^QAO^QAP^QAQ^QAR^QIE^QIP^RTY^SPN^TIU^USR^VAQ^VON^XPD^XUC^XWB^YSA^ZDG^"[X S Y=$$UP(X) Q
 I "^ABA^ABC^ABO^ABP^ACE^ACP^ADA^ADH^ADV^ADP^AFO^AII^ALS^AMC^AMP^ANF^ANP^ASA^ATF^ATP^ATX^AVP^AVT^AZT^BAM^BCG^BCP^BDB^BDS^BIM^BLS^BMP^BNP^BOC^BPV^BRL^BSA^BSP^CAD^CAF^CAM^CAP^CAT^CAZ^CBC^CBZ^CCK^CDP^CDR^CEA^CEF^CFA^CGP^CGS^"[X S Y=$$UP(X) Q
 I "^CGS^CHO^CMC^CMF^CMP^CMV^CNP^CNS^CPE^CPK^CRF^CRH^CSF^CTP^CYT^DAB^DAP^DAT^DBP^DDE^DDT^DFA^DHP^DIP^DJD^DME^DNA^DNP^DTP^EAP^EBP^EBV^ECE^ECG^EEE^EEG^EGF^EHV^EIA^EKG^EMD^EMG^EMS^ENA^ENK^FAD^FAP^FDA^FDP^FGF^FMN^FSH^"[X S Y=$$UP(X) Q
 I "^FSH^FSP^FTC^GAP^GDP^GLP^GMP^GPC^GPD^GRF^GRP^GSH^GTH^GTP^GVP^HBP^HCG^HCL^HCO^HCT^HCV^HDL^HFO^HHV^HIB^HIV^HLA^HLH^HMG^HNF^HNP^HOE^HPA^HPC^HPV^HRP^HSA^HSV^IAA^ICI^ICP^IDA^IFN^IGF^IIA^III^IMP^ITF^IUD^JMV^KAP^KLH^LAI^"[X S Y=$$UP(X) Q
 I "^LAI^LAP^LAV^LDH^LDL^LPH^LSD^LSO^MAA^MAM^MAP^MBP^MCA^MCP^MDL^MDP^MDV^MEA^MEN^MEP^MHC^MIF^MIP^MPA^MPS^MRA^MRC^MRI^MRP^MSA^MSH^MTP^NAD^NAG^NAP^NBD^NCA^NCS^NEC^NGF^NHE^NKA^NMN^NOS^NPY^NSC^NYU^OMP^OMT^ORF^OTF^PAF^PAL^"[X S Y=$$UP(X) Q
 I "^PAL^PAP^PAS^PBP^PCA^PCP^PEG^PEP^PET^PHA^PIP^PIV^PKI^PLP^POC^PPD^PPP^PRV^PSA^PSP^PTB^PTC^PTH^PTT^PTX^RAB^RAG^RAP^RBC^RBP^RGD^RII^RMI^RNA^RNP^RSV^SAA^SAM^SAP^SCP^SDZ^SEO^SER^SFV^SHV^SIV^SKF^SKN^SMP^SOD^SOS^SPM^SRV^"[X S Y=$$UP(X) Q
 I "^RAS^SRV^STP^TAG^TAP^TCF^TCP^TDP^TEF^TEM^TFA^TGF^TMV^TNF^TNP^TPA^TPN^TRH^TRP^TSA^TSH^TTP^TTR^UDP^UMP^URO^USF^UTP^VII^VIP^VLA^VSG^VZV^WBC^WGA^WHO^XII^"[X S Y=$$UP(X) Q
 I "^MAA^MPP^NEC^NOS^ZTA^CPD^R/O^MDA^3MC^ACP^SFN^URR^SNF^SLC^ISC^III^ATP^CMP^AAF^APV^LSD^PCP^HTP^RNA^DNA^ISC^NLM^IMP^"[X S Y=$$UP(X) Q
 I "^ONE^TWO^SIX^TEN^AND^ANY^BIS^BUT^CIS^DES^DUE^FOR^LPM^NON^NOT^OXO^PER^PRE^PRO^PSI^THE^USE^"[X S Y=$$LO(X) Q
 Q
4 ; 4 Characters
 S:X="APOA" Y="ApoA" S:X="BBVI" Y="BbvI" S:X="BPTH" Y="bPTH" S:X="BSUE" Y="BsuE" S:X="CAMP" Y="cAMP" S:X="CGMP" Y="cGMP" S:X="COTE" Y="CotE" S:X="DATP" Y="dATP" Q:$L($G(Y))
 S:X="DCMP" Y="dCMP" S:X="DCTP" Y="dCTP" S:X="DGMP" Y="dGMP" S:X="DGTP" Y="dGTP" S:X="DSBA" Y="dsbA" S:X="DTDP" Y="dTDP" S:X="DTTP" Y="dTTP" S:X="DUMP" Y="dUMP" Q:$L($G(Y))
 S:X="DURD" Y="dUrd" S:X="DUTP" Y="dUTP" S:X="ECAI" Y="EcaI" S:X="ECOK" Y="EcoK" S:X="ERBB" Y="erbB" S:X="FELV" Y="FeLV" S:X="FMET" Y="fMet" S:X="GNRH" Y="GnRH" Q:$L($G(Y))
 S:X="GPII" Y="gpII" S:X="HARG" Y="hArg" S:X="HELA" Y="HeLa" S:X="HGRF" Y="hGRF" S:X="HHAI" Y="HhaI" S:X="HPAI" Y="HpaI" S:X="HPTH" Y="hPTH" S:X="IIIA" Y="IIIa" Q:$L($G(Y))
 S:X="KPNI" Y="KpnI" S:X="MCRB" Y="McrB" S:X="MESH" Y="MeSH" S:X="MRNA" Y="mRNA" S:X="NHET" Y="NHEt" S:X="NHME" Y="NHMe" S:X="OBZL" Y="OBzl" S:X="OTBU" Y="OtBu" Q:$L($G(Y))
 S:X="PGLU" Y="pGlu" S:X="PSTI" Y="PstI" S:X="REGA" Y="regA" S:X="RRNA" Y="rRNA" S:X="SCEI" Y="SceI" S:X="TAQI" Y="TaqI" S:X="TRFA" Y="TrfA" S:X="TRKA" Y="trkA" Q:$L($G(Y))
 S:X="TRKB" Y="trkB" S:X="TRNA" Y="tRNA" Q:$L($G(Y))
 I "^BATH^CITH^CITY^EAST^ERIE^FORT^HOME^IOWA^IRON^JUAN^JULY^JUNE^LAKE^LOMA^LONG^LYON^PALM^PALO^PARK^RENO^ROCK^SALT^SIDE^WACO^WEST^YORK^"[X S Y=$$MX(X) Q
 I "^BADR^BDEM^BMIC^EADT^MAGI^MEDA^MEDB^MEDC^MEDF^MHPE^RXIV^RXOP^"[X S Y=$$UP(X) Q
 I "^RXUD^SCL1^SCL2^HISA^HPSA^CRNA^HCFA^"[X S Y=$$UP(X) Q
 ;I "^^"[X S Y=$$UP(X) Q
 I "^A1B5^A1BG^A4A7^A4A8^A6K7^ABSV^ACKQ^DENT^DGHI^DGPW^DGY1^DGY3^DGYA^DGYB^DGYC^DGYD^DGYF^DGYG^DGYJ^DGYK^DGYL^DGYN^DGYO^DGYP^DGYQ^DGYR^DGYS^"[X S Y=$$UP(X) Q
 I "^DGYU^DGYV^DGYW^DGYX^DGYZ^DIPK^DVBA^DVBC^DVBQ^DVBT^DVBU^DVBW^DVBX^DVBY^EEOA^EEOP^ENXE^ENXF^ENXG^ENXI^"[X S Y=$$UP(X) Q
 I "^ENXJ^ENXK^FBAA^GECD^GECP^GECS^GMAA^GMD1^GMN1^GMN2^GMN3^GMN4^GMN5^GMPL^GMPT^GMRA^GMRC^GMRD^GMRE^GMRG"[X S Y=$$UP(X) Q
 I "^GMRP^GMRQ^GMRR^GMRS^GMRV^GMRY^GMTS^HBHC^IBDE^IBDP^IBQL^IBQY^IBY3^IBY4^IBY5^IBY6^IBY7^IBY8^IBY9^IBYA^"[X S Y=$$UP(X) Q
 I "^IBYB^IBYC^IBYD^IBYE^IBYF^IBYG^IBYH^IBYK^IBYL^IBYN^ICPT^LBRN^LBRT^LBRY^LR00^LR01^LR03^LRAR^LRLS^MCXX^"[X S Y=$$UP(X) Q
 I "^NURA^NURC^NURE^NURQ^NURX^ONCO^PRCA^PRCP^PRMQ^PRPF^PRSX^PRX0^PRX1^PRX8^PRXB^PRXC^PRXE^PRXF^PRXG^PRXI^PRXJ^"[X S Y=$$UP(X) Q
 I "^PRXK^PRXP^PRYA^PRYB^PRYC^PRYD^PRYF^PRYH^PRYJ^PRYL^PRYN^PRYP^PSA1^PSD1^PSGW^PSIV^PSJ1^PSJ4^PSOA^PSOB^PSOC^PSOD^PSOE^PSOG^PSOH^PSOJ^PSOL^"[X S Y=$$UP(X) Q
 I "^PSOY^PSW1^PSXC^QAN1^QAR1^QAR2^QARF^QARY^RAAA^RAAB^RAAC^RAAE^RAAF^RMPC^RMPF^RMPJ^RMPR^RMPT^RTYB^RTYC^RTYD^SDYA^SDYM^SDYN^SDYP^"[X S Y=$$UP(X) Q
 I "^SOWA^SOWC^SOWK^SROA^SRRS^SRRT^TIUJ^TIUW^TIUX^VALM^VEEM^VSIT^XQOR^XUFI^YS01^"[X S Y=$$UP(X) Q
 I "^AIDS^ANCA^ARPP^ATLV^BPDE^BUSI^CENP^CGRP^COOH^CPAP^CPEP^DHEA^DMBA^DSIP^DTPA^EBNA^EDTA^ERCC^ERCP^ESRD^FANA^FITC^FKBP^GABA^GATA^GHRH^GLUT^GYKI^HCMV^HIDA^HMSN^HSAN^HTLV^IDDM^INTP^IPPB^KAFO^LATS^LHRH^MAGE^MLVP^MPTP^"[X S Y=$$UP(X) Q
 I "^ANIT^CAMP^DOPS^MPTP^HETE^OERR^GMPT^GMPL^MTLU^UMLS^BPDE^DMBA^PABA^"[X S Y=$$UP(X) Q
 I "^MPTP^NADH^NADP^NAPS^NETT^NGFI^NRDC^NSCL^PAPS^POMC^PSAP^RTEM^SACH^SGOT^SNAP^SRIF^SRIH^TAPA^TATA^TCDD^TENS^TIMP^TLSO^UDPG^VIII^VLDL^WHFO^XIII^"[X S Y=$$UP(X) Q
 I "^USED^EACH^DTMN,FOUR^FIVE^NINE^HOUR^INTO^LESS^LIKE^MORE^ONLY^OPEN^OVER^PART^SITE^THAN^TYPE^WITH^"[X S Y=$$LO(X) Q
 I "^BEST^IT'S^LATE^SITE^FROM^SOME^WITH^UPON^THEY^THEN^INTO^MORE^THAN^THAT^THIS^THUS^HAVE^BEEN^NOTE^DONE^MUST^MERE^SURE^KIND^WHEN^WHAT^"[X S Y=$$LO(X) Q
 I "^LOST^LIKE^OURS^ALSO^EACH^ONLY^HERE^SUCH^SEEN^SAME^LESS^AREA^MANY^EVEN^LEFT^MOST^"[X S Y=$$LO(X) Q
 Q
 ;          
LO(X) Q $TR(X,"ABCDEFGHIJKLMNOPQRSTUVWXYZ","abcdefghijklmnopqrstuvwxyz")
UP(X) Q $TR(X,"abcdefghijklmnopqrstuvwxyz","ABCDEFGHIJKLMNOPQRSTUVWXYZ")
MX(X) Q $TR($E(X,1),"abcdefghijklmnopqrstuvwxyz","ABCDEFGHIJKLMNOPQRSTUVWXYZ")_$TR($E(X,2,$L(X)),"ABCDEFGHIJKLMNOPQRSTUVWXYZ","abcdefghijklmnopqrstuvwxyz")

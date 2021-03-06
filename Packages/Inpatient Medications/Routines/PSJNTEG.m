PSJNTEG ;ISC/XTSUMBLD KERNEL - Package checksum checker ;2971216.152955
 ;;0.0;
 ;;7.3;2971216.152955
 S XT4="I 1",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
CONT F XT1=1:1 S XT2=$T(ROU+XT1) Q:XT2=""  S X=$P(XT2," ",1),XT3=$P(XT2,";",3) X XT4 I $T W !,X X ^%ZOSF("TEST") S:'$T XT3=0 X:XT3 ^%ZOSF("RSUM") W ?10,$S('XT3:"Routine not in UCI",XT3'=Y:"Calculated "_$C(7)_Y_", off by "_(Y-XT3),1:"ok")
 G CONT^PSJNTEG0
 K %1,%2,%3,X,Y,XT1,XT2,XT3,XT4 Q
ONE S XT4="I $D(^UTILITY($J,X))",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
 W !,"Check a subset of routines:" K ^UTILITY($J) X ^%ZOSF("RSEL")
 W ! G CONT
ROU ;;
PSGAL5 ;;5441715
PSGAMS ;;10549502
PSGAMS0 ;;4344378
PSGAMSA ;;14801593
PSGAP ;;4559319
PSGAP0 ;;16505444
PSGAPH ;;6145898
PSGAPIV ;;3389953
PSGAPP ;;15835658
PSGAXR ;;5177686
PSGBRJ ;;9623144
PSGCAP ;;17489925
PSGCAP0 ;;10614134
PSGCAPIV ;;4278138
PSGCAPP ;;9869420
PSGCAPP0 ;;8107032
PSGCT ;;1115903
PSGDCC ;;15581084
PSGDCCM ;;2683467
PSGDCR0 ;;8457985
PSGDCT ;;14158481
PSGDCT1 ;;12490651
PSGDCTP ;;10089690
PSGDL ;;5483697
PSGDS ;;9579866
PSGDS0 ;;16727020
PSGDSP ;;18990871
PSGDSP0 ;;10630520
PSGDSP1 ;;14595476
PSGDSPN ;;1638530
PSGEUD ;;17336835
PSGEUDD ;;6739300
PSGEUDP ;;9687269
PSGFILD0 ;;17335163
PSGFILD1 ;;7990496
PSGFILD2 ;;7016689
PSGFILD3 ;;17423076
PSGFILED ;;16058941
PSGGAO ;;3063407
PSGIU ;;7949412
PSGL ;;14712907
PSGL0 ;;19187109
PSGLBA ;;8090709
PSGLH ;;3878428
PSGLOI ;;16236725
PSGLPI ;;8004914
PSGLW ;;3035966
PSGMAR ;;20496280
PSGMAR0 ;;11114308
PSGMAR1 ;;5353727
PSGMAR2 ;;6844638
PSGMAR3 ;;9629120
PSGMI ;;4459432
PSGMIV ;;11254029
PSGMMAR ;;10224180
PSGMMAR0 ;;14132728
PSGMMAR1 ;;11878013
PSGMMAR2 ;;14235109
PSGMMAR3 ;;3590276
PSGMMAR4 ;;6026439
PSGMMAR5 ;;1681370
PSGMMARH ;;12079638
PSGMMIV ;;7749701
PSGMMIVC ;;9786381
PSGMUTL ;;5913174
PSGNE3 ;;9394484
PSGO ;;12018164
PSGOD ;;11807794
PSGOE ;;15327106
PSGOE0 ;;9193131
PSGOE1 ;;10594208
PSGOE2 ;;4879241
PSGOE3 ;;11951889
PSGOE31 ;;10243258
PSGOE4 ;;13490764
PSGOE41 ;;8440726
PSGOE42 ;;6382038
PSGOE5 ;;7735156
PSGOE6 ;;9943306
PSGOE7 ;;10161162
PSGOE8 ;;15618643
PSGOE81 ;;10028730
PSGOE82 ;;8607048
PSGOE9 ;;11804717
PSGOE91 ;;9890263
PSGOE92 ;;7143515
PSGOEC ;;15996336
PSGOECA ;;991050
PSGOECS ;;9031224
PSGOEE ;;17491629
PSGOEE0 ;;15138328
PSGOEEW ;;21844297
PSGOEF ;;13928521
PSGOEF1 ;;12680599
PSGOEH0 ;;8383765
PSGOEH1 ;;6724834
PSGOEHA ;;7007783
PSGOEI ;;3890619
PSGOEL ;;11267940
PSGOEM ;;19080178
PSGOEM1 ;;1940971
PSGOENG ;;4761090
PSGOEPO ;;15018055
PSGOER ;;13469511
PSGOER0 ;;13260485
PSGOER1 ;;3148238
PSGOERI ;;8898891
PSGOERS ;;18950616
PSGOES ;;11817894
PSGOESF ;;12518909
PSGOETO ;;16306689
PSGOETO1 ;;786017
PSGOEV ;;15864210
PSGOEVS ;;3588216
PSGON ;;19424974
PSGORS0 ;;7336776
PSGORVW ;;3907762
PSGOT ;;8547772
PSGOU ;;15325899
PSGP ;;9585275
PSGPEN ;;23532440
PSGPER ;;5408903
PSGPER0 ;;15726318
PSGPL ;;13097481
PSGPL0 ;;8430342
PSGPL1 ;;12319794
PSGPLD ;;12099262
PSGPLDP ;;10718642
PSGPLDP0 ;;18184874
PSGPLDPH ;;5015172
PSGPLF ;;14706289
PSGPLFM ;;8373997
PSGPLG ;;6885757
PSGPLPRG ;;11179828
PSGPLR ;;19302586
PSGPLR0 ;;15517159
PSGPLRP ;;12596914
PSGPLUP ;;16498991
PSGPLUP0 ;;11294576
PSGPLUTL ;;3186752
PSGPLXR ;;6638397
PSGPO ;;20554722
PSGPOR ;;4200448
PSGPR ;;17577726
PSGPRVR ;;12528305
PSGPRVR0 ;;7870922
PSGRET ;;9621475
PSGRPNT ;;581186
PSGS0 ;;8767968
PSGSCT ;;3903425
PSGSCT0 ;;5656609
PSGSEL ;;17761667
PSGSET ;;5107091
PSGSETU ;;6081391
PSGSH ;;5840841
PSGSICHK ;;17299903
PSGSSP ;;476867
PSGTAP ;;15795289
PSGTAP0 ;;8345851
PSGTAP1 ;;10767230

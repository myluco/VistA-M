IBDEI1XS ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,32420,0)
 ;;=F64.8^^143^1526^1
 ;;^UTILITY(U,$J,358.3,32420,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32420,1,3,0)
 ;;=3^Gender Dysphoria NEC
 ;;^UTILITY(U,$J,358.3,32420,1,4,0)
 ;;=4^F64.8
 ;;^UTILITY(U,$J,358.3,32420,2)
 ;;=^5003649
 ;;^UTILITY(U,$J,358.3,32421,0)
 ;;=F64.9^^143^1526^3
 ;;^UTILITY(U,$J,358.3,32421,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32421,1,3,0)
 ;;=3^Gender Dysphoria,Unspec
 ;;^UTILITY(U,$J,358.3,32421,1,4,0)
 ;;=4^F64.9
 ;;^UTILITY(U,$J,358.3,32421,2)
 ;;=^5003650
 ;;^UTILITY(U,$J,358.3,32422,0)
 ;;=Z59.2^^143^1527^1
 ;;^UTILITY(U,$J,358.3,32422,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32422,1,3,0)
 ;;=3^Discord w/ Neighbors,Lodgers or Landlord
 ;;^UTILITY(U,$J,358.3,32422,1,4,0)
 ;;=4^Z59.2
 ;;^UTILITY(U,$J,358.3,32422,2)
 ;;=^5063131
 ;;^UTILITY(U,$J,358.3,32423,0)
 ;;=Z59.0^^143^1527^3
 ;;^UTILITY(U,$J,358.3,32423,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32423,1,3,0)
 ;;=3^Homelessness
 ;;^UTILITY(U,$J,358.3,32423,1,4,0)
 ;;=4^Z59.0
 ;;^UTILITY(U,$J,358.3,32423,2)
 ;;=^5063129
 ;;^UTILITY(U,$J,358.3,32424,0)
 ;;=Z59.1^^143^1527^5
 ;;^UTILITY(U,$J,358.3,32424,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32424,1,3,0)
 ;;=3^Inadequate Housing
 ;;^UTILITY(U,$J,358.3,32424,1,4,0)
 ;;=4^Z59.1
 ;;^UTILITY(U,$J,358.3,32424,2)
 ;;=^5063130
 ;;^UTILITY(U,$J,358.3,32425,0)
 ;;=Z59.3^^143^1527^9
 ;;^UTILITY(U,$J,358.3,32425,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32425,1,3,0)
 ;;=3^Problems Related to Living in Residential Institution
 ;;^UTILITY(U,$J,358.3,32425,1,4,0)
 ;;=4^Z59.3
 ;;^UTILITY(U,$J,358.3,32425,2)
 ;;=^5063132
 ;;^UTILITY(U,$J,358.3,32426,0)
 ;;=Z59.4^^143^1527^7
 ;;^UTILITY(U,$J,358.3,32426,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32426,1,3,0)
 ;;=3^Lack of Adequate Food or Safe Drinking Water
 ;;^UTILITY(U,$J,358.3,32426,1,4,0)
 ;;=4^Z59.4
 ;;^UTILITY(U,$J,358.3,32426,2)
 ;;=^5063133
 ;;^UTILITY(U,$J,358.3,32427,0)
 ;;=Z59.5^^143^1527^2
 ;;^UTILITY(U,$J,358.3,32427,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32427,1,3,0)
 ;;=3^Extreme Poverty
 ;;^UTILITY(U,$J,358.3,32427,1,4,0)
 ;;=4^Z59.5
 ;;^UTILITY(U,$J,358.3,32427,2)
 ;;=^5063134
 ;;^UTILITY(U,$J,358.3,32428,0)
 ;;=Z59.6^^143^1527^8
 ;;^UTILITY(U,$J,358.3,32428,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32428,1,3,0)
 ;;=3^Low Income
 ;;^UTILITY(U,$J,358.3,32428,1,4,0)
 ;;=4^Z59.6
 ;;^UTILITY(U,$J,358.3,32428,2)
 ;;=^5063135
 ;;^UTILITY(U,$J,358.3,32429,0)
 ;;=Z59.7^^143^1527^6
 ;;^UTILITY(U,$J,358.3,32429,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32429,1,3,0)
 ;;=3^Insufficient Social Insurance/Welfare Support
 ;;^UTILITY(U,$J,358.3,32429,1,4,0)
 ;;=4^Z59.7
 ;;^UTILITY(U,$J,358.3,32429,2)
 ;;=^5063136
 ;;^UTILITY(U,$J,358.3,32430,0)
 ;;=Z59.9^^143^1527^4
 ;;^UTILITY(U,$J,358.3,32430,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32430,1,3,0)
 ;;=3^Housing/Economic Problems,Unspec
 ;;^UTILITY(U,$J,358.3,32430,1,4,0)
 ;;=4^Z59.9
 ;;^UTILITY(U,$J,358.3,32430,2)
 ;;=^5063138
 ;;^UTILITY(U,$J,358.3,32431,0)
 ;;=G21.19^^143^1528^3
 ;;^UTILITY(U,$J,358.3,32431,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32431,1,3,0)
 ;;=3^Medication-Induced Parkinsonism NEC
 ;;^UTILITY(U,$J,358.3,32431,1,4,0)
 ;;=4^G21.19
 ;;^UTILITY(U,$J,358.3,32431,2)
 ;;=^5003773
 ;;^UTILITY(U,$J,358.3,32432,0)
 ;;=G21.11^^143^1528^5
 ;;^UTILITY(U,$J,358.3,32432,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,32432,1,3,0)
 ;;=3^Neuroleptic-Induced Parkinsonism
 ;;^UTILITY(U,$J,358.3,32432,1,4,0)
 ;;=4^G21.11
 ;;^UTILITY(U,$J,358.3,32432,2)
 ;;=^5003772
 ;;^UTILITY(U,$J,358.3,32433,0)
 ;;=G24.02^^143^1528^1
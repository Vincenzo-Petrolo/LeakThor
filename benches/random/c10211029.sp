.include ./FreePDK45/ncsu_basekit/models/hspice/hspice_nom.include
.include ./FreePDK45/osu_soc/lib/source/netlists/AND2X1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/NAND2X1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/OR2X1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/NOR2X1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/BUFX2.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/INVX1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/XOR2X1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/XNOR2X1.pex.netlist
.option TEMP=27c
Vpower Vdd 0 1.1
Vgnd Vss 0 0
Vin0 V0_ 0 dc pulse (0 1.1 2n 1n 1n 29n 32n)
XBUFIN0 V0 Vss Vdd V0_ BUFX2
Vin1 V1_ 0 dc pulse (0 1.1 4n 1n 1n 21n 30n)
XBUFIN1 V1 Vss Vdd V1_ BUFX2
Vin2 V2_ 0 dc pulse (0 1.1 3n 1n 1n 26n 37n)
XBUFIN2 V2 Vss Vdd V2_ BUFX2
Vin3 V3_ 0 dc pulse (0 1.1 6n 1n 1n 29n 51n)
XBUFIN3 V3 Vss Vdd V3_ BUFX2
Vin4 V4_ 0 dc pulse (0 1.1 8n 1n 1n 28n 37n)
XBUFIN4 V4 Vss Vdd V4_ BUFX2
Vin5 V5_ 0 dc pulse (0 1.1 2n 1n 1n 22n 33n)
XBUFIN5 V5 Vss Vdd V5_ BUFX2
Vin6 V6_ 0 dc pulse (0 1.1 7n 1n 1n 20n 33n)
XBUFIN6 V6 Vss Vdd V6_ BUFX2
Vin7 V7_ 0 dc pulse (0 1.1 8n 1n 1n 23n 46n)
XBUFIN7 V7 Vss Vdd V7_ BUFX2
Vin8 V8_ 0 dc pulse (0 1.1 1n 1n 1n 27n 43n)
XBUFIN8 V8 Vss Vdd V8_ BUFX2
Vin9 V9_ 0 dc pulse (0 1.1 1n 1n 1n 22n 26n)
XBUFIN9 V9 Vss Vdd V9_ BUFX2
Vin10 V10_ 0 dc pulse (0 1.1 10n 1n 1n 20n 35n)
XBUFIN10 V10 Vss Vdd V10_ BUFX2
Vin11 V11_ 0 dc pulse (0 1.1 7n 1n 1n 28n 31n)
XBUFIN11 V11 Vss Vdd V11_ BUFX2
Vin12 V12_ 0 dc pulse (0 1.1 7n 1n 1n 29n 48n)
XBUFIN12 V12 Vss Vdd V12_ BUFX2
Vin13 V13_ 0 dc pulse (0 1.1 8n 1n 1n 24n 38n)
XBUFIN13 V13 Vss Vdd V13_ BUFX2
Vin14 V14_ 0 dc pulse (0 1.1 6n 1n 1n 24n 30n)
XBUFIN14 V14 Vss Vdd V14_ BUFX2
Vin15 V15_ 0 dc pulse (0 1.1 9n 1n 1n 23n 28n)
XBUFIN15 V15 Vss Vdd V15_ BUFX2
Vin16 V16_ 0 dc pulse (0 1.1 1n 1n 1n 21n 29n)
XBUFIN16 V16 Vss Vdd V16_ BUFX2
Vin17 V17_ 0 dc pulse (0 1.1 2n 1n 1n 23n 23n)
XBUFIN17 V17 Vss Vdd V17_ BUFX2
Vin18 V18_ 0 dc pulse (0 1.1 7n 1n 1n 23n 35n)
XBUFIN18 V18 Vss Vdd V18_ BUFX2
Vin19 V19_ 0 dc pulse (0 1.1 2n 1n 1n 29n 52n)
XBUFIN19 V19 Vss Vdd V19_ BUFX2
Vin20 V20_ 0 dc pulse (0 1.1 8n 1n 1n 27n 53n)
XBUFIN20 V20 Vss Vdd V20_ BUFX2
Vin21 V21_ 0 dc pulse (0 1.1 3n 1n 1n 25n 34n)
XBUFIN21 V21 Vss Vdd V21_ BUFX2
Vin22 V22_ 0 dc pulse (0 1.1 10n 1n 1n 22n 31n)
XBUFIN22 V22 Vss Vdd V22_ BUFX2
Vin23 V23_ 0 dc pulse (0 1.1 5n 1n 1n 23n 32n)
XBUFIN23 V23 Vss Vdd V23_ BUFX2
Vin24 V24_ 0 dc pulse (0 1.1 8n 1n 1n 22n 42n)
XBUFIN24 V24 Vss Vdd V24_ BUFX2
Vin25 V25_ 0 dc pulse (0 1.1 3n 1n 1n 21n 39n)
XBUFIN25 V25 Vss Vdd V25_ BUFX2
Vin26 V26_ 0 dc pulse (0 1.1 8n 1n 1n 30n 58n)
XBUFIN26 V26 Vss Vdd V26_ BUFX2
Vin27 V27_ 0 dc pulse (0 1.1 6n 1n 1n 25n 36n)
XBUFIN27 V27 Vss Vdd V27_ BUFX2
Vin28 V28_ 0 dc pulse (0 1.1 2n 1n 1n 24n 38n)
XBUFIN28 V28 Vss Vdd V28_ BUFX2
Vin29 V29_ 0 dc pulse (0 1.1 3n 1n 1n 27n 33n)
XBUFIN29 V29 Vss Vdd V29_ BUFX2
Vin30 V30_ 0 dc pulse (0 1.1 4n 1n 1n 29n 56n)
XBUFIN30 V30 Vss Vdd V30_ BUFX2
Vin31 V31_ 0 dc pulse (0 1.1 2n 1n 1n 30n 50n)
XBUFIN31 V31 Vss Vdd V31_ BUFX2
Vin32 V32_ 0 dc pulse (0 1.1 7n 1n 1n 22n 42n)
XBUFIN32 V32 Vss Vdd V32_ BUFX2
Vin33 V33_ 0 dc pulse (0 1.1 5n 1n 1n 24n 30n)
XBUFIN33 V33 Vss Vdd V33_ BUFX2
Vin34 V34_ 0 dc pulse (0 1.1 9n 1n 1n 21n 35n)
XBUFIN34 V34 Vss Vdd V34_ BUFX2
Vin35 V35_ 0 dc pulse (0 1.1 8n 1n 1n 22n 34n)
XBUFIN35 V35 Vss Vdd V35_ BUFX2
Vin36 V36_ 0 dc pulse (0 1.1 5n 1n 1n 21n 26n)
XBUFIN36 V36 Vss Vdd V36_ BUFX2
Vin37 V37_ 0 dc pulse (0 1.1 7n 1n 1n 27n 36n)
XBUFIN37 V37 Vss Vdd V37_ BUFX2
Vin38 V38_ 0 dc pulse (0 1.1 5n 1n 1n 24n 27n)
XBUFIN38 V38 Vss Vdd V38_ BUFX2
Vin39 V39_ 0 dc pulse (0 1.1 5n 1n 1n 20n 37n)
XBUFIN39 V39 Vss Vdd V39_ BUFX2
Vin40 V40_ 0 dc pulse (0 1.1 10n 1n 1n 24n 33n)
XBUFIN40 V40 Vss Vdd V40_ BUFX2
Vin41 V41_ 0 dc pulse (0 1.1 9n 1n 1n 23n 33n)
XBUFIN41 V41 Vss Vdd V41_ BUFX2
Vin42 V42_ 0 dc pulse (0 1.1 5n 1n 1n 25n 50n)
XBUFIN42 V42 Vss Vdd V42_ BUFX2
Vin43 V43_ 0 dc pulse (0 1.1 7n 1n 1n 25n 40n)
XBUFIN43 V43 Vss Vdd V43_ BUFX2
Vin44 V44_ 0 dc pulse (0 1.1 6n 1n 1n 27n 31n)
XBUFIN44 V44 Vss Vdd V44_ BUFX2
Vin45 V45_ 0 dc pulse (0 1.1 3n 1n 1n 21n 37n)
XBUFIN45 V45 Vss Vdd V45_ BUFX2
Vin46 V46_ 0 dc pulse (0 1.1 9n 1n 1n 27n 34n)
XBUFIN46 V46 Vss Vdd V46_ BUFX2
Vin47 V47_ 0 dc pulse (0 1.1 7n 1n 1n 20n 35n)
XBUFIN47 V47 Vss Vdd V47_ BUFX2
Vin48 V48_ 0 dc pulse (0 1.1 10n 1n 1n 24n 41n)
XBUFIN48 V48 Vss Vdd V48_ BUFX2
Vin49 V49_ 0 dc pulse (0 1.1 10n 1n 1n 28n 56n)
XBUFIN49 V49 Vss Vdd V49_ BUFX2
Vin50 V50_ 0 dc pulse (0 1.1 6n 1n 1n 24n 39n)
XBUFIN50 V50 Vss Vdd V50_ BUFX2
Vin51 V51_ 0 dc pulse (0 1.1 1n 1n 1n 24n 43n)
XBUFIN51 V51 Vss Vdd V51_ BUFX2
Vin52 V52_ 0 dc pulse (0 1.1 2n 1n 1n 30n 53n)
XBUFIN52 V52 Vss Vdd V52_ BUFX2
Vin53 V53_ 0 dc pulse (0 1.1 3n 1n 1n 22n 24n)
XBUFIN53 V53 Vss Vdd V53_ BUFX2
Vin54 V54_ 0 dc pulse (0 1.1 3n 1n 1n 29n 52n)
XBUFIN54 V54 Vss Vdd V54_ BUFX2
Vin55 V55_ 0 dc pulse (0 1.1 5n 1n 1n 21n 24n)
XBUFIN55 V55 Vss Vdd V55_ BUFX2
Vin56 V56_ 0 dc pulse (0 1.1 2n 1n 1n 26n 40n)
XBUFIN56 V56 Vss Vdd V56_ BUFX2
Vin57 V57_ 0 dc pulse (0 1.1 6n 1n 1n 24n 29n)
XBUFIN57 V57 Vss Vdd V57_ BUFX2
Vin58 V58_ 0 dc pulse (0 1.1 2n 1n 1n 21n 26n)
XBUFIN58 V58 Vss Vdd V58_ BUFX2
Vin59 V59_ 0 dc pulse (0 1.1 7n 1n 1n 28n 33n)
XBUFIN59 V59 Vss Vdd V59_ BUFX2
Vin60 V60_ 0 dc pulse (0 1.1 6n 1n 1n 30n 55n)
XBUFIN60 V60 Vss Vdd V60_ BUFX2
Vin61 V61_ 0 dc pulse (0 1.1 3n 1n 1n 22n 40n)
XBUFIN61 V61 Vss Vdd V61_ BUFX2
Vin62 V62_ 0 dc pulse (0 1.1 3n 1n 1n 26n 33n)
XBUFIN62 V62 Vss Vdd V62_ BUFX2
Vin63 V63_ 0 dc pulse (0 1.1 9n 1n 1n 28n 51n)
XBUFIN63 V63 Vss Vdd V63_ BUFX2
Vin64 V64_ 0 dc pulse (0 1.1 4n 1n 1n 25n 37n)
XBUFIN64 V64 Vss Vdd V64_ BUFX2
Vin65 V65_ 0 dc pulse (0 1.1 3n 1n 1n 27n 31n)
XBUFIN65 V65 Vss Vdd V65_ BUFX2
Vin66 V66_ 0 dc pulse (0 1.1 10n 1n 1n 22n 26n)
XBUFIN66 V66 Vss Vdd V66_ BUFX2
Vin67 V67_ 0 dc pulse (0 1.1 8n 1n 1n 27n 42n)
XBUFIN67 V67 Vss Vdd V67_ BUFX2
Vin68 V68_ 0 dc pulse (0 1.1 4n 1n 1n 26n 27n)
XBUFIN68 V68 Vss Vdd V68_ BUFX2
Vin69 V69_ 0 dc pulse (0 1.1 1n 1n 1n 29n 55n)
XBUFIN69 V69 Vss Vdd V69_ BUFX2
Vin70 V70_ 0 dc pulse (0 1.1 10n 1n 1n 26n 33n)
XBUFIN70 V70 Vss Vdd V70_ BUFX2
Vin71 V71_ 0 dc pulse (0 1.1 9n 1n 1n 30n 49n)
XBUFIN71 V71 Vss Vdd V71_ BUFX2
Vin72 V72_ 0 dc pulse (0 1.1 9n 1n 1n 30n 55n)
XBUFIN72 V72 Vss Vdd V72_ BUFX2
Vin73 V73_ 0 dc pulse (0 1.1 6n 1n 1n 24n 32n)
XBUFIN73 V73 Vss Vdd V73_ BUFX2
Vin74 V74_ 0 dc pulse (0 1.1 4n 1n 1n 22n 31n)
XBUFIN74 V74 Vss Vdd V74_ BUFX2
Vin75 V75_ 0 dc pulse (0 1.1 6n 1n 1n 28n 43n)
XBUFIN75 V75 Vss Vdd V75_ BUFX2
Vin76 V76_ 0 dc pulse (0 1.1 7n 1n 1n 28n 43n)
XBUFIN76 V76 Vss Vdd V76_ BUFX2
Vin77 V77_ 0 dc pulse (0 1.1 3n 1n 1n 28n 42n)
XBUFIN77 V77 Vss Vdd V77_ BUFX2
Vin78 V78_ 0 dc pulse (0 1.1 3n 1n 1n 27n 45n)
XBUFIN78 V78 Vss Vdd V78_ BUFX2
Vin79 V79_ 0 dc pulse (0 1.1 9n 1n 1n 27n 46n)
XBUFIN79 V79 Vss Vdd V79_ BUFX2
Vin80 V80_ 0 dc pulse (0 1.1 9n 1n 1n 24n 32n)
XBUFIN80 V80 Vss Vdd V80_ BUFX2
Vin81 V81_ 0 dc pulse (0 1.1 3n 1n 1n 22n 43n)
XBUFIN81 V81 Vss Vdd V81_ BUFX2
Vin82 V82_ 0 dc pulse (0 1.1 9n 1n 1n 30n 42n)
XBUFIN82 V82 Vss Vdd V82_ BUFX2
Vin83 V83_ 0 dc pulse (0 1.1 10n 1n 1n 24n 31n)
XBUFIN83 V83 Vss Vdd V83_ BUFX2
Vin84 V84_ 0 dc pulse (0 1.1 7n 1n 1n 27n 37n)
XBUFIN84 V84 Vss Vdd V84_ BUFX2
Vin85 V85_ 0 dc pulse (0 1.1 8n 1n 1n 26n 50n)
XBUFIN85 V85 Vss Vdd V85_ BUFX2
Vin86 V86_ 0 dc pulse (0 1.1 6n 1n 1n 23n 29n)
XBUFIN86 V86 Vss Vdd V86_ BUFX2
Vin87 V87_ 0 dc pulse (0 1.1 3n 1n 1n 20n 40n)
XBUFIN87 V87 Vss Vdd V87_ BUFX2
Vin88 V88_ 0 dc pulse (0 1.1 8n 1n 1n 27n 38n)
XBUFIN88 V88 Vss Vdd V88_ BUFX2
Vin89 V89_ 0 dc pulse (0 1.1 3n 1n 1n 24n 40n)
XBUFIN89 V89 Vss Vdd V89_ BUFX2
Vin90 V90_ 0 dc pulse (0 1.1 1n 1n 1n 20n 30n)
XBUFIN90 V90 Vss Vdd V90_ BUFX2
Vin91 V91_ 0 dc pulse (0 1.1 6n 1n 1n 25n 38n)
XBUFIN91 V91 Vss Vdd V91_ BUFX2
Vin92 V92_ 0 dc pulse (0 1.1 2n 1n 1n 27n 28n)
XBUFIN92 V92 Vss Vdd V92_ BUFX2
Vin93 V93_ 0 dc pulse (0 1.1 10n 1n 1n 20n 36n)
XBUFIN93 V93 Vss Vdd V93_ BUFX2
Vin94 V94_ 0 dc pulse (0 1.1 4n 1n 1n 28n 43n)
XBUFIN94 V94 Vss Vdd V94_ BUFX2
Vin95 V95_ 0 dc pulse (0 1.1 1n 1n 1n 21n 31n)
XBUFIN95 V95 Vss Vdd V95_ BUFX2
Vin96 V96_ 0 dc pulse (0 1.1 8n 1n 1n 28n 42n)
XBUFIN96 V96 Vss Vdd V96_ BUFX2
Vin97 V97_ 0 dc pulse (0 1.1 7n 1n 1n 25n 46n)
XBUFIN97 V97 Vss Vdd V97_ BUFX2
Vin98 V98_ 0 dc pulse (0 1.1 8n 1n 1n 20n 23n)
XBUFIN98 V98 Vss Vdd V98_ BUFX2
Vin99 V99_ 0 dc pulse (0 1.1 1n 1n 1n 20n 37n)
XBUFIN99 V99 Vss Vdd V99_ BUFX2
Vin100 V100_ 0 dc pulse (0 1.1 7n 1n 1n 26n 50n)
XBUFIN100 V100 Vss Vdd V100_ BUFX2
Vin101 V101_ 0 dc pulse (0 1.1 5n 1n 1n 26n 42n)
XBUFIN101 V101 Vss Vdd V101_ BUFX2
Vin102 V102_ 0 dc pulse (0 1.1 1n 1n 1n 23n 34n)
XBUFIN102 V102 Vss Vdd V102_ BUFX2
Vin103 V103_ 0 dc pulse (0 1.1 7n 1n 1n 24n 48n)
XBUFIN103 V103 Vss Vdd V103_ BUFX2
Vin104 V104_ 0 dc pulse (0 1.1 10n 1n 1n 25n 26n)
XBUFIN104 V104 Vss Vdd V104_ BUFX2
Vin105 V105_ 0 dc pulse (0 1.1 2n 1n 1n 21n 27n)
XBUFIN105 V105 Vss Vdd V105_ BUFX2
Vin106 V106_ 0 dc pulse (0 1.1 4n 1n 1n 29n 38n)
XBUFIN106 V106 Vss Vdd V106_ BUFX2
Vin107 V107_ 0 dc pulse (0 1.1 10n 1n 1n 22n 25n)
XBUFIN107 V107 Vss Vdd V107_ BUFX2
Vin108 V108_ 0 dc pulse (0 1.1 8n 1n 1n 21n 25n)
XBUFIN108 V108 Vss Vdd V108_ BUFX2
Vin109 V109_ 0 dc pulse (0 1.1 4n 1n 1n 25n 48n)
XBUFIN109 V109 Vss Vdd V109_ BUFX2
Vin110 V110_ 0 dc pulse (0 1.1 2n 1n 1n 27n 40n)
XBUFIN110 V110 Vss Vdd V110_ BUFX2
Vin111 V111_ 0 dc pulse (0 1.1 2n 1n 1n 22n 25n)
XBUFIN111 V111 Vss Vdd V111_ BUFX2
Vin112 V112_ 0 dc pulse (0 1.1 4n 1n 1n 22n 39n)
XBUFIN112 V112 Vss Vdd V112_ BUFX2
Vin113 V113_ 0 dc pulse (0 1.1 3n 1n 1n 24n 39n)
XBUFIN113 V113 Vss Vdd V113_ BUFX2
Vin114 V114_ 0 dc pulse (0 1.1 3n 1n 1n 25n 35n)
XBUFIN114 V114 Vss Vdd V114_ BUFX2
Vin115 V115_ 0 dc pulse (0 1.1 10n 1n 1n 26n 49n)
XBUFIN115 V115 Vss Vdd V115_ BUFX2
Vin116 V116_ 0 dc pulse (0 1.1 6n 1n 1n 30n 51n)
XBUFIN116 V116 Vss Vdd V116_ BUFX2
Vin117 V117_ 0 dc pulse (0 1.1 1n 1n 1n 27n 33n)
XBUFIN117 V117 Vss Vdd V117_ BUFX2
Vin118 V118_ 0 dc pulse (0 1.1 9n 1n 1n 25n 25n)
XBUFIN118 V118 Vss Vdd V118_ BUFX2
Vin119 V119_ 0 dc pulse (0 1.1 1n 1n 1n 30n 48n)
XBUFIN119 V119 Vss Vdd V119_ BUFX2
Vin120 V120_ 0 dc pulse (0 1.1 9n 1n 1n 21n 31n)
XBUFIN120 V120 Vss Vdd V120_ BUFX2
Vin121 V121_ 0 dc pulse (0 1.1 9n 1n 1n 25n 42n)
XBUFIN121 V121 Vss Vdd V121_ BUFX2
Vin122 V122_ 0 dc pulse (0 1.1 9n 1n 1n 22n 25n)
XBUFIN122 V122 Vss Vdd V122_ BUFX2
Vin123 V123_ 0 dc pulse (0 1.1 8n 1n 1n 30n 33n)
XBUFIN123 V123 Vss Vdd V123_ BUFX2
Vin124 V124_ 0 dc pulse (0 1.1 5n 1n 1n 21n 40n)
XBUFIN124 V124 Vss Vdd V124_ BUFX2
Vin125 V125_ 0 dc pulse (0 1.1 3n 1n 1n 28n 55n)
XBUFIN125 V125 Vss Vdd V125_ BUFX2
Vin126 V126_ 0 dc pulse (0 1.1 1n 1n 1n 27n 48n)
XBUFIN126 V126 Vss Vdd V126_ BUFX2
Vin127 V127_ 0 dc pulse (0 1.1 4n 1n 1n 22n 35n)
XBUFIN127 V127 Vss Vdd V127_ BUFX2
Vin128 V128_ 0 dc pulse (0 1.1 6n 1n 1n 21n 24n)
XBUFIN128 V128 Vss Vdd V128_ BUFX2
Vin129 V129_ 0 dc pulse (0 1.1 8n 1n 1n 28n 55n)
XBUFIN129 V129 Vss Vdd V129_ BUFX2
Vin130 V130_ 0 dc pulse (0 1.1 8n 1n 1n 27n 30n)
XBUFIN130 V130 Vss Vdd V130_ BUFX2
Vin131 V131_ 0 dc pulse (0 1.1 3n 1n 1n 20n 23n)
XBUFIN131 V131 Vss Vdd V131_ BUFX2
Vin132 V132_ 0 dc pulse (0 1.1 2n 1n 1n 23n 44n)
XBUFIN132 V132 Vss Vdd V132_ BUFX2
Vin133 V133_ 0 dc pulse (0 1.1 4n 1n 1n 20n 40n)
XBUFIN133 V133 Vss Vdd V133_ BUFX2
Vin134 V134_ 0 dc pulse (0 1.1 4n 1n 1n 24n 31n)
XBUFIN134 V134 Vss Vdd V134_ BUFX2
Vin135 V135_ 0 dc pulse (0 1.1 4n 1n 1n 27n 43n)
XBUFIN135 V135 Vss Vdd V135_ BUFX2
Vin136 V136_ 0 dc pulse (0 1.1 8n 1n 1n 23n 27n)
XBUFIN136 V136 Vss Vdd V136_ BUFX2
Vin137 V137_ 0 dc pulse (0 1.1 6n 1n 1n 28n 33n)
XBUFIN137 V137 Vss Vdd V137_ BUFX2
Vin138 V138_ 0 dc pulse (0 1.1 8n 1n 1n 28n 45n)
XBUFIN138 V138 Vss Vdd V138_ BUFX2
Vin139 V139_ 0 dc pulse (0 1.1 4n 1n 1n 23n 26n)
XBUFIN139 V139 Vss Vdd V139_ BUFX2
Vin140 V140_ 0 dc pulse (0 1.1 3n 1n 1n 29n 35n)
XBUFIN140 V140 Vss Vdd V140_ BUFX2
Vin141 V141_ 0 dc pulse (0 1.1 1n 1n 1n 26n 38n)
XBUFIN141 V141 Vss Vdd V141_ BUFX2
Vin142 V142_ 0 dc pulse (0 1.1 10n 1n 1n 26n 33n)
XBUFIN142 V142 Vss Vdd V142_ BUFX2
Vin143 V143_ 0 dc pulse (0 1.1 9n 1n 1n 24n 46n)
XBUFIN143 V143 Vss Vdd V143_ BUFX2
Vin144 V144_ 0 dc pulse (0 1.1 3n 1n 1n 21n 26n)
XBUFIN144 V144 Vss Vdd V144_ BUFX2
Vin145 V145_ 0 dc pulse (0 1.1 5n 1n 1n 29n 53n)
XBUFIN145 V145 Vss Vdd V145_ BUFX2
Vin146 V146_ 0 dc pulse (0 1.1 7n 1n 1n 20n 25n)
XBUFIN146 V146 Vss Vdd V146_ BUFX2
Vin147 V147_ 0 dc pulse (0 1.1 3n 1n 1n 30n 37n)
XBUFIN147 V147 Vss Vdd V147_ BUFX2
Vin148 V148_ 0 dc pulse (0 1.1 10n 1n 1n 27n 53n)
XBUFIN148 V148 Vss Vdd V148_ BUFX2
Vin149 V149_ 0 dc pulse (0 1.1 5n 1n 1n 24n 37n)
XBUFIN149 V149 Vss Vdd V149_ BUFX2
Vin150 V150_ 0 dc pulse (0 1.1 5n 1n 1n 26n 38n)
XBUFIN150 V150 Vss Vdd V150_ BUFX2
Vin151 V151_ 0 dc pulse (0 1.1 10n 1n 1n 23n 32n)
XBUFIN151 V151 Vss Vdd V151_ BUFX2
Vin152 V152_ 0 dc pulse (0 1.1 6n 1n 1n 27n 53n)
XBUFIN152 V152 Vss Vdd V152_ BUFX2
Vin153 V153_ 0 dc pulse (0 1.1 9n 1n 1n 22n 23n)
XBUFIN153 V153 Vss Vdd V153_ BUFX2
Vin154 V154_ 0 dc pulse (0 1.1 3n 1n 1n 28n 40n)
XBUFIN154 V154 Vss Vdd V154_ BUFX2
Vin155 V155_ 0 dc pulse (0 1.1 9n 1n 1n 21n 28n)
XBUFIN155 V155 Vss Vdd V155_ BUFX2
Vin156 V156_ 0 dc pulse (0 1.1 4n 1n 1n 24n 28n)
XBUFIN156 V156 Vss Vdd V156_ BUFX2
Vin157 V157_ 0 dc pulse (0 1.1 8n 1n 1n 29n 57n)
XBUFIN157 V157 Vss Vdd V157_ BUFX2
Vin158 V158_ 0 dc pulse (0 1.1 8n 1n 1n 21n 39n)
XBUFIN158 V158 Vss Vdd V158_ BUFX2
Vin159 V159_ 0 dc pulse (0 1.1 6n 1n 1n 29n 41n)
XBUFIN159 V159 Vss Vdd V159_ BUFX2
Vin160 V160_ 0 dc pulse (0 1.1 10n 1n 1n 22n 37n)
XBUFIN160 V160 Vss Vdd V160_ BUFX2
Vin161 V161_ 0 dc pulse (0 1.1 2n 1n 1n 29n 56n)
XBUFIN161 V161 Vss Vdd V161_ BUFX2
Vin162 V162_ 0 dc pulse (0 1.1 1n 1n 1n 21n 25n)
XBUFIN162 V162 Vss Vdd V162_ BUFX2
Vin163 V163_ 0 dc pulse (0 1.1 9n 1n 1n 28n 42n)
XBUFIN163 V163 Vss Vdd V163_ BUFX2
Vin164 V164_ 0 dc pulse (0 1.1 4n 1n 1n 26n 27n)
XBUFIN164 V164 Vss Vdd V164_ BUFX2
Vin165 V165_ 0 dc pulse (0 1.1 10n 1n 1n 30n 60n)
XBUFIN165 V165 Vss Vdd V165_ BUFX2
Vin166 V166_ 0 dc pulse (0 1.1 10n 1n 1n 25n 30n)
XBUFIN166 V166 Vss Vdd V166_ BUFX2
Vin167 V167_ 0 dc pulse (0 1.1 7n 1n 1n 28n 45n)
XBUFIN167 V167 Vss Vdd V167_ BUFX2
Vin168 V168_ 0 dc pulse (0 1.1 9n 1n 1n 23n 38n)
XBUFIN168 V168 Vss Vdd V168_ BUFX2
Vin169 V169_ 0 dc pulse (0 1.1 10n 1n 1n 25n 35n)
XBUFIN169 V169 Vss Vdd V169_ BUFX2
Vin170 V170_ 0 dc pulse (0 1.1 5n 1n 1n 30n 54n)
XBUFIN170 V170 Vss Vdd V170_ BUFX2
Vin171 V171_ 0 dc pulse (0 1.1 6n 1n 1n 25n 38n)
XBUFIN171 V171 Vss Vdd V171_ BUFX2
Vin172 V172_ 0 dc pulse (0 1.1 5n 1n 1n 24n 39n)
XBUFIN172 V172 Vss Vdd V172_ BUFX2
Vin173 V173_ 0 dc pulse (0 1.1 3n 1n 1n 21n 34n)
XBUFIN173 V173 Vss Vdd V173_ BUFX2
Vin174 V174_ 0 dc pulse (0 1.1 5n 1n 1n 22n 44n)
XBUFIN174 V174 Vss Vdd V174_ BUFX2
Vin175 V175_ 0 dc pulse (0 1.1 10n 1n 1n 25n 35n)
XBUFIN175 V175 Vss Vdd V175_ BUFX2
Vin176 V176_ 0 dc pulse (0 1.1 6n 1n 1n 30n 46n)
XBUFIN176 V176 Vss Vdd V176_ BUFX2
Vin177 V177_ 0 dc pulse (0 1.1 10n 1n 1n 22n 26n)
XBUFIN177 V177 Vss Vdd V177_ BUFX2
Vin178 V178_ 0 dc pulse (0 1.1 7n 1n 1n 23n 25n)
XBUFIN178 V178 Vss Vdd V178_ BUFX2
Vin179 V179_ 0 dc pulse (0 1.1 10n 1n 1n 23n 39n)
XBUFIN179 V179 Vss Vdd V179_ BUFX2
Vin180 V180_ 0 dc pulse (0 1.1 6n 1n 1n 28n 45n)
XBUFIN180 V180 Vss Vdd V180_ BUFX2
Vin181 V181_ 0 dc pulse (0 1.1 8n 1n 1n 22n 40n)
XBUFIN181 V181 Vss Vdd V181_ BUFX2
Vin182 V182_ 0 dc pulse (0 1.1 7n 1n 1n 20n 39n)
XBUFIN182 V182 Vss Vdd V182_ BUFX2
Vin183 V183_ 0 dc pulse (0 1.1 8n 1n 1n 29n 38n)
XBUFIN183 V183 Vss Vdd V183_ BUFX2
Vin184 V184_ 0 dc pulse (0 1.1 6n 1n 1n 20n 37n)
XBUFIN184 V184 Vss Vdd V184_ BUFX2
Vin185 V185_ 0 dc pulse (0 1.1 2n 1n 1n 25n 40n)
XBUFIN185 V185 Vss Vdd V185_ BUFX2
Vin186 V186_ 0 dc pulse (0 1.1 10n 1n 1n 30n 30n)
XBUFIN186 V186 Vss Vdd V186_ BUFX2
Vin187 V187_ 0 dc pulse (0 1.1 2n 1n 1n 22n 26n)
XBUFIN187 V187 Vss Vdd V187_ BUFX2
Vin188 V188_ 0 dc pulse (0 1.1 4n 1n 1n 24n 30n)
XBUFIN188 V188 Vss Vdd V188_ BUFX2
Vin189 V189_ 0 dc pulse (0 1.1 8n 1n 1n 23n 44n)
XBUFIN189 V189 Vss Vdd V189_ BUFX2
Vin190 V190_ 0 dc pulse (0 1.1 7n 1n 1n 20n 26n)
XBUFIN190 V190 Vss Vdd V190_ BUFX2
Vin191 V191_ 0 dc pulse (0 1.1 5n 1n 1n 22n 32n)
XBUFIN191 V191 Vss Vdd V191_ BUFX2
Vin192 V192_ 0 dc pulse (0 1.1 5n 1n 1n 20n 37n)
XBUFIN192 V192 Vss Vdd V192_ BUFX2
Vin193 V193_ 0 dc pulse (0 1.1 3n 1n 1n 22n 34n)
XBUFIN193 V193 Vss Vdd V193_ BUFX2
Vin194 V194_ 0 dc pulse (0 1.1 6n 1n 1n 28n 49n)
XBUFIN194 V194 Vss Vdd V194_ BUFX2
Vin195 V195_ 0 dc pulse (0 1.1 5n 1n 1n 28n 38n)
XBUFIN195 V195 Vss Vdd V195_ BUFX2
Vin196 V196_ 0 dc pulse (0 1.1 4n 1n 1n 28n 49n)
XBUFIN196 V196 Vss Vdd V196_ BUFX2
Vin197 V197_ 0 dc pulse (0 1.1 3n 1n 1n 29n 54n)
XBUFIN197 V197 Vss Vdd V197_ BUFX2
Vin198 V198_ 0 dc pulse (0 1.1 7n 1n 1n 22n 42n)
XBUFIN198 V198 Vss Vdd V198_ BUFX2
Vin199 V199_ 0 dc pulse (0 1.1 1n 1n 1n 27n 30n)
XBUFIN199 V199 Vss Vdd V199_ BUFX2
Vin200 V200_ 0 dc pulse (0 1.1 1n 1n 1n 24n 46n)
XBUFIN200 V200 Vss Vdd V200_ BUFX2
Vin201 V201_ 0 dc pulse (0 1.1 5n 1n 1n 23n 35n)
XBUFIN201 V201 Vss Vdd V201_ BUFX2
Vin202 V202_ 0 dc pulse (0 1.1 5n 1n 1n 28n 38n)
XBUFIN202 V202 Vss Vdd V202_ BUFX2
Vin203 V203_ 0 dc pulse (0 1.1 10n 1n 1n 20n 25n)
XBUFIN203 V203 Vss Vdd V203_ BUFX2
Vin204 V204_ 0 dc pulse (0 1.1 4n 1n 1n 22n 28n)
XBUFIN204 V204 Vss Vdd V204_ BUFX2
Vin205 V205_ 0 dc pulse (0 1.1 3n 1n 1n 28n 49n)
XBUFIN205 V205 Vss Vdd V205_ BUFX2
Vin206 V206_ 0 dc pulse (0 1.1 2n 1n 1n 30n 43n)
XBUFIN206 V206 Vss Vdd V206_ BUFX2
Vin207 V207_ 0 dc pulse (0 1.1 10n 1n 1n 28n 36n)
XBUFIN207 V207 Vss Vdd V207_ BUFX2
Vin208 V208_ 0 dc pulse (0 1.1 10n 1n 1n 22n 22n)
XBUFIN208 V208 Vss Vdd V208_ BUFX2
Vin209 V209_ 0 dc pulse (0 1.1 4n 1n 1n 24n 47n)
XBUFIN209 V209 Vss Vdd V209_ BUFX2
Vin210 V210_ 0 dc pulse (0 1.1 3n 1n 1n 25n 31n)
XBUFIN210 V210 Vss Vdd V210_ BUFX2
Vin211 V211_ 0 dc pulse (0 1.1 4n 1n 1n 28n 39n)
XBUFIN211 V211 Vss Vdd V211_ BUFX2
Vin212 V212_ 0 dc pulse (0 1.1 3n 1n 1n 29n 57n)
XBUFIN212 V212 Vss Vdd V212_ BUFX2
Vin213 V213_ 0 dc pulse (0 1.1 2n 1n 1n 27n 46n)
XBUFIN213 V213 Vss Vdd V213_ BUFX2
Vin214 V214_ 0 dc pulse (0 1.1 8n 1n 1n 30n 56n)
XBUFIN214 V214 Vss Vdd V214_ BUFX2
Vin215 V215_ 0 dc pulse (0 1.1 5n 1n 1n 21n 34n)
XBUFIN215 V215 Vss Vdd V215_ BUFX2
Vin216 V216_ 0 dc pulse (0 1.1 5n 1n 1n 30n 60n)
XBUFIN216 V216 Vss Vdd V216_ BUFX2
Vin217 V217_ 0 dc pulse (0 1.1 1n 1n 1n 26n 38n)
XBUFIN217 V217 Vss Vdd V217_ BUFX2
Vin218 V218_ 0 dc pulse (0 1.1 1n 1n 1n 26n 48n)
XBUFIN218 V218 Vss Vdd V218_ BUFX2
Vin219 V219_ 0 dc pulse (0 1.1 8n 1n 1n 21n 29n)
XBUFIN219 V219 Vss Vdd V219_ BUFX2
Vin220 V220_ 0 dc pulse (0 1.1 5n 1n 1n 23n 45n)
XBUFIN220 V220 Vss Vdd V220_ BUFX2
Vin221 V221_ 0 dc pulse (0 1.1 1n 1n 1n 30n 38n)
XBUFIN221 V221 Vss Vdd V221_ BUFX2
Vin222 V222_ 0 dc pulse (0 1.1 10n 1n 1n 20n 22n)
XBUFIN222 V222 Vss Vdd V222_ BUFX2
Vin223 V223_ 0 dc pulse (0 1.1 7n 1n 1n 29n 41n)
XBUFIN223 V223 Vss Vdd V223_ BUFX2
Vin224 V224_ 0 dc pulse (0 1.1 3n 1n 1n 20n 30n)
XBUFIN224 V224 Vss Vdd V224_ BUFX2
Vin225 V225_ 0 dc pulse (0 1.1 3n 1n 1n 29n 38n)
XBUFIN225 V225 Vss Vdd V225_ BUFX2
Vin226 V226_ 0 dc pulse (0 1.1 2n 1n 1n 20n 23n)
XBUFIN226 V226 Vss Vdd V226_ BUFX2
Vin227 V227_ 0 dc pulse (0 1.1 10n 1n 1n 25n 42n)
XBUFIN227 V227 Vss Vdd V227_ BUFX2
Vin228 V228_ 0 dc pulse (0 1.1 7n 1n 1n 25n 33n)
XBUFIN228 V228 Vss Vdd V228_ BUFX2
Vin229 V229_ 0 dc pulse (0 1.1 4n 1n 1n 30n 36n)
XBUFIN229 V229 Vss Vdd V229_ BUFX2
Vin230 V230_ 0 dc pulse (0 1.1 9n 1n 1n 27n 33n)
XBUFIN230 V230 Vss Vdd V230_ BUFX2
Vin231 V231_ 0 dc pulse (0 1.1 8n 1n 1n 27n 52n)
XBUFIN231 V231 Vss Vdd V231_ BUFX2
Vin232 V232_ 0 dc pulse (0 1.1 1n 1n 1n 28n 55n)
XBUFIN232 V232 Vss Vdd V232_ BUFX2
Vin233 V233_ 0 dc pulse (0 1.1 6n 1n 1n 24n 44n)
XBUFIN233 V233 Vss Vdd V233_ BUFX2
Vin234 V234_ 0 dc pulse (0 1.1 10n 1n 1n 24n 28n)
XBUFIN234 V234 Vss Vdd V234_ BUFX2
Vin235 V235_ 0 dc pulse (0 1.1 3n 1n 1n 23n 31n)
XBUFIN235 V235 Vss Vdd V235_ BUFX2
Vin236 V236_ 0 dc pulse (0 1.1 1n 1n 1n 21n 21n)
XBUFIN236 V236 Vss Vdd V236_ BUFX2
Vin237 V237_ 0 dc pulse (0 1.1 6n 1n 1n 28n 53n)
XBUFIN237 V237 Vss Vdd V237_ BUFX2
Vin238 V238_ 0 dc pulse (0 1.1 1n 1n 1n 22n 38n)
XBUFIN238 V238 Vss Vdd V238_ BUFX2
Vin239 V239_ 0 dc pulse (0 1.1 2n 1n 1n 29n 39n)
XBUFIN239 V239 Vss Vdd V239_ BUFX2
Vin240 V240_ 0 dc pulse (0 1.1 2n 1n 1n 22n 40n)
XBUFIN240 V240 Vss Vdd V240_ BUFX2
Vin241 V241_ 0 dc pulse (0 1.1 2n 1n 1n 23n 29n)
XBUFIN241 V241 Vss Vdd V241_ BUFX2
Vin242 V242_ 0 dc pulse (0 1.1 7n 1n 1n 23n 31n)
XBUFIN242 V242 Vss Vdd V242_ BUFX2
Vin243 V243_ 0 dc pulse (0 1.1 7n 1n 1n 20n 28n)
XBUFIN243 V243 Vss Vdd V243_ BUFX2
Vin244 V244_ 0 dc pulse (0 1.1 2n 1n 1n 28n 49n)
XBUFIN244 V244 Vss Vdd V244_ BUFX2
Vin245 V245_ 0 dc pulse (0 1.1 1n 1n 1n 23n 33n)
XBUFIN245 V245 Vss Vdd V245_ BUFX2
Vin246 V246_ 0 dc pulse (0 1.1 2n 1n 1n 30n 41n)
XBUFIN246 V246 Vss Vdd V246_ BUFX2
Vin247 V247_ 0 dc pulse (0 1.1 3n 1n 1n 28n 33n)
XBUFIN247 V247 Vss Vdd V247_ BUFX2
Vin248 V248_ 0 dc pulse (0 1.1 9n 1n 1n 21n 31n)
XBUFIN248 V248 Vss Vdd V248_ BUFX2
Vin249 V249_ 0 dc pulse (0 1.1 10n 1n 1n 28n 53n)
XBUFIN249 V249 Vss Vdd V249_ BUFX2
Vin250 V250_ 0 dc pulse (0 1.1 9n 1n 1n 29n 44n)
XBUFIN250 V250 Vss Vdd V250_ BUFX2
Vin251 V251_ 0 dc pulse (0 1.1 10n 1n 1n 29n 33n)
XBUFIN251 V251 Vss Vdd V251_ BUFX2
Vin252 V252_ 0 dc pulse (0 1.1 10n 1n 1n 28n 28n)
XBUFIN252 V252 Vss Vdd V252_ BUFX2
Vin253 V253_ 0 dc pulse (0 1.1 9n 1n 1n 25n 46n)
XBUFIN253 V253 Vss Vdd V253_ BUFX2
Vin254 V254_ 0 dc pulse (0 1.1 8n 1n 1n 20n 40n)
XBUFIN254 V254 Vss Vdd V254_ BUFX2
Vin255 V255_ 0 dc pulse (0 1.1 5n 1n 1n 20n 25n)
XBUFIN255 V255 Vss Vdd V255_ BUFX2
Vin256 V256_ 0 dc pulse (0 1.1 9n 1n 1n 26n 36n)
XBUFIN256 V256 Vss Vdd V256_ BUFX2
Vin257 V257_ 0 dc pulse (0 1.1 10n 1n 1n 25n 39n)
XBUFIN257 V257 Vss Vdd V257_ BUFX2
Vin258 V258_ 0 dc pulse (0 1.1 4n 1n 1n 24n 24n)
XBUFIN258 V258 Vss Vdd V258_ BUFX2
Vin259 V259_ 0 dc pulse (0 1.1 5n 1n 1n 22n 23n)
XBUFIN259 V259 Vss Vdd V259_ BUFX2
Vin260 V260_ 0 dc pulse (0 1.1 4n 1n 1n 25n 43n)
XBUFIN260 V260 Vss Vdd V260_ BUFX2
Vin261 V261_ 0 dc pulse (0 1.1 10n 1n 1n 28n 40n)
XBUFIN261 V261 Vss Vdd V261_ BUFX2
Vin262 V262_ 0 dc pulse (0 1.1 8n 1n 1n 21n 34n)
XBUFIN262 V262 Vss Vdd V262_ BUFX2
Vin263 V263_ 0 dc pulse (0 1.1 7n 1n 1n 29n 34n)
XBUFIN263 V263 Vss Vdd V263_ BUFX2
Vin264 V264_ 0 dc pulse (0 1.1 1n 1n 1n 26n 35n)
XBUFIN264 V264 Vss Vdd V264_ BUFX2
Vin265 V265_ 0 dc pulse (0 1.1 7n 1n 1n 20n 20n)
XBUFIN265 V265 Vss Vdd V265_ BUFX2
Vin266 V266_ 0 dc pulse (0 1.1 2n 1n 1n 23n 26n)
XBUFIN266 V266 Vss Vdd V266_ BUFX2
Vin267 V267_ 0 dc pulse (0 1.1 5n 1n 1n 25n 35n)
XBUFIN267 V267 Vss Vdd V267_ BUFX2
Vin268 V268_ 0 dc pulse (0 1.1 9n 1n 1n 22n 44n)
XBUFIN268 V268 Vss Vdd V268_ BUFX2
Vin269 V269_ 0 dc pulse (0 1.1 1n 1n 1n 23n 41n)
XBUFIN269 V269 Vss Vdd V269_ BUFX2
Vin270 V270_ 0 dc pulse (0 1.1 7n 1n 1n 30n 46n)
XBUFIN270 V270 Vss Vdd V270_ BUFX2
Vin271 V271_ 0 dc pulse (0 1.1 10n 1n 1n 24n 31n)
XBUFIN271 V271 Vss Vdd V271_ BUFX2
Vin272 V272_ 0 dc pulse (0 1.1 7n 1n 1n 23n 38n)
XBUFIN272 V272 Vss Vdd V272_ BUFX2
Vin273 V273_ 0 dc pulse (0 1.1 8n 1n 1n 21n 25n)
XBUFIN273 V273 Vss Vdd V273_ BUFX2
Vin274 V274_ 0 dc pulse (0 1.1 4n 1n 1n 20n 20n)
XBUFIN274 V274 Vss Vdd V274_ BUFX2
Vin275 V275_ 0 dc pulse (0 1.1 10n 1n 1n 23n 46n)
XBUFIN275 V275 Vss Vdd V275_ BUFX2
Vin276 V276_ 0 dc pulse (0 1.1 6n 1n 1n 25n 48n)
XBUFIN276 V276 Vss Vdd V276_ BUFX2
Vin277 V277_ 0 dc pulse (0 1.1 2n 1n 1n 28n 35n)
XBUFIN277 V277 Vss Vdd V277_ BUFX2
Vin278 V278_ 0 dc pulse (0 1.1 1n 1n 1n 26n 48n)
XBUFIN278 V278 Vss Vdd V278_ BUFX2
Vin279 V279_ 0 dc pulse (0 1.1 9n 1n 1n 29n 44n)
XBUFIN279 V279 Vss Vdd V279_ BUFX2
Vin280 V280_ 0 dc pulse (0 1.1 10n 1n 1n 29n 32n)
XBUFIN280 V280 Vss Vdd V280_ BUFX2
Vin281 V281_ 0 dc pulse (0 1.1 6n 1n 1n 24n 39n)
XBUFIN281 V281 Vss Vdd V281_ BUFX2
Vin282 V282_ 0 dc pulse (0 1.1 2n 1n 1n 23n 45n)
XBUFIN282 V282 Vss Vdd V282_ BUFX2
Vin283 V283_ 0 dc pulse (0 1.1 9n 1n 1n 29n 36n)
XBUFIN283 V283 Vss Vdd V283_ BUFX2
Vin284 V284_ 0 dc pulse (0 1.1 7n 1n 1n 28n 34n)
XBUFIN284 V284 Vss Vdd V284_ BUFX2
Vin285 V285_ 0 dc pulse (0 1.1 8n 1n 1n 26n 34n)
XBUFIN285 V285 Vss Vdd V285_ BUFX2
Vin286 V286_ 0 dc pulse (0 1.1 10n 1n 1n 23n 31n)
XBUFIN286 V286 Vss Vdd V286_ BUFX2
Vin287 V287_ 0 dc pulse (0 1.1 8n 1n 1n 23n 37n)
XBUFIN287 V287 Vss Vdd V287_ BUFX2
Vin288 V288_ 0 dc pulse (0 1.1 8n 1n 1n 22n 22n)
XBUFIN288 V288 Vss Vdd V288_ BUFX2
Vin289 V289_ 0 dc pulse (0 1.1 2n 1n 1n 23n 29n)
XBUFIN289 V289 Vss Vdd V289_ BUFX2
Vin290 V290_ 0 dc pulse (0 1.1 3n 1n 1n 22n 37n)
XBUFIN290 V290 Vss Vdd V290_ BUFX2
Vin291 V291_ 0 dc pulse (0 1.1 8n 1n 1n 22n 24n)
XBUFIN291 V291 Vss Vdd V291_ BUFX2
Vin292 V292_ 0 dc pulse (0 1.1 8n 1n 1n 28n 43n)
XBUFIN292 V292 Vss Vdd V292_ BUFX2
Vin293 V293_ 0 dc pulse (0 1.1 4n 1n 1n 26n 48n)
XBUFIN293 V293 Vss Vdd V293_ BUFX2
Vin294 V294_ 0 dc pulse (0 1.1 9n 1n 1n 28n 48n)
XBUFIN294 V294 Vss Vdd V294_ BUFX2
Vin295 V295_ 0 dc pulse (0 1.1 4n 1n 1n 25n 42n)
XBUFIN295 V295 Vss Vdd V295_ BUFX2
Vin296 V296_ 0 dc pulse (0 1.1 2n 1n 1n 24n 27n)
XBUFIN296 V296 Vss Vdd V296_ BUFX2
Vin297 V297_ 0 dc pulse (0 1.1 8n 1n 1n 28n 40n)
XBUFIN297 V297 Vss Vdd V297_ BUFX2
Vin298 V298_ 0 dc pulse (0 1.1 3n 1n 1n 24n 29n)
XBUFIN298 V298 Vss Vdd V298_ BUFX2
Vin299 V299_ 0 dc pulse (0 1.1 8n 1n 1n 28n 52n)
XBUFIN299 V299 Vss Vdd V299_ BUFX2
Vin300 V300_ 0 dc pulse (0 1.1 5n 1n 1n 29n 35n)
XBUFIN300 V300 Vss Vdd V300_ BUFX2
Vin301 V301_ 0 dc pulse (0 1.1 2n 1n 1n 29n 38n)
XBUFIN301 V301 Vss Vdd V301_ BUFX2
Vin302 V302_ 0 dc pulse (0 1.1 7n 1n 1n 27n 54n)
XBUFIN302 V302 Vss Vdd V302_ BUFX2
Vin303 V303_ 0 dc pulse (0 1.1 8n 1n 1n 23n 42n)
XBUFIN303 V303 Vss Vdd V303_ BUFX2
Vin304 V304_ 0 dc pulse (0 1.1 2n 1n 1n 30n 58n)
XBUFIN304 V304 Vss Vdd V304_ BUFX2
Vin305 V305_ 0 dc pulse (0 1.1 2n 1n 1n 22n 27n)
XBUFIN305 V305 Vss Vdd V305_ BUFX2
Vin306 V306_ 0 dc pulse (0 1.1 1n 1n 1n 22n 36n)
XBUFIN306 V306 Vss Vdd V306_ BUFX2
Vin307 V307_ 0 dc pulse (0 1.1 8n 1n 1n 26n 47n)
XBUFIN307 V307 Vss Vdd V307_ BUFX2
Vin308 V308_ 0 dc pulse (0 1.1 2n 1n 1n 20n 23n)
XBUFIN308 V308 Vss Vdd V308_ BUFX2
Vin309 V309_ 0 dc pulse (0 1.1 1n 1n 1n 21n 26n)
XBUFIN309 V309 Vss Vdd V309_ BUFX2
Vin310 V310_ 0 dc pulse (0 1.1 1n 1n 1n 23n 30n)
XBUFIN310 V310 Vss Vdd V310_ BUFX2
Vin311 V311_ 0 dc pulse (0 1.1 9n 1n 1n 26n 32n)
XBUFIN311 V311 Vss Vdd V311_ BUFX2
Vin312 V312_ 0 dc pulse (0 1.1 3n 1n 1n 27n 44n)
XBUFIN312 V312 Vss Vdd V312_ BUFX2
Vin313 V313_ 0 dc pulse (0 1.1 10n 1n 1n 28n 49n)
XBUFIN313 V313 Vss Vdd V313_ BUFX2
Vin314 V314_ 0 dc pulse (0 1.1 7n 1n 1n 29n 38n)
XBUFIN314 V314 Vss Vdd V314_ BUFX2
Vin315 V315_ 0 dc pulse (0 1.1 5n 1n 1n 27n 29n)
XBUFIN315 V315 Vss Vdd V315_ BUFX2
Vin316 V316_ 0 dc pulse (0 1.1 10n 1n 1n 25n 46n)
XBUFIN316 V316 Vss Vdd V316_ BUFX2
Vin317 V317_ 0 dc pulse (0 1.1 4n 1n 1n 20n 29n)
XBUFIN317 V317 Vss Vdd V317_ BUFX2
Vin318 V318_ 0 dc pulse (0 1.1 7n 1n 1n 27n 41n)
XBUFIN318 V318 Vss Vdd V318_ BUFX2
Vin319 V319_ 0 dc pulse (0 1.1 10n 1n 1n 21n 34n)
XBUFIN319 V319 Vss Vdd V319_ BUFX2
Vin320 V320_ 0 dc pulse (0 1.1 10n 1n 1n 25n 33n)
XBUFIN320 V320 Vss Vdd V320_ BUFX2
Vin321 V321_ 0 dc pulse (0 1.1 3n 1n 1n 20n 23n)
XBUFIN321 V321 Vss Vdd V321_ BUFX2
Vin322 V322_ 0 dc pulse (0 1.1 1n 1n 1n 28n 28n)
XBUFIN322 V322 Vss Vdd V322_ BUFX2
Vin323 V323_ 0 dc pulse (0 1.1 6n 1n 1n 29n 29n)
XBUFIN323 V323 Vss Vdd V323_ BUFX2
Vin324 V324_ 0 dc pulse (0 1.1 7n 1n 1n 30n 48n)
XBUFIN324 V324 Vss Vdd V324_ BUFX2
Vin325 V325_ 0 dc pulse (0 1.1 10n 1n 1n 30n 35n)
XBUFIN325 V325 Vss Vdd V325_ BUFX2
Vin326 V326_ 0 dc pulse (0 1.1 10n 1n 1n 27n 31n)
XBUFIN326 V326 Vss Vdd V326_ BUFX2
Vin327 V327_ 0 dc pulse (0 1.1 9n 1n 1n 25n 34n)
XBUFIN327 V327 Vss Vdd V327_ BUFX2
Vin328 V328_ 0 dc pulse (0 1.1 3n 1n 1n 30n 40n)
XBUFIN328 V328 Vss Vdd V328_ BUFX2
Vin329 V329_ 0 dc pulse (0 1.1 9n 1n 1n 22n 34n)
XBUFIN329 V329 Vss Vdd V329_ BUFX2
Vin330 V330_ 0 dc pulse (0 1.1 9n 1n 1n 21n 21n)
XBUFIN330 V330 Vss Vdd V330_ BUFX2
Vin331 V331_ 0 dc pulse (0 1.1 9n 1n 1n 20n 22n)
XBUFIN331 V331 Vss Vdd V331_ BUFX2
Vin332 V332_ 0 dc pulse (0 1.1 4n 1n 1n 26n 36n)
XBUFIN332 V332 Vss Vdd V332_ BUFX2
Vin333 V333_ 0 dc pulse (0 1.1 8n 1n 1n 24n 41n)
XBUFIN333 V333 Vss Vdd V333_ BUFX2
Vin334 V334_ 0 dc pulse (0 1.1 7n 1n 1n 24n 33n)
XBUFIN334 V334 Vss Vdd V334_ BUFX2
Vin335 V335_ 0 dc pulse (0 1.1 6n 1n 1n 27n 33n)
XBUFIN335 V335 Vss Vdd V335_ BUFX2
Vin336 V336_ 0 dc pulse (0 1.1 3n 1n 1n 22n 30n)
XBUFIN336 V336 Vss Vdd V336_ BUFX2
Vin337 V337_ 0 dc pulse (0 1.1 4n 1n 1n 25n 25n)
XBUFIN337 V337 Vss Vdd V337_ BUFX2
Vin338 V338_ 0 dc pulse (0 1.1 7n 1n 1n 21n 35n)
XBUFIN338 V338 Vss Vdd V338_ BUFX2
Vin339 V339_ 0 dc pulse (0 1.1 9n 1n 1n 24n 30n)
XBUFIN339 V339 Vss Vdd V339_ BUFX2
Vin340 V340_ 0 dc pulse (0 1.1 10n 1n 1n 28n 43n)
XBUFIN340 V340 Vss Vdd V340_ BUFX2
Vin341 V341_ 0 dc pulse (0 1.1 5n 1n 1n 24n 35n)
XBUFIN341 V341 Vss Vdd V341_ BUFX2
Vin342 V342_ 0 dc pulse (0 1.1 7n 1n 1n 28n 54n)
XBUFIN342 V342 Vss Vdd V342_ BUFX2
Vin343 V343_ 0 dc pulse (0 1.1 2n 1n 1n 23n 27n)
XBUFIN343 V343 Vss Vdd V343_ BUFX2
Vin344 V344_ 0 dc pulse (0 1.1 4n 1n 1n 26n 50n)
XBUFIN344 V344 Vss Vdd V344_ BUFX2
Vin345 V345_ 0 dc pulse (0 1.1 5n 1n 1n 22n 35n)
XBUFIN345 V345 Vss Vdd V345_ BUFX2
Vin346 V346_ 0 dc pulse (0 1.1 5n 1n 1n 23n 28n)
XBUFIN346 V346 Vss Vdd V346_ BUFX2
Vin347 V347_ 0 dc pulse (0 1.1 4n 1n 1n 24n 44n)
XBUFIN347 V347 Vss Vdd V347_ BUFX2
Vin348 V348_ 0 dc pulse (0 1.1 5n 1n 1n 23n 25n)
XBUFIN348 V348 Vss Vdd V348_ BUFX2
Vin349 V349_ 0 dc pulse (0 1.1 9n 1n 1n 25n 39n)
XBUFIN349 V349 Vss Vdd V349_ BUFX2
Vin350 V350_ 0 dc pulse (0 1.1 8n 1n 1n 23n 37n)
XBUFIN350 V350 Vss Vdd V350_ BUFX2
Vin351 V351_ 0 dc pulse (0 1.1 4n 1n 1n 22n 29n)
XBUFIN351 V351 Vss Vdd V351_ BUFX2
Vin352 V352_ 0 dc pulse (0 1.1 5n 1n 1n 27n 38n)
XBUFIN352 V352 Vss Vdd V352_ BUFX2
Vin353 V353_ 0 dc pulse (0 1.1 4n 1n 1n 25n 48n)
XBUFIN353 V353 Vss Vdd V353_ BUFX2
Vin354 V354_ 0 dc pulse (0 1.1 2n 1n 1n 28n 38n)
XBUFIN354 V354 Vss Vdd V354_ BUFX2
Vin355 V355_ 0 dc pulse (0 1.1 5n 1n 1n 22n 39n)
XBUFIN355 V355 Vss Vdd V355_ BUFX2
Vin356 V356_ 0 dc pulse (0 1.1 5n 1n 1n 29n 42n)
XBUFIN356 V356 Vss Vdd V356_ BUFX2
Vin357 V357_ 0 dc pulse (0 1.1 9n 1n 1n 30n 48n)
XBUFIN357 V357 Vss Vdd V357_ BUFX2
Vin358 V358_ 0 dc pulse (0 1.1 3n 1n 1n 21n 26n)
XBUFIN358 V358 Vss Vdd V358_ BUFX2
Vin359 V359_ 0 dc pulse (0 1.1 10n 1n 1n 20n 27n)
XBUFIN359 V359 Vss Vdd V359_ BUFX2
Vin360 V360_ 0 dc pulse (0 1.1 5n 1n 1n 29n 58n)
XBUFIN360 V360 Vss Vdd V360_ BUFX2
Vin361 V361_ 0 dc pulse (0 1.1 10n 1n 1n 26n 27n)
XBUFIN361 V361 Vss Vdd V361_ BUFX2
Vin362 V362_ 0 dc pulse (0 1.1 6n 1n 1n 22n 24n)
XBUFIN362 V362 Vss Vdd V362_ BUFX2
Vin363 V363_ 0 dc pulse (0 1.1 7n 1n 1n 28n 44n)
XBUFIN363 V363 Vss Vdd V363_ BUFX2
Vin364 V364_ 0 dc pulse (0 1.1 1n 1n 1n 30n 50n)
XBUFIN364 V364 Vss Vdd V364_ BUFX2
Vin365 V365_ 0 dc pulse (0 1.1 10n 1n 1n 23n 35n)
XBUFIN365 V365 Vss Vdd V365_ BUFX2
Vin366 V366_ 0 dc pulse (0 1.1 4n 1n 1n 28n 34n)
XBUFIN366 V366 Vss Vdd V366_ BUFX2
Vin367 V367_ 0 dc pulse (0 1.1 8n 1n 1n 25n 47n)
XBUFIN367 V367 Vss Vdd V367_ BUFX2
Vin368 V368_ 0 dc pulse (0 1.1 9n 1n 1n 27n 34n)
XBUFIN368 V368 Vss Vdd V368_ BUFX2
Vin369 V369_ 0 dc pulse (0 1.1 8n 1n 1n 26n 41n)
XBUFIN369 V369 Vss Vdd V369_ BUFX2
Vin370 V370_ 0 dc pulse (0 1.1 8n 1n 1n 25n 50n)
XBUFIN370 V370 Vss Vdd V370_ BUFX2
Vin371 V371_ 0 dc pulse (0 1.1 2n 1n 1n 26n 51n)
XBUFIN371 V371 Vss Vdd V371_ BUFX2
Vin372 V372_ 0 dc pulse (0 1.1 7n 1n 1n 27n 32n)
XBUFIN372 V372 Vss Vdd V372_ BUFX2
Vin373 V373_ 0 dc pulse (0 1.1 9n 1n 1n 26n 29n)
XBUFIN373 V373 Vss Vdd V373_ BUFX2
Vin374 V374_ 0 dc pulse (0 1.1 1n 1n 1n 21n 41n)
XBUFIN374 V374 Vss Vdd V374_ BUFX2
Vin375 V375_ 0 dc pulse (0 1.1 7n 1n 1n 21n 34n)
XBUFIN375 V375 Vss Vdd V375_ BUFX2
Vin376 V376_ 0 dc pulse (0 1.1 3n 1n 1n 22n 30n)
XBUFIN376 V376 Vss Vdd V376_ BUFX2
Vin377 V377_ 0 dc pulse (0 1.1 1n 1n 1n 30n 31n)
XBUFIN377 V377 Vss Vdd V377_ BUFX2
Vin378 V378_ 0 dc pulse (0 1.1 6n 1n 1n 23n 39n)
XBUFIN378 V378 Vss Vdd V378_ BUFX2
Vin379 V379_ 0 dc pulse (0 1.1 9n 1n 1n 27n 42n)
XBUFIN379 V379 Vss Vdd V379_ BUFX2
Vin380 V380_ 0 dc pulse (0 1.1 8n 1n 1n 20n 29n)
XBUFIN380 V380 Vss Vdd V380_ BUFX2
Vin381 V381_ 0 dc pulse (0 1.1 4n 1n 1n 27n 28n)
XBUFIN381 V381 Vss Vdd V381_ BUFX2
Vin382 V382_ 0 dc pulse (0 1.1 6n 1n 1n 28n 54n)
XBUFIN382 V382 Vss Vdd V382_ BUFX2
Vin383 V383_ 0 dc pulse (0 1.1 10n 1n 1n 21n 26n)
XBUFIN383 V383 Vss Vdd V383_ BUFX2
Vin384 V384_ 0 dc pulse (0 1.1 2n 1n 1n 22n 29n)
XBUFIN384 V384 Vss Vdd V384_ BUFX2
Vin385 V385_ 0 dc pulse (0 1.1 8n 1n 1n 20n 28n)
XBUFIN385 V385 Vss Vdd V385_ BUFX2
Vin386 V386_ 0 dc pulse (0 1.1 10n 1n 1n 25n 36n)
XBUFIN386 V386 Vss Vdd V386_ BUFX2
Vin387 V387_ 0 dc pulse (0 1.1 6n 1n 1n 27n 53n)
XBUFIN387 V387 Vss Vdd V387_ BUFX2
Vin388 V388_ 0 dc pulse (0 1.1 1n 1n 1n 22n 22n)
XBUFIN388 V388 Vss Vdd V388_ BUFX2
Vin389 V389_ 0 dc pulse (0 1.1 1n 1n 1n 24n 31n)
XBUFIN389 V389 Vss Vdd V389_ BUFX2
Vin390 V390_ 0 dc pulse (0 1.1 9n 1n 1n 25n 26n)
XBUFIN390 V390 Vss Vdd V390_ BUFX2
Vin391 V391_ 0 dc pulse (0 1.1 4n 1n 1n 20n 39n)
XBUFIN391 V391 Vss Vdd V391_ BUFX2
Vin392 V392_ 0 dc pulse (0 1.1 1n 1n 1n 25n 25n)
XBUFIN392 V392 Vss Vdd V392_ BUFX2
Vin393 V393_ 0 dc pulse (0 1.1 8n 1n 1n 20n 27n)
XBUFIN393 V393 Vss Vdd V393_ BUFX2
Vin394 V394_ 0 dc pulse (0 1.1 7n 1n 1n 26n 48n)
XBUFIN394 V394 Vss Vdd V394_ BUFX2
Vin395 V395_ 0 dc pulse (0 1.1 6n 1n 1n 29n 45n)
XBUFIN395 V395 Vss Vdd V395_ BUFX2
Vin396 V396_ 0 dc pulse (0 1.1 3n 1n 1n 24n 31n)
XBUFIN396 V396 Vss Vdd V396_ BUFX2
Vin397 V397_ 0 dc pulse (0 1.1 10n 1n 1n 26n 41n)
XBUFIN397 V397 Vss Vdd V397_ BUFX2
Vin398 V398_ 0 dc pulse (0 1.1 4n 1n 1n 24n 25n)
XBUFIN398 V398 Vss Vdd V398_ BUFX2
Vin399 V399_ 0 dc pulse (0 1.1 5n 1n 1n 22n 24n)
XBUFIN399 V399 Vss Vdd V399_ BUFX2
Cload414 V414 0 0.00155103pF
XOR400 V289 V400 V20 Vdd Vss XOR2X1
XNOR401 V376 Vdd V309 V401 Vss NOR2X1
XAND402 V211 V352 Vdd Vss V402 AND2X1
XOR403 V372 V403 V362 Vdd Vss XOR2X1
XINV404 V103 Vss Vdd V404 INVX1
XAND405 V72 V148 Vdd Vss V405 AND2X1
XBUF406 V406 Vss Vdd V245 BUFX2
XBUF407 V407 Vss Vdd V57 BUFX2
XOR408 V151 V60 Vdd Vss V408 OR2X1
XAND409 V168 V282 Vdd Vss V409 AND2X1
XNOR410 V274 Vdd V321 V410 Vss NOR2X1
XBUF411 V411 Vss Vdd V52 BUFX2
XOR412 V209 V412 V152 Vdd Vss XOR2X1
XBUF413 V413 Vss Vdd V46 BUFX2
XOR414 V289 V268 Vdd Vss V414 OR2X1
.tran 0.1n 100n
.probe P(Vpower)
.control
run
plot -Vpower:power
meas tran power_avg avg Vpower:power
wrdata power_consumption.txt Vpower:power
.endc
* Leakage power estimation: 8199.18779 nW

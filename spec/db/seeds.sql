--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: locations_adm0; Type: TABLE DATA; Schema: public; Owner: spalladino
--

COPY locations_adm0 (id, name) FROM stdin;
1	Afghanistan
4	Algeria
13	Armenia
19	Azerbaijan
23	Bangladesh
29	Benin
31	Bhutan
33	Bolivia
42	Burkina Faso
43	Burundi
44	Cambodia
45	Cameroon
47	Cape Verde
49	Central African Republic
50	Chad
57	Colombia
59	Congo
61	Costa Rica
66	Cote d'Ivoire
68	Democratic Republic of the Congo
70	Djibouti
72	Dominican Republic
40765	Egypt
75	El Salvador
79	Ethiopia
90	Gambia
92	Georgia
94	Ghana
103	Guatemala
106	Guinea
105	Guinea-Bissau
108	Haiti
111	Honduras
115	India
116	Indonesia
117	Iran  (Islamic Republic of)
118	Iraq
122	Italy
130	Jordan
133	Kenya
138	Kyrgyzstan
139	Lao People's Democratic Republic
141	Lebanon
142	Lesotho
144	Liberia
150	Madagascar
152	Malawi
155	Mali
159	Mauritania
170	Mozambique
171	Myanmar
175	Nepal
180	Nicaragua
181	Niger
182	Nigeria
188	Pakistan
191	Panama
195	Peru
196	Philippines
205	Rwanda
217	Senegal
226	Somalia
70001	South Sudan
231	Sri Lanka
999	State of Palestine
40764	Sudan
235	Swaziland
238	Syrian Arab Republic
239	Tajikistan
242	Timor-Leste
249	Turkey
253	Uganda
254	Ukraine
257	United Republic of Tanzania
269	Yemen
270	Zambia
271	Zimbabwe
\.


--
-- Data for Name: locations_adm1; Type: TABLE DATA; Schema: public; Owner: spalladino
--

COPY locations_adm1 (id, name, location_adm0_id) FROM stdin;
272	Badakhshan	1
276	Bamyan	1
278	Faryab	1
282	Hirat	1
284	Kabul	1
285	Kandahar	1
292	Nangarhar	1
296	Paktya	1
99878	$Daykundi	1
280	Ghor	1
344	Alger	4
383	Tindouf	4
2553		4
388	Tlemcen	4
464	Yerevan	13
462	Tavush	13
458	Lori	13
454	Ararat	13
575	Barisal	23
576	Chittagong	23
577	Dhaka	23
578	Khulna	23
579	Rajshahi	23
580	Sylhet	23
616	Littoral	29
609	Alibori	29
612	Borgou	29
610	Atakora	29
615	Donga	29
613	Collines	29
620	Zou	29
619	Plateau	29
618	Oueme	29
617	Mono	29
614	Couffo	29
40444	Chuquisaca	33
40446	La Paz	33
40445	Cochabamba	33
40447	Oruro	33
40448	Potosi	33
40450	Tarija	33
40449	Santa Cruz	33
40443	Beni	33
648	Pando	33
40277	Cascades	42
40286	Plateau Central	42
40288	Sud-ouest	42
40287	Sahel	42
40283	Est	42
40285	Nord	42
40280	Centre-nord	42
40281	Centre-ouest	42
40278	Centre	42
40279	Centre-est	42
40276	Boucle Du Mouhoun	42
40282	Centre-sud	42
40284	Hauts-bassins	42
40543	Bujumbura Mairie	43
40548	Gitega	43
40551	Kirundo	43
40554	Muyinga	43
40558	Ruyigi	43
40556	Ngozi	43
40547	Cibitoke	43
40542	Bubanza	43
794	Kampong Chhnang	44
793	Kampong Cham	44
814	Takeo	44
811	Siem Reap	44
808	Prey Veng	44
806	Phnom Penh	44
797	Kampot	44
792	Battambang	44
791	Banteay Meanchey	44
795	Kampong Speu	44
796	Kampong Thom	44
798	Kandal	44
809	Pursat	44
804	Otdar Meanchey	44
801	Kratie	44
812	Stung Treng	44
802	Preah Sihanouk	44
803	Mondul Kiri	44
807	Preah Vihear	44
821	Nord - Ouest	45
820	Nord	45
818	ExtrOme - Nord	45
849	Santo Antao	47
851	Sao Vicente	47
848	Santiago	47
67154	Bangui	49
864	Ouaka	49
861	Nana-Gribizi	49
862	Nana-MambTrT	49
865	Ouham	49
866	Ouham PendT	49
860	Mbomou	49
856	Haute-Kotto	49
12927	Ouaddai	50
875	Lac	50
12915	Kanem	50
873	Guera	50
12918	Logone Oriental	50
12914	Barl El Gazal	50
12912	Hadjer Lamis	50
12923	Barh Koh	50
948	Cundinamarca	57
964	Valle Del Cauca	57
935	Antioquia	57
962	Sucre	57
947	Cordoba	57
937	Atlantico	57
954	Meta	57
958	Quindio	57
955	Narino	57
944	Cauca	57
956	Norte De Santander	57
961	Santander	57
939	Boyaca	57
945	Cesar	57
938	Bolivar	57
978	Pool	59
975	Likouala	59
973	Kouilou	59
974	Lekoumou	59
970	Bouenza	59
971	Cuvette	59
1051	Vallee Du Bandama	66
40692	Montagnes	66
1041	Denguele	66
16838	$District Autonome de Yamoussoukro	66
40694	#Haut-sassandra	66
40693	#Moyen-Cavally	66
1046	#Moyen Comoe	66
1071	Katanga	68
1072	Kinshasa	68
1068	Equateur	68
1076	Sud-Kivu	68
1073	Maniema	68
1075	Orientale	68
1074	Nord-Kivu	68
1066	Bandundu	68
1067	Bas-Congo	68
1069	Kasai Occidental	68
1070	Kasai Oriental	68
1095	Djibouti	70
1093	Ali Sabieh	70
1094	Dikhil	70
1096	Obock	70
1097	Tadjourah	70
1196	Sonsonate	75
1186	Chalatenango	75
1187	Cuscatlan	75
1190	La Union	75
1191	Morazan	75
1192	San Miguel	75
1193	San Salvador	75
1194	San Vicente	75
1195	Santa Ana	75
1185	Cabanas	75
1197	Usulutan	75
1189	La Paz	75
1237	Tigray	79
47679	Somali	79
47678	Oromia	79
1229	Amhara	79
1231	Dire Dawa	79
1236	SNNPR	79
1227	Addis Ababa	79
1232	Gambela	79
1228	Afar	79
1230	Beneshangul Gumu	79
112869	$Kanifing Municipal Council	90
1285	Central River	90
1289	Upper River	90
1290	West Coast	90
1288	North Bank	90
1287	Lower River	90
1307	Tbilisi	92
1328	Greater Accra	94
1333	Western	94
1327	Eastern	94
1326	Central	94
1324	Ashanti	94
1325	Brong Ahafo	94
1332	Volta	94
1329	Northern	94
1330	Upper East	94
1331	Upper West	94
64821	Guatemala	103
40701	Conakry	106
40703	Kankan	106
40705	Labe	106
40700	Boke	106
1392	Sector Autonomo De Bissau	105
1416	Sud	108
1409	Artibonite	108
1410	Centre	108
1417	Sud Est	108
1411	Grande Anse	108
1412	Nord	108
1413	Nord Est	108
1415	Ouest	108
1414	Nord Ouest	108
1509	Tripura	115
1510	Uttar Pradesh	115
1491	Gujarat	115
1502	Mizoram	115
1505	Punjab	115
1494	Karnataka	115
1488	Bihar	115
1497	Madhya Pradesh	115
1504	Orissa	115
70074	$Chandigarh	115
1508	Tamil Nadu	115
70082	$Uttarakhand	115
1489	Delhi	115
1503	Nagaland	115
1495	Kerala	115
1487	Assam	115
1492	Haryana	115
1485	Andhra Pradesh	115
1486	Arunachal Pradesh	115
1506	Rajasthan	115
40429		115
1511	West Bengal	115
1493	Himachal Pradesh	115
1498	Maharashtra	115
70078	$Jharkhand	115
1501	Meghalaya	115
40424		115
1484	Andaman and Nicobar	115
1490	Goa	115
70080	$Puducherry	115
1560	Tehran	117
1564	Anbar	118
1575	Diyala	118
1579	Salah al-Din	118
1567	Qadissiya	118
1577	Missan	118
1576	Kerbala	118
1568	Najaf	118
1566	Muthanna	118
1573	Thi-Qar	118
1569	Erbil	118
1578	Ninewa	118
1574	Dahuk	118
1572	Baghdad	118
1580	Sulaymaniyah	118
1571	Babil	118
1565	Basrah	118
1570	Kirkuk	118
51328	Nairobi	133
51331	Rift Valley	133
51330	Nyanza	133
51327	Eastern	133
51329	North Eastern	133
51326	Coast	133
1747	Chuy	138
1750	Osh	138
1749	Naryn	138
1752	Ysyk-Kol	138
1748	Jalal-Abad	138
1751	Talas	138
1746	Batken	138
1768	Vientiane capital	139
1758	Khammouan	139
1764	Savannakhet	139
1756	Champasak	139
1759	Louangphabang	139
1760	Louang-Namtha	139
1770	Xiangkhouang	139
1755	Bolikhamxai	139
1763	Salavan	139
1762	Phongsali	139
1761	Oudomxai	139
1754	Bokeo	139
1757	Houaphan	139
1765	Xaignabouli	139
1766	Xekong	139
1753	Attapu	139
1767	Vientiane	139
1799	North	141
1801	Mount Lebanon	141
1797	Bekaa	141
1798	Beirut	141
1802	Nabatiye	141
1800	South	141
1807	Maseru	142
1804	Butha Buthe	142
1805	Leribe	142
1803	Berea	142
1806	Mafeteng	142
1808	Mohale's Hoek	142
1811	Quthing	142
1812	Thaba Tseka	142
1810	Qacha's Nek	142
1809	Mokhotlong	142
1814	Bomi	144
1821	Lofa	144
1819	Grand Gedeh	144
1815	Bong	144
1817	Grand Bassa	144
1818	Grand Cape Mount	144
1823	Maryland	144
1824	Montserrado	144
1825	Nimba	144
1822	Margibi	144
1827	River Gee	144
1828	Sinoe	144
1820	Grand Kru	144
1816	Gbarpolu	144
1826	Rivercess	144
1885	#Toliara	150
1880	#Antananarivo	150
1883	#Mahajanga	150
1882	#Fianarantsoa	150
1881	Atsinanana	150
1884	#Toamasina	150
1890	Southern Region	152
1888	Central Region	152
1889	Northern Region	152
1926	Bamako	155
1927	Gao	155
1928	Kayes	155
1929	Kidal	155
1930	Koulikoro	155
1931	Mopti	155
1934	Tombouctou	155
1933	Sikasso	155
1932	Segou	155
2006	Brakna	159
2016	Trarza	159
2014	Tagant	159
2013	Nouakchott	159
2008	Gorgol	159
2010	Hodh Ech Chargi	159
2004	Adrar	159
2005	Assaba	159
2011	Hodh El Gharbi	159
2009	Guidimakha	159
2007	Dakhlet-Nouadhibou	159
2120	Sofala	170
2113	Gaza	170
2119	Niassa	170
2115	Manica	170
2117	#Maputo (city)	170
2118	Nampula	170
2112	Cabo Delgado	170
2122	Zambezia	170
2121	Tete	170
2114	Inhambane	170
2123	Rakhine	171
41774	Shan (E)	171
2125	Chin	171
2130	Magway	171
2127	Kachin	171
41775	Shan (N)	171
41776	Shan (S)	171
2136	Yangon	171
2133	Sagaing	171
2135	Taninthayi	171
41772	Bago (E)	171
2154	Far Western	175
2153	Eastern	175
2155	Mid Western	175
2156	Western	175
2152	Central	175
2208	Tillaberi	181
2207	Tahoua	181
2202	Agadez	181
2209	Zinder	181
2204	Dosso	181
2206	Niamey	181
2205	Maradi	181
2203	Diffa	181
65709	Sokoto	182
2226	Katsina	182
2216	Borno	182
2223	Jigawa	182
2276	Punjab	188
2277	Sindh	188
2275	North-West Frontier	188
2272	Balochistan	188
2342	Lima	195
2355	National Capital region (NCR)	196
2354	Cordillera Administrative region (CAR)	196
2356	Region I (Ilocos region)	196
2357	Region II (Cagayan Valley)	196
67165	Region III (Central Luzon)	196
67166	Region IV-A (Calabarzon)	196
67167	Region IV-B (Mimaropa)	196
2361	Region V (Bicol region)	196
2362	Region VI (Western Visayas)	196
2363	Region VII (Central Visayas)	196
2364	Region VIII (Eastern Visayas)	196
67159	Region IX (Zamboanga Peninsula)	196
67160	Region X (Northern Mindanao)	196
67161	Region XI (Davao Region)	196
67162	Region XII (Soccsksargen)	196
2368	Region XIII (Caraga)	196
67156	Autonomous region in Muslim Mindanao (ARMM)	196
21973	$West/Iburengerazuba	205
21971	$North/Amajyaruguru	205
21972	$South/Amajyepfo	205
2587	Kigali City/Umujyi wa Kigali	205
21969	$East/Iburasirazuba	205
2643	Tambacounda	217
47585	Diourbel	217
2645	Ziguinchor	217
2636	Dakar	217
47589	Saint louis	217
47586	Fatick	217
2640	Kolda	217
47587	Louga	217
1378	$Kaffrine	217
2639	Kaolack	217
1374	$Kedougou	217
47588	Matam	217
2644	Thies	217
1376	$Sedhiou	217
2705	Woqooyi Galbeed	226
2691	Bay	226
2690	Bari	226
2704	Togdheer	226
2702	Sanaag	226
2700	Mudug	226
2701	Nugaal	226
2692	Banadir	226
2695	Hiraan	226
2754	Northern Bahr El Ghazal	70001
2747	Unity	70001
2751	Jonglei	70001
2765	Warrap	70001
2748	Central Equatoria	70001
37021	Upper Nile	70001
2746	El Buheyrat	70001
2750	Eastern Equatoria	70001
2737	Eastern	231
2740	Northern	231
2744	Western	231
267	West Bank	999
91	Gaza Strip	999
2757	Northern Darfur	40764
2749	Blue Nile	40764
2764	Southern Darfur	40764
2769	Western Darfur	40764
2756	Northern Kordofan	40764
2763	Southern Kordofan	40764
2752	Kassala	40764
2770	White Nile	40764
40772	Red Sea	40764
2767	#West Kordofan	40764
2836	City-Damascus	238
2837	Damascus	238
2838	Daraa	238
2839	Deir Ezzor	238
2841	Hassakeh	238
2845	Raqqa	238
2846	Tartous	238
2844	Lattakia	238
2840	Hama	238
2842	Homs	238
2834	Aleppo	238
2843	Edlib	238
2833	Al_Qunaytirah	238
2835	As_Suweida	238
2850	Districts of Republican Subordination (DRS)	239
2847	Badakhshoni Kuhi	239
2849	Sughd	239
2848	Khatlon	239
2960	Bobonaro	242
2968	Oecussi	242
2959	Baucau	242
2962	Dili	242
1344	$Kyankwanzi	253
42182	Kampala	253
42179	Iganga	253
3114	Jinja	253
766	$Kween	253
3111	Gulu	253
47082	Lira	253
47086	Mbarara	253
3148	Cherkas'ka	254
3149	Chernihivs'ka	254
3150	Chernivets'ka	254
3151	Dnipropetrovs'ka	254
3152	Donets'ka	254
3153	Ivano-frankivs'ka	254
3154	Kharkivs'ka	254
3155	Khersons'ka	254
3156	Khmel'nyts'ka	254
3157	Kirovohrads'ka	254
3159	Kyyivs'ka	254
3161	Luhans'ka	254
3160	L'vivs'ka	254
3162	Mykolayivs'ka	254
3163	Odes'ka	254
3164	Poltavs'ka	254
3165	Rivnens'ka	254
3166	Sums'ka	254
3167	Ternopil's'ka	254
3168	Vinnyts'ka	254
3169	Volyns'ka	254
3170	Zakarpats'ka	254
3171	Zaporiz'ka	254
3172	Zhytomyrs'ka	254
48357	Arusha	257
48365	Manyara	257
48361	Kagera	257
48358	Dar es salaam	257
48359	Dodoma	257
48360	Iringa	257
48362	Kigoma	257
48364	Lindi	257
48367	Mbeya	257
48368	Morogoro	257
48363	Kilimanjaro	257
48369	Mtwara	257
48370	Mwanza	257
48376	Shinyanga	257
48377	Singida	257
48375	Ruvuma	257
48380	Tabora	257
48381	Tanga	257
48366	Mara	257
48374	Rukwa	257
115002	Geita	257
115007	Njombe	257
115005	Katavi	257
3409	Aden	269
3415	Amran	269
3418	Hajjah	269
3411	Al Hudaydah	269
3422	Sa'ada	269
144969	$Amanat Al Asimah	269
3425	Taizz	269
3427	Copperbelt	270
3428	Eastern	270
3433	Southern	270
3432	Northern	270
3426	Central	270
3434	Western	270
3431	North-Western	270
3429	Luapula	270
3430	Lusaka	270
3436	Harare	271
3439	Mashonaland East	271
3440	Mashonaland West	271
3438	Mashonaland Central	271
3435	Bulawayo	271
3442	Matabeleland North	271
3443	Matabeleland South	271
3441	Masvingo	271
3444	Midlands	271
3437	Manicaland	271
\.


--
-- Data for Name: locations_mkt; Type: TABLE DATA; Schema: public; Owner: spalladino
--

COPY locations_mkt (id, name, location_adm1_id) FROM stdin;
266	Fayzabad	272
267	Mazar	272
268	Bamyan	276
269	Maymana	278
270	Hirat	282
271	Kabul	284
272	Kandahar	285
273	Jalalabad	292
274	Gardez	296
275	Nili	99878
276	Ghor	280
1794	Algiers	344
1795	Tindouf	383
1796	Samara	2553
1797	Dakhla	388
641	Yerevan	464
642	Gavar	462
643	Vanadzor	458
644	Berd	462
1787	Armavir	458
1886	Artashat	454
112	Barisal Division	575
114	Chittagong Division	576
116	Dhaka Division	577
118	Khulna Division	578
120	Rajshahi Division	579
122	Sylhet Division	580
124	Dantokpa	616
1044	Malanville (CBM)	609
1749	Banikoara	609
1750	Sinende	612
1751	Kalale	612
1752	Nikki	612
1753	N'Dali	612
1754	Parakou	612
1755	Kerou	610
1756	Tanguieta	610
1757	Natitingou	610
1758	Djougou	615
1759	Savalou	613
1760	Glazoue	613
1761	Bohicon	620
1762	Ketou	619
1763	Pobe	619
1764	Ouando	618
1765	Come	617
1766	Azove	614
307	Sucre	40444
308	La Paz City	40446
309	Cochabamba City	40445
310	Oruro City	40447
311	Potosi	40448
312	Tarija City	40450
313	Santa Cruz City	40449
314	Trinidad	40443
315	Cobija	648
129	Banfora	40277
130	Bousse	40286
131	Diebougou	40288
132	Djibo	40287
133	Dori	40287
134	Fada N'Gourma	40283
135	Gorom Gorom	40287
136	Gourcy	40285
137	Kongoussi	40280
138	Koudougou	40281
139	Sakaryare	40278
140	Tenkodogo	40279
141	Tougan	40276
1042	Kantchari (CBM)	40283
1043	Namouno (CBM)	40283
1802	Pouytenga	40279
1803	Kaya	40280
1804	Leo	40281
1805	Guelwongo	40282
1806	Nieneta	40284
1892	Dedougou	40276
1893	Ouahigouya	40285
201	Bujumbura	40543
202	Gitega	40548
203	Kirundo	40551
204	Muyinga	40554
205	Ruyigi	40558
206	Ngozi	40556
207	Sogemac (central market Bujumbura)	40543
1826	Rugombo	40547
1827	Musenyi	40542
632	Kampong Chhnang	794
633	Kampong Cham	793
634	Takeo	814
635	Siem Reap	811
636	Prey Veng	808
637	Phnom Penh	806
638	Kampot	797
639	Battambang	792
640	Banteay Meanchey	791
1524	Serei Saophoan	791
1525	Thma Puok	791
1526	Pha'av	793
1527	Boeung Kok	793
1528	Sala Lekh Pram	794
1529	Central Market (KSP)	795
1530	Bat Doeng	795
1531	Kampong Thum	796
1532	Kampong Chheuteal	796
1533	S'ang	798
1534	Ta Khmau	798
1535	Chheu Kach Thmei	808
1536	Chheu Tom	809
1538	Kralanh	811
1539	Psa Leu	811
1540	Anlong Veng	804
1541	Samroang	804
1564	Central Market (PST)	809
1671	Pursat	809
1673	Kratie	801
1674	Stung Treng	812
1675	Preah Sihanouk	802
1676	Mondul Kiri	803
1678	Preah Vihear	807
1578	Ngong	821
1579	Pitoa	820
1580	Adoumri	820
1581	Pintchoumba	820
1582	Gode	820
1583	Poli	820
1584	Guider	820
1585	Figuil	820
1586	Mayo Oulo	820
1587	Mbaiboum	820
1588	Rey Bouba	820
1589	Madingring	820
1590	Kousseri	818
1591	Logone-Birni	818
1592	Mada	818
1593	Garoua	820
533	Santo Antao	849
534	Sao Vicente	851
535	Santiago	848
685	Bangui	67154
686	Bambari	864
1790	Kaga bandoro	861
1791	Bouar	862
1792	Bossangoa	865
1793	Paoua	866
1856	Bangassou	860
1857	Bria	856
228	Abeche	12927
229	Bol	875
230	Mao	12915
231	Mongo	873
232	Moundou	12918
233	Moussoro	12914
234	Ndjamena	12912
235	Sarh	12923
236	Gore	12918
840	Bogota	948
841	Cali	964
842	Medellin	935
843	Sincelejo	962
844	Monteria	947
845	Barranquilla	937
846	Villavicencio	954
847	Armenia	958
848	San Vicente	935
849	Pasto	955
850	Popayan	944
851	Cucuta	956
852	Bucaramanga	961
853	Tunja	939
854	Valledupar	945
855	Cartagena	938
701	Moungali	978
702	Ouenze	978
703	Mikalou	978
705	Monzombo	975
706	Total	978
707	Grand marche/Fond Ntie-Ntie/Nkouikou	973
1820	Sibiti	974
1821	Nkayi	970
1822	Owando	971
125	Bouake	1051
126	Katiola	1051
127	Man	40692
128	Odienne	1041
834	Adjame	16838
835	Daloa	40694
837	Duekoue	40693
838	Guiglo	40693
839	Abengourou	1046
143	Kalemie	1071
144	Kinshasa	1072
145	Lubumbashi	1071
146	Mbandaka	1068
147	Uvira	1076
148	Kabalo	1071
149	Kindu	1073
150	Bukavu	1076
151	Bunia	1075
152	Goma	1074
1395	Moba	1071
1596	Bandundu ville	1066
1597	Kikwit	1066
1598	Boma	1067
1599	Matadi	1067
1601	Tshikapa	1069
1602	Kananga	1069
1603	Mwene-Ditu	1070
1604	Kamina	1071
1605	Kolwezi	1071
1606	Likasi	1071
1607	Beni	1074
1608	Kisangani	1075
1609	Isiro	1075
1648	Zongo	1075
1649	Gbadolite	1068
1650	Butembo	1074
1651	Mbuji-mayi	1070
536	Arta	1095
537	Ali Sabieh	1093
538	Dikhil	1094
539	Obock	1096
540	Tadjourah	1097
153	Ahuachapan	1196
154	Chalatenango	1186
155	Cojutepeque	1187
156	La Union	1190
157	San Francisco Gotera	1191
158	San Miquel	1192
159	San Salvador	1193
160	San Vicente	1194
161	Santa Ana	1195
162	Sensuntepeque	1185
163	Sonsonate	1196
164	Usulutan	1197
165	Zacatecoluca	1189
458	Alamata	1237
459	Korem	1237
460	Gode	47679
461	Jijiga	47679
462	Babile	47678
463	Beddenno	47678
464	Deder	47678
465	Robit	1229
466	Abi Adi	1237
467	Abomsa	1229
468	Wolenchiti	47678
469	Bati	1229
470	Bedessa	47678
471	Delo	47678
472	Dire Dawa	1231
473	Gamo Gofa	1236
474	Hossana	1236
475	Kobo	1229
476	Sodo	1236
477	Wekro	1237
478	Wonago	1236
479	Yabelo	47678
480	Addis Ababa	1227
481	Ambo	47678
482	Baher Dar	1229
483	Robe	47678
484	Desse	1229
485	Gonder	1229
486	Jimma	47678
487	Mekele	1237
488	Shashemene	47678
489	Ajeber	1229
490	Amaro	1236
491	Assela	47678
492	Ebinat	1229
493	Karati	1236
494	Kersa	47678
495	Merti	47678
496	Mota	1229
497	Sekota	1229
498	Turmi	1236
499	Nekempt	47678
500	Woliso	47678
501	Ziway	47678
502	Debre Markos	1229
503	Bure	1229
504	Debre Birhan	1229
505	Humera	1237
506	Gambela	1232
507	Adwa	1237
508	Adigrat	1237
509	Hawzien	1237
510	Debark	1229
511	Abaala	1228
512	Nazareth	47678
513	Aroresa	1236
514	Derashe	47678
515	Gordamole	47678
516	Awassa Zuriya	1236
517	Meti	1232
856	Sik'ela	1237
1831	Asayta	1228
1832	Assosa	1230
277	Bakau	112869
278	Banjul	112869
279	Bansang	1285
280	Basse Santa su	1289
281	Brikama	1290
282	Essau / Barra	1288
283	Farafenni	1288
284	Kaur Wharf Town	1285
285	Kerewan	1288
286	Ker Pate Kore	1288
287	Kuntaur	1285
288	Kwinella Nya Kunda	1287
289	Lamin	1288
290	Latri kunda	112869
912	Serrekunda	112869
913	Sibanor	1290
914	Soma	1287
915	Wellingara	1285
916	BrikamaBa	1285
917	Sare Ngai	1289
918	Sare Bojo	1289
919	Ndugu Kebbeh	1288
920	Wassu	1285
301	Tbilisi	1307
209	Accra	1328
210	Tema	1328
211	Sekondi/Takoradi	1333
212	Koforidua	1327
213	Cape Coast	1326
214	Mankessim	1326
215	Kumasi	1324
216	Obuasi	1324
217	Sunyani	1325
218	Techiman	1325
219	Ho	1332
220	Tamale	1329
221	Bolga	1330
222	Wa	1331
223	Ejura	1324
1145	La Terminal	64821
354	Yeguema	40701
357	Dibida	40703
358	Grand marche	40703
1573	Marche central	40705
1639	Boke	40700
227	Bandim	1392
102	Cayes	1416
103	Gonaives	1409
104	Hinche	1410
105	Jacmel	1417
106	Jeremie	1411
107	Cap-Haitien	1412
108	Ouanaminthe	1413
109	Port-au-Prince	1415
110	Port-de-Paix	1414
921	Agartala	1509
922	Agra	1510
923	Ahmedabad	1491
924	Aizwal	1502
925	Amritsar	1505
926	Bengaluru	1494
927	Bhagalpur	1488
928	Bhopal	1497
929	Bhubaneshwar	1504
930	Chandigarh	70074
931	Chennai	1508
932	Cuttack	1504
933	Dehradun	70082
934	Delhi	1489
935	Dharwad	1494
936	Dimapur	1503
937	Dindigul	1508
938	Ernakulam	1495
939	Guwahati	1487
940	Hisar	1492
941	Hyderabad	1485
942	Indore	1497
943	Itanagar	1486
944	Jaipur	1506
945	Jammu	40429
946	Jodhpur	1506
947	Kanpur	1510
948	Karnal	1492
949	Kohima	1503
950	Kolkata	1511
951	Kota	1506
952	Lucknow	1510
953	Ludhiana	1505
954	Mandi	1493
955	Mumbai	1498
956	Nagpur	1498
957	Patna	1488
958	Raipur	1498
959	Rajkot	1491
960	Ranchi	70078
961	Sambalpur	1504
962	Shillong	1501
963	Shimla	1493
964	Siliguri	1511
965	Srinagar	40424
966	T.Puram	1495
967	Thiruchirapalli	1508
968	Tiruvanantapuram	1495
970	Varanasi	1510
971	Vijaywada	1485
973	Bathinda	1505
1392	Port Blair	1484
1393	Panaji	1490
1394	Puducherry	70080
1779	Gurgaon	1492
1780	Gwalior	1497
1781	Kozhidoke	1495
1782	Panchkula	1492
1783	Rourkela	1504
1785	Jabalpur	70074
1652	Tehran Market	1560
1464	Alanbar	1564
1465	Dyala	1575
1466	Salhdin	1579
1467	Wasit	1567
1468	Missan	1577
1469	Karbala	1576
1470	Najaf	1568
1471	Al-Muthana	1566
1472	Qadisyia	1567
1473	Thi Qar	1573
1474	Erbil	1569
1475	Mosul	1578
1492	Dohuk	1574
1493	Baghdad	1572
1494	Sulaimania	1580
1495	Babylon	1571
1496	Basra	1565
1513	Kerkuk	1570
184	Nairobi	51328
185	Eldoret	51331
186	Kisumu	51330
187	Kitui	51327
188	Lodwar (Turkana)	51331
189	Mandera	51329
190	Marsabit	51327
191	Mombasa	51326
1850	Nakuru	51331
1851	Marigat (Baringo)	51331
1852	Kilifi	51326
1853	Kajiado	51331
1854	Hola (Tana River)	51326
1855	Garissa	51329
671	Bishkek	1747
672	Osh	1750
673	Naryn	1749
674	Dobolu	1749
675	Teplokluchenka	1752
676	Suzak	1748
677	Kyzyl-Tuu	1748
678	Kyzyl-Adyr	1751
679	Pokrovka	1751
680	Batken	1746
681	Karabak	1746
682	Karasuu	1750
683	Sary-Kamysh	1750
1422	Arslanbob	1748
1423	Bazar-Korgon	1748
1424	Jalal-Abad	1748
1426	Kok-Say	1751
1427	Nookat	1750
1476	At-Bashi	1749
1477	Bystrovka	1747
1478	Kaiyrma-Aryk	1752
1479	Orto-Nura	1749
1481	Samarkandek	1746
666	Vientiane Municipality	1768
667	Khammouane	1758
668	Savannakhet	1764
669	Champassack	1756
670	Luang Prabang	1759
1566	Luangnamtha	1760
1567	Xiengkhuang	1770
1568	Borikhamxay	1755
1569	Saravane	1763
1640	Phongsaly	1762
1641	Oudomxay	1761
1642	Bokeo	1754
1643	Huaphanh	1757
1644	Xayabury	1765
1645	Sekong	1766
1646	Attapeu	1753
1647	Vientiane Province	1767
1684	Akkar	1799
1685	Aley	1801
1686	Baabda	1801
1687	Baalbeck	1797
1688	Batroun	1799
1689	Beirut	1798
1690	Bint Jbeil	1802
1691	Bechare	1799
1692	Chouf	1801
1693	El Metn	1801
1694	Hasbaya	1802
1695	Hermel	1797
1696	Jbeil	1801
1698	Keserwan	1798
1699	Koura	1799
1701	Minieh-Dannieh	1799
1702	Nabatiyeh	1802
1703	Rashaya	1797
1704	Saida	1800
1705	Tripoli	1799
1706	Sour	1800
1707	West Beqaa	1797
1708	Zahle	1797
1709	Zgharta	1799
522	Maseru	1807
523	Butha Buthe	1804
524	Leribe	1805
525	Berea	1803
526	Mafeteng	1806
527	Mohale's Hoek	1808
528	Quthing	1811
529	Thaba Tseka	1812
530	Qacha's Nek	1810
531	Mokhotlong	1809
237	Tubmanburg	1814
238	Voinjama	1821
239	Zwedru	1819
240	Gbarnga	1815
241	Buchanan	1817
242	Bo Waterside	1818
243	Foya	1821
244	Pleebo	1823
245	Red Light	1824
246	Saclepea	1825
631	Toe Town	1819
1742	Duala	1824
1743	Kakata	1822
1744	Ganta	1825
1745	Fish Town	1827
1746	Tuobo-Gbaweeleken	1827
1747	Harper	1823
1748	Greenville	1828
1808	Barclayville	1820
1809	Bopolu	1816
1810	Cestos City	1826
1811	Gbarma	1816
732	Betioky	1885
733	Ampanihy	1885
734	Beloha	1885
735	Tsihombe	1885
736	Ambovombe-androy	1885
737	Amboasary	1885
738	Bekily	1885
739	Fort-Dauphin	1885
740	Antananarivo	1880
741	Boeny	1883
742	Ihorombe	1882
743	Melaky	1883
744	Sava	1881
745	Vatovavy Fitovinany	1882
746	Diana	1881
747	Sofia	1883
748	Bongolava	1880
749	Androy	1885
750	Atsinanana	1884
751	Vakinakaratra	1880
752	Atsimo Atsinanana	1882
753	Analamanga	1880
754	Alaotra Mangoro	1884
755	Haute Matsiatra	1882
756	Itasy	1880
757	Atsimo Andrefana	1885
758	Analanjirofo	1884
759	Anosy	1885
760	Amoron'I Mania	1882
761	Menabe	1885
762	Betsiboka	1883
763	Balaka	1890
764	Bangula	1890
765	Bembeke turn off	1888
766	Bowe	1888
767	Bvumbwe	1890
768	Chatoloma	1888
769	Chikwawa	1890
770	Chilumba	1889
771	Chimbiya	1888
772	Chintheche	1889
773	Chiradzulu	1890
774	Chitipa	1889
775	Dwangwa	1888
776	Embangweni	1889
777	Hewe	1889
778	Jali	1890
779	Karonga	1889
780	Kasungu	1888
781	Limbe	1890
782	Liwonde	1890
783	Luchenza	1890
784	Lunzu	1890
785	Madisi	1888
786	Malomo	1888
787	Mangochi	1890
788	Mayaka	1890
789	Mchinji	1888
790	Misuku	1889
791	Mitundu	1888
792	Mkanda	1888
793	Monkey Bay	1890
794	Mpamba	1889
795	Mponela	1888
796	Mtakataka	1888
797	Muloza	1890
798	Mwansambo	1888
799	Mwanza	1890
800	Mzimba	1889
801	Mzuzu	1889
802	Namwera	1890
803	Nanjiri	1888
804	Nchalo	1890
805	Neno	1890
806	Ngabu	1890
807	Nkhamenya	1888
808	Nkhata Bay	1889
809	Nkhoma	1888
810	Nkhotakota	1888
811	Nsanje	1890
812	Nsundwe	1888
813	Ntaja	1890
814	Ntcheu	1888
815	Ntchisi	1888
816	Nthalire	1889
817	Phalombe	1890
818	Rumphi	1889
819	Salima	1888
820	Santhe	1888
821	Sharpevaley	1888
822	Thete	1888
823	Thondwe	1890
824	Zomba	1890
825	Dowa	1888
826	Lizulu	1888
827	Lilongwe	1888
828	Jenda	1889
829	Kasiya	1888
830	Migowi	1890
831	Nambuma	1888
832	Ntonda	1888
833	Tsangano turn off	1888
1710	Chamama	1888
247	Bamako	1926
248	Gao	1927
249	Kayes Centre	1928
250	Kidal	1929
251	Koulikoro Ba	1930
252	Mopti Digue	1931
253	Niarela	1926
255	Tombouctou	1934
256	Sikasso Centre	1933
857	Ansongo	1927
858	Badalabougou	1926
859	Badinko	1928
860	Bandiagara	1931
861	Bankass	1931
862	Bla	1932
863	Bougouni	1933
864	Diakawere	1932
865	Diallassagou	1931
866	Dibida	1926
867	Diema	1928
868	Dioila	1930
869	Dioro	1932
870	Dire	1934
871	Djenne	1931
872	Djikoroni	1926
873	Dogofri	1932
874	Dougouolo	1932
875	Fadjiguila	1926
876	Faladie	1930
877	Fana	1930
878	Fatine	1932
879	Kayes N'Dy	1928
880	Kayes Plateau	1928
881	Kita	1928
882	Koulikoro Gare	1930
883	Koulogon	1931
884	Koumantou	1933
885	Koury	1933
886	Koutiala	1933
887	Lafiabougou	1926
888	Lere	1934
889	Loulouni	1933
890	Magnambougou	1926
891	Medine	1926
892	Monimpebougou	1932
893	Mopti Guangal	1931
894	M'Pessoba	1933
895	Nara	1930
896	Niamakoro	1926
897	Niono	1932
898	Nioro	1928
899	Ouolofobougou	1926
900	San	1932
901	Segou Centre	1933
902	Segou Chateau	1932
903	Shiango	1932
904	Sikasso Medine	1933
905	Sirakorola	1930
906	Sogoniko	1926
907	Sokolo	1932
908	Tonka	1934
909	Touna	1932
910	Zangasso	1933
911	Macina	1932
1682	Kati	1930
1812	Kouremale	1930
1813	Ouelessebougou	1930
1814	Kolokani	1930
1815	Yanfolila	1933
1816	Yorosso	1933
1817	Koro	1931
1818	Kourouma	1932
1819	Kifosso	1933
689	Boghe	2006
690	Magta-lahjar	2006
691	Mederdra	2016
692	Moudjeria	2014
693	Nouakchott	2013
694	Toufounde-Cive	2008
695	Adel Bagrou	2010
696	Aoujeft	2004
1357	Kankossa	2005
1396	Tentane	2011
1614	Barkeol	2005
1615	Djougountourou	2009
1618	Lexeiba1	2008
1619	Maghama	2008
1620	Mbagne	2006
1621	Mbout	2008
1623	Ndiago	2016
1625	Nouadhibou	2007
1626	Ouadane	2004
1627	Ould Yenge	2009
1635	Twil	2011
1636	Vassala	2010
1637	Wompou	2009
316	Beira	2120
317	Chokwe	2113
318	Gorongoza	2120
319	Lichinga	2119
320	Manica	2115
321	Maputo	2117
322	Nampula	2118
323	Pemba	2112
324	Milange	2122
325	Alto Molocue	2122
326	Angonia	2121
327	Chimoio	2115
328	Cuamba	2119
329	Inhambane	2114
330	Massinga	2114
331	Maxixe	2114
332	Mocuba	2122
333	Montepuez	2112
334	Mutarara	2121
335	Nacala	2118
336	Nhamatanda	2120
337	Quelimane	2122
338	Ribaue	2118
339	Tete	2121
340	Xai Xai	2113
977	Alel Than Kyaw	2123
978	Buthidaung	2123
979	Chying Thung	41774
980	Falam	2125
981	Gangaw	2130
982	Garayang	2127
983	Hakha	2125
985	Honai	41775
986	Hsihseng	41776
987	Inn Din	2136
988	Kalay	2133
989	Kaung Ming Sang	41775
990	Kha Mauck Siek	2123
991	Kong Chang	41775
992	KonKyan	41775
993	Kyein Chung	2123
995	Long Tan	41775
996	Lungngo	2125
997	Magway	2130
998	Man Pan	41775
999	Man Ton Pa	41775
1000	Man Tone	41775
1001	Matupi	2125
1002	Maungdaw	2123
1003	Min Kan	2130
1004	Mindat	2135
1005	Moe Mauk	41775
1006	Morhtai	41775
1007	Myin Hlut	2123
1008	Nam San Yang	2127
1009	Nga Khu Ra	2123
1010	Nyaung Chung	2123
1011	Pakhangyi	2130
1012	Pang Kham	41775
1013	Pang Yang	41775
1014	Rathedaung	2123
1015	Sadung	2127
1016	Sai Law	2127
1017	Taung Bazzar	2123
1018	Taung Pyo Let Wai	2123
1019	Taunggyi	41776
1020	Tonzang	2125
1021	Wai Maw	41772
1022	Wein Kao	41775
1023	Yenanchaung	2130
1024	Zedi Pyin	2123
1370	Tedim	2125
1382	Laukai	41775
1482	Thantlang	2125
1654	Htilin	2136
1655	Bhamo	2127
1656	Mansi	2127
1657	Shwegu	2127
1658	Lashio	41775
1659	Tangyan	41775
1660	Muse	41775
1661	Kutkai	41775
1662	Nam Kam	41775
1663	Yaesagyo	2130
1664	Pakokku	2130
1665	Phekhon	41776
1666	Hopone	41776
1667	Ying Phan	41776
1668	Ai Cheng	41775
1669	Wang Leng	41775
1670	Ban Wai	41775
645	Achham	2154
646	Bhojpur	2153
647	Dhankuta	2153
648	Doti	2154
649	Illam	2153
650	Jumla	2155
651	Kaski	2156
652	Kathmandu	2152
653	Nuwakot	2156
654	Palpa	2156
655	Rolpa	2155
656	Ramechap	2152
657	Surkhet	2155
658	Banke	2155
659	Chitwan	2152
660	Dhanusha	2152
661	Jhapa	2153
662	Kailali	2154
663	Morang	2153
664	Parsa	2152
665	Rupandehi	2156
543	Abala	2208
544	Abalak	2207
545	Aderbissinat	2202
546	Agadez Commune	2202
548	Arlit	2202
549	Ayorou	2208
550	Badaguichiri	2207
551	Bakin Birgi	2209
553	Bankilare	2208
554	Birnin Gaoure	2204
556	Bonkaney	2206
557	Bouza	2207
558	Chadakori	2205
560	Dan Issa	2205
561	Dan-Goulbi	2205
562	Diffa Commune	2203
564	Dogon Kiria	2204
565	Dogondoutchi	2204
566	Dole	2209
567	Dosso Commune	2204
568	Dungass	2209
573	Filingue	2208
574	Galmi	2207
575	Garare	2205
576	Garhanga	2207
577	Gaya	2204
578	Gotheye	2208
579	Goudoumaria	2203
580	Goure	2209
581	Guidan Roumdji	2205
582	Guidiguir	2209
583	Guidimouni	2209
584	Harobanda	2206
585	Ingall	2202
587	Kanembakache	2205
588	Kaou	2207
589	Karofane	2207
590	Katako	2206
591	Kazoe	2209
592	Keita	2207
593	Kirtachi	2208
594	Konni	2207
595	Kornaka	2205
596	Koundoumaoua	2209
597	Loga	2204
598	Magaria	2209
599	Maidjirgui	2205
600	Maine Soroa	2203
601	Mangaize	2208
602	Maradi Commune	2205
603	Matameye	2209
604	Mayahi	2205
605	Mokko	2204
606	Nguigmi	2203
607	Ouallam	2208
608	Ourno	2207
609	Petit Marche	2206
610	Sabon Machi	2205
612	Soubdou	2209
613	Tahoua Commune	2207
615	Tanout	2209
616	Tchadoua	2205
617	Tchintabaraden	2207
618	Tera	2208
619	Tessaoua	2205
622	Torodi	2208
623	Tounfafi	2207
624	Wadata	2206
626	Balayara	2208
627	Tillaberi Commune	2208
628	Dakoro	2205
629	Nguel Kolo	2207
1281	Chetimari	2203
1037	Illela (CBM)	65709
1038	Jibia (CBM)	2226
1039	Mai Adoua (CBM)	2226
1040	Damassack (CBM)	2216
1041	Mai Gatari (CBM)	2223
291	Lahore	2276
292	Multan	2276
293	Karachi	2277
294	Peshawar	2275
295	Quetta	2272
208	Lima	2342
167	Manila	2355
168	La Trinidad	2354
169	Lingayen	2356
170	Tuguegarao	2357
171	Palayan	67165
172	Santa Cruz	67166
173	Puerto Princesa	67167
174	Legazpi	2361
175	Iloilo City	2362
176	Cebu City	2363
177	Catarman	2364
178	Zamboanga City	67159
179	Tubod	67160
180	Davao City	67161
181	Koronadal	67162
182	Tandag	2368
183	Shariff Aguak	67156
1045	Birambo	21973
1046	Base	21971
1047	Bugarama	21973
1049	Bushenge	21973
1050	Butare	21972
1051	Byangabo	21971
1052	Byumba	21971
1053	Congo - Nil	21973
1054	Gahanga	2587
1056	Gakenke	21971
1057	Gasarenda	21972
1058	Gaseke	21971
1059	Gashyushya	21972
1060	Gatore	21969
1062	Gikongoro	21972
1063	Gisenyi	21973
1065	Kabacuzi	21972
1066	Kabarondo	21969
1067	Kabaya	21973
1070	Kamembe	21973
1072	Kayenzi	21972
1073	Kibirizi	21972
1074	Kibungo	21969
1075	Kicukiro	2587
1077	Kimisagara	2587
1078	Kirambo	21973
1081	Mahoko	21973
1084	Mukamira	21973
1085	Mukarange	21971
1086	Mulindi	2587
1087	Musanze	21971
1088	Musha	21969
1089	Ndago	21972
1091	Nyabugogo	2587
1092	Nyagahanika	21973
1093	Nyagatare	21969
1095	Nyakarambi	21973
1096	Nyamata	21969
1097	Nyamirambo	2587
1098	Nyanza	21972
1102	Rugarama	21971
1105	Ruhuha	21969
1106	Rukomo	21969
1107	Rushashi	21971
1109	Rwagitima	21969
1110	Rwamagana	21969
1400	Buhanda	21972
1402	Karenge	21971
1403	Kimironko	21969
1405	Mugina	21972
1406	Muhanga	21972
1407	Ngororero	21973
1409	Ruhango	21971
1484	Karambi	21972
1485	Kizi	21972
1487	Kibuye	21973
1488	Nkora	21971
1489	Muhondo	21971
1490	Ntunga	21969
1491	Gacurabwenge	21971
1560	Bumazi	21973
1561	Matimba	21969
1562	Rusine	21971
1885	Nyarugenge	2587
405	Bakel	2643
406	Bambey	47585
407	Bignona	2645
408	Castors	2636
409	Dagana	47589
410	Dakar	2636
411	Diakhao	47586
412	Diaobe	2640
413	Diourbel	47585
414	Fatick	47586
415	Gossas	47586
416	Gouille Mbeuth	47587
417	Kaffrine	1378
418	Kaolack	2639
419	Kedougou	1374
420	Keur I. Yacine	47586
421	Kolda	2640
422	Koungueul	1378
423	Kouthiaba	2643
424	Louga	47587
425	Mabo	1378
426	Matam	47588
427	Mbafaye	2644
428	Mbar	47586
429	Mereto	2643
430	Mpal	47589
431	Ndiagne	47587
432	Ndindy	47585
433	Orkodiere	47588
434	Ourossogui	47588
435	Oussouye	2645
436	Passy	47586
437	Porokhane	2639
438	Sagatta	47587
439	Sare Yoba	2640
440	Saint-Louis	47589
441	Tambacounda	2643
442	Thiaroye	2636
443	Thies	2644
444	Thille Boubacar	47589
445	Thilmakha	2644
446	Thiodaye	47588
447	Tilene	2636
448	Touba	47585
449	Touba Toul	2644
450	Zigiunchor	2645
451	Ndrame Escale	2639
452	Sedhiou	1376
453	Dioli Mandakh	1378
455	Saint-Maur	2645
457	Gueule Tapee	2636
697	N'Doffane	2639
698	Birkelane	2639
699	Diama Gadio	2639
700	Sandjara	47585
1542	Salemata	1374
1543	Mako	1374
1544	Missirah	47586
1412	Berbera	2705
1413	Borama	2691
1414	Bossaso	2690
1415	Burco	2704
1416	Ceerigaabo	2702
1417	Gaalkacyo	2700
1418	Garowe	2701
1419	Hargeysa	2705
1420	Qardho	2690
1421	Mogadishu	2692
1894	Beletweine	2695
1384	Aweil (Town)	2754
1385	Bentiu	2747
1386	Bor	2751
1387	Kuajok	2765
1388	Konyo Konyo	2748
1389	Malakal	37021
1390	Rumbek	2746
1391	Jau	2747
1786	Torit	2750
360	Ampara	2737
361	Batticaloa	2737
362	Jaffna	2740
363	Kilinochchi	2740
364	Mannar	2740
365	Mulaitivu	2740
366	Trincomalee	2737
367	Vavuniya	2740
368	Colombo City	2744
975	West Bank	267
976	Gaza Strip	91
1025	Al Fashir	2757
1026	Damazin	2749
1027	Eddein	2764
1028	El Geneina	2769
1029	El Obeid	2756
1030	Kadugli	2763
1031	Kassala	2752
1032	Kosti	2770
1033	Nyala	2764
1034	Port Sudan	40772
1823	El Fula	2767
1824	Zalingi	2769
1112	Sheikh Sa'ad	2836
1115	Qudsayya	2837
1116	Hajar Aswad	2837
1118	Daraa	2838
1121	Deir Ezzor	2839
1124	Hassakeh	2841
1125	Qamishly	2841
1127	Raqqa	2845
1129	Tal Abyad	2845
1130	Tartous	2846
1133	Lattakia	2844
1134	Jableh	2844
1136	Hama	2840
1137	Mesiaf	2840
1139	Homs	2842
1142	Aleppo	2834
1545	Moghambo	2834
1546	Al-Cha'ar	2834
1547	Edlib	2843
1548	Almayadin	2839
1549	Al-Tall	2837
1550	Benech	2843
1551	Ekrema	2842
1553	Mashta Al Helou	2846
1554	Khan Arnabeh	2833
1555	Mzereb	2838
1556	Shahba	2835
1557	Rafeed	2833
1558	Shrebishat	2836
1559	Sweida	2835
1897	Rur_Qaretien	2842
302	Dushanbe	2850
303	Gharm	2850
304	Khorog	2847
305	Khujand	2849
306	Kurgan-Tyube	2848
1358	Balibo	2960
1359	Baqui	2968
1360	Baucau	2959
1361	Becora	2962
1362	Cailaco	2960
1363	Comoro	2962
1364	Hali-Laren	2962
1365	Laga	2959
1366	Maliana	2960
1367	Numbey	2968
1368	Pune	2968
1369	Venilale	2959
257	Kiboga	1344
258	Owino	42182
259	Iganga	42179
260	Jinja	3114
261	Kapchorwa	766
262	Gulu	3111
263	Lira	47082
264	Mbarara	47086
1858	Cherkasy	3148
1859	Chernihiv	3149
1860	Chernivtsi	3150
1861	Dnipropetrovsk	3151
1862	Donetska	3152
1863	Ivano-Frankivsk	3153
1864	Kharkivka	3154
1865	Herson	3155
1866	Khmelnytsky	3156
1867	Kirovograd	3157
1869	m. Kyiv	3159
1870	Luhanska	3161
1871	Lviv	3160
1872	Mykolaiv	3162
1873	Odessa	3163
1874	Poltava	3164
1875	Rivne	3165
1876	Sums	3166
1877	Ternopil	3167
1878	Vinnitsa	3168
1879	Volyn	3169
1880	Zakarpattya	3170
1881	Zaporizhia	3171
1882	Zhytomyr	3172
1884	Kiev	3159
80	Arusha	48357
81	Babati	48365
82	Bukoba	48361
83	Dar Es Salaam	48358
84	Dodoma	48359
85	Iringa	48360
86	Kigoma	48362
87	Lindi	48364
88	Mbeya	48367
89	Morogoro	48368
90	Moshi	48363
91	Mtwara	48369
92	Mwanza	48370
93	Shinyanga	48376
94	Singida	48377
95	Songea	48375
96	Tabora	48380
97	Tanga	48381
99	Musoma	48366
100	Sumbawanga	48374
1798	Geita	115002
1800	Njombe	115007
1801	Mpanda	115005
192	Aden City	3409
193	Amran City	3415
194	Haradh Town	3418
195	Al Hudaydah City (Hodieda)	3411
196	Sa'ada City	3422
197	Sana'a City	144969
198	Soqatra (Hudaibo)	3409
199	Taizz City	3425
369	Chingola	3427
370	Chipata	3428
371	Choma	3433
372	Isoka	3432
373	Kabwe Rural	3426
374	Kabwe Urban	3426
375	Kalomo	3433
376	Kalulushi	3427
377	Kaoma	3434
378	Kasama	3432
379	Kasempa	3431
380	Kawambwa	3429
381	Kitwe	3427
382	Livingstone	3433
383	Luangwa	3430
384	Luanshya	3427
385	Lundazi	3428
386	Lusaka Rural	3430
387	Lusaka Urban	3430
388	Luwingu	3432
389	Mansa	3429
390	Mazabuka	3433
391	Mbala	3432
392	Mkushi	3426
393	Chadiza	3428
394	Katete	3428
395	Mongu	3434
396	Monze	3433
397	Mpika	3432
398	Mufulira	3427
399	Mumbwa	3426
400	Mwense	3429
401	Mwinilunga	3431
402	Nchelenge	3429
403	Ndola Rural	3427
404	Petauke	3428
518	Samfya	3429
519	Senanga	3434
520	Serenje	3426
521	Solwezi	3431
1428	Chama	3428
1429	Chavuma	3431
1430	Chibombo	3426
1431	Chiengi	3429
1432	Chililabombwe	3427
1433	Chilubi	3432
1434	Chinsali	3432
1435	Chongwe	3430
1436	Gwembe	3433
1437	Itezhi-tezhi	3433
1438	Kabompo	3431
1439	Kabwe	3426
1440	Kafue	3430
1441	Kapiri-Mposhi	3426
1442	Kaputa	3432
1443	Kazungula	3433
1445	Lukulu	3434
1446	Lusaka	3430
1447	Mambwe	3426
1448	Masaiti	3427
1449	Milenge	3429
1450	Mporokoso	3432
1451	Mpulungu	3432
1452	Mufumbwe	3431
1453	Mungwi	3432
1454	Nakonde	3432
1455	Namwala	3433
1456	Ndola	3427
1457	Nyimba	3428
1458	Sesheke	3434
1459	Shang'ombo	3434
1460	Siavonga	3433
1461	Zambezi	3431
1462	Kalabo	3434
1840	Mpongwe	3427
708	Mbare	3436
709	Dombotombo	3439
710	Murombedzi	3440
711	Murehwa	3439
712	Chikonohono	3440
713	Bindura	3438
715	Renkini Bus Terminus	3435
716	Nkayi Growth Point	3442
717	Gwanda town	3443
718	Binga centre	3442
719	Mucheke	3441
720	Ngundu	3441
721	Tshovani	3441
722	Mandava	3444
723	Kombai	3444
724	Sakubva	3437
725	Nyanyadzi	3437
726	Checheche	3437
727	Murambinda	3437
728	Mupandawana	3441
729	Dulibadzimu Market	3443
730	Hwange Town Bus Terminus	3442
731	Mount Darwin	3438
\.


--
-- Data for Name: prices; Type: TABLE DATA; Schema: public; Owner: spalladino
--

COPY prices (id, location_adm0_id, location_adm1_id, location_mkt_id, commodity_id, commodity_name, currency_id, currency_name, unit_id, unit_name, month, year, price) FROM stdin;
14147	1	272	266	55	Bread	87	AFN	5	KG	3	2016	55.5
14148	1	272	266	84	Wheat	87	AFN	5	KG	3	2016	26
14149	1	272	266	145	Rice (low quality)	87	AFN	5	KG	3	2016	47
14150	1	272	266	274	Wage (qualified labour)	87	AFN	51	Day	3	2016	600
14151	1	272	266	275	Livestock (sheep, one-year-old alive female)	87	AFN	33	Unit	12	2002	5500000
14152	1	272	266	284	Fuel (diesel)	87	AFN	15	L	3	2016	37
14153	1	272	266	305	Exchange rate	87	AFN	56	USD/LCU	3	2016	68.2750000000000057
14154	1	272	266	465	Wage (non-qualified labour, non-agricultural)	87	AFN	51	Day	3	2016	225
14155	1	272	267	55	Bread	87	AFN	5	KG	3	2016	50
14156	1	272	267	84	Wheat	87	AFN	5	KG	3	2016	21.75
14157	1	272	267	145	Rice (low quality)	87	AFN	5	KG	3	2016	36
14158	1	272	267	274	Wage (qualified labour)	87	AFN	51	Day	3	2016	600
14159	1	272	267	275	Livestock (sheep, one-year-old alive female)	87	AFN	33	Unit	12	2002	5637500
14160	1	272	267	284	Fuel (diesel)	87	AFN	15	L	3	2016	31
14161	1	272	267	305	Exchange rate	87	AFN	56	USD/LCU	3	2016	68.4749999999999943
14162	1	272	267	465	Wage (non-qualified labour, non-agricultural)	87	AFN	51	Day	3	2016	200
14163	1	276	268	84	Wheat	87	AFN	5	KG	12	2005	10.875
14164	1	278	269	55	Bread	87	AFN	5	KG	3	2016	50
14165	1	278	269	84	Wheat	87	AFN	5	KG	3	2016	23
14166	1	278	269	145	Rice (low quality)	87	AFN	5	KG	3	2016	37
14167	1	278	269	274	Wage (qualified labour)	87	AFN	51	Day	3	2016	700
14168	1	278	269	284	Fuel (diesel)	87	AFN	15	L	3	2016	31.75
14169	1	278	269	305	Exchange rate	87	AFN	56	USD/LCU	3	2016	68.4000000000000057
14170	1	278	269	465	Wage (non-qualified labour, non-agricultural)	87	AFN	51	Day	3	2016	200
14171	1	282	270	55	Bread	87	AFN	5	KG	3	2016	29.3999999999999986
14172	1	282	270	84	Wheat	87	AFN	5	KG	3	2016	20.2250000000000014
14173	1	282	270	145	Rice (low quality)	87	AFN	5	KG	3	2016	27.6999999999999993
14174	1	282	270	274	Wage (qualified labour)	87	AFN	51	Day	3	2016	550
14175	1	282	270	275	Livestock (sheep, one-year-old alive female)	87	AFN	33	Unit	12	2002	2662500
14176	1	282	270	284	Fuel (diesel)	87	AFN	15	L	3	2016	31
14177	1	282	270	305	Exchange rate	87	AFN	56	USD/LCU	3	2016	68.4375
14178	1	282	270	465	Wage (non-qualified labour, non-agricultural)	87	AFN	51	Day	3	2016	300
14179	1	284	271	55	Bread	87	AFN	5	KG	3	2016	38.5
14180	1	284	271	84	Wheat	87	AFN	5	KG	3	2016	27
14181	1	284	271	145	Rice (low quality)	87	AFN	5	KG	3	2016	58
14182	1	284	271	274	Wage (qualified labour)	87	AFN	51	Day	3	2016	600
14183	1	284	271	275	Livestock (sheep, one-year-old alive female)	87	AFN	33	Unit	12	2002	2901330
14184	1	284	271	284	Fuel (diesel)	87	AFN	15	L	3	2016	35
14185	1	284	271	305	Exchange rate	87	AFN	56	USD/LCU	3	2016	68.5499999999999972
14186	1	284	271	465	Wage (non-qualified labour, non-agricultural)	87	AFN	51	Day	3	2016	287.5
14187	1	285	272	55	Bread	87	AFN	5	KG	3	2016	37
14188	1	285	272	84	Wheat	87	AFN	5	KG	3	2016	25.620000000000001
14189	1	285	272	145	Rice (low quality)	87	AFN	5	KG	3	2016	31.8249999999999993
14190	1	285	272	274	Wage (qualified labour)	87	AFN	51	Day	3	2016	500
14191	1	285	272	275	Livestock (sheep, one-year-old alive female)	87	AFN	33	Unit	12	2002	2120000
14192	1	285	272	284	Fuel (diesel)	87	AFN	15	L	3	2016	31.75
14193	1	285	272	305	Exchange rate	87	AFN	56	USD/LCU	3	2016	68.3425000000000011
14194	1	285	272	465	Wage (non-qualified labour, non-agricultural)	87	AFN	51	Day	3	2016	300
14195	1	292	273	55	Bread	87	AFN	5	KG	3	2016	50
14196	1	292	273	84	Wheat	87	AFN	5	KG	3	2016	20.25
14197	1	292	273	145	Rice (low quality)	87	AFN	5	KG	3	2016	29.5
14198	1	292	273	274	Wage (qualified labour)	87	AFN	51	Day	3	2016	550
14199	1	292	273	275	Livestock (sheep, one-year-old alive female)	87	AFN	33	Unit	12	2002	1572080
14200	1	292	273	284	Fuel (diesel)	87	AFN	15	L	3	2016	38
14201	1	292	273	305	Exchange rate	87	AFN	56	USD/LCU	3	2016	68.625
14202	1	292	273	465	Wage (non-qualified labour, non-agricultural)	87	AFN	51	Day	3	2016	260
14203	1	296	274	84	Wheat	87	AFN	5	KG	12	2007	18.875
14204	1	296	274	145	Rice (low quality)	87	AFN	5	KG	12	2007	37.75
14205	1	99878	275	55	Bread	87	AFN	5	KG	3	2016	51.7199999999999989
14206	1	99878	275	84	Wheat	87	AFN	5	KG	3	2016	33
14207	1	99878	275	145	Rice (low quality)	87	AFN	5	KG	3	2016	60
14208	1	99878	275	274	Wage (qualified labour)	87	AFN	51	Day	3	2016	600
14209	1	99878	275	284	Fuel (diesel)	87	AFN	15	L	3	2016	42
14210	1	99878	275	305	Exchange rate	87	AFN	56	USD/LCU	3	2016	68.5250000000000057
14211	1	99878	275	465	Wage (non-qualified labour, non-agricultural)	87	AFN	51	Day	3	2016	287.5
14212	1	280	276	84	Wheat	87	AFN	5	KG	11	2010	10.5
14213	1	280	276	145	Rice (low quality)	87	AFN	5	KG	11	2010	27.5
14214	4	344	1794	52	Rice	91	DZD	5	KG	1	2016	85
14215	4	344	1794	55	Bread	91	DZD	33	Unit	1	2016	10
14216	4	344	1794	66	Beans (white)	91	DZD	5	KG	1	2016	150
14217	4	344	1794	81	Milk	91	DZD	15	L	1	2016	25
14218	4	344	1794	83	Potatoes	91	DZD	5	KG	1	2016	40
14219	4	344	1794	92	Eggs	91	DZD	69	30 pcs	1	2016	300
14220	4	344	1794	94	Meat (chicken)	91	DZD	5	KG	1	2016	400
14221	4	344	1794	97	Sugar	91	DZD	5	KG	1	2016	87
14222	4	344	1794	108	Lentils	91	DZD	5	KG	1	2016	185
14223	4	344	1794	112	Pasta	91	DZD	28	500 G	1	2016	45
14224	4	344	1794	114	Tomatoes	91	DZD	5	KG	1	2016	40
14225	4	344	1794	137	Oil	91	DZD	15	L	1	2016	114
14226	4	344	1794	142	Cheese (dry)	91	DZD	33	Unit	1	2016	220
14227	4	344	1794	166	Carrots	91	DZD	5	KG	1	2016	45
14228	4	344	1794	173	Onions	91	DZD	5	KG	1	2016	80
14229	4	344	1794	254	Bananas	91	DZD	5	KG	1	2016	200
14230	4	344	1794	281	Tea	91	DZD	5	KG	1	2016	560
14231	4	344	1794	284	Fuel (diesel)	91	DZD	15	L	1	2016	15
14232	4	344	1794	285	Fuel (petrol-gasoline)	91	DZD	15	L	1	2016	27
14233	4	344	1794	343	Fish (canned)	91	DZD	74	125 G	1	2016	80
14234	4	344	1794	345	Apples	91	DZD	5	KG	1	2016	290
14235	4	344	1794	360	Oranges	91	DZD	5	KG	5	2015	177
14236	4	383	1795	52	Rice	91	DZD	5	KG	1	2016	90
14237	4	383	1795	55	Bread	91	DZD	33	Unit	1	2016	10
14238	4	383	1795	66	Beans (white)	91	DZD	5	KG	1	2016	220
14239	4	383	1795	81	Milk	91	DZD	15	L	1	2016	90
14240	4	383	1795	83	Potatoes	91	DZD	5	KG	1	2016	50
14241	4	383	1795	92	Eggs	91	DZD	69	30 pcs	1	2016	330
14242	4	383	1795	94	Meat (chicken)	91	DZD	5	KG	1	2016	280
14243	4	383	1795	97	Sugar	91	DZD	5	KG	1	2016	100
14244	4	383	1795	108	Lentils	91	DZD	5	KG	1	2016	220
14245	4	383	1795	112	Pasta	91	DZD	28	500 G	1	2016	50
14246	4	383	1795	114	Tomatoes	91	DZD	5	KG	1	2016	50
14247	4	383	1795	137	Oil	91	DZD	15	L	1	2016	130
14248	4	383	1795	142	Cheese (dry)	91	DZD	33	Unit	1	2016	220
14249	4	383	1795	166	Carrots	91	DZD	5	KG	1	2016	40
14250	4	383	1795	173	Onions	91	DZD	5	KG	1	2016	100
14251	4	383	1795	254	Bananas	91	DZD	5	KG	1	2016	250
14252	4	383	1795	284	Fuel (diesel)	91	DZD	15	L	1	2016	15
14253	4	383	1795	285	Fuel (petrol-gasoline)	91	DZD	15	L	1	2016	27
14254	4	383	1795	342	Milk (camel)	91	DZD	15	L	1	2016	150
14255	4	383	1795	343	Fish (canned)	91	DZD	74	125 G	1	2016	80
14256	4	383	1795	344	Meat (camel)	91	DZD	5	KG	1	2016	700
14257	4	383	1795	345	Apples	91	DZD	5	KG	1	2016	300
14258	4	383	1795	357	Tea (sahm)	91	DZD	75	Packet	1	2016	150
14259	4	383	1795	360	Oranges	91	DZD	5	KG	5	2015	250
14260	4	2553	1796	52	Rice	91	DZD	5	KG	1	2016	90
14261	4	2553	1796	55	Bread	91	DZD	33	Unit	1	2016	10
14262	4	2553	1796	66	Beans (white)	91	DZD	5	KG	1	2016	190
14263	4	2553	1796	81	Milk	91	DZD	15	L	1	2016	100
14264	4	2553	1796	83	Potatoes	91	DZD	5	KG	1	2016	50
14265	4	2553	1796	92	Eggs	91	DZD	69	30 pcs	1	2016	320
14266	4	2553	1796	94	Meat (chicken)	91	DZD	5	KG	1	2016	380
14267	4	2553	1796	97	Sugar	91	DZD	5	KG	1	2016	100
14268	4	2553	1796	108	Lentils	91	DZD	5	KG	1	2016	190
14269	4	2553	1796	112	Pasta	91	DZD	28	500 G	1	2016	40
14270	4	2553	1796	114	Tomatoes	91	DZD	5	KG	1	2016	50
14271	4	2553	1796	137	Oil	91	DZD	15	L	1	2016	130
14272	4	2553	1796	142	Cheese (dry)	91	DZD	33	Unit	1	2016	220
14273	4	2553	1796	166	Carrots	91	DZD	5	KG	1	2016	40
14274	4	2553	1796	173	Onions	91	DZD	5	KG	1	2016	100
14275	4	2553	1796	254	Bananas	91	DZD	5	KG	1	2016	250
14276	4	2553	1796	284	Fuel (diesel)	91	DZD	15	L	1	2016	50
14277	4	2553	1796	285	Fuel (petrol-gasoline)	91	DZD	15	L	1	2016	60
14278	4	2553	1796	342	Milk (camel)	91	DZD	15	L	1	2016	150
14279	4	2553	1796	343	Fish (canned)	91	DZD	74	125 G	1	2016	80
14280	4	2553	1796	344	Meat (camel)	91	DZD	5	KG	1	2016	600
14281	4	2553	1796	345	Apples	91	DZD	5	KG	1	2016	300
14282	4	2553	1796	357	Tea (sahm)	91	DZD	75	Packet	1	2016	150
14283	4	2553	1796	360	Oranges	91	DZD	5	KG	5	2015	250
14284	4	388	1797	52	Rice	91	DZD	5	KG	1	2016	90
14285	4	388	1797	55	Bread	91	DZD	33	Unit	1	2016	10
14286	4	388	1797	66	Beans (white)	91	DZD	5	KG	1	2016	190
14287	4	388	1797	81	Milk	91	DZD	15	L	1	2016	100
14288	4	388	1797	83	Potatoes	91	DZD	5	KG	1	2016	50
14289	4	388	1797	92	Eggs	91	DZD	69	30 pcs	1	2016	320
14290	4	388	1797	94	Meat (chicken)	91	DZD	5	KG	1	2016	4
14291	4	388	1797	97	Sugar	91	DZD	5	KG	1	2016	100
14292	4	388	1797	108	Lentils	91	DZD	5	KG	1	2016	190
14293	4	388	1797	112	Pasta	91	DZD	28	500 G	1	2016	40
14294	4	388	1797	114	Tomatoes	91	DZD	5	KG	1	2016	60
14295	4	388	1797	137	Oil	91	DZD	15	L	1	2016	130
14296	4	388	1797	142	Cheese (dry)	91	DZD	33	Unit	1	2016	220
14297	4	388	1797	166	Carrots	91	DZD	5	KG	1	2016	55
14298	4	388	1797	173	Onions	91	DZD	5	KG	1	2016	100
14299	4	388	1797	254	Bananas	91	DZD	5	KG	1	2016	250
14300	4	388	1797	284	Fuel (diesel)	91	DZD	15	L	1	2016	50
14301	4	388	1797	285	Fuel (petrol-gasoline)	91	DZD	15	L	1	2016	60
14302	4	388	1797	342	Milk (camel)	91	DZD	15	L	1	2016	150
14303	4	388	1797	343	Fish (canned)	91	DZD	74	125 G	1	2016	80
14304	4	388	1797	344	Meat (camel)	91	DZD	5	KG	1	2016	600
14305	4	388	1797	345	Apples	91	DZD	5	KG	1	2016	300
14306	4	388	1797	357	Tea (sahm)	91	DZD	75	Packet	1	2016	150
14307	4	388	1797	360	Oranges	91	DZD	5	KG	5	2015	250
14308	13	464	641	58	Wheat flour	37	AMD	5	KG	3	2016	245
14309	13	464	641	81	Milk	37	AMD	15	L	3	2016	425
14310	13	464	641	83	Potatoes	37	AMD	5	KG	3	2016	220
14311	13	464	641	92	Eggs	37	AMD	33	Unit	3	2016	75
14312	13	464	641	94	Meat (chicken)	37	AMD	5	KG	3	2016	1400
14313	13	464	641	96	Oil (vegetable)	37	AMD	15	L	3	2016	1060
14314	13	464	641	97	Sugar	37	AMD	5	KG	3	2016	390
14315	13	464	641	108	Lentils	37	AMD	5	KG	3	2016	725
14316	13	464	641	112	Pasta	37	AMD	5	KG	3	2016	475
14317	13	464	641	114	Tomatoes	37	AMD	5	KG	3	2016	1000
14318	13	464	641	133	Rice (white)	37	AMD	5	KG	3	2016	565
14319	13	464	641	140	Meat (pork)	37	AMD	5	KG	3	2016	2550
14320	13	464	641	141	Meat (beef)	37	AMD	5	KG	3	2016	2500
14321	13	464	641	142	Cheese (dry)	37	AMD	5	KG	3	2016	2000
14322	13	464	641	166	Carrots	37	AMD	5	KG	3	2016	375
14323	13	464	641	173	Onions	37	AMD	5	KG	3	2016	275
14324	13	464	641	181	Cabbage	37	AMD	5	KG	3	2016	125
14325	13	464	641	229	Apples (red)	37	AMD	5	KG	3	2016	400
14326	13	464	641	233	Cucumbers (greenhouse)	37	AMD	5	KG	3	2016	1025
14327	13	464	641	283	Fuel (kerosene)	37	AMD	15	L	4	2014	945
14328	13	464	641	284	Fuel (diesel)	37	AMD	15	L	3	2016	400
14329	13	464	641	285	Fuel (petrol-gasoline)	37	AMD	15	L	3	2016	420
14330	13	464	641	401	Fish (fresh)	37	AMD	5	KG	3	2016	2400
14331	13	464	641	459	Bread (high grade flour)	37	AMD	5	KG	3	2016	490
14332	13	464	641	460	Bread (first grade flour)	37	AMD	5	KG	3	2016	460
14333	13	462	642	58	Wheat flour	37	AMD	5	KG	3	2016	215
14334	13	462	642	81	Milk	37	AMD	15	L	3	2016	420
14335	13	462	642	83	Potatoes	37	AMD	5	KG	3	2016	185
14336	13	462	642	92	Eggs	37	AMD	33	Unit	3	2016	72.5
14337	13	462	642	94	Meat (chicken)	37	AMD	5	KG	3	2016	1400
14338	13	462	642	96	Oil (vegetable)	37	AMD	15	L	3	2016	900
14339	13	462	642	97	Sugar	37	AMD	5	KG	3	2016	380
14340	13	462	642	108	Lentils	37	AMD	5	KG	3	2016	765
14341	13	462	642	112	Pasta	37	AMD	5	KG	3	2016	465
14342	13	462	642	114	Tomatoes	37	AMD	5	KG	3	2016	925
14343	13	462	642	133	Rice (white)	37	AMD	5	KG	3	2016	525
14344	13	462	642	140	Meat (pork)	37	AMD	5	KG	3	2016	2650
14345	13	462	642	141	Meat (beef)	37	AMD	5	KG	3	2016	2600
14346	13	462	642	142	Cheese (dry)	37	AMD	5	KG	3	2016	2250
14347	13	462	642	166	Carrots	37	AMD	5	KG	3	2016	435
14348	13	462	642	173	Onions	37	AMD	5	KG	3	2016	310
14349	13	462	642	181	Cabbage	37	AMD	5	KG	3	2016	115
14350	13	462	642	229	Apples (red)	37	AMD	5	KG	3	2016	425
14351	13	462	642	233	Cucumbers (greenhouse)	37	AMD	5	KG	3	2016	1100
14352	13	462	642	283	Fuel (kerosene)	37	AMD	15	L	4	2014	947.5
14353	13	462	642	284	Fuel (diesel)	37	AMD	15	L	3	2016	400
14354	13	462	642	285	Fuel (petrol-gasoline)	37	AMD	15	L	3	2016	420
14355	13	462	642	401	Fish (fresh)	37	AMD	5	KG	3	2016	1900
14356	13	462	642	459	Bread (high grade flour)	37	AMD	5	KG	3	2016	485
14357	13	462	642	460	Bread (first grade flour)	37	AMD	5	KG	3	2016	450
14358	13	458	643	58	Wheat flour	37	AMD	5	KG	3	2016	225
14359	13	458	643	81	Milk	37	AMD	15	L	3	2016	415
14360	13	458	643	83	Potatoes	37	AMD	5	KG	3	2016	190
14361	13	458	643	92	Eggs	37	AMD	33	Unit	3	2016	71
14362	13	458	643	94	Meat (chicken)	37	AMD	5	KG	3	2016	1400
14363	13	458	643	96	Oil (vegetable)	37	AMD	15	L	3	2016	840
14364	13	458	643	97	Sugar	37	AMD	5	KG	3	2016	375
14365	13	458	643	108	Lentils	37	AMD	5	KG	3	2016	775
14366	13	458	643	112	Pasta	37	AMD	5	KG	3	2016	500
14367	13	458	643	114	Tomatoes	37	AMD	5	KG	3	2016	950
14368	13	458	643	133	Rice (white)	37	AMD	5	KG	3	2016	490
14369	13	458	643	140	Meat (pork)	37	AMD	5	KG	3	2016	2650
14370	13	458	643	141	Meat (beef)	37	AMD	5	KG	3	2016	2450
14371	13	458	643	142	Cheese (dry)	37	AMD	5	KG	3	2016	2250
14372	13	458	643	166	Carrots	37	AMD	5	KG	3	2016	435
14373	13	458	643	173	Onions	37	AMD	5	KG	3	2016	300
14374	13	458	643	181	Cabbage	37	AMD	5	KG	3	2016	110
14375	13	458	643	229	Apples (red)	37	AMD	5	KG	3	2016	410
14376	13	458	643	233	Cucumbers (greenhouse)	37	AMD	5	KG	3	2016	1250
14377	13	458	643	283	Fuel (kerosene)	37	AMD	15	L	4	2014	945
14378	13	458	643	284	Fuel (diesel)	37	AMD	15	L	3	2016	375
14379	13	458	643	285	Fuel (petrol-gasoline)	37	AMD	15	L	3	2016	390
14380	13	458	643	401	Fish (fresh)	37	AMD	5	KG	3	2016	1800
14381	13	458	643	459	Bread (high grade flour)	37	AMD	5	KG	3	2016	485
14382	13	458	643	460	Bread (first grade flour)	37	AMD	5	KG	3	2016	450
14383	13	462	644	58	Wheat flour	37	AMD	5	KG	3	2016	235
14384	13	462	644	81	Milk	37	AMD	15	L	3	2016	415
14385	13	462	644	83	Potatoes	37	AMD	5	KG	3	2016	200
14386	13	462	644	92	Eggs	37	AMD	33	Unit	3	2016	73.5
14387	13	462	644	94	Meat (chicken)	37	AMD	5	KG	3	2016	1450
14388	13	462	644	96	Oil (vegetable)	37	AMD	15	L	3	2016	875
14389	13	462	644	97	Sugar	37	AMD	5	KG	3	2016	380
14390	13	462	644	108	Lentils	37	AMD	5	KG	3	2016	825
14391	13	462	644	112	Pasta	37	AMD	5	KG	3	2016	510
14392	13	462	644	114	Tomatoes	37	AMD	5	KG	3	2016	950
14393	13	462	644	133	Rice (white)	37	AMD	5	KG	3	2016	550
14394	13	462	644	140	Meat (pork)	37	AMD	5	KG	3	2016	2650
14395	13	462	644	141	Meat (beef)	37	AMD	5	KG	3	2016	2400
14396	13	462	644	142	Cheese (dry)	37	AMD	5	KG	3	2016	2150
14397	13	462	644	166	Carrots	37	AMD	5	KG	3	2016	410
14398	13	462	644	173	Onions	37	AMD	5	KG	3	2016	310
14399	13	462	644	181	Cabbage	37	AMD	5	KG	3	2016	140
14400	13	462	644	229	Apples (red)	37	AMD	5	KG	3	2016	440
14401	13	462	644	233	Cucumbers (greenhouse)	37	AMD	5	KG	3	2016	1225
14402	13	462	644	283	Fuel (kerosene)	37	AMD	15	L	4	2014	947.5
14403	13	462	644	284	Fuel (diesel)	37	AMD	15	L	3	2016	385
14404	13	462	644	285	Fuel (petrol-gasoline)	37	AMD	15	L	3	2016	400
14405	13	462	644	401	Fish (fresh)	37	AMD	5	KG	3	2016	1950
14406	13	462	644	459	Bread (high grade flour)	37	AMD	5	KG	3	2016	490
14407	13	462	644	460	Bread (first grade flour)	37	AMD	5	KG	3	2016	460
14408	13	\N	\N	284	Fuel (diesel)	37	AMD	15	L	3	2012	480
14409	13	\N	\N	285	Fuel (petrol-gasoline)	37	AMD	15	L	3	2012	490
14410	13	\N	\N	305	Exchange rate	37	AMD	56	USD/LCU	3	2016	484.699999999999989
14411	13	458	1787	58	Wheat flour	37	AMD	5	KG	3	2016	215
14412	13	458	1787	81	Milk	37	AMD	15	L	3	2016	420
14413	13	458	1787	83	Potatoes	37	AMD	5	KG	3	2016	175
14414	13	458	1787	92	Eggs	37	AMD	33	Unit	3	2016	85
14415	13	458	1787	94	Meat (chicken)	37	AMD	5	KG	3	2016	1450
14416	13	458	1787	96	Oil (vegetable)	37	AMD	15	L	3	2016	975
14417	13	458	1787	97	Sugar	37	AMD	5	KG	3	2016	400
14418	13	458	1787	108	Lentils	37	AMD	5	KG	3	2016	755
14419	13	458	1787	112	Pasta	37	AMD	5	KG	3	2016	500
14420	13	458	1787	114	Tomatoes	37	AMD	5	KG	3	2016	925
14421	13	458	1787	133	Rice (white)	37	AMD	5	KG	3	2016	575
14422	13	458	1787	140	Meat (pork)	37	AMD	5	KG	3	2016	3000
14423	13	458	1787	141	Meat (beef)	37	AMD	5	KG	3	2016	2650
14424	13	458	1787	142	Cheese (dry)	37	AMD	5	KG	3	2016	2150
14425	13	458	1787	166	Carrots	37	AMD	5	KG	3	2016	435
14426	13	458	1787	173	Onions	37	AMD	5	KG	3	2016	310
14427	13	458	1787	181	Cabbage	37	AMD	5	KG	3	2016	130
14428	13	458	1787	229	Apples (red)	37	AMD	5	KG	3	2016	425
14429	13	458	1787	233	Cucumbers (greenhouse)	37	AMD	5	KG	3	2016	950
14430	13	458	1787	284	Fuel (diesel)	37	AMD	15	L	3	2016	365
14431	13	458	1787	285	Fuel (petrol-gasoline)	37	AMD	15	L	3	2016	410
14432	13	458	1787	401	Fish (fresh)	37	AMD	5	KG	3	2016	2000
14433	13	458	1787	459	Bread (high grade flour)	37	AMD	5	KG	3	2016	490
14434	13	458	1787	460	Bread (first grade flour)	37	AMD	5	KG	3	2016	455
14435	13	454	1886	58	Wheat flour	37	AMD	5	KG	12	2015	225
14436	13	454	1886	81	Milk	37	AMD	15	L	12	2015	500
14437	13	454	1886	83	Potatoes	37	AMD	5	KG	12	2015	200
14438	13	454	1886	92	Eggs	37	AMD	33	Unit	12	2015	85
14439	13	454	1886	94	Meat (chicken)	37	AMD	5	KG	12	2015	2000
14440	13	454	1886	96	Oil (vegetable)	37	AMD	15	L	12	2015	825
14441	13	454	1886	97	Sugar	37	AMD	5	KG	12	2015	385
14442	13	454	1886	108	Lentils	37	AMD	5	KG	12	2015	575
14443	13	454	1886	112	Pasta	37	AMD	5	KG	12	2015	600
14444	13	454	1886	114	Tomatoes	37	AMD	5	KG	12	2015	900
14445	13	454	1886	133	Rice (white)	37	AMD	5	KG	12	2015	525
14446	13	454	1886	140	Meat (pork)	37	AMD	5	KG	12	2015	3850
14447	13	454	1886	141	Meat (beef)	37	AMD	5	KG	12	2015	2650
14448	13	454	1886	142	Cheese (dry)	37	AMD	5	KG	12	2015	2250
14449	13	454	1886	166	Carrots	37	AMD	5	KG	12	2015	225
14450	13	454	1886	173	Onions	37	AMD	5	KG	12	2015	250
14451	13	454	1886	181	Cabbage	37	AMD	5	KG	12	2015	150
14452	13	454	1886	229	Apples (red)	37	AMD	5	KG	12	2015	400
14453	13	454	1886	233	Cucumbers (greenhouse)	37	AMD	5	KG	12	2015	550
14454	13	454	1886	284	Fuel (diesel)	37	AMD	15	L	12	2015	430
14455	13	454	1886	285	Fuel (petrol-gasoline)	37	AMD	15	L	12	2015	435
14456	13	454	1886	401	Fish (fresh)	37	AMD	5	KG	12	2015	2400
14457	13	454	1886	459	Bread (high grade flour)	37	AMD	5	KG	12	2015	550
14458	13	454	1886	460	Bread (first grade flour)	37	AMD	5	KG	12	2015	475
14459	19	\N	\N	58	Wheat flour	36	AZN	5	KG	2	2010	0.589999999999999969
14460	19	\N	\N	83	Potatoes	36	AZN	5	KG	5	2009	0.589999999999999969
14461	19	\N	\N	97	Sugar	36	AZN	5	KG	5	2009	0.989999999999999991
14462	19	\N	\N	102	Milk (non-pasteurized)	36	AZN	15	L	5	2009	0.680000000000000049
14463	23	575	112	58	Wheat flour	25	BDT	5	KG	2	2016	33.3999999999999986
14464	23	575	112	60	Rice (coarse)	25	BDT	5	KG	2	2016	27
14465	23	575	112	61	Lentils (masur)	25	BDT	5	KG	2	2016	106.400000000000006
14466	23	575	112	62	Oil (palm)	25	BDT	15	L	2	2016	65.25
14467	23	576	114	58	Wheat flour	25	BDT	5	KG	2	2016	33.3699999999999974
14468	23	576	114	60	Rice (coarse)	25	BDT	5	KG	2	2016	28
14469	23	576	114	61	Lentils (masur)	25	BDT	5	KG	2	2016	103.709999999999994
14470	23	576	114	62	Oil (palm)	25	BDT	15	L	2	2016	65.1400000000000006
14471	23	577	116	58	Wheat flour	25	BDT	5	KG	2	2016	33.3299999999999983
14472	23	577	116	60	Rice (coarse)	25	BDT	5	KG	2	2016	29.5
14473	23	577	116	61	Lentils (masur)	25	BDT	5	KG	2	2016	103.859999999999999
14474	23	577	116	62	Oil (palm)	25	BDT	15	L	2	2016	62.3599999999999994
14475	23	578	118	58	Wheat flour	25	BDT	5	KG	2	2016	32.3299999999999983
14476	23	578	118	60	Rice (coarse)	25	BDT	5	KG	2	2016	25.6700000000000017
14477	23	578	118	61	Lentils (masur)	25	BDT	5	KG	2	2016	98.2800000000000011
14478	23	578	118	62	Oil (palm)	25	BDT	15	L	2	2016	63.6700000000000017
14479	23	579	120	58	Wheat flour	25	BDT	5	KG	2	2016	32.3299999999999983
14480	23	579	120	60	Rice (coarse)	25	BDT	5	KG	2	2016	25
14481	23	579	120	61	Lentils (masur)	25	BDT	5	KG	2	2016	99.6099999999999994
14482	23	579	120	62	Oil (palm)	25	BDT	15	L	2	2016	57.7800000000000011
14483	23	580	122	58	Wheat flour	25	BDT	5	KG	2	2016	33.5
14484	23	580	122	60	Rice (coarse)	25	BDT	5	KG	2	2016	29
14485	23	580	122	61	Lentils (masur)	25	BDT	5	KG	2	2016	103.75
14486	23	580	122	62	Oil (palm)	25	BDT	15	L	2	2016	67.75
14487	29	616	124	64	Rice (imported)	26	XOF	5	KG	2	2016	530
14488	29	616	124	65	Sorghum	26	XOF	5	KG	2	2016	345
14489	29	616	124	66	Beans (white)	26	XOF	5	KG	2	2016	545
14490	29	616	124	67	Maize (white)	26	XOF	5	KG	2	2016	165
14491	29	616	124	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	215
14492	29	609	1044	51	Maize	26	XOF	5	KG	2	2012	130
14493	29	609	1044	64	Rice (imported)	26	XOF	5	KG	2	2016	480
14494	29	609	1044	65	Sorghum	26	XOF	5	KG	2	2016	145
14495	29	609	1044	66	Beans (white)	26	XOF	5	KG	2	2016	335
14496	29	609	1044	67	Maize (white)	26	XOF	5	KG	2	2016	125
14497	29	609	1044	73	Millet	26	XOF	5	KG	2	2012	190
14498	29	609	1044	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	215
14499	29	609	1749	64	Rice (imported)	26	XOF	5	KG	2	2016	600
14500	29	609	1749	65	Sorghum	26	XOF	5	KG	2	2016	100
14501	29	609	1749	66	Beans (white)	26	XOF	5	KG	2	2016	450
14502	29	609	1749	67	Maize (white)	26	XOF	5	KG	2	2016	95
14503	29	609	1749	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	430
14504	29	612	1750	64	Rice (imported)	26	XOF	5	KG	2	2016	425
14505	29	612	1750	65	Sorghum	26	XOF	5	KG	2	2016	120
14506	29	612	1750	66	Beans (white)	26	XOF	5	KG	2	2016	325
14507	29	612	1750	67	Maize (white)	26	XOF	5	KG	2	2016	80
14508	29	612	1750	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	245
14509	29	612	1751	64	Rice (imported)	26	XOF	5	KG	2	2016	500
14510	29	612	1751	65	Sorghum	26	XOF	5	KG	2	2016	80
14511	29	612	1751	66	Beans (white)	26	XOF	5	KG	2	2016	390
14512	29	612	1751	67	Maize (white)	26	XOF	5	KG	2	2016	90
14513	29	612	1751	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	355
14514	29	612	1752	64	Rice (imported)	26	XOF	5	KG	2	2016	425
14515	29	612	1752	65	Sorghum	26	XOF	5	KG	2	2016	105
14516	29	612	1752	66	Beans (white)	26	XOF	5	KG	2	2016	305
14517	29	612	1752	67	Maize (white)	26	XOF	5	KG	2	2016	100
14518	29	612	1752	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	285
14519	29	612	1753	64	Rice (imported)	26	XOF	5	KG	2	2016	480
14520	29	612	1753	65	Sorghum	26	XOF	5	KG	2	2016	135
14521	29	612	1753	66	Beans (white)	26	XOF	5	KG	2	2016	545
14522	29	612	1753	67	Maize (white)	26	XOF	5	KG	2	2016	115
14523	29	612	1753	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	355
14524	29	612	1754	64	Rice (imported)	26	XOF	5	KG	2	2016	415
14525	29	612	1754	65	Sorghum	26	XOF	5	KG	2	2016	145
14526	29	612	1754	66	Beans (white)	26	XOF	5	KG	2	2016	405
14527	29	612	1754	67	Maize (white)	26	XOF	5	KG	2	2016	130
14528	29	612	1754	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	175
14529	29	610	1755	64	Rice (imported)	26	XOF	5	KG	2	2016	530
14530	29	610	1755	65	Sorghum	26	XOF	5	KG	2	2016	80
14531	29	610	1755	66	Beans (white)	26	XOF	5	KG	2	2016	300
14532	29	610	1755	67	Maize (white)	26	XOF	5	KG	2	2016	70
14533	29	610	1755	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	215
14534	29	610	1756	64	Rice (imported)	26	XOF	5	KG	2	2016	500
14535	29	610	1756	65	Sorghum	26	XOF	5	KG	2	2016	155
14536	29	610	1756	66	Beans (white)	26	XOF	5	KG	2	2016	325
14537	29	610	1756	67	Maize (white)	26	XOF	5	KG	2	2016	115
14538	29	610	1756	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	285
14539	29	610	1757	64	Rice (imported)	26	XOF	5	KG	2	2016	530
14540	29	610	1757	65	Sorghum	26	XOF	5	KG	2	2016	170
14541	29	610	1757	66	Beans (white)	26	XOF	5	KG	2	2016	380
14542	29	610	1757	67	Maize (white)	26	XOF	5	KG	2	2016	135
14543	29	610	1757	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	285
14544	29	615	1758	64	Rice (imported)	26	XOF	5	KG	2	2016	480
14545	29	615	1758	65	Sorghum	26	XOF	5	KG	2	2016	185
14546	29	615	1758	66	Beans (white)	26	XOF	5	KG	2	2016	420
14547	29	615	1758	67	Maize (white)	26	XOF	5	KG	2	2016	115
14548	29	615	1758	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	175
14549	29	613	1759	64	Rice (imported)	26	XOF	5	KG	2	2016	530
14550	29	613	1759	65	Sorghum	26	XOF	5	KG	2	2016	235
14551	29	613	1759	66	Beans (white)	26	XOF	5	KG	2	2016	545
14552	29	613	1759	67	Maize (white)	26	XOF	5	KG	2	2016	165
14553	29	613	1759	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	250
14554	29	613	1760	64	Rice (imported)	26	XOF	5	KG	2	2016	370
14555	29	613	1760	65	Sorghum	26	XOF	5	KG	2	2016	240
14556	29	613	1760	66	Beans (white)	26	XOF	5	KG	2	2016	575
14557	29	613	1760	67	Maize (white)	26	XOF	5	KG	2	2016	95
14558	29	613	1760	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	165
14559	29	620	1761	64	Rice (imported)	26	XOF	5	KG	2	2016	425
14560	29	620	1761	65	Sorghum	26	XOF	5	KG	2	2016	230
14561	29	620	1761	66	Beans (white)	26	XOF	5	KG	2	2016	380
14562	29	620	1761	67	Maize (white)	26	XOF	5	KG	2	2016	135
14563	29	620	1761	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	165
14564	29	619	1762	64	Rice (imported)	26	XOF	5	KG	2	2016	530
14565	29	619	1762	65	Sorghum	26	XOF	5	KG	2	2016	195
14566	29	619	1762	66	Beans (white)	26	XOF	5	KG	2	2016	545
14567	29	619	1762	67	Maize (white)	26	XOF	5	KG	2	2016	100
14568	29	619	1762	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	100
14569	29	619	1763	64	Rice (imported)	26	XOF	5	KG	2	2016	480
14570	29	619	1763	65	Sorghum	26	XOF	5	KG	2	2016	285
14571	29	619	1763	66	Beans (white)	26	XOF	5	KG	2	2016	545
14572	29	619	1763	67	Maize (white)	26	XOF	5	KG	2	2016	105
14573	29	619	1763	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	250
14574	29	618	1764	64	Rice (imported)	26	XOF	5	KG	2	2016	465
14575	29	618	1764	65	Sorghum	26	XOF	5	KG	2	2016	285
14576	29	618	1764	66	Beans (white)	26	XOF	5	KG	2	2016	545
14577	29	618	1764	67	Maize (white)	26	XOF	5	KG	2	2016	145
14578	29	618	1764	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	150
14579	29	617	1765	64	Rice (imported)	26	XOF	5	KG	2	2016	425
14580	29	617	1765	65	Sorghum	26	XOF	5	KG	2	2016	345
14581	29	617	1765	66	Beans (white)	26	XOF	5	KG	2	2016	490
14582	29	617	1765	67	Maize (white)	26	XOF	5	KG	2	2016	170
14583	29	617	1765	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	340
14584	29	614	1766	64	Rice (imported)	26	XOF	5	KG	2	2016	585
14585	29	614	1766	65	Sorghum	26	XOF	5	KG	2	2016	240
14586	29	614	1766	66	Beans (white)	26	XOF	5	KG	2	2016	530
14587	29	614	1766	67	Maize (white)	26	XOF	5	KG	2	2016	120
14588	29	614	1766	403	Cassava meal (gari)	26	XOF	5	KG	2	2016	90
14589	31	\N	\N	58	Wheat flour	76	BTN	5	KG	6	2012	23
14590	31	\N	\N	71	Rice (local)	76	BTN	5	KG	6	2012	63.1000000000000014
14591	31	\N	\N	251	Rice (imported, Indian)	76	BTN	5	KG	6	2012	30.8000000000000007
14592	33	40444	307	92	Eggs	46	BOB	33	Unit	3	2016	0.709999999999999964
14593	33	40444	307	97	Sugar	46	BOB	5	KG	3	2016	6.15000000000000036
14594	33	40444	307	123	Meat (beef, chops with bones)	46	BOB	5	KG	3	2016	29.120000000000001
14595	33	40444	307	125	Meat (chicken, whole)	46	BOB	5	KG	3	2016	17.2899999999999991
14596	33	40444	307	126	Noodles (short)	46	BOB	5	KG	3	2016	8.3100000000000005
14597	33	40444	307	127	Potatoes (Dutch)	46	BOB	86	11.5 KG	5	2012	28
14598	33	40444	307	128	Potatoes (Irish, imilla)	46	BOB	86	11.5 KG	3	2016	43.75
14599	33	40444	307	130	Rice (estaquilla)	46	BOB	5	KG	5	2012	6.5
14600	33	40444	307	162	Rice (long grain)	46	BOB	5	KG	3	2016	7.45000000000000018
14601	33	40444	307	375	Bread (wheat)	46	BOB	33	Unit	3	2016	0.409999999999999976
14602	33	40446	308	92	Eggs	46	BOB	33	Unit	3	2016	0.739999999999999991
14603	33	40446	308	97	Sugar	46	BOB	30	Pound	3	2016	2.5299999999999998
14604	33	40446	308	123	Meat (beef, chops with bones)	46	BOB	5	KG	3	2016	26.1900000000000013
14605	33	40446	308	125	Meat (chicken, whole)	46	BOB	5	KG	3	2016	13.6600000000000001
14606	33	40446	308	126	Noodles (short)	46	BOB	30	Pound	3	2016	4.08000000000000007
14607	33	40446	308	127	Potatoes (Dutch)	46	BOB	86	11.5 KG	5	2012	40.3100000000000023
14608	33	40446	308	128	Potatoes (Irish, imilla)	46	BOB	86	11.5 KG	3	2016	45.9500000000000028
14609	33	40446	308	130	Rice (estaquilla)	46	BOB	30	Pound	3	2016	3.54000000000000004
14610	33	40446	308	375	Bread (wheat)	46	BOB	33	Unit	3	2016	0.46000000000000002
14611	33	40445	309	92	Eggs	46	BOB	33	Unit	3	2016	0.609999999999999987
14612	33	40445	309	97	Sugar	46	BOB	5	KG	3	2016	5.87999999999999989
14613	33	40445	309	123	Meat (beef, chops with bones)	46	BOB	5	KG	3	2016	25.6000000000000014
14614	33	40445	309	125	Meat (chicken, whole)	46	BOB	5	KG	3	2016	13.6999999999999993
14615	33	40445	309	126	Noodles (short)	46	BOB	30	Pound	3	2016	3.97999999999999998
14616	33	40445	309	127	Potatoes (Dutch)	46	BOB	86	11.5 KG	5	2012	36.9299999999999997
14617	33	40445	309	128	Potatoes (Irish, imilla)	46	BOB	86	11.5 KG	3	2016	45.3999999999999986
14618	33	40445	309	130	Rice (estaquilla)	46	BOB	29	Cuartilla	5	2012	19.25
14619	33	40445	309	375	Bread (wheat)	46	BOB	33	Unit	3	2016	0.489999999999999991
14620	33	40445	309	436	Rice (good quality)	46	BOB	29	Cuartilla	3	2016	23.1999999999999993
14621	33	40447	310	92	Eggs	46	BOB	33	Unit	3	2016	0.699999999999999956
14622	33	40447	310	97	Sugar	46	BOB	5	KG	3	2016	5.75
14623	33	40447	310	123	Meat (beef, chops with bones)	46	BOB	5	KG	3	2016	29.1700000000000017
14624	33	40447	310	125	Meat (chicken, whole)	46	BOB	5	KG	3	2016	14.3599999999999994
14625	33	40447	310	126	Noodles (short)	46	BOB	5	KG	3	2016	8
14626	33	40447	310	127	Potatoes (Dutch)	46	BOB	29	Cuartilla	5	2012	9.41999999999999993
14627	33	40447	310	128	Potatoes (Irish, imilla)	46	BOB	29	Cuartilla	3	2016	10.8300000000000001
14628	33	40447	310	130	Rice (estaquilla)	46	BOB	5	KG	5	2012	6.88999999999999968
14629	33	40447	310	375	Bread (wheat)	46	BOB	33	Unit	3	2016	0.400000000000000022
14630	33	40447	310	436	Rice (good quality)	46	BOB	5	KG	3	2016	9.16999999999999993
14631	33	40448	311	92	Eggs	46	BOB	33	Unit	3	2016	0.800000000000000044
14632	33	40448	311	97	Sugar	46	BOB	30	Pound	3	2016	2.93999999999999995
14633	33	40448	311	123	Meat (beef, chops with bones)	46	BOB	5	KG	3	2016	30.9200000000000017
14634	33	40448	311	125	Meat (chicken, whole)	46	BOB	5	KG	3	2016	15.4199999999999999
14635	33	40448	311	126	Noodles (short)	46	BOB	94	0.5 Cuartilla	9	2015	21.0799999999999983
14636	33	40448	311	127	Potatoes (Dutch)	46	BOB	86	11.5 KG	5	2012	15.8300000000000001
14637	33	40448	311	128	Potatoes (Irish, imilla)	46	BOB	86	11.5 KG	3	2016	41.5
14638	33	40448	311	130	Rice (estaquilla)	46	BOB	29	Cuartilla	3	2016	20.3399999999999999
14639	33	40448	311	375	Bread (wheat)	46	BOB	33	Unit	3	2016	0.330000000000000016
14640	33	40450	312	92	Eggs	46	BOB	33	Unit	3	2016	0.680000000000000049
14641	33	40450	312	97	Sugar	46	BOB	5	KG	3	2016	6.04000000000000004
14642	33	40450	312	123	Meat (beef, chops with bones)	46	BOB	5	KG	3	2016	28.3299999999999983
14643	33	40450	312	125	Meat (chicken, whole)	46	BOB	5	KG	3	2016	15.5399999999999991
14644	33	40450	312	126	Noodles (short)	46	BOB	5	KG	3	2016	10
14645	33	40450	312	127	Potatoes (Dutch)	46	BOB	29	Cuartilla	5	2012	5.29999999999999982
14646	33	40450	312	128	Potatoes (Irish, imilla)	46	BOB	29	Cuartilla	3	2016	9.41999999999999993
14647	33	40450	312	133	Rice (white)	46	BOB	5	KG	5	2012	7
14648	33	40450	312	162	Rice (long grain)	46	BOB	5	KG	3	2016	6.45999999999999996
14649	33	40450	312	375	Bread (wheat)	46	BOB	33	Unit	3	2016	0.5
14650	33	40449	313	92	Eggs	46	BOB	33	Unit	3	2016	0.699999999999999956
14651	33	40449	313	97	Sugar	46	BOB	5	KG	3	2016	5.20999999999999996
14652	33	40449	313	123	Meat (beef, chops with bones)	46	BOB	5	KG	3	2016	25.3999999999999986
14653	33	40449	313	125	Meat (chicken, whole)	46	BOB	5	KG	3	2016	12.5399999999999991
14654	33	40449	313	126	Noodles (short)	46	BOB	5	KG	3	2016	8.19999999999999929
14655	33	40449	313	127	Potatoes (Dutch)	46	BOB	30	Pound	5	2012	4.96999999999999975
14656	33	40449	313	128	Potatoes (Irish, imilla)	46	BOB	30	Pound	3	2016	2.43000000000000016
14657	33	40449	313	129	Rice (carolina 2da)	46	BOB	5	KG	3	2016	5.96999999999999975
14658	33	40449	313	375	Bread (wheat)	46	BOB	33	Unit	3	2016	0.510000000000000009
14659	33	40443	314	92	Eggs	46	BOB	33	Unit	3	2016	0.569999999999999951
14660	33	40443	314	97	Sugar	46	BOB	5	KG	3	2016	5.45999999999999996
14661	33	40443	314	123	Meat (beef, chops with bones)	46	BOB	5	KG	3	2016	20
14662	33	40443	314	125	Meat (chicken, whole)	46	BOB	5	KG	3	2016	13.5
14663	33	40443	314	126	Noodles (short)	46	BOB	5	KG	3	2016	9.66999999999999993
14664	33	40443	314	128	Potatoes (Irish, imilla)	46	BOB	5	KG	3	2016	5.66999999999999993
14665	33	40443	314	131	Rice (medium grain)	46	BOB	5	KG	5	2012	5
14666	33	40443	314	144	Potatoes (black)	46	BOB	5	KG	5	2012	5.25
14667	33	40443	314	162	Rice (long grain)	46	BOB	5	KG	3	2016	6.08000000000000007
14668	33	40443	314	375	Bread (wheat)	46	BOB	33	Unit	3	2016	0.5
14669	33	648	315	92	Eggs	46	BOB	33	Unit	3	2016	0.82999999999999996
14670	33	648	315	97	Sugar	46	BOB	5	KG	3	2016	5
14671	33	648	315	123	Meat (beef, chops with bones)	46	BOB	5	KG	3	2016	22.6700000000000017
14672	33	648	315	125	Meat (chicken, whole)	46	BOB	5	KG	3	2016	16.8900000000000006
14673	33	648	315	126	Noodles (short)	46	BOB	5	KG	3	2016	15.1400000000000006
14674	33	648	315	128	Potatoes (Irish, imilla)	46	BOB	5	KG	3	2016	7.66999999999999993
14675	33	648	315	131	Rice (medium grain)	46	BOB	5	KG	3	2016	5.15000000000000036
14676	33	648	315	375	Bread (wheat)	46	BOB	33	Unit	3	2016	0.5
14677	42	40277	129	51	Maize	26	XOF	5	KG	2	2016	122
14678	42	40277	129	65	Sorghum	26	XOF	5	KG	2	2016	155
14679	42	40277	129	73	Millet	26	XOF	5	KG	2	2016	181
14680	42	40277	129	120	Beans (niebe)	26	XOF	5	KG	2	2016	316
14681	42	40286	130	51	Maize	26	XOF	5	KG	2	2016	165
14682	42	40286	130	65	Sorghum	26	XOF	5	KG	2	2016	173
14683	42	40286	130	73	Millet	26	XOF	5	KG	2	2016	166
14684	42	40286	130	120	Beans (niebe)	26	XOF	5	KG	2	2016	277
14685	42	40288	131	51	Maize	26	XOF	5	KG	2	2016	130
14686	42	40288	131	65	Sorghum	26	XOF	5	KG	2	2016	161
14687	42	40288	131	73	Millet	26	XOF	5	KG	2	2016	188
14688	42	40288	131	120	Beans (niebe)	26	XOF	5	KG	2	2016	308
14689	42	40287	132	51	Maize	26	XOF	5	KG	2	2016	177
14690	42	40287	132	65	Sorghum	26	XOF	5	KG	2	2016	166
14691	42	40287	132	73	Millet	26	XOF	5	KG	2	2016	182
14692	42	40287	132	120	Beans (niebe)	26	XOF	5	KG	2	2016	317
14693	42	40287	133	51	Maize	26	XOF	5	KG	2	2016	209
14694	42	40287	133	65	Sorghum	26	XOF	5	KG	2	2016	195
14695	42	40287	133	73	Millet	26	XOF	5	KG	2	2016	235
14696	42	40287	133	120	Beans (niebe)	26	XOF	5	KG	2	2016	365
14697	42	40283	134	51	Maize	26	XOF	5	KG	2	2016	165
14698	42	40283	134	65	Sorghum	26	XOF	5	KG	2	2016	161
14699	42	40283	134	73	Millet	26	XOF	5	KG	2	2016	159
14700	42	40283	134	120	Beans (niebe)	26	XOF	5	KG	2	2016	309
14701	42	40287	135	65	Sorghum	26	XOF	5	KG	2	2016	236
14702	42	40287	135	73	Millet	26	XOF	5	KG	2	2016	253
14703	42	40285	136	51	Maize	26	XOF	5	KG	2	2016	156
14704	42	40285	136	65	Sorghum	26	XOF	5	KG	2	2016	147
14705	42	40285	136	73	Millet	26	XOF	5	KG	2	2016	176
14706	42	40285	136	120	Beans (niebe)	26	XOF	5	KG	2	2016	297
14707	42	40280	137	51	Maize	26	XOF	5	KG	2	2016	154
14708	42	40280	137	65	Sorghum	26	XOF	5	KG	2	2016	154
14709	42	40280	137	73	Millet	26	XOF	5	KG	2	2016	187
14710	42	40280	137	120	Beans (niebe)	26	XOF	5	KG	2	2016	266
14711	42	40281	138	51	Maize	26	XOF	5	KG	2	2016	153
14712	42	40281	138	65	Sorghum	26	XOF	5	KG	2	2016	152
14713	42	40281	138	73	Millet	26	XOF	5	KG	2	2016	183
14714	42	40281	138	120	Beans (niebe)	26	XOF	5	KG	2	2016	286
14715	42	40278	139	51	Maize	26	XOF	5	KG	2	2016	155
14716	42	40278	139	65	Sorghum	26	XOF	5	KG	2	2016	186
14717	42	40278	139	73	Millet	26	XOF	5	KG	2	2016	194
14718	42	40278	139	120	Beans (niebe)	26	XOF	5	KG	2	2016	372
14719	42	40279	140	51	Maize	26	XOF	5	KG	2	2016	157
14720	42	40279	140	65	Sorghum	26	XOF	5	KG	2	2016	168
14721	42	40279	140	73	Millet	26	XOF	5	KG	2	2016	175
14722	42	40279	140	120	Beans (niebe)	26	XOF	5	KG	2	2016	305
14723	42	40276	141	51	Maize	26	XOF	5	KG	2	2016	137
14724	42	40276	141	65	Sorghum	26	XOF	5	KG	2	2016	133
14725	42	40276	141	73	Millet	26	XOF	5	KG	2	2016	167
14726	42	40276	141	120	Beans (niebe)	26	XOF	5	KG	2	2016	239
14727	42	40283	1042	51	Maize	26	XOF	5	KG	6	2006	130
14728	42	40283	1042	52	Rice	26	XOF	5	KG	6	2006	252.5
14729	42	40283	1042	65	Sorghum	26	XOF	5	KG	6	2006	140
14730	42	40283	1042	73	Millet	26	XOF	5	KG	6	2006	152.5
14731	42	40283	1043	51	Maize	26	XOF	5	KG	11	2015	101
14732	42	40283	1043	64	Rice (imported)	26	XOF	5	KG	2	2012	700
14733	42	40283	1043	65	Sorghum	26	XOF	5	KG	11	2015	118
14734	42	40283	1043	73	Millet	26	XOF	5	KG	8	2015	167
14735	42	40283	1043	120	Beans (niebe)	26	XOF	5	KG	12	2015	217
14736	42	40279	1802	51	Maize	26	XOF	5	KG	2	2016	162
14737	42	40279	1802	65	Sorghum	26	XOF	5	KG	2	2016	143
14738	42	40279	1802	73	Millet	26	XOF	5	KG	2	2016	181
14739	42	40279	1802	120	Beans (niebe)	26	XOF	5	KG	2	2016	324
14740	42	40280	1803	51	Maize	26	XOF	5	KG	2	2016	181
14741	42	40280	1803	65	Sorghum	26	XOF	5	KG	2	2016	237
14742	42	40280	1803	73	Millet	26	XOF	5	KG	2	2016	267
14743	42	40280	1803	120	Beans (niebe)	26	XOF	5	KG	2	2016	271
14744	42	40281	1804	51	Maize	26	XOF	5	KG	2	2016	141
14745	42	40281	1804	65	Sorghum	26	XOF	5	KG	2	2016	162
14746	42	40281	1804	73	Millet	26	XOF	5	KG	2	2016	211
14747	42	40281	1804	120	Beans (niebe)	26	XOF	5	KG	2	2016	298
14748	42	40282	1805	51	Maize	26	XOF	5	KG	2	2016	160
14749	42	40282	1805	65	Sorghum	26	XOF	5	KG	10	2015	164
14750	42	40282	1805	73	Millet	26	XOF	5	KG	2	2016	171
14751	42	40282	1805	120	Beans (niebe)	26	XOF	5	KG	2	2016	368
14752	42	40284	1806	51	Maize	26	XOF	5	KG	2	2016	139
14753	42	40284	1806	65	Sorghum	26	XOF	5	KG	2	2016	157
14754	42	40284	1806	73	Millet	26	XOF	5	KG	2	2016	194
14755	42	40284	1806	120	Beans (niebe)	26	XOF	5	KG	2	2016	342
14756	42	40276	1892	51	Maize	26	XOF	5	KG	2	2016	136
14757	42	40276	1892	65	Sorghum	26	XOF	5	KG	2	2016	131
14758	42	40276	1892	73	Millet	26	XOF	5	KG	2	2016	163
14759	42	40276	1892	120	Beans (niebe)	26	XOF	5	KG	2	2016	320
14760	42	40285	1893	51	Maize	26	XOF	5	KG	2	2016	154
14761	42	40285	1893	65	Sorghum	26	XOF	5	KG	2	2016	166
14762	42	40285	1893	73	Millet	26	XOF	5	KG	2	2016	196
14763	42	40285	1893	120	Beans (niebe)	26	XOF	5	KG	2	2016	272
14764	43	40543	201	50	Beans	32	BIF	5	KG	2	2016	1300
14765	43	40543	201	51	Maize	32	BIF	5	KG	12	2015	750
14766	43	40543	201	67	Maize (white)	32	BIF	5	KG	2	2016	900
14767	43	40543	201	74	Cassava flour	32	BIF	5	KG	2	2016	1000
14768	43	40543	201	87	Sweet potatoes	32	BIF	5	KG	2	2016	500
14769	43	40543	201	381	Rice (imported, Tanzanian)	32	BIF	5	KG	2	2016	2200
14770	43	40543	201	425	Rice (high quality, local)	32	BIF	5	KG	12	2015	1600
14771	43	40543	201	426	Rice (low quality, local)	32	BIF	5	KG	2	2016	1700
14772	43	40548	202	50	Beans	32	BIF	5	KG	2	2016	1067
14773	43	40548	202	51	Maize	32	BIF	5	KG	12	2015	950
14774	43	40548	202	67	Maize (white)	32	BIF	5	KG	2	2016	663
14775	43	40548	202	74	Cassava flour	32	BIF	5	KG	2	2016	713
14776	43	40548	202	87	Sweet potatoes	32	BIF	5	KG	2	2016	336
14777	43	40548	202	425	Rice (high quality, local)	32	BIF	5	KG	2	2016	1692
14778	43	40548	202	426	Rice (low quality, local)	32	BIF	5	KG	2	2016	1492
14779	43	40551	203	50	Beans	32	BIF	5	KG	2	2016	988
14780	43	40551	203	51	Maize	32	BIF	5	KG	12	2015	867
14781	43	40551	203	67	Maize (white)	32	BIF	5	KG	2	2016	800
14782	43	40551	203	74	Cassava flour	32	BIF	5	KG	2	2016	800
14783	43	40551	203	87	Sweet potatoes	32	BIF	5	KG	2	2016	287
14784	43	40551	203	425	Rice (high quality, local)	32	BIF	5	KG	2	2016	1792
14785	43	40551	203	426	Rice (low quality, local)	32	BIF	5	KG	2	2016	1400
14786	43	40554	204	50	Beans	32	BIF	5	KG	2	2016	938
14787	43	40554	204	51	Maize	32	BIF	5	KG	12	2015	820
14788	43	40554	204	67	Maize (white)	32	BIF	5	KG	2	2016	933
14789	43	40554	204	74	Cassava flour	32	BIF	5	KG	2	2016	979
14790	43	40554	204	87	Sweet potatoes	32	BIF	5	KG	2	2016	154
14791	43	40554	204	425	Rice (high quality, local)	32	BIF	5	KG	2	2016	1738
14792	43	40554	204	426	Rice (low quality, local)	32	BIF	5	KG	2	2016	1354
14793	43	40558	205	50	Beans	32	BIF	5	KG	2	2016	992
14794	43	40558	205	51	Maize	32	BIF	5	KG	12	2015	900
14795	43	40558	205	74	Cassava flour	32	BIF	5	KG	2	2016	737
14796	43	40558	205	87	Sweet potatoes	32	BIF	5	KG	2	2016	388
14797	43	40558	205	425	Rice (high quality, local)	32	BIF	5	KG	2	2016	1638
14798	43	40558	205	426	Rice (low quality, local)	32	BIF	5	KG	2	2016	1513
14799	43	40556	206	50	Beans	32	BIF	5	KG	2	2016	1117
14800	43	40556	206	51	Maize	32	BIF	5	KG	12	2015	600
14801	43	40556	206	67	Maize (white)	32	BIF	5	KG	2	2016	800
14802	43	40556	206	74	Cassava flour	32	BIF	5	KG	2	2016	875
14803	43	40556	206	87	Sweet potatoes	32	BIF	5	KG	2	2016	402
14804	43	40556	206	381	Rice (imported, Tanzanian)	32	BIF	5	KG	12	2015	1800
14805	43	40556	206	425	Rice (high quality, local)	32	BIF	5	KG	2	2016	1750
14806	43	40556	206	426	Rice (low quality, local)	32	BIF	5	KG	2	2016	1350
14807	43	40543	207	50	Beans	32	BIF	5	KG	10	2012	950
14808	43	40543	207	51	Maize	32	BIF	5	KG	10	2012	950
14809	43	40543	207	74	Cassava flour	32	BIF	5	KG	10	2012	1100
14810	43	40543	207	87	Sweet potatoes	32	BIF	5	KG	10	2012	1000
14811	43	40543	207	426	Rice (low quality, local)	32	BIF	5	KG	10	2012	1450
14812	43	40547	1826	50	Beans	32	BIF	5	KG	2	2016	778
14813	43	40547	1826	51	Maize	32	BIF	5	KG	12	2015	940
14814	43	40547	1826	67	Maize (white)	32	BIF	5	KG	2	2016	566
14815	43	40547	1826	74	Cassava flour	32	BIF	5	KG	2	2016	695
14816	43	40547	1826	87	Sweet potatoes	32	BIF	5	KG	2	2016	351
14817	43	40547	1826	425	Rice (high quality, local)	32	BIF	5	KG	2	2016	1514
14818	43	40547	1826	426	Rice (low quality, local)	32	BIF	5	KG	2	2016	1420
14819	43	40542	1827	50	Beans	32	BIF	5	KG	2	2016	933
14820	43	40542	1827	51	Maize	32	BIF	5	KG	12	2015	907
14821	43	40542	1827	67	Maize (white)	32	BIF	5	KG	2	2016	464
14822	43	40542	1827	74	Cassava flour	32	BIF	5	KG	2	2016	764
14823	43	40542	1827	87	Sweet potatoes	32	BIF	5	KG	2	2016	184
14824	43	40542	1827	425	Rice (high quality, local)	32	BIF	5	KG	2	2016	1461
14825	43	40542	1827	426	Rice (low quality, local)	32	BIF	5	KG	2	2016	1331
14826	44	794	632	96	Oil (vegetable)	60	KHR	5	KG	2	2016	3666.67000000000007
14827	44	794	632	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1700
14828	44	794	632	277	Wage (non-qualified labour)	60	KHR	51	Day	2	2016	20000
14829	44	794	632	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	14000
14830	44	793	633	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1420
14831	44	814	634	165	Rice (mixed, low quality)	60	KHR	5	KG	10	2015	1850
14832	44	811	635	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1420
14833	44	808	636	96	Oil (vegetable)	60	KHR	5	KG	2	2016	4100
14834	44	808	636	165	Rice (mixed, low quality)	60	KHR	5	KG	12	2015	1766.67000000000007
14835	44	808	636	277	Wage (non-qualified labour)	60	KHR	51	Day	2	2016	22500
14836	44	808	636	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	15666.7000000000007
14837	44	806	637	165	Rice (mixed, low quality)	60	KHR	5	KG	12	2013	1600
14838	44	797	638	165	Rice (mixed, low quality)	60	KHR	5	KG	7	2015	1733.32999999999993
14839	44	792	639	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1100
14840	44	791	640	165	Rice (mixed, low quality)	60	KHR	5	KG	5	2014	1800
14841	44	791	1524	96	Oil (vegetable)	60	KHR	5	KG	2	2016	4500
14842	44	791	1524	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1750
14843	44	791	1524	277	Wage (non-qualified labour)	60	KHR	51	Day	2	2016	21000
14844	44	791	1524	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	15000
14845	44	791	1525	96	Oil (vegetable)	60	KHR	5	KG	2	2016	6666.67000000000007
14846	44	791	1525	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	2000
14847	44	791	1525	277	Wage (non-qualified labour)	60	KHR	51	Day	2	2016	21500
14848	44	791	1525	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	12666.7000000000007
14849	44	793	1526	96	Oil (vegetable)	60	KHR	5	KG	2	2016	3600
14850	44	793	1526	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1533.32999999999993
14851	44	793	1526	277	Wage (non-qualified labour)	60	KHR	51	Day	2	2016	20250
14852	44	793	1526	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	13000
14853	44	793	1527	96	Oil (vegetable)	60	KHR	5	KG	2	2016	3733.32999999999993
14854	44	793	1527	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1566.67000000000007
14855	44	793	1527	277	Wage (non-qualified labour)	60	KHR	51	Day	2	2016	22500
14856	44	793	1527	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	14000
14857	44	794	1528	96	Oil (vegetable)	60	KHR	5	KG	2	2016	4000
14858	44	794	1528	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1700
14859	44	794	1528	277	Wage (non-qualified labour)	60	KHR	51	Day	2	2016	21500
14860	44	794	1528	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	12000
14861	44	795	1529	96	Oil (vegetable)	60	KHR	5	KG	2	2016	4000
14862	44	795	1529	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1700
14863	44	795	1529	277	Wage (non-qualified labour)	60	KHR	51	Day	2	2016	25000
14864	44	795	1529	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	12000
14865	44	795	1530	96	Oil (vegetable)	60	KHR	5	KG	2	2016	4000
14866	44	795	1530	165	Rice (mixed, low quality)	60	KHR	5	KG	12	2015	1800
14867	44	795	1530	277	Wage (non-qualified labour)	60	KHR	51	Day	2	2016	25000
14868	44	795	1530	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	12666.7000000000007
14869	44	796	1531	96	Oil (vegetable)	60	KHR	5	KG	2	2016	3933.32999999999993
14870	44	796	1531	165	Rice (mixed, low quality)	60	KHR	5	KG	1	2016	1533.32999999999993
14871	44	796	1531	277	Wage (non-qualified labour)	60	KHR	51	Day	2	2016	22500
14872	44	796	1531	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	13000
14873	44	796	1532	96	Oil (vegetable)	60	KHR	5	KG	2	2016	4000
14874	44	796	1532	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1766.67000000000007
14875	44	796	1532	277	Wage (non-qualified labour)	60	KHR	51	Day	2	2016	20000
14876	44	796	1532	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	12000
14877	44	798	1533	96	Oil (vegetable)	60	KHR	5	KG	5	2015	4033
14878	44	798	1533	165	Rice (mixed, low quality)	60	KHR	5	KG	5	2015	1733
14879	44	798	1533	277	Wage (non-qualified labour)	60	KHR	51	Day	5	2015	23750
14880	44	798	1533	329	Meat (pork, with fat)	60	KHR	5	KG	5	2015	15666.7000000000007
14881	44	798	1534	96	Oil (vegetable)	60	KHR	5	KG	5	2015	4667
14882	44	798	1534	165	Rice (mixed, low quality)	60	KHR	5	KG	5	2015	2050
14883	44	798	1534	329	Meat (pork, with fat)	60	KHR	5	KG	5	2015	16833.2999999999993
14884	44	808	1535	96	Oil (vegetable)	60	KHR	5	KG	2	2016	3500
14885	44	808	1535	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1566.67000000000007
14886	44	808	1535	277	Wage (non-qualified labour)	60	KHR	51	Day	2	2016	20000
14887	44	808	1535	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	12333.2999999999993
14888	44	809	1536	96	Oil (vegetable)	60	KHR	5	KG	2	2016	4500
14889	44	809	1536	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1666.67000000000007
14890	44	809	1536	277	Wage (non-qualified labour)	60	KHR	51	Day	2	2016	18500
14891	44	809	1536	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	15000
14892	44	811	1538	96	Oil (vegetable)	60	KHR	5	KG	2	2016	4398.32999999999993
14893	44	811	1538	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1500
14894	44	811	1538	277	Wage (non-qualified labour)	60	KHR	51	Day	2	2016	19000
14895	44	811	1538	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	10000
14896	44	811	1539	96	Oil (vegetable)	60	KHR	5	KG	2	2016	4500
14897	44	811	1539	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1600
14898	44	811	1539	277	Wage (non-qualified labour)	60	KHR	51	Day	2	2016	21500
14899	44	811	1539	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	12666.7000000000007
14900	44	804	1540	96	Oil (vegetable)	60	KHR	5	KG	2	2016	4600
14901	44	804	1540	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1700
14902	44	804	1540	277	Wage (non-qualified labour)	60	KHR	51	Day	1	2016	18750
14903	44	804	1540	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	13000
14904	44	804	1541	96	Oil (vegetable)	60	KHR	5	KG	2	2016	4550
14905	44	804	1541	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	2000
14906	44	804	1541	277	Wage (non-qualified labour)	60	KHR	51	Day	2	2016	22500
14907	44	804	1541	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	13000
14908	44	809	1564	96	Oil (vegetable)	60	KHR	5	KG	2	2016	4466.67000000000007
14909	44	809	1564	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1666.67000000000007
14910	44	809	1564	277	Wage (non-qualified labour)	60	KHR	51	Day	2	2016	18500
14911	44	809	1564	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	13000
14912	44	809	1671	165	Rice (mixed, low quality)	60	KHR	5	KG	1	2016	1520
14913	44	801	1673	165	Rice (mixed, low quality)	60	KHR	5	KG	5	2015	2000
14914	44	812	1674	96	Oil (vegetable)	60	KHR	5	KG	2	2016	3866.67000000000007
14915	44	812	1674	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1800
14916	44	812	1674	329	Meat (pork, with fat)	60	KHR	5	KG	2	2016	14000
14917	44	802	1675	165	Rice (mixed, low quality)	60	KHR	5	KG	2	2016	1900
14918	44	803	1676	165	Rice (mixed, low quality)	60	KHR	5	KG	12	2015	1800
14919	44	807	1678	165	Rice (mixed, low quality)	60	KHR	5	KG	12	2015	1400
14920	45	821	1578	51	Maize	48	XAF	17	90 KG	11	2015	13500
14921	45	821	1578	71	Rice (local)	48	XAF	17	90 KG	11	2015	10000
14922	45	821	1578	119	Groundnuts (shelled)	48	XAF	17	90 KG	11	2015	37000
14923	45	821	1578	120	Beans (niebe)	48	XAF	17	90 KG	11	2015	28000
14924	45	821	1578	135	Sorghum (white)	48	XAF	17	90 KG	11	2015	17000
14925	45	821	1578	156	Sesame	48	XAF	17	90 KG	10	2015	48000
14926	45	821	1578	173	Onions	48	XAF	17	90 KG	11	2015	50000
14927	45	821	1578	186	Peas (yellow)	48	XAF	17	90 KG	10	2015	30000
14928	45	821	1578	248	Soybeans	48	XAF	17	90 KG	11	2015	25000
14929	45	821	1578	282	Sorghum (red)	48	XAF	17	90 KG	11	2015	14500
14930	45	821	1578	302	Cassava (cossette)	48	XAF	17	90 KG	11	2015	13000
14931	45	820	1579	51	Maize	48	XAF	17	90 KG	3	2016	13000
14932	45	820	1579	71	Rice (local)	48	XAF	17	90 KG	11	2015	9000
14933	45	820	1579	119	Groundnuts (shelled)	48	XAF	17	90 KG	3	2016	32000
14934	45	820	1579	120	Beans (niebe)	48	XAF	17	90 KG	3	2016	24000
14935	45	820	1579	135	Sorghum (white)	48	XAF	17	90 KG	11	2015	15000
14936	45	820	1579	156	Sesame	48	XAF	17	90 KG	10	2015	50000
14937	45	820	1579	173	Onions	48	XAF	17	90 KG	3	2016	13000
14938	45	820	1579	186	Peas (yellow)	48	XAF	17	90 KG	3	2016	28000
14939	45	820	1579	248	Soybeans	48	XAF	17	90 KG	11	2015	25000
14940	45	820	1579	282	Sorghum (red)	48	XAF	17	90 KG	11	2015	15000
14941	45	820	1579	302	Cassava (cossette)	48	XAF	17	90 KG	3	2016	14500
14942	45	820	1580	51	Maize	48	XAF	17	90 KG	11	2015	13000
14943	45	820	1580	71	Rice (local)	48	XAF	17	90 KG	11	2015	8000
14944	45	820	1580	119	Groundnuts (shelled)	48	XAF	17	90 KG	11	2015	35000
14945	45	820	1580	120	Beans (niebe)	48	XAF	17	90 KG	11	2015	22000
14946	45	820	1580	135	Sorghum (white)	48	XAF	17	90 KG	10	2015	15000
14947	45	820	1580	156	Sesame	48	XAF	17	90 KG	10	2015	48500
14948	45	820	1580	173	Onions	48	XAF	17	90 KG	11	2015	50000
14949	45	820	1580	186	Peas (yellow)	48	XAF	17	90 KG	11	2015	25000
14950	45	820	1580	248	Soybeans	48	XAF	17	90 KG	11	2015	25000
14951	45	820	1580	282	Sorghum (red)	48	XAF	17	90 KG	11	2015	12000
14952	45	820	1580	302	Cassava (cossette)	48	XAF	17	90 KG	10	2015	13000
14953	45	820	1581	51	Maize	48	XAF	17	90 KG	11	2015	12000
14954	45	820	1581	71	Rice (local)	48	XAF	17	90 KG	11	2015	8000
14955	45	820	1581	119	Groundnuts (shelled)	48	XAF	17	90 KG	11	2015	37000
14956	45	820	1581	120	Beans (niebe)	48	XAF	17	90 KG	11	2015	26000
14957	45	820	1581	135	Sorghum (white)	48	XAF	17	90 KG	7	2015	15000
14958	45	820	1581	156	Sesame	48	XAF	17	90 KG	11	2015	40000
14959	45	820	1581	173	Onions	48	XAF	17	90 KG	11	2015	45000
14960	45	820	1581	186	Peas (yellow)	48	XAF	17	90 KG	11	2015	28000
14961	45	820	1581	248	Soybeans	48	XAF	17	90 KG	11	2015	24000
14962	45	820	1581	282	Sorghum (red)	48	XAF	17	90 KG	11	2015	11000
14963	45	820	1581	302	Cassava (cossette)	48	XAF	17	90 KG	11	2015	13000
14964	45	820	1582	51	Maize	48	XAF	17	90 KG	11	2015	11000
14965	45	820	1582	71	Rice (local)	48	XAF	17	90 KG	11	2015	8000
14966	45	820	1582	119	Groundnuts (shelled)	48	XAF	17	90 KG	11	2015	33000
14967	45	820	1582	120	Beans (niebe)	48	XAF	17	90 KG	11	2015	24000
14968	45	820	1582	135	Sorghum (white)	48	XAF	17	90 KG	6	2015	14000
14969	45	820	1582	156	Sesame	48	XAF	17	90 KG	11	2015	42000
14970	45	820	1582	173	Onions	48	XAF	17	90 KG	11	2015	38000
14971	45	820	1582	186	Peas (yellow)	48	XAF	17	90 KG	11	2015	25000
14972	45	820	1582	248	Soybeans	48	XAF	17	90 KG	11	2015	26000
14973	45	820	1582	282	Sorghum (red)	48	XAF	17	90 KG	11	2015	11000
14974	45	820	1582	302	Cassava (cossette)	48	XAF	17	90 KG	11	2015	12000
14975	45	820	1583	51	Maize	48	XAF	17	90 KG	11	2015	12000
14976	45	820	1583	71	Rice (local)	48	XAF	17	90 KG	11	2015	8000
14977	45	820	1583	119	Groundnuts (shelled)	48	XAF	17	90 KG	11	2015	35000
14978	45	820	1583	120	Beans (niebe)	48	XAF	17	90 KG	11	2015	28000
14979	45	820	1583	135	Sorghum (white)	48	XAF	17	90 KG	10	2015	14000
14980	45	820	1583	156	Sesame	48	XAF	17	90 KG	11	2015	42000
14981	45	820	1583	173	Onions	48	XAF	17	90 KG	11	2015	48000
14982	45	820	1583	186	Peas (yellow)	48	XAF	17	90 KG	10	2015	28000
14983	45	820	1583	248	Soybeans	48	XAF	17	90 KG	11	2015	22000
14984	45	820	1583	282	Sorghum (red)	48	XAF	17	90 KG	11	2015	11000
14985	45	820	1583	302	Cassava (cossette)	48	XAF	17	90 KG	11	2015	12000
14986	45	820	1584	51	Maize	48	XAF	17	90 KG	3	2016	13000
14987	45	820	1584	71	Rice (local)	48	XAF	17	90 KG	3	2016	10000
14988	45	820	1584	119	Groundnuts (shelled)	48	XAF	17	90 KG	3	2016	35000
14989	45	820	1584	120	Beans (niebe)	48	XAF	17	90 KG	3	2016	22000
14990	45	820	1584	135	Sorghum (white)	48	XAF	17	90 KG	11	2015	15000
14991	45	820	1584	156	Sesame	48	XAF	17	90 KG	11	2015	46000
14992	45	820	1584	173	Onions	48	XAF	17	90 KG	3	2016	14000
14993	45	820	1584	186	Peas (yellow)	48	XAF	17	90 KG	3	2016	25000
14994	45	820	1584	248	Soybeans	48	XAF	17	90 KG	11	2015	25000
14995	45	820	1584	282	Sorghum (red)	48	XAF	17	90 KG	11	2015	13000
14996	45	820	1584	302	Cassava (cossette)	48	XAF	17	90 KG	3	2016	14000
14997	45	820	1585	51	Maize	48	XAF	17	90 KG	3	2016	13000
14998	45	820	1585	71	Rice (local)	48	XAF	17	90 KG	3	2016	10000
14999	45	820	1585	119	Groundnuts (shelled)	48	XAF	17	90 KG	3	2016	34000
15000	45	820	1585	120	Beans (niebe)	48	XAF	17	90 KG	3	2016	20000
15001	45	820	1585	135	Sorghum (white)	48	XAF	17	90 KG	11	2015	14000
15002	45	820	1585	156	Sesame	48	XAF	17	90 KG	10	2015	48000
15003	45	820	1585	173	Onions	48	XAF	17	90 KG	3	2016	12000
15004	45	820	1585	186	Peas (yellow)	48	XAF	17	90 KG	3	2016	25000
15005	45	820	1585	248	Soybeans	48	XAF	17	90 KG	11	2015	25000
15006	45	820	1585	282	Sorghum (red)	48	XAF	17	90 KG	11	2015	12500
15007	45	820	1585	302	Cassava (cossette)	48	XAF	17	90 KG	3	2016	13000
15008	45	820	1586	51	Maize	48	XAF	17	90 KG	3	2016	13000
15009	45	820	1586	71	Rice (local)	48	XAF	17	90 KG	11	2015	10000
15010	45	820	1586	119	Groundnuts (shelled)	48	XAF	17	90 KG	3	2016	30000
15011	45	820	1586	120	Beans (niebe)	48	XAF	17	90 KG	3	2016	21000
15012	45	820	1586	135	Sorghum (white)	48	XAF	17	90 KG	7	2015	14500
15013	45	820	1586	156	Sesame	48	XAF	17	90 KG	10	2015	50000
15014	45	820	1586	173	Onions	48	XAF	17	90 KG	3	2016	12000
15015	45	820	1586	186	Peas (yellow)	48	XAF	17	90 KG	3	2016	26000
15016	45	820	1586	248	Soybeans	48	XAF	17	90 KG	11	2015	24000
15017	45	820	1586	282	Sorghum (red)	48	XAF	17	90 KG	11	2015	11000
15018	45	820	1586	302	Cassava (cossette)	48	XAF	17	90 KG	3	2015	16000
15019	45	820	1587	51	Maize	48	XAF	17	90 KG	3	2016	12000
15020	45	820	1587	71	Rice (local)	48	XAF	17	90 KG	3	2016	10000
15021	45	820	1587	119	Groundnuts (shelled)	48	XAF	17	90 KG	3	2016	32000
15022	45	820	1587	120	Beans (niebe)	48	XAF	17	90 KG	3	2016	22000
15023	45	820	1587	156	Sesame	48	XAF	17	90 KG	7	2015	54000
15024	45	820	1587	173	Onions	48	XAF	17	90 KG	3	2016	18000
15025	45	820	1587	186	Peas (yellow)	48	XAF	17	90 KG	2	2015	28000
15026	45	820	1587	248	Soybeans	48	XAF	17	90 KG	11	2015	22000
15027	45	820	1587	282	Sorghum (red)	48	XAF	17	90 KG	11	2015	12000
15028	45	820	1587	302	Cassava (cossette)	48	XAF	17	90 KG	3	2016	14000
15029	45	820	1588	51	Maize	48	XAF	17	90 KG	3	2016	12000
15030	45	820	1588	71	Rice (local)	48	XAF	17	90 KG	11	2015	10000
15031	45	820	1588	119	Groundnuts (shelled)	48	XAF	17	90 KG	3	2016	30000
15032	45	820	1588	120	Beans (niebe)	48	XAF	17	90 KG	3	2016	24000
15033	45	820	1588	156	Sesame	48	XAF	17	90 KG	6	2015	55000
15034	45	820	1588	173	Onions	48	XAF	17	90 KG	3	2016	16000
15035	45	820	1588	186	Peas (yellow)	48	XAF	17	90 KG	10	2015	26000
15036	45	820	1588	248	Soybeans	48	XAF	17	90 KG	11	2015	26000
15037	45	820	1588	282	Sorghum (red)	48	XAF	17	90 KG	11	2015	12000
15038	45	820	1588	302	Cassava (cossette)	48	XAF	17	90 KG	3	2016	13000
15039	45	820	1589	51	Maize	48	XAF	17	90 KG	11	2015	11000
15040	45	820	1589	71	Rice (local)	48	XAF	17	90 KG	11	2015	9000
15041	45	820	1589	119	Groundnuts (shelled)	48	XAF	17	90 KG	11	2015	32000
15042	45	820	1589	120	Beans (niebe)	48	XAF	17	90 KG	11	2015	20000
15043	45	820	1589	156	Sesame	48	XAF	17	90 KG	10	2015	45000
15044	45	820	1589	173	Onions	48	XAF	17	90 KG	11	2015	40000
15045	45	820	1589	186	Peas (yellow)	48	XAF	17	90 KG	10	2015	25000
15046	45	820	1589	248	Soybeans	48	XAF	17	90 KG	11	2015	23000
15047	45	820	1589	282	Sorghum (red)	48	XAF	17	90 KG	11	2015	11000
15048	45	820	1589	302	Cassava (cossette)	48	XAF	17	90 KG	11	2015	11000
15049	45	818	1590	51	Maize	48	XAF	17	90 KG	3	2016	20000
15050	45	818	1590	71	Rice (local)	48	XAF	17	90 KG	3	2016	29500
15051	45	818	1590	119	Groundnuts (shelled)	48	XAF	17	90 KG	3	2016	47000
15052	45	818	1590	120	Beans (niebe)	48	XAF	17	90 KG	3	2016	30000
15053	45	818	1590	135	Sorghum (white)	48	XAF	17	90 KG	3	2016	17000
15054	45	818	1590	173	Onions	48	XAF	17	90 KG	3	2016	11000
15055	45	818	1590	282	Sorghum (red)	48	XAF	17	90 KG	3	2016	16000
15056	45	818	1591	51	Maize	48	XAF	17	90 KG	3	2016	20000
15057	45	818	1591	71	Rice (local)	48	XAF	17	90 KG	3	2016	30000
15058	45	818	1591	119	Groundnuts (shelled)	48	XAF	17	90 KG	3	2016	46000
15059	45	818	1591	120	Beans (niebe)	48	XAF	17	90 KG	3	2016	24000
15060	45	818	1591	135	Sorghum (white)	48	XAF	17	90 KG	3	2016	16000
15061	45	818	1591	173	Onions	48	XAF	17	90 KG	3	2016	10500
15062	45	818	1591	282	Sorghum (red)	48	XAF	17	90 KG	3	2016	13000
15063	45	818	1592	51	Maize	48	XAF	17	90 KG	3	2016	15750
15064	45	818	1592	71	Rice (local)	48	XAF	17	90 KG	3	2016	28125
15065	45	818	1592	120	Beans (niebe)	48	XAF	17	90 KG	3	2016	26625
15066	45	818	1592	135	Sorghum (white)	48	XAF	17	90 KG	8	2015	18000
15067	45	818	1592	282	Sorghum (red)	48	XAF	17	90 KG	3	2016	10500
15068	45	820	1593	51	Maize	48	XAF	17	90 KG	3	2016	13500
15069	45	820	1593	71	Rice (local)	48	XAF	17	90 KG	3	2016	10000
15070	45	820	1593	119	Groundnuts (shelled)	48	XAF	17	90 KG	3	2016	35000
15071	45	820	1593	120	Beans (niebe)	48	XAF	17	90 KG	3	2016	25000
15072	45	820	1593	135	Sorghum (white)	48	XAF	17	90 KG	11	2015	15000
15073	45	820	1593	156	Sesame	48	XAF	17	90 KG	11	2015	50000
15074	45	820	1593	173	Onions	48	XAF	17	90 KG	3	2016	15000
15075	45	820	1593	186	Peas (yellow)	48	XAF	17	90 KG	3	2016	28000
15076	45	820	1593	248	Soybeans	48	XAF	17	90 KG	11	2015	26000
15077	45	820	1593	282	Sorghum (red)	48	XAF	17	90 KG	11	2015	15000
15078	45	820	1593	302	Cassava (cossette)	48	XAF	17	90 KG	3	2016	15000
15079	47	849	533	58	Wheat flour	57	CVE	5	KG	10	2009	67.0999999999999943
15080	47	849	533	162	Rice (long grain)	57	CVE	5	KG	10	2009	90.8900000000000006
15081	47	851	534	58	Wheat flour	57	CVE	5	KG	10	2009	60
15082	47	851	534	162	Rice (long grain)	57	CVE	5	KG	10	2009	81.8499999999999943
15083	47	848	535	58	Wheat flour	57	CVE	5	KG	10	2009	61.7199999999999989
15084	47	848	535	162	Rice (long grain)	57	CVE	5	KG	10	2009	86.75
15085	49	67154	685	51	Maize	48	XAF	5	KG	12	2013	206
15086	49	67154	685	52	Rice	48	XAF	5	KG	8	2012	586.216999999999985
15087	49	67154	685	58	Wheat flour	48	XAF	5	KG	8	2012	557.65300000000002
15088	49	67154	685	73	Millet	48	XAF	5	KG	11	2013	301
15089	49	67154	685	245	Oil (groundnut)	48	XAF	15	L	12	2013	1460
15090	49	67154	685	302	Cassava (cossette)	48	XAF	5	KG	12	2013	292
15091	49	864	686	51	Maize	48	XAF	5	KG	6	2015	176
15092	49	864	686	52	Rice	48	XAF	5	KG	6	2015	300
15093	49	864	686	58	Wheat flour	48	XAF	5	KG	12	2010	733.638000000000034
15094	49	864	686	62	Oil (palm)	48	XAF	15	L	6	2015	650
15095	49	864	686	65	Sorghum	48	XAF	5	KG	6	2015	270
15096	49	864	686	73	Millet	48	XAF	5	KG	6	2015	264
15097	49	864	686	118	Groundnuts (unshelled)	48	XAF	5	KG	6	2015	727
15098	49	864	686	119	Groundnuts (shelled)	48	XAF	5	KG	6	2015	533
15099	49	864	686	120	Beans (niebe)	48	XAF	5	KG	6	2015	319
15100	49	864	686	156	Sesame	48	XAF	5	KG	6	2015	464
15101	49	864	686	245	Oil (groundnut)	48	XAF	15	L	6	2015	2000
15102	49	864	686	285	Fuel (petrol-gasoline)	48	XAF	15	L	6	2015	870
15103	49	864	686	302	Cassava (cossette)	48	XAF	5	KG	6	2015	92
15104	49	864	686	340	Squashes	48	XAF	5	KG	6	2015	1214
15105	49	864	686	341	Fuel (gas)	48	XAF	5	KG	6	2015	1500
15106	49	861	1790	51	Maize	48	XAF	5	KG	6	2015	100
15107	49	861	1790	52	Rice	48	XAF	5	KG	6	2015	274
15108	49	861	1790	62	Oil (palm)	48	XAF	15	L	6	2015	1000
15109	49	861	1790	65	Sorghum	48	XAF	5	KG	6	2015	138
15110	49	861	1790	73	Millet	48	XAF	5	KG	6	2015	389
15111	49	861	1790	118	Groundnuts (unshelled)	48	XAF	5	KG	6	2015	810
15112	49	861	1790	119	Groundnuts (shelled)	48	XAF	5	KG	6	2015	167
15113	49	861	1790	120	Beans (niebe)	48	XAF	5	KG	6	2015	406
15114	49	861	1790	156	Sesame	48	XAF	5	KG	6	2015	396
15115	49	861	1790	245	Oil (groundnut)	48	XAF	15	L	6	2015	1625
15116	49	861	1790	285	Fuel (petrol-gasoline)	48	XAF	15	L	6	2015	870
15117	49	861	1790	302	Cassava (cossette)	48	XAF	5	KG	6	2015	159
15118	49	861	1790	340	Squashes	48	XAF	5	KG	6	2015	962
15119	49	861	1790	341	Fuel (gas)	48	XAF	5	KG	6	2015	1500
15120	49	862	1791	51	Maize	48	XAF	5	KG	6	2015	122
15121	49	862	1791	52	Rice	48	XAF	5	KG	6	2015	250
15122	49	862	1791	62	Oil (palm)	48	XAF	15	L	6	2015	1400
15123	49	862	1791	73	Millet	48	XAF	5	KG	6	2015	222
15124	49	862	1791	118	Groundnuts (unshelled)	48	XAF	5	KG	6	2015	576
15125	49	862	1791	119	Groundnuts (shelled)	48	XAF	5	KG	6	2015	500
15126	49	862	1791	120	Beans (niebe)	48	XAF	5	KG	6	2015	236
15127	49	862	1791	156	Sesame	48	XAF	5	KG	6	2015	571
15128	49	862	1791	245	Oil (groundnut)	48	XAF	15	L	6	2015	800
15129	49	862	1791	285	Fuel (petrol-gasoline)	48	XAF	15	L	6	2015	870
15130	49	862	1791	302	Cassava (cossette)	48	XAF	5	KG	6	2015	108
15131	49	862	1791	340	Squashes	48	XAF	5	KG	6	2015	1000
15132	49	862	1791	341	Fuel (gas)	48	XAF	5	KG	6	2015	1500
15133	49	865	1792	51	Maize	48	XAF	5	KG	6	2015	116
15134	49	865	1792	52	Rice	48	XAF	5	KG	6	2015	167
15135	49	865	1792	62	Oil (palm)	48	XAF	15	L	6	2015	775
15136	49	865	1792	65	Sorghum	48	XAF	5	KG	5	2015	125
15137	49	865	1792	73	Millet	48	XAF	5	KG	5	2015	83
15138	49	865	1792	118	Groundnuts (unshelled)	48	XAF	5	KG	6	2015	558
15139	49	865	1792	119	Groundnuts (shelled)	48	XAF	5	KG	6	2015	233
15140	49	865	1792	120	Beans (niebe)	48	XAF	5	KG	6	2015	483
15141	49	865	1792	156	Sesame	48	XAF	5	KG	6	2015	575
15142	49	865	1792	245	Oil (groundnut)	48	XAF	15	L	6	2015	1500
15143	49	865	1792	285	Fuel (petrol-gasoline)	48	XAF	15	L	6	2015	870
15144	49	865	1792	302	Cassava (cossette)	48	XAF	5	KG	6	2015	111
15145	49	865	1792	340	Squashes	48	XAF	5	KG	6	2015	714
15146	49	865	1792	341	Fuel (gas)	48	XAF	5	KG	6	2015	1500
15147	49	866	1793	51	Maize	48	XAF	5	KG	5	2015	95
15148	49	866	1793	62	Oil (palm)	48	XAF	15	L	6	2015	1000
15149	49	866	1793	65	Sorghum	48	XAF	5	KG	6	2015	1000
15150	49	866	1793	73	Millet	48	XAF	5	KG	6	2015	333
15151	49	866	1793	118	Groundnuts (unshelled)	48	XAF	5	KG	6	2015	561
15152	49	866	1793	119	Groundnuts (shelled)	48	XAF	5	KG	6	2015	400
15153	49	866	1793	120	Beans (niebe)	48	XAF	5	KG	6	2015	264
15154	49	866	1793	156	Sesame	48	XAF	5	KG	6	2015	321
15155	49	866	1793	245	Oil (groundnut)	48	XAF	15	L	6	2015	1275
15156	49	866	1793	285	Fuel (petrol-gasoline)	48	XAF	15	L	6	2015	870
15157	49	866	1793	302	Cassava (cossette)	48	XAF	5	KG	6	2015	112
15158	49	866	1793	340	Squashes	48	XAF	5	KG	5	2015	250
15159	49	866	1793	341	Fuel (gas)	48	XAF	5	KG	6	2015	1500
15160	49	860	1856	51	Maize	48	XAF	5	KG	12	2009	105.742999999999995
15161	49	860	1856	52	Rice	48	XAF	5	KG	12	2009	473.783999999999992
15162	49	860	1856	58	Wheat flour	48	XAF	5	KG	12	2009	891.999000000000024
15163	49	860	1856	302	Cassava (cossette)	48	XAF	5	KG	12	2009	149.111999999999995
15164	49	856	1857	51	Maize	48	XAF	5	KG	12	2010	296.101999999999975
15165	49	856	1857	52	Rice	48	XAF	5	KG	12	2010	386.048999999999978
15166	49	856	1857	58	Wheat flour	48	XAF	5	KG	12	2010	505.54000000000002
15167	49	856	1857	302	Cassava (cossette)	48	XAF	5	KG	12	2010	176.173000000000002
15168	50	12927	228	51	Maize	48	XAF	5	KG	2	2012	190
15169	50	12927	228	64	Rice (imported)	48	XAF	5	KG	2	2012	600
15170	50	12927	228	65	Sorghum	48	XAF	5	KG	1	2016	160
15171	50	12927	228	73	Millet	48	XAF	5	KG	1	2016	190
15172	50	875	229	51	Maize	48	XAF	5	KG	1	2016	197
15173	50	12915	230	51	Maize	48	XAF	5	KG	1	2016	240
15174	50	12915	230	64	Rice (imported)	48	XAF	5	KG	1	2016	510
15175	50	12915	230	65	Sorghum	48	XAF	5	KG	1	2016	260
15176	50	12915	230	73	Millet	48	XAF	5	KG	1	2016	292
15177	50	873	231	64	Rice (imported)	48	XAF	5	KG	2	2012	583
15178	50	873	231	65	Sorghum	48	XAF	5	KG	9	2015	160
15179	50	873	231	73	Millet	48	XAF	5	KG	1	2016	260
15180	50	12918	232	65	Sorghum	48	XAF	5	KG	1	2016	300
15181	50	12918	232	73	Millet	48	XAF	5	KG	1	2016	220
15182	50	12914	233	51	Maize	48	XAF	5	KG	1	2016	287
15183	50	12914	233	64	Rice (imported)	48	XAF	5	KG	1	2016	600
15184	50	12914	233	65	Sorghum	48	XAF	5	KG	6	2013	200
15185	50	12914	233	73	Millet	48	XAF	5	KG	1	2016	290
15186	50	12912	234	51	Maize	48	XAF	5	KG	1	2016	257
15187	50	12912	234	64	Rice (imported)	48	XAF	5	KG	1	2016	502
15188	50	12912	234	65	Sorghum	48	XAF	5	KG	1	2016	200
15189	50	12912	234	71	Rice (local)	48	XAF	5	KG	1	2016	445
15190	50	12912	234	73	Millet	48	XAF	5	KG	1	2016	282
15191	50	12923	235	65	Sorghum	48	XAF	5	KG	1	2016	160
15192	50	12923	235	73	Millet	48	XAF	5	KG	1	2016	227
15193	50	12918	236	51	Maize	48	XAF	5	KG	2	2012	162
15194	50	12918	236	64	Rice (imported)	48	XAF	5	KG	2	2012	463
15195	50	12918	236	65	Sorghum	48	XAF	5	KG	1	2016	125
15196	50	12918	236	73	Millet	48	XAF	5	KG	1	2016	173
15197	57	948	840	58	Wheat flour	67	COP	5	KG	2	2016	1700
15198	57	948	840	67	Maize (white)	67	COP	5	KG	2	2016	1900
15199	57	948	840	76	Maize flour	67	COP	5	KG	2	2016	2000
15200	57	948	840	78	Beans (red)	67	COP	5	KG	2	2016	8360
15201	57	948	840	83	Potatoes	67	COP	5	KG	2	2016	1500
15202	57	948	840	94	Meat (chicken)	67	COP	5	KG	2	2016	5800
15203	57	948	840	96	Oil (vegetable)	67	COP	15	L	2	2016	4250
15204	57	948	840	97	Sugar	67	COP	5	KG	2	2016	3200
15205	57	948	840	105	Garlic	67	COP	5	KG	1	2015	2813
15206	57	948	840	110	Onions (red)	67	COP	5	KG	2	2016	1800
15207	57	948	840	111	Onions (white)	67	COP	5	KG	2	2016	1600
15208	57	948	840	112	Pasta	67	COP	5	KG	1	2015	4160
15209	57	948	840	114	Tomatoes	67	COP	5	KG	2	2016	1818
15210	57	948	840	133	Rice (white)	67	COP	18	MT	2	2016	3020000
15211	57	948	840	136	Maize (yellow)	67	COP	5	KG	2	2016	1200
15212	57	948	840	141	Meat (beef)	67	COP	5	KG	1	2015	13000
15213	57	948	840	147	Plantains	67	COP	5	KG	2	2016	1591
15214	57	948	840	150	Cocoa	67	COP	50	Libra	2	2016	4100
15215	57	948	840	151	Coffee	67	COP	50	Libra	1	2015	15500
15216	57	948	840	166	Carrots	67	COP	5	KG	2	2016	2000
15217	57	948	840	171	Fish (dry)	67	COP	5	KG	1	2015	16000
15218	57	948	840	181	Cabbage	67	COP	5	KG	1	2015	2088
15219	57	948	840	185	Salt	67	COP	5	KG	1	2015	600
15220	57	948	840	203	Rice (paddy)	67	COP	18	MT	2	2016	1628000
15221	57	948	840	208	Chickpeas (imported)	67	COP	5	KG	1	2015	3000
15222	57	948	840	210	Eggs (white, AA)	67	COP	33	Unit	2	2016	260
15223	57	948	840	211	Meat (beef, minced)	67	COP	5	KG	12	2011	7067
15224	57	948	840	212	Peas (green, dry)	67	COP	5	KG	2	2016	2180
15225	57	948	840	213	Potatoes (unica)	67	COP	5	KG	3	2012	550.899999999999977
15226	57	948	840	214	Sugar (brown)	67	COP	5	KG	3	2012	2400
15227	57	948	840	215	Sugar (brown, loaf)	67	COP	5	KG	2	2016	925
15228	57	948	840	229	Apples (red)	67	COP	5	KG	1	2015	2706
15229	57	948	840	231	Cauliflower	67	COP	5	KG	1	2015	1049
15230	57	948	840	233	Cucumbers (greenhouse)	67	COP	5	KG	1	2015	2350
15231	57	948	840	241	Oranges (big size)	67	COP	5	KG	2	2016	1600
15232	57	948	840	254	Bananas	67	COP	5	KG	2	2016	1000
15233	57	948	840	268	Beans (red, fresh)	67	COP	5	KG	2	2016	3000
15234	57	948	840	284	Fuel (diesel)	67	COP	27	Gallon	2	2016	7317
15235	57	948	840	285	Fuel (petrol-gasoline)	67	COP	27	Gallon	2	2016	7718
15236	57	948	840	290	Cassava (dry)	67	COP	5	KG	2	2016	1429
15237	57	948	840	404	Spinach	67	COP	5	KG	2	2016	4444
15238	57	948	840	405	Fish (tilapia)	67	COP	50	Libra	2	2016	4400
15239	57	948	840	406	Beans (string)	67	COP	5	KG	2	2016	3333
15240	57	948	840	407	Guava	67	COP	5	KG	2	2016	1600
15241	57	948	840	408	Papaya	67	COP	5	KG	2	2016	1400
15242	57	948	840	409	Blackberry	67	COP	5	KG	2	2016	2286
15243	57	948	840	410	Broccoli	67	COP	5	KG	2	2016	3750
15244	57	948	840	411	Mangoes	67	COP	5	KG	2	2016	3000
15245	57	948	840	412	Pumpkin	67	COP	5	KG	2	2016	1000
15246	57	948	840	413	Tamarillos/tree tomatoes	67	COP	5	KG	2	2016	1800
15247	57	948	840	414	Cheese	67	COP	5	KG	2	2016	7600
15248	57	948	840	415	Lentils (imported)	67	COP	5	KG	2	2016	5000
15249	57	948	840	463	Milk (pasteurized)	67	COP	41	380 G	12	2011	6283
15250	57	948	840	465	Wage (non-qualified labour, non-agricultural)	67	COP	58	Month	2	2016	689455
15251	57	964	841	58	Wheat flour	67	COP	5	KG	12	2011	2240
15252	57	964	841	94	Meat (chicken)	67	COP	5	KG	1	2015	4600
15253	57	964	841	114	Tomatoes	67	COP	5	KG	1	2015	1100
15254	57	964	841	140	Meat (pork)	67	COP	5	KG	1	2015	6700
15255	57	964	841	141	Meat (beef)	67	COP	5	KG	1	2015	6900
15256	57	964	841	208	Chickpeas (imported)	67	COP	5	KG	10	2010	2800
15257	57	964	841	209	Coffee (instant)	67	COP	40	85 G	12	2011	6133
15258	57	964	841	210	Eggs (white, AA)	67	COP	33	Unit	12	2011	280
15259	57	964	841	211	Meat (beef, minced)	67	COP	5	KG	12	2011	7967
15260	57	964	841	212	Peas (green, dry)	67	COP	5	KG	12	2011	1733
15261	57	964	841	214	Sugar (brown)	67	COP	5	KG	12	2011	2100
15262	57	964	841	229	Apples (red)	67	COP	5	KG	1	2015	3158
15263	57	964	841	284	Fuel (diesel)	67	COP	27	Gallon	1	2015	8301
15264	57	964	841	285	Fuel (petrol-gasoline)	67	COP	27	Gallon	1	2015	8402
15265	57	964	841	463	Milk (pasteurized)	67	COP	41	380 G	12	2011	5900
15266	57	935	842	58	Wheat flour	67	COP	5	KG	12	2011	2149
15267	57	935	842	67	Maize (white)	67	COP	5	KG	1	2015	1100
15268	57	935	842	78	Beans (red)	67	COP	5	KG	2	2016	7200
15269	57	935	842	83	Potatoes	67	COP	5	KG	1	2015	1600
15270	57	935	842	94	Meat (chicken)	67	COP	5	KG	2	2016	5260
15271	57	935	842	96	Oil (vegetable)	67	COP	15	L	2	2016	3835
15272	57	935	842	97	Sugar	67	COP	5	KG	2	2016	2500
15273	57	935	842	110	Onions (red)	67	COP	5	KG	2	2016	2500
15274	57	935	842	111	Onions (white)	67	COP	5	KG	2	2016	1800
15275	57	935	842	114	Tomatoes	67	COP	5	KG	2	2016	1200
15276	57	935	842	133	Rice (white)	67	COP	18	MT	2	2016	2833330
15277	57	935	842	136	Maize (yellow)	67	COP	5	KG	1	2015	950
15278	57	935	842	140	Meat (pork)	67	COP	5	KG	2	2016	15000
15279	57	935	842	141	Meat (beef)	67	COP	5	KG	2	2016	15800
15280	57	935	842	147	Plantains	67	COP	5	KG	2	2016	1500
15281	57	935	842	150	Cocoa	67	COP	50	Libra	1	2015	8670
15282	57	935	842	166	Carrots	67	COP	5	KG	2	2016	950
15283	57	935	842	181	Cabbage	67	COP	5	KG	1	2015	1200
15284	57	935	842	184	Oil (sunflower)	67	COP	15	L	12	2011	6563
15285	57	935	842	203	Rice (paddy)	67	COP	18	MT	2	2016	1200000
15286	57	935	842	208	Chickpeas (imported)	67	COP	5	KG	3	2013	4400
15287	57	935	842	209	Coffee (instant)	67	COP	40	85 G	12	2011	6000
15288	57	935	842	210	Eggs (white, AA)	67	COP	33	Unit	2	2016	280
15289	57	935	842	211	Meat (beef, minced)	67	COP	5	KG	12	2011	7333
15290	57	935	842	212	Peas (green, dry)	67	COP	5	KG	2	2016	3040
15291	57	935	842	214	Sugar (brown)	67	COP	5	KG	3	2012	1720
15292	57	935	842	231	Cauliflower	67	COP	5	KG	1	2015	2000
15293	57	935	842	233	Cucumbers (greenhouse)	67	COP	5	KG	1	2015	1800
15294	57	935	842	241	Oranges (big size)	67	COP	5	KG	2	2016	1700
15295	57	935	842	254	Bananas	67	COP	5	KG	2	2016	850
15296	57	935	842	268	Beans (red, fresh)	67	COP	5	KG	1	2015	1800
15297	57	935	842	284	Fuel (diesel)	67	COP	27	Gallon	2	2016	7440
15298	57	935	842	285	Fuel (petrol-gasoline)	67	COP	27	Gallon	2	2016	7663
15299	57	935	842	290	Cassava (dry)	67	COP	5	KG	2	2016	1300
15300	57	935	842	404	Spinach	67	COP	5	KG	2	2016	1500
15301	57	935	842	405	Fish (tilapia)	67	COP	50	Libra	2	2016	5500
15302	57	935	842	406	Beans (string)	67	COP	5	KG	2	2016	4000
15303	57	935	842	408	Papaya	67	COP	5	KG	2	2016	2100
15304	57	935	842	409	Blackberry	67	COP	5	KG	2	2016	2000
15305	57	935	842	410	Broccoli	67	COP	5	KG	2	2016	3000
15306	57	935	842	411	Mangoes	67	COP	5	KG	2	2016	3200
15307	57	935	842	412	Pumpkin	67	COP	5	KG	2	2016	600
15308	57	935	842	413	Tamarillos/tree tomatoes	67	COP	5	KG	2	2016	1500
15309	57	935	842	414	Cheese	67	COP	5	KG	10	2014	9000
15310	57	935	842	415	Lentils (imported)	67	COP	5	KG	2	2016	6080
15311	57	935	842	463	Milk (pasteurized)	67	COP	41	380 G	3	2011	5923
15312	57	962	843	184	Oil (sunflower)	67	COP	15	L	12	2011	7200
15313	57	962	843	415	Lentils (imported)	67	COP	5	KG	12	2010	3000
15314	57	947	844	184	Oil (sunflower)	67	COP	15	L	12	2011	6700
15315	57	947	844	215	Sugar (brown, loaf)	67	COP	5	KG	12	2011	2196
15316	57	937	845	94	Meat (chicken)	67	COP	5	KG	12	2011	4900
15317	57	937	845	133	Rice (white)	67	COP	18	MT	1	2015	2100000
15318	57	937	845	203	Rice (paddy)	67	COP	18	MT	1	2015	1056000
15319	57	937	845	210	Eggs (white, AA)	67	COP	33	Unit	12	2011	230
15320	57	937	845	212	Peas (green, dry)	67	COP	5	KG	12	2011	1517
15321	57	937	845	213	Potatoes (unica)	67	COP	5	KG	12	2011	657
15322	57	954	846	58	Wheat flour	67	COP	5	KG	12	2011	2267
15323	57	954	846	133	Rice (white)	67	COP	18	MT	1	2015	2200000
15324	57	954	846	203	Rice (paddy)	67	COP	18	MT	1	2015	1072000
15325	57	954	846	212	Peas (green, dry)	67	COP	5	KG	12	2011	1619
15326	57	954	846	463	Milk (pasteurized)	67	COP	41	380 G	12	2011	6556
15327	57	958	847	78	Beans (red)	67	COP	5	KG	12	2011	4267
15328	57	935	848	78	Beans (red)	67	COP	5	KG	12	2011	4325
15329	57	955	849	215	Sugar (brown, loaf)	67	COP	5	KG	12	2011	3080
15330	57	955	849	415	Lentils (imported)	67	COP	5	KG	12	2011	2533
15331	57	944	850	415	Lentils (imported)	67	COP	5	KG	12	2011	2184
15332	57	956	851	208	Chickpeas (imported)	67	COP	5	KG	12	2011	3980
15333	57	961	852	83	Potatoes	67	COP	5	KG	2	2016	1360
15334	57	961	852	105	Garlic	67	COP	5	KG	1	2015	3500
15335	57	961	852	110	Onions (red)	67	COP	5	KG	2	2016	2174
15336	57	961	852	111	Onions (white)	67	COP	5	KG	2	2016	1700
15337	57	961	852	114	Tomatoes	67	COP	5	KG	1	2015	1800
15338	57	961	852	133	Rice (white)	67	COP	18	MT	2	2016	3007800
15339	57	961	852	147	Plantains	67	COP	5	KG	1	2015	1452
15340	57	961	852	166	Carrots	67	COP	5	KG	2	2016	1500
15341	57	961	852	181	Cabbage	67	COP	5	KG	1	2015	640
15342	57	961	852	203	Rice (paddy)	67	COP	18	MT	2	2016	1436570
15343	57	961	852	211	Meat (beef, minced)	67	COP	5	KG	12	2011	8500
15344	57	961	852	212	Peas (green, dry)	67	COP	5	KG	1	2015	2400
15345	57	961	852	215	Sugar (brown, loaf)	67	COP	5	KG	12	2011	2225
15346	57	961	852	229	Apples (red)	67	COP	5	KG	1	2015	3400
15347	57	961	852	231	Cauliflower	67	COP	5	KG	1	2015	2600
15348	57	961	852	233	Cucumbers (greenhouse)	67	COP	5	KG	5	2014	650
15349	57	961	852	241	Oranges (big size)	67	COP	5	KG	1	2015	600
15350	57	961	852	254	Bananas	67	COP	5	KG	2	2016	900
15351	57	961	852	268	Beans (red, fresh)	67	COP	5	KG	2	2016	3000
15352	57	961	852	284	Fuel (diesel)	67	COP	27	Gallon	2	2016	7244
15353	57	961	852	285	Fuel (petrol-gasoline)	67	COP	27	Gallon	2	2016	7534
15354	57	961	852	290	Cassava (dry)	67	COP	5	KG	2	2016	875
15355	57	961	852	404	Spinach	67	COP	5	KG	2	2016	2200
15356	57	961	852	405	Fish (tilapia)	67	COP	50	Libra	2	2016	5217
15357	57	961	852	406	Beans (string)	67	COP	5	KG	2	2016	2500
15358	57	961	852	409	Blackberry	67	COP	5	KG	2	2016	2720
15359	57	961	852	410	Broccoli	67	COP	5	KG	2	2016	3000
15360	57	961	852	411	Mangoes	67	COP	5	KG	2	2016	3040
15361	57	961	852	412	Pumpkin	67	COP	5	KG	2	2016	600
15362	57	939	853	213	Potatoes (unica)	67	COP	5	KG	12	2011	396
15363	57	945	854	67	Maize (white)	67	COP	5	KG	11	2010	800
15364	57	945	854	94	Meat (chicken)	67	COP	5	KG	12	2011	4600
15365	57	938	855	67	Maize (white)	67	COP	5	KG	12	2011	900
15366	59	978	701	58	Wheat flour	48	XAF	5	KG	1	2014	696
15367	59	978	701	62	Oil (palm)	48	XAF	15	L	1	2014	800
15368	59	978	701	66	Beans (white)	48	XAF	5	KG	1	2014	1428
15369	59	978	701	74	Cassava flour	48	XAF	5	KG	1	2014	526
15370	59	978	701	76	Maize flour	48	XAF	5	KG	1	2014	827
15371	59	978	701	119	Groundnuts (shelled)	48	XAF	5	KG	1	2014	1115
15372	59	978	701	141	Meat (beef)	48	XAF	5	KG	1	2014	2800
15373	59	978	701	165	Rice (mixed, low quality)	48	XAF	5	KG	1	2014	571
15374	59	978	701	207	Meat (chicken, frozen)	48	XAF	5	KG	1	2014	1769
15375	59	978	701	291	Cassava (fresh)	48	XAF	5	KG	1	2014	421
15376	59	978	701	300	Fish (smoked)	48	XAF	5	KG	1	2014	2365
15377	59	978	702	58	Wheat flour	48	XAF	5	KG	1	2014	696
15378	59	978	702	62	Oil (palm)	48	XAF	15	L	1	2014	900
15379	59	978	702	66	Beans (white)	48	XAF	5	KG	1	2014	1428
15380	59	978	702	74	Cassava flour	48	XAF	5	KG	1	2014	560
15381	59	978	702	76	Maize flour	48	XAF	5	KG	1	2014	812
15382	59	978	702	119	Groundnuts (shelled)	48	XAF	5	KG	1	2014	1018
15383	59	978	702	141	Meat (beef)	48	XAF	5	KG	1	2014	2925
15384	59	978	702	165	Rice (mixed, low quality)	48	XAF	5	KG	1	2014	500
15385	59	978	702	207	Meat (chicken, frozen)	48	XAF	5	KG	1	2014	1807
15386	59	978	702	291	Cassava (fresh)	48	XAF	5	KG	1	2014	445
15387	59	978	702	300	Fish (smoked)	48	XAF	5	KG	1	2014	2365
15388	59	978	703	58	Wheat flour	48	XAF	5	KG	1	2014	696
15389	59	978	703	62	Oil (palm)	48	XAF	15	L	1	2014	800
15390	59	978	703	66	Beans (white)	48	XAF	5	KG	1	2014	1285
15391	59	978	703	74	Cassava flour	48	XAF	5	KG	1	2014	555
15392	59	978	703	76	Maize flour	48	XAF	5	KG	1	2014	827
15393	59	978	703	119	Groundnuts (shelled)	48	XAF	5	KG	1	2014	1018
15394	59	978	703	141	Meat (beef)	48	XAF	5	KG	1	2014	2800
15395	59	978	703	165	Rice (mixed, low quality)	48	XAF	5	KG	1	2014	571
15396	59	978	703	207	Meat (chicken, frozen)	48	XAF	5	KG	1	2014	1846
15397	59	978	703	291	Cassava (fresh)	48	XAF	5	KG	1	2014	408
15398	59	978	703	300	Fish (smoked)	48	XAF	5	KG	1	2014	2377
15399	59	975	705	55	Bread	48	XAF	5	KG	2	2016	933
15400	59	975	705	62	Oil (palm)	48	XAF	15	L	2	2016	500
15401	59	975	705	66	Beans (white)	48	XAF	5	KG	2	2016	1667
15402	59	975	705	74	Cassava flour	48	XAF	5	KG	2	2016	1000
15403	59	975	705	96	Oil (vegetable)	48	XAF	15	L	2	2016	1133
15404	59	975	705	119	Groundnuts (shelled)	48	XAF	5	KG	2	2016	1000
15405	59	975	705	141	Meat (beef)	48	XAF	5	KG	2	2016	2500
15406	59	975	705	165	Rice (mixed, low quality)	48	XAF	5	KG	2	2016	444
15407	59	975	705	291	Cassava (fresh)	48	XAF	5	KG	2	2016	130
15408	59	975	705	300	Fish (smoked)	48	XAF	5	KG	2	2016	2500
15409	59	975	705	401	Fish (fresh)	48	XAF	5	KG	2	2016	1222
15410	59	978	706	55	Bread	48	XAF	5	KG	2	2016	1100
15411	59	978	706	58	Wheat flour	48	XAF	5	KG	2	2016	505
15412	59	978	706	62	Oil (palm)	48	XAF	15	L	2	2016	800
15413	59	978	706	66	Beans (white)	48	XAF	5	KG	2	2016	1750
15414	59	978	706	74	Cassava flour	48	XAF	5	KG	2	2016	600
15415	59	978	706	76	Maize flour	48	XAF	5	KG	1	2014	827
15416	59	978	706	96	Oil (vegetable)	48	XAF	15	L	2	2016	1000
15417	59	978	706	119	Groundnuts (shelled)	48	XAF	5	KG	2	2016	2300
15418	59	978	706	141	Meat (beef)	48	XAF	5	KG	2	2016	3725
15419	59	978	706	147	Plantains	48	XAF	5	KG	2	2016	982
15500	66	1051	126	170	Fish (appolo)	26	XOF	5	KG	9	2014	1450
15420	59	978	706	165	Rice (mixed, low quality)	48	XAF	5	KG	2	2016	700
15421	59	978	706	207	Meat (chicken, frozen)	48	XAF	5	KG	2	2016	1800
15422	59	978	706	291	Cassava (fresh)	48	XAF	5	KG	2	2016	400
15423	59	978	706	300	Fish (smoked)	48	XAF	5	KG	2	2016	2980
15424	59	978	706	301	Fish (salted)	48	XAF	5	KG	12	2015	6500
15425	59	978	706	351	Groundnuts (paste)	48	XAF	5	KG	2	2016	1260
15426	59	978	706	401	Fish (fresh)	48	XAF	5	KG	2	2016	2660
15427	59	973	707	55	Bread	48	XAF	5	KG	2	2016	500
15428	59	973	707	58	Wheat flour	48	XAF	5	KG	12	2015	400
15429	59	973	707	62	Oil (palm)	48	XAF	15	L	2	2016	1100
15430	59	973	707	66	Beans (white)	48	XAF	5	KG	2	2016	1000
15431	59	973	707	74	Cassava flour	48	XAF	5	KG	2	2016	716.700000000000045
15432	59	973	707	96	Oil (vegetable)	48	XAF	15	L	2	2016	966.700000000000045
15433	59	973	707	119	Groundnuts (shelled)	48	XAF	5	KG	2	2016	966
15434	59	973	707	141	Meat (beef)	48	XAF	5	KG	2	2016	3500
15435	59	973	707	147	Plantains	48	XAF	5	KG	12	2015	822
15436	59	973	707	165	Rice (mixed, low quality)	48	XAF	5	KG	2	2016	533
15437	59	973	707	207	Meat (chicken, frozen)	48	XAF	5	KG	2	2016	1000
15438	59	973	707	291	Cassava (fresh)	48	XAF	5	KG	2	2016	600
15439	59	973	707	300	Fish (smoked)	48	XAF	5	KG	2	2016	1667
15440	59	973	707	301	Fish (salted)	48	XAF	5	KG	12	2015	5000
15441	59	973	707	351	Groundnuts (paste)	48	XAF	5	KG	12	2015	1400
15442	59	973	707	401	Fish (fresh)	48	XAF	5	KG	2	2016	1233.29999999999995
15443	59	974	1820	55	Bread	48	XAF	5	KG	2	2016	800
15444	59	974	1820	62	Oil (palm)	48	XAF	15	L	2	2016	883
15445	59	974	1820	66	Beans (white)	48	XAF	5	KG	2	2016	1200
15446	59	974	1820	74	Cassava flour	48	XAF	5	KG	2	2016	1088
15447	59	974	1820	96	Oil (vegetable)	48	XAF	15	L	2	2016	775
15448	59	974	1820	119	Groundnuts (shelled)	48	XAF	5	KG	2	2016	750
15449	59	974	1820	141	Meat (beef)	48	XAF	5	KG	2	2016	2500
15450	59	974	1820	165	Rice (mixed, low quality)	48	XAF	5	KG	2	2016	525
15451	59	974	1820	207	Meat (chicken, frozen)	48	XAF	5	KG	2	2016	2000
15452	59	974	1820	291	Cassava (fresh)	48	XAF	5	KG	2	2016	580
15453	59	974	1820	401	Fish (fresh)	48	XAF	5	KG	2	2016	2000
15454	59	970	1821	55	Bread	48	XAF	5	KG	2	2016	810
15455	59	970	1821	62	Oil (palm)	48	XAF	15	L	2	2016	650
15456	59	970	1821	66	Beans (white)	48	XAF	5	KG	2	2016	1125
15457	59	970	1821	74	Cassava flour	48	XAF	5	KG	2	2016	480
15458	59	970	1821	96	Oil (vegetable)	48	XAF	15	L	2	2016	675
15459	59	970	1821	119	Groundnuts (shelled)	48	XAF	5	KG	2	2016	700
15460	59	970	1821	141	Meat (beef)	48	XAF	5	KG	2	2016	2850
15461	59	970	1821	165	Rice (mixed, low quality)	48	XAF	5	KG	2	2016	550
15462	59	970	1821	207	Meat (chicken, frozen)	48	XAF	5	KG	2	2016	1950
15463	59	970	1821	291	Cassava (fresh)	48	XAF	5	KG	2	2016	560
15464	59	970	1821	300	Fish (smoked)	48	XAF	5	KG	2	2016	3375
15465	59	970	1821	301	Fish (salted)	48	XAF	5	KG	2	2016	5000
15466	59	970	1821	401	Fish (fresh)	48	XAF	5	KG	2	2016	2000
15467	59	971	1822	55	Bread	48	XAF	5	KG	2	2016	1555
15468	59	971	1822	62	Oil (palm)	48	XAF	15	L	2	2016	970
15469	59	971	1822	66	Beans (white)	48	XAF	5	KG	2	2016	2167
15470	59	971	1822	74	Cassava flour	48	XAF	5	KG	2	2016	765
15471	59	971	1822	96	Oil (vegetable)	48	XAF	15	L	2	2016	1000
15472	59	971	1822	119	Groundnuts (shelled)	48	XAF	5	KG	2	2016	985
15473	59	971	1822	141	Meat (beef)	48	XAF	5	KG	2	2016	4000
15474	59	971	1822	165	Rice (mixed, low quality)	48	XAF	5	KG	2	2016	552
15475	59	971	1822	207	Meat (chicken, frozen)	48	XAF	5	KG	2	2016	2000
15476	59	971	1822	291	Cassava (fresh)	48	XAF	5	KG	2	2016	425
15477	59	971	1822	300	Fish (smoked)	48	XAF	5	KG	2	2016	7000
15478	59	971	1822	301	Fish (salted)	48	XAF	5	KG	2	2016	3500
15479	59	971	1822	401	Fish (fresh)	48	XAF	5	KG	2	2016	3500
15480	61	\N	\N	67	Maize (white)	28	USD	18	MT	3	2016	750.315000000000055
15481	61	\N	\N	85	Beans (black)	28	USD	18	MT	3	2016	1628.27999999999997
15482	61	\N	\N	86	Rice (milled 80-20)	28	USD	18	MT	3	2016	1077.33999999999992
15483	66	1051	125	51	Maize	26	XOF	5	KG	9	2014	175
15484	66	1051	125	62	Oil (palm)	26	XOF	15	L	9	2014	1000
15485	66	1051	125	70	Rice (denikassia, imported)	26	XOF	5	KG	9	2014	325
15486	66	1051	125	71	Rice (local)	26	XOF	5	KG	9	2014	375
15487	66	1051	125	72	Yam (florido)	26	XOF	5	KG	6	2012	150
15488	66	1051	125	141	Meat (beef)	26	XOF	5	KG	9	2014	2000
15489	66	1051	125	169	Cornstarch	26	XOF	5	KG	9	2014	275
15490	66	1051	125	170	Fish (appolo)	26	XOF	5	KG	9	2014	1400
15491	66	1051	125	171	Fish (dry)	26	XOF	5	KG	9	2014	2400
15492	66	1051	125	174	Peanut	26	XOF	5	KG	9	2014	900
15493	66	1051	125	291	Cassava (fresh)	26	XOF	5	KG	9	2014	87.5
15494	66	1051	126	51	Maize	26	XOF	5	KG	9	2014	112.5
15495	66	1051	126	62	Oil (palm)	26	XOF	15	L	9	2014	1100
15496	66	1051	126	70	Rice (denikassia, imported)	26	XOF	5	KG	9	2014	337.5
15497	66	1051	126	71	Rice (local)	26	XOF	5	KG	9	2014	400
15498	66	1051	126	141	Meat (beef)	26	XOF	5	KG	9	2014	1800
15499	66	1051	126	169	Cornstarch	26	XOF	5	KG	9	2014	250
15501	66	1051	126	171	Fish (dry)	26	XOF	5	KG	9	2014	2600
15502	66	1051	126	174	Peanut	26	XOF	5	KG	9	2014	900
15503	66	1051	126	291	Cassava (fresh)	26	XOF	5	KG	9	2014	62.5
15504	66	40692	127	51	Maize	26	XOF	5	KG	1	2016	313
15505	66	40692	127	62	Oil (palm)	26	XOF	15	L	1	2016	925
15506	66	40692	127	70	Rice (denikassia, imported)	26	XOF	5	KG	1	2016	363
15507	66	40692	127	71	Rice (local)	26	XOF	5	KG	1	2016	388
15508	66	40692	127	72	Yam (florido)	26	XOF	5	KG	8	2013	225
15509	66	40692	127	141	Meat (beef)	26	XOF	5	KG	1	2016	2350
15510	66	40692	127	150	Cocoa	26	XOF	5	KG	1	2016	1000
15511	66	40692	127	169	Cornstarch	26	XOF	5	KG	1	2016	375
15512	66	40692	127	170	Fish (appolo)	26	XOF	5	KG	1	2016	1450
15513	66	40692	127	171	Fish (dry)	26	XOF	5	KG	1	2016	3000
15514	66	40692	127	174	Peanut	26	XOF	5	KG	1	2016	700
15515	66	40692	127	291	Cassava (fresh)	26	XOF	5	KG	1	2016	118
15516	66	1041	128	51	Maize	26	XOF	5	KG	7	2011	175
15517	66	1041	128	70	Rice (denikassia, imported)	26	XOF	5	KG	7	2011	362.5
15518	66	1041	128	71	Rice (local)	26	XOF	5	KG	7	2011	237.5
15519	66	1041	128	72	Yam (florido)	26	XOF	5	KG	7	2011	195
15520	66	1041	128	291	Cassava (fresh)	26	XOF	5	KG	12	2010	97.5
15521	66	16838	834	51	Maize	26	XOF	5	KG	9	2014	200
15522	66	16838	834	70	Rice (denikassia, imported)	26	XOF	5	KG	9	2014	300
15523	66	16838	834	71	Rice (local)	26	XOF	5	KG	9	2014	425
15524	66	16838	834	147	Plantains	26	XOF	5	KG	12	2012	120
15525	66	40694	835	51	Maize	26	XOF	5	KG	4	2015	156
15526	66	40694	835	70	Rice (denikassia, imported)	26	XOF	5	KG	4	2015	300
15527	66	40694	835	71	Rice (local)	26	XOF	5	KG	4	2015	346
15528	66	40694	835	147	Plantains	26	XOF	5	KG	12	2012	62
15529	66	40693	837	51	Maize	26	XOF	5	KG	1	2016	313
15530	66	40693	837	62	Oil (palm)	26	XOF	15	L	1	2016	900
15531	66	40693	837	70	Rice (denikassia, imported)	26	XOF	5	KG	1	2016	375
15532	66	40693	837	71	Rice (local)	26	XOF	5	KG	1	2016	425
15533	66	40693	837	72	Yam (florido)	26	XOF	5	KG	8	2013	225
15534	66	40693	837	141	Meat (beef)	26	XOF	5	KG	1	2016	2350
15535	66	40693	837	150	Cocoa	26	XOF	5	KG	1	2016	1000
15536	66	40693	837	169	Cornstarch	26	XOF	5	KG	1	2016	400
15537	66	40693	837	170	Fish (appolo)	26	XOF	5	KG	1	2016	1450
15538	66	40693	837	171	Fish (dry)	26	XOF	5	KG	1	2016	2850
15539	66	40693	837	174	Peanut	26	XOF	5	KG	1	2016	688
15540	66	40693	837	291	Cassava (fresh)	26	XOF	5	KG	1	2016	105
15541	66	40693	838	51	Maize	26	XOF	5	KG	1	2016	313
15542	66	40693	838	62	Oil (palm)	26	XOF	15	L	1	2016	925
15543	66	40693	838	70	Rice (denikassia, imported)	26	XOF	5	KG	1	2016	375
15544	66	40693	838	71	Rice (local)	26	XOF	5	KG	1	2016	413
15545	66	40693	838	72	Yam (florido)	26	XOF	5	KG	8	2013	275
15546	66	40693	838	141	Meat (beef)	26	XOF	5	KG	1	2016	2350
15547	66	40693	838	150	Cocoa	26	XOF	5	KG	1	2016	1000
15548	66	40693	838	169	Cornstarch	26	XOF	5	KG	1	2016	413
15549	66	40693	838	170	Fish (appolo)	26	XOF	5	KG	1	2016	1450
15550	66	40693	838	171	Fish (dry)	26	XOF	5	KG	1	2016	3000
15551	66	40693	838	174	Peanut	26	XOF	5	KG	1	2016	688
15552	66	40693	838	291	Cassava (fresh)	26	XOF	5	KG	1	2016	120
15553	66	1046	839	51	Maize	26	XOF	5	KG	4	2015	300
15554	66	1046	839	70	Rice (denikassia, imported)	26	XOF	5	KG	4	2015	350
15555	66	1046	839	71	Rice (local)	26	XOF	5	KG	4	2015	400
15556	66	1046	839	147	Plantains	26	XOF	5	KG	12	2012	238
15557	68	1071	143	50	Beans	27	CDF	5	KG	3	2014	890
15558	68	1071	143	51	Maize	27	CDF	5	KG	3	2014	762.5
15559	68	1071	143	54	Maize meal	27	CDF	5	KG	3	2014	444.875
15560	68	1071	143	58	Wheat flour	27	CDF	5	KG	3	2014	1300
15561	68	1071	143	62	Oil (palm)	27	CDF	15	L	3	2014	1041.88000000000011
15562	68	1071	143	64	Rice (imported)	27	CDF	5	KG	3	2014	775.125
15563	68	1071	143	68	Cassava	27	CDF	5	KG	3	2013	371.25
15564	68	1071	143	71	Rice (local)	27	CDF	5	KG	3	2014	756.5
15565	68	1071	143	74	Cassava flour	27	CDF	5	KG	3	2014	502.5
15566	68	1071	143	76	Maize flour	27	CDF	5	KG	3	2013	669.25
15567	68	1071	143	94	Meat (chicken)	27	CDF	5	KG	3	2014	4312.88000000000011
15568	68	1071	143	97	Sugar	27	CDF	5	KG	3	2014	1000
15569	68	1071	143	139	Fish	27	CDF	5	KG	3	2014	2574.88000000000011
15570	68	1071	143	141	Meat (beef)	27	CDF	5	KG	3	2014	7000
15571	68	1071	143	147	Plantains	27	CDF	5	KG	3	2014	952
15572	68	1071	143	185	Salt	27	CDF	5	KG	3	2014	375
15573	68	1071	143	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	6500
15574	68	1071	143	284	Fuel (diesel)	27	CDF	15	L	3	2014	1800
15575	68	1071	143	300	Fish (smoked)	27	CDF	5	KG	3	2014	3696.5
15576	68	1071	143	301	Fish (salted)	27	CDF	5	KG	3	2014	4841.75
15577	68	1071	143	302	Cassava (cossette)	27	CDF	5	KG	3	2014	375.5
15578	68	1071	143	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	681
15579	68	1071	143	304	Transport (public)	27	CDF	55	Course	3	2014	250
15580	68	1071	143	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	920
15581	68	1072	144	50	Beans	27	CDF	5	KG	3	2014	2123.57999999999993
15582	68	1072	144	51	Maize	27	CDF	5	KG	3	2014	754.875
15583	68	1072	144	54	Maize meal	27	CDF	5	KG	3	2014	861.91700000000003
15584	68	1072	144	58	Wheat flour	27	CDF	5	KG	3	2014	1144.82999999999993
15585	68	1072	144	62	Oil (palm)	27	CDF	15	L	3	2014	1402.61999999999989
15586	68	1072	144	64	Rice (imported)	27	CDF	5	KG	3	2014	1061.21000000000004
15587	68	1072	144	68	Cassava	27	CDF	5	KG	3	2013	859.20799999999997
15588	68	1072	144	71	Rice (local)	27	CDF	5	KG	3	2014	989.625
15589	68	1072	144	74	Cassava flour	27	CDF	5	KG	3	2014	968.33299999999997
15590	68	1072	144	76	Maize flour	27	CDF	5	KG	3	2013	730.45799999999997
15591	68	1072	144	94	Meat (chicken)	27	CDF	5	KG	3	2014	4147.21000000000004
15592	68	1072	144	97	Sugar	27	CDF	5	KG	3	2014	1205.57999999999993
15593	68	1072	144	139	Fish	27	CDF	5	KG	3	2014	2830.5
15594	68	1072	144	141	Meat (beef)	27	CDF	5	KG	3	2014	10930.5
15595	68	1072	144	147	Plantains	27	CDF	5	KG	3	2014	1451.82999999999993
15596	68	1072	144	185	Salt	27	CDF	5	KG	3	2014	500.25
15597	68	1072	144	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	10755.5
15598	68	1072	144	284	Fuel (diesel)	27	CDF	15	L	3	2014	1400
15599	68	1072	144	300	Fish (smoked)	27	CDF	5	KG	3	2014	9336.5
15600	68	1072	144	301	Fish (salted)	27	CDF	5	KG	3	2014	8822.32999999999993
15601	68	1072	144	302	Cassava (cossette)	27	CDF	5	KG	3	2014	916.125
15602	68	1072	144	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	921.20799999999997
15603	68	1072	144	304	Transport (public)	27	CDF	55	Course	3	2014	650
15604	68	1072	144	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	894.375
15605	68	1071	145	50	Beans	27	CDF	5	KG	2	2016	2069.15999999999985
15606	68	1071	145	51	Maize	27	CDF	5	KG	2	2016	305.963000000000022
15607	68	1071	145	54	Maize meal	27	CDF	5	KG	2	2016	518.772000000000048
15608	68	1071	145	58	Wheat flour	27	CDF	5	KG	2	2016	1542.95000000000005
15609	68	1071	145	62	Oil (palm)	27	CDF	15	L	2	2016	1312.5
15610	68	1071	145	64	Rice (imported)	27	CDF	5	KG	2	2016	1504.58999999999992
15611	68	1071	145	68	Cassava	27	CDF	5	KG	3	2013	1076.32999999999993
15612	68	1071	145	71	Rice (local)	27	CDF	5	KG	12	2012	955
15613	68	1071	145	74	Cassava flour	27	CDF	5	KG	2	2016	717.475000000000023
15614	68	1071	145	76	Maize flour	27	CDF	5	KG	3	2013	894.33299999999997
15615	68	1071	145	94	Meat (chicken)	27	CDF	5	KG	2	2016	5300
15616	68	1071	145	96	Oil (vegetable)	27	CDF	15	L	2	2016	1825
15617	68	1071	145	97	Sugar	27	CDF	5	KG	2	2016	1319.52999999999997
15618	68	1071	145	139	Fish	27	CDF	5	KG	3	2014	4934.32999999999993
15619	68	1071	145	141	Meat (beef)	27	CDF	5	KG	2	2016	6500
15620	68	1071	145	147	Plantains	27	CDF	5	KG	2	2016	2899.48000000000002
15621	68	1071	145	185	Salt	27	CDF	5	KG	3	2014	604
15622	68	1071	145	236	Meat (goat, with bones)	27	CDF	5	KG	2	2016	6280.09000000000015
15623	68	1071	145	284	Fuel (diesel)	27	CDF	15	L	3	2014	1596.67000000000007
15624	68	1071	145	300	Fish (smoked)	27	CDF	5	KG	2	2016	14440.3999999999996
15625	68	1071	145	301	Fish (salted)	27	CDF	5	KG	2	2016	9832.95000000000073
15626	68	1071	145	302	Cassava (cossette)	27	CDF	5	KG	2	2016	645.753000000000043
15627	68	1071	145	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	1340
15628	68	1071	145	304	Transport (public)	27	CDF	55	Course	3	2014	266.666999999999973
15629	68	1071	145	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	900
15630	68	1068	146	50	Beans	27	CDF	5	KG	3	2014	1663.25
15631	68	1068	146	51	Maize	27	CDF	5	KG	3	2014	348.125
15632	68	1068	146	54	Maize meal	27	CDF	5	KG	3	2014	593.125
15633	68	1068	146	58	Wheat flour	27	CDF	5	KG	3	2014	1701.75
15634	68	1068	146	62	Oil (palm)	27	CDF	15	L	3	2014	776.25
15635	68	1068	146	64	Rice (imported)	27	CDF	5	KG	3	2014	1216
15636	68	1068	146	68	Cassava	27	CDF	5	KG	4	2013	325
15637	68	1068	146	71	Rice (local)	27	CDF	5	KG	3	2014	827.75
15638	68	1068	146	74	Cassava flour	27	CDF	5	KG	3	2014	783.375
15639	68	1068	146	76	Maize flour	27	CDF	5	KG	4	2013	458
15640	68	1068	146	94	Meat (chicken)	27	CDF	5	KG	3	2014	5262.75
15641	68	1068	146	97	Sugar	27	CDF	5	KG	3	2014	1591.25
15642	68	1068	146	139	Fish	27	CDF	5	KG	3	2014	3542.61999999999989
15643	68	1068	146	141	Meat (beef)	27	CDF	5	KG	3	2014	9000
15644	68	1068	146	147	Plantains	27	CDF	5	KG	3	2014	390.625
15645	68	1068	146	185	Salt	27	CDF	5	KG	3	2014	906.625
15646	68	1068	146	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	7374.5
15647	68	1068	146	284	Fuel (diesel)	27	CDF	15	L	3	2014	1628.11999999999989
15648	68	1068	146	300	Fish (smoked)	27	CDF	5	KG	3	2014	8089
15649	68	1068	146	301	Fish (salted)	27	CDF	5	KG	3	2014	5829.38000000000011
15650	68	1068	146	302	Cassava (cossette)	27	CDF	5	KG	3	2014	459.125
15651	68	1068	146	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	369.625
15652	68	1068	146	304	Transport (public)	27	CDF	55	Course	3	2014	900
15653	68	1068	146	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	920
15654	68	1076	147	50	Beans	27	CDF	5	KG	2	2016	831.25
15655	68	1076	147	51	Maize	27	CDF	5	KG	2	2016	590
15656	68	1076	147	54	Maize meal	27	CDF	5	KG	2	2016	699.25
15657	68	1076	147	58	Wheat flour	27	CDF	5	KG	2	2016	1016.5
15658	68	1076	147	62	Oil (palm)	27	CDF	15	L	2	2016	1074.25
15659	68	1076	147	64	Rice (imported)	27	CDF	5	KG	2	2016	996.25
15660	68	1076	147	68	Cassava	27	CDF	5	KG	3	2013	950
15661	68	1076	147	71	Rice (local)	27	CDF	5	KG	2	2016	838.25
15662	68	1076	147	74	Cassava flour	27	CDF	5	KG	2	2016	722.25
15663	68	1076	147	76	Maize flour	27	CDF	5	KG	3	2013	665
15664	68	1076	147	94	Meat (chicken)	27	CDF	5	KG	2	2016	3775.5
15665	68	1076	147	97	Sugar	27	CDF	56	USD/LCU	2	2016	1143.25
15666	68	1076	147	139	Fish	27	CDF	5	KG	1	2016	2941
15667	68	1076	147	141	Meat (beef)	27	CDF	5	KG	2	2016	3660.75
15668	68	1076	147	147	Plantains	27	CDF	5	KG	2	2016	319.5
15669	68	1076	147	185	Salt	27	CDF	56	USD/LCU	2	2016	800.5
15670	68	1076	147	236	Meat (goat, with bones)	27	CDF	5	KG	2	2016	3684.5
15671	68	1076	147	284	Fuel (diesel)	27	CDF	15	L	12	2013	1512.5
15672	68	1076	147	285	Fuel (petrol-gasoline)	27	CDF	15	L	2	2016	1287.5
15673	68	1076	147	300	Fish (smoked)	27	CDF	5	KG	2	2016	4989
15674	68	1076	147	301	Fish (salted)	27	CDF	5	KG	2	2016	4690
15675	68	1076	147	302	Cassava (cossette)	27	CDF	5	KG	2	2016	987.5
15676	68	1076	147	303	Cassava (chikwangue)	27	CDF	5	KG	2	2016	570.5
15677	68	1076	147	304	Transport (public)	27	CDF	55	Course	2	2016	500
15678	68	1076	147	305	Exchange rate	27	CDF	56	USD/LCU	2	2016	950
15679	68	1076	147	401	Fish (fresh)	27	CDF	5	KG	2	2016	2981.25
15680	68	1071	148	50	Beans	27	CDF	5	KG	2	2016	1000
15681	68	1071	148	51	Maize	27	CDF	5	KG	2	2016	220
15682	68	1071	148	54	Maize meal	27	CDF	5	KG	2	2016	600
15683	68	1071	148	62	Oil (palm)	27	CDF	15	L	2	2016	700
15684	68	1071	148	71	Rice (local)	27	CDF	5	KG	2	2016	600
15685	68	1071	148	74	Cassava flour	27	CDF	5	KG	2	2016	250
15686	68	1071	148	83	Potatoes	27	CDF	5	KG	2	2016	166.667000000000002
15687	68	1071	148	96	Oil (vegetable)	27	CDF	15	L	2	2016	2500
15688	68	1071	148	97	Sugar	27	CDF	5	KG	2	2016	1500
15689	68	1071	148	119	Groundnuts (shelled)	27	CDF	5	KG	2	2016	1000
15690	68	1071	148	185	Salt	27	CDF	5	KG	2	2016	1250
15691	68	1071	148	284	Fuel (diesel)	27	CDF	15	L	2	2016	2066.67000000000007
15692	68	1071	148	285	Fuel (petrol-gasoline)	27	CDF	15	L	1	2016	2067
15693	68	1071	148	302	Cassava (cossette)	27	CDF	5	KG	2	2016	150
15694	68	1071	148	305	Exchange rate	27	CDF	56	USD/LCU	2	2016	920
15695	68	1073	149	50	Beans	27	CDF	5	KG	3	2014	1579.69000000000005
15696	68	1073	149	51	Maize	27	CDF	5	KG	3	2014	224.437999999999988
15697	68	1073	149	54	Maize meal	27	CDF	5	KG	3	2014	375
15698	68	1073	149	58	Wheat flour	27	CDF	5	KG	3	2014	1510
15699	68	1073	149	62	Oil (palm)	27	CDF	15	L	3	2014	1033.5
15700	68	1073	149	64	Rice (imported)	27	CDF	5	KG	3	2014	2500
15701	68	1073	149	68	Cassava	27	CDF	5	KG	3	2013	170.11099999999999
15702	68	1073	149	71	Rice (local)	27	CDF	5	KG	3	2014	571.947999999999979
15703	68	1073	149	74	Cassava flour	27	CDF	5	KG	3	2014	349.75
15704	68	1073	149	76	Maize flour	27	CDF	5	KG	3	2013	500
15705	68	1073	149	94	Meat (chicken)	27	CDF	5	KG	3	2014	5840.6899999999996
15706	68	1073	149	97	Sugar	27	CDF	5	KG	3	2014	1599.69000000000005
15707	68	1073	149	139	Fish	27	CDF	5	KG	3	2014	5798.25
15708	68	1073	149	141	Meat (beef)	27	CDF	5	KG	3	2014	7000
15709	68	1073	149	147	Plantains	27	CDF	5	KG	3	2014	383.562000000000012
15710	68	1073	149	185	Salt	27	CDF	5	KG	3	2014	469.995999999999981
15711	68	1073	149	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	6090.9399999999996
15712	68	1073	149	284	Fuel (diesel)	27	CDF	15	L	3	2014	1987.5
15713	68	1073	149	300	Fish (smoked)	27	CDF	5	KG	3	2014	5944.4399999999996
15714	68	1073	149	301	Fish (salted)	27	CDF	5	KG	3	2014	5836.75
15715	68	1073	149	302	Cassava (cossette)	27	CDF	5	KG	3	2014	274.75
15716	68	1073	149	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	393.75
15717	68	1073	149	304	Transport (public)	27	CDF	55	Course	3	2014	500
15718	68	1073	149	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	920
15719	68	1076	150	50	Beans	27	CDF	5	KG	2	2016	861.5
15720	68	1076	150	51	Maize	27	CDF	5	KG	10	2013	600
15721	68	1076	150	54	Maize meal	27	CDF	5	KG	2	2016	653
15722	68	1076	150	58	Wheat flour	27	CDF	5	KG	2	2016	1046.5
15723	68	1076	150	62	Oil (palm)	27	CDF	15	L	2	2016	1244
15724	68	1076	150	64	Rice (imported)	27	CDF	5	KG	2	2016	1042
15725	68	1076	150	68	Cassava	27	CDF	5	KG	3	2013	560
15726	68	1076	150	71	Rice (local)	27	CDF	5	KG	12	2013	1237.75
15727	68	1076	150	74	Cassava flour	27	CDF	5	KG	2	2016	611.5
15728	68	1076	150	76	Maize flour	27	CDF	5	KG	3	2013	564.75
15729	68	1076	150	94	Meat (chicken)	27	CDF	5	KG	2	2016	4791.5
15730	68	1076	150	97	Sugar	27	CDF	56	USD/LCU	2	2016	1015.75
15731	68	1076	150	139	Fish	27	CDF	5	KG	1	2016	2859
15732	68	1076	150	141	Meat (beef)	27	CDF	5	KG	2	2016	3634.75
15733	68	1076	150	147	Plantains	27	CDF	5	KG	2	2016	361
15734	68	1076	150	185	Salt	27	CDF	56	USD/LCU	2	2016	559.75
15735	68	1076	150	236	Meat (goat, with bones)	27	CDF	5	KG	2	2016	4037.75
15736	68	1076	150	284	Fuel (diesel)	27	CDF	15	L	12	2013	1600
15737	68	1076	150	285	Fuel (petrol-gasoline)	27	CDF	15	L	2	2016	1237
15738	68	1076	150	300	Fish (smoked)	27	CDF	5	KG	2	2016	7620
15739	68	1076	150	301	Fish (salted)	27	CDF	5	KG	2	2016	6026.5
15740	68	1076	150	302	Cassava (cossette)	27	CDF	5	KG	2	2016	469.75
15741	68	1076	150	303	Cassava (chikwangue)	27	CDF	5	KG	2	2016	331
15742	68	1076	150	304	Transport (public)	27	CDF	55	Course	2	2016	356
15743	68	1076	150	305	Exchange rate	27	CDF	56	USD/LCU	2	2016	923
15744	68	1076	150	401	Fish (fresh)	27	CDF	5	KG	2	2016	2818.25
15745	68	1075	151	50	Beans	27	CDF	5	KG	3	2014	1071
15746	68	1075	151	51	Maize	27	CDF	5	KG	3	2014	618.5
15747	68	1075	151	54	Maize meal	27	CDF	5	KG	3	2014	920.75
15748	68	1075	151	58	Wheat flour	27	CDF	5	KG	3	2014	1100
15749	68	1075	151	62	Oil (palm)	27	CDF	15	L	3	2014	972
15750	68	1075	151	64	Rice (imported)	27	CDF	5	KG	3	2014	1060
15751	68	1075	151	68	Cassava	27	CDF	5	KG	3	2013	714.25
15752	68	1075	151	71	Rice (local)	27	CDF	5	KG	3	2014	1078.5
15753	68	1075	151	74	Cassava flour	27	CDF	5	KG	3	2014	580
15754	68	1075	151	76	Maize flour	27	CDF	5	KG	3	2013	1240
15755	68	1075	151	94	Meat (chicken)	27	CDF	5	KG	3	2014	5461.75
15756	68	1075	151	97	Sugar	27	CDF	5	KG	3	2014	1446.75
15757	68	1075	151	139	Fish	27	CDF	5	KG	3	2014	4250
15758	68	1075	151	141	Meat (beef)	27	CDF	5	KG	3	2014	4000
15759	68	1075	151	147	Plantains	27	CDF	5	KG	3	2014	527
15760	68	1075	151	185	Salt	27	CDF	5	KG	3	2014	458.5
15761	68	1075	151	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	5000
15762	68	1075	151	284	Fuel (diesel)	27	CDF	15	L	3	2014	1425
15763	68	1075	151	300	Fish (smoked)	27	CDF	5	KG	3	2014	6830.5
15764	68	1075	151	301	Fish (salted)	27	CDF	5	KG	3	2014	5112.5
15765	68	1075	151	302	Cassava (cossette)	27	CDF	5	KG	3	2014	502.75
15766	68	1075	151	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	386.5
15767	68	1075	151	304	Transport (public)	27	CDF	55	Course	3	2014	1000
15768	68	1075	151	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	925
15769	68	1074	152	50	Beans	27	CDF	5	KG	2	2016	487.5
15770	68	1074	152	51	Maize	27	CDF	5	KG	2	2016	242.75
15771	68	1074	152	54	Maize meal	27	CDF	5	KG	2	2016	435.5
15772	68	1074	152	58	Wheat flour	27	CDF	5	KG	2	2016	1114
15773	68	1074	152	62	Oil (palm)	27	CDF	15	L	2	2016	1096.75
15774	68	1074	152	64	Rice (imported)	27	CDF	5	KG	2	2016	1031.25
15775	68	1074	152	71	Rice (local)	27	CDF	5	KG	2	2016	970.25
15776	68	1074	152	74	Cassava flour	27	CDF	5	KG	2	2016	366
15777	68	1074	152	94	Meat (chicken)	27	CDF	5	KG	2	2016	6012.5
15778	68	1074	152	97	Sugar	27	CDF	56	USD/LCU	2	2016	1047.25
15779	68	1074	152	139	Fish	27	CDF	5	KG	1	2016	4709
15780	68	1074	152	141	Meat (beef)	27	CDF	5	KG	2	2016	2917.75
15781	68	1074	152	147	Plantains	27	CDF	5	KG	2	2016	405
15782	68	1074	152	185	Salt	27	CDF	56	USD/LCU	2	2016	471
15783	68	1074	152	236	Meat (goat, with bones)	27	CDF	5	KG	2	2016	3196.25
15784	68	1074	152	284	Fuel (diesel)	27	CDF	15	L	12	2013	1600
15785	68	1074	152	285	Fuel (petrol-gasoline)	27	CDF	15	L	2	2016	1116.75
15786	68	1074	152	300	Fish (smoked)	27	CDF	5	KG	2	2016	7417.5
15787	68	1074	152	301	Fish (salted)	27	CDF	5	KG	2	2016	6545
15788	68	1074	152	302	Cassava (cossette)	27	CDF	5	KG	2	2016	320.5
15789	68	1074	152	303	Cassava (chikwangue)	27	CDF	5	KG	2	2016	741
15790	68	1074	152	304	Transport (public)	27	CDF	55	Course	2	2016	353.25
15791	68	1074	152	305	Exchange rate	27	CDF	56	USD/LCU	2	2016	920
15792	68	1074	152	401	Fish (fresh)	27	CDF	5	KG	2	2016	4928.75
15793	68	1071	1395	97	Sugar	27	CDF	5	KG	12	2010	1266.67000000000007
15794	68	1071	1395	185	Salt	27	CDF	5	KG	12	2010	533.33299999999997
15795	68	1066	1596	50	Beans	27	CDF	5	KG	3	2014	2895
15796	68	1066	1596	51	Maize	27	CDF	5	KG	3	2014	290.75
15797	68	1066	1596	54	Maize meal	27	CDF	5	KG	3	2014	663.75
15798	68	1066	1596	58	Wheat flour	27	CDF	5	KG	3	2014	1482.5
15799	68	1066	1596	62	Oil (palm)	27	CDF	15	L	3	2014	1081.25
15800	68	1066	1596	64	Rice (imported)	27	CDF	5	KG	3	2014	1482.75
15801	68	1066	1596	71	Rice (local)	27	CDF	5	KG	3	2014	1180
15802	68	1066	1596	74	Cassava flour	27	CDF	5	KG	3	2014	365.75
15803	68	1066	1596	94	Meat (chicken)	27	CDF	5	KG	3	2014	6500
15804	68	1066	1596	97	Sugar	27	CDF	5	KG	3	2014	1826.25
15805	68	1066	1596	139	Fish	27	CDF	5	KG	3	2014	2946
15806	68	1066	1596	141	Meat (beef)	27	CDF	5	KG	3	2014	7018.75
15807	68	1066	1596	147	Plantains	27	CDF	5	KG	3	2014	642.5
15808	68	1066	1596	185	Salt	27	CDF	5	KG	3	2014	520
15809	68	1066	1596	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	5037.5
15810	68	1066	1596	284	Fuel (diesel)	27	CDF	15	L	3	2014	1575
15811	68	1066	1596	300	Fish (smoked)	27	CDF	5	KG	3	2014	12530
15812	68	1066	1596	301	Fish (salted)	27	CDF	5	KG	3	2014	6691
15813	68	1066	1596	302	Cassava (cossette)	27	CDF	5	KG	3	2014	434.5
15814	68	1066	1596	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	332
15815	68	1066	1596	304	Transport (public)	27	CDF	55	Course	3	2014	300
15816	68	1066	1596	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	920
15817	68	1066	1597	50	Beans	27	CDF	5	KG	3	2014	2083.55000000000018
15818	68	1066	1597	51	Maize	27	CDF	5	KG	3	2014	460.399999999999977
15819	68	1066	1597	54	Maize meal	27	CDF	5	KG	3	2014	476.536999999999978
15820	68	1066	1597	58	Wheat flour	27	CDF	5	KG	3	2014	1117.97000000000003
15821	68	1066	1597	62	Oil (palm)	27	CDF	15	L	3	2014	1166.67000000000007
15822	68	1066	1597	64	Rice (imported)	27	CDF	5	KG	3	2014	1395.36999999999989
15823	68	1066	1597	71	Rice (local)	27	CDF	5	KG	3	2014	1099.96000000000004
15824	68	1066	1597	74	Cassava flour	27	CDF	5	KG	3	2014	358.404999999999973
15825	68	1066	1597	94	Meat (chicken)	27	CDF	5	KG	3	2014	4000
15826	68	1066	1597	97	Sugar	27	CDF	5	KG	3	2014	1183.84999999999991
15827	68	1066	1597	139	Fish	27	CDF	5	KG	3	2014	5183.42000000000007
15828	68	1066	1597	141	Meat (beef)	27	CDF	5	KG	3	2014	10789.2000000000007
15829	68	1066	1597	147	Plantains	27	CDF	5	KG	3	2014	924.923000000000002
15830	68	1066	1597	185	Salt	27	CDF	5	KG	3	2014	1119.31999999999994
15831	68	1066	1597	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	11014.2999999999993
15832	68	1066	1597	284	Fuel (diesel)	27	CDF	15	L	3	2014	1558.32999999999993
15833	68	1066	1597	300	Fish (smoked)	27	CDF	5	KG	3	2014	11022
15834	68	1066	1597	301	Fish (salted)	27	CDF	5	KG	3	2014	10806.5
15835	68	1066	1597	302	Cassava (cossette)	27	CDF	5	KG	3	2014	489.519999999999982
15836	68	1066	1597	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	450.625999999999976
15837	68	1066	1597	304	Transport (public)	27	CDF	55	Course	3	2014	475
15838	68	1066	1597	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	926.66700000000003
15839	68	1067	1598	50	Beans	27	CDF	5	KG	3	2014	2120
15840	68	1067	1598	51	Maize	27	CDF	5	KG	3	2014	325
15841	68	1067	1598	54	Maize meal	27	CDF	5	KG	3	2014	307.5
15842	68	1067	1598	58	Wheat flour	27	CDF	5	KG	3	2014	900
15843	68	1067	1598	62	Oil (palm)	27	CDF	15	L	3	2014	1530
15844	68	1067	1598	64	Rice (imported)	27	CDF	5	KG	3	2014	1280
15845	68	1067	1598	71	Rice (local)	27	CDF	5	KG	3	2014	622
15846	68	1067	1598	74	Cassava flour	27	CDF	5	KG	3	2014	297.5
15847	68	1067	1598	94	Meat (chicken)	27	CDF	5	KG	3	2014	4545
15848	68	1067	1598	97	Sugar	27	CDF	5	KG	3	2014	1100
15849	68	1067	1598	139	Fish	27	CDF	5	KG	3	2014	2424
15850	68	1067	1598	141	Meat (beef)	27	CDF	5	KG	3	2014	9895
15851	68	1067	1598	147	Plantains	27	CDF	5	KG	3	2014	330
15852	68	1067	1598	185	Salt	27	CDF	5	KG	3	2014	400
15853	68	1067	1598	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	14779
15854	68	1067	1598	284	Fuel (diesel)	27	CDF	15	L	3	2014	1400
15855	68	1067	1598	300	Fish (smoked)	27	CDF	5	KG	3	2014	10912.5
15856	68	1067	1598	301	Fish (salted)	27	CDF	5	KG	3	2014	5000
15857	68	1067	1598	302	Cassava (cossette)	27	CDF	5	KG	3	2014	332.5
15858	68	1067	1598	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	350
15859	68	1067	1598	304	Transport (public)	27	CDF	55	Course	3	2014	350
15860	68	1067	1598	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	910
15861	68	1067	1599	50	Beans	27	CDF	5	KG	3	2014	2241
15862	68	1067	1599	51	Maize	27	CDF	5	KG	3	2014	586.5
15863	68	1067	1599	54	Maize meal	27	CDF	5	KG	3	2014	911.5
15864	68	1067	1599	58	Wheat flour	27	CDF	5	KG	3	2014	965.75
15865	68	1067	1599	62	Oil (palm)	27	CDF	15	L	3	2014	1333
15866	68	1067	1599	64	Rice (imported)	27	CDF	5	KG	3	2014	997.5
15867	68	1067	1599	71	Rice (local)	27	CDF	5	KG	3	2014	907.75
15868	68	1067	1599	74	Cassava flour	27	CDF	5	KG	3	2014	734.25
15869	68	1067	1599	94	Meat (chicken)	27	CDF	5	KG	3	2014	5250
15870	68	1067	1599	97	Sugar	27	CDF	5	KG	3	2014	1411.75
15871	68	1067	1599	139	Fish	27	CDF	5	KG	3	2014	2677.5
15872	68	1067	1599	141	Meat (beef)	27	CDF	5	KG	3	2014	6500
15873	68	1067	1599	147	Plantains	27	CDF	5	KG	3	2014	511.5
15874	68	1067	1599	185	Salt	27	CDF	5	KG	3	2014	370.5
15875	68	1067	1599	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	8464
15876	68	1067	1599	284	Fuel (diesel)	27	CDF	15	L	3	2014	1400
15877	68	1067	1599	300	Fish (smoked)	27	CDF	5	KG	3	2014	18185
15878	68	1067	1599	301	Fish (salted)	27	CDF	5	KG	3	2014	8930.25
15879	68	1067	1599	302	Cassava (cossette)	27	CDF	5	KG	3	2014	603.75
15880	68	1067	1599	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	392.75
15881	68	1067	1599	304	Transport (public)	27	CDF	55	Course	3	2014	400
15882	68	1067	1599	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	920
15883	68	1069	1601	50	Beans	27	CDF	5	KG	3	2014	1833.11999999999989
15884	68	1069	1601	51	Maize	27	CDF	5	KG	3	2014	353.75
15885	68	1069	1601	54	Maize meal	27	CDF	5	KG	3	2014	445.875
15886	68	1069	1601	58	Wheat flour	27	CDF	5	KG	3	2014	2154.38000000000011
15887	68	1069	1601	62	Oil (palm)	27	CDF	15	L	3	2014	1412.25
15888	68	1069	1601	64	Rice (imported)	27	CDF	5	KG	3	2014	1543.38000000000011
15889	68	1069	1601	71	Rice (local)	27	CDF	5	KG	3	2014	1502.25
15890	68	1069	1601	74	Cassava flour	27	CDF	5	KG	3	2014	628
15891	68	1069	1601	94	Meat (chicken)	27	CDF	5	KG	3	2014	6853.25
15892	68	1069	1601	97	Sugar	27	CDF	5	KG	3	2014	1023.5
15893	68	1069	1601	139	Fish	27	CDF	5	KG	3	2014	4789.88000000000011
15894	68	1069	1601	141	Meat (beef)	27	CDF	5	KG	3	2014	8963.3799999999992
15895	68	1069	1601	147	Plantains	27	CDF	5	KG	3	2014	840.125
15896	68	1069	1601	185	Salt	27	CDF	5	KG	3	2014	1031.25
15897	68	1069	1601	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	8923.25
15898	68	1069	1601	284	Fuel (diesel)	27	CDF	15	L	3	2014	2112.5
15899	68	1069	1601	300	Fish (smoked)	27	CDF	5	KG	3	2014	18732.0999999999985
15900	68	1069	1601	301	Fish (salted)	27	CDF	5	KG	3	2014	10389.5
15901	68	1069	1601	302	Cassava (cossette)	27	CDF	5	KG	3	2014	299.75
15902	68	1069	1601	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	521.625
15903	68	1069	1601	304	Transport (public)	27	CDF	55	Course	3	2014	2000
15904	68	1069	1601	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	920
15905	68	1069	1602	50	Beans	27	CDF	5	KG	3	2014	920.125
15906	68	1069	1602	51	Maize	27	CDF	5	KG	3	2014	382.5
15907	68	1069	1602	54	Maize meal	27	CDF	5	KG	3	2014	588.937999999999988
15908	68	1069	1602	58	Wheat flour	27	CDF	5	KG	3	2014	2955.19000000000005
15909	68	1069	1602	62	Oil (palm)	27	CDF	15	L	3	2014	892.875
15910	68	1069	1602	64	Rice (imported)	27	CDF	5	KG	3	2014	2003.11999999999989
15911	68	1069	1602	71	Rice (local)	27	CDF	5	KG	3	2014	1126.61999999999989
15912	68	1069	1602	74	Cassava flour	27	CDF	5	KG	3	2014	575.875
15913	68	1069	1602	94	Meat (chicken)	27	CDF	5	KG	3	2014	7211.0600000000004
15914	68	1069	1602	97	Sugar	27	CDF	5	KG	3	2014	2471.94000000000005
15915	68	1069	1602	139	Fish	27	CDF	5	KG	3	2014	3613.05999999999995
15916	68	1069	1602	141	Meat (beef)	27	CDF	5	KG	3	2014	11801
15917	68	1069	1602	147	Plantains	27	CDF	5	KG	3	2014	728.062000000000012
15918	68	1069	1602	185	Salt	27	CDF	5	KG	3	2014	1340.44000000000005
15919	68	1069	1602	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	6449.0600000000004
15920	68	1069	1602	284	Fuel (diesel)	27	CDF	15	L	2	2014	2050
15921	68	1069	1602	300	Fish (smoked)	27	CDF	5	KG	3	2014	22691.4000000000015
15922	68	1069	1602	301	Fish (salted)	27	CDF	5	KG	3	2014	8870.3799999999992
15923	68	1069	1602	302	Cassava (cossette)	27	CDF	5	KG	3	2014	450.25
15924	68	1069	1602	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	608.625
15925	68	1069	1602	304	Transport (public)	27	CDF	55	Course	3	2014	715.562000000000012
15926	68	1069	1602	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	924.75
15927	68	1070	1603	50	Beans	27	CDF	5	KG	3	2014	1173.61999999999989
15928	68	1070	1603	51	Maize	27	CDF	5	KG	3	2014	411.75
15929	68	1070	1603	54	Maize meal	27	CDF	5	KG	3	2014	418.75
15930	68	1070	1603	58	Wheat flour	27	CDF	5	KG	3	2014	1798.38000000000011
15931	68	1070	1603	62	Oil (palm)	27	CDF	15	L	3	2014	1125.5
15932	68	1070	1603	64	Rice (imported)	27	CDF	5	KG	3	2014	2021.5
15933	68	1070	1603	71	Rice (local)	27	CDF	5	KG	3	2014	1128.11999999999989
15934	68	1070	1603	74	Cassava flour	27	CDF	5	KG	3	2014	369.5
15935	68	1070	1603	94	Meat (chicken)	27	CDF	5	KG	3	2014	2955.25
15936	68	1070	1603	97	Sugar	27	CDF	5	KG	3	2014	1973.25
15937	68	1070	1603	139	Fish	27	CDF	5	KG	3	2014	5107.11999999999989
15938	68	1070	1603	141	Meat (beef)	27	CDF	5	KG	3	2014	4567.11999999999989
15939	68	1070	1603	147	Plantains	27	CDF	5	KG	3	2014	494
15940	68	1070	1603	185	Salt	27	CDF	5	KG	3	2014	886.5
15941	68	1070	1603	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	4550.88000000000011
15942	68	1070	1603	284	Fuel (diesel)	27	CDF	15	L	3	2014	2400
15943	68	1070	1603	300	Fish (smoked)	27	CDF	5	KG	3	2014	12068
15944	68	1070	1603	301	Fish (salted)	27	CDF	5	KG	3	2014	9649.8799999999992
15945	68	1070	1603	302	Cassava (cossette)	27	CDF	5	KG	3	2014	463.75
15946	68	1070	1603	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	338.5
15947	68	1070	1603	304	Transport (public)	27	CDF	55	Course	3	2014	500
15948	68	1070	1603	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	940
15949	68	1071	1604	50	Beans	27	CDF	5	KG	3	2014	1256.25
15950	68	1071	1604	51	Maize	27	CDF	5	KG	3	2014	379.25
15951	68	1071	1604	54	Maize meal	27	CDF	5	KG	3	2014	820
15952	68	1071	1604	58	Wheat flour	27	CDF	5	KG	3	2014	1723.75
15953	68	1071	1604	62	Oil (palm)	27	CDF	15	L	3	2014	1267.25
15954	68	1071	1604	64	Rice (imported)	27	CDF	5	KG	3	2014	1700
15955	68	1071	1604	71	Rice (local)	27	CDF	5	KG	3	2014	981.25
15956	68	1071	1604	74	Cassava flour	27	CDF	5	KG	3	2014	257.25
15957	68	1071	1604	94	Meat (chicken)	27	CDF	5	KG	3	2014	5944.5
15958	68	1071	1604	97	Sugar	27	CDF	5	KG	3	2014	1830
15959	68	1071	1604	139	Fish	27	CDF	5	KG	3	2014	4272
15960	68	1071	1604	141	Meat (beef)	27	CDF	5	KG	3	2014	7262.75
15961	68	1071	1604	147	Plantains	27	CDF	5	KG	3	2014	1272.75
15962	68	1071	1604	185	Salt	27	CDF	5	KG	3	2014	724
15963	68	1071	1604	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	6157.25
15964	68	1071	1604	284	Fuel (diesel)	27	CDF	15	L	3	2014	2300
15965	68	1071	1604	300	Fish (smoked)	27	CDF	5	KG	3	2014	8235.25
15966	68	1071	1604	301	Fish (salted)	27	CDF	5	KG	3	2014	7500.5
15967	68	1071	1604	302	Cassava (cossette)	27	CDF	5	KG	3	2014	175.25
15968	68	1071	1604	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	319.75
15969	68	1071	1604	304	Transport (public)	27	CDF	55	Course	3	2014	500
15970	68	1071	1604	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	910
15971	68	1071	1605	50	Beans	27	CDF	5	KG	3	2014	1671
15972	68	1071	1605	51	Maize	27	CDF	5	KG	3	2014	710
15973	68	1071	1605	54	Maize meal	27	CDF	5	KG	3	2014	880
15974	68	1071	1605	58	Wheat flour	27	CDF	5	KG	3	2014	1264
15975	68	1071	1605	62	Oil (palm)	27	CDF	15	L	3	2014	1600
15976	68	1071	1605	64	Rice (imported)	27	CDF	5	KG	3	2014	1626.75
15977	68	1071	1605	71	Rice (local)	27	CDF	5	KG	3	2014	1215.5
15978	68	1071	1605	74	Cassava flour	27	CDF	5	KG	3	2014	989.5
15979	68	1071	1605	94	Meat (chicken)	27	CDF	5	KG	3	2014	6000
15980	68	1071	1605	97	Sugar	27	CDF	5	KG	3	2014	1287
15981	68	1071	1605	139	Fish	27	CDF	5	KG	3	2014	4518.25
15982	68	1071	1605	141	Meat (beef)	27	CDF	5	KG	3	2014	9565.75
15983	68	1071	1605	147	Plantains	27	CDF	5	KG	3	2014	2330
15984	68	1071	1605	185	Salt	27	CDF	5	KG	3	2014	618.25
15985	68	1071	1605	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	9081.75
15986	68	1071	1605	284	Fuel (diesel)	27	CDF	15	L	3	2014	1740
15987	68	1071	1605	300	Fish (smoked)	27	CDF	5	KG	3	2014	13313
15988	68	1071	1605	301	Fish (salted)	27	CDF	5	KG	3	2014	9808.5
15989	68	1071	1605	302	Cassava (cossette)	27	CDF	5	KG	3	2014	851.75
15990	68	1071	1605	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	978
15991	68	1071	1605	304	Transport (public)	27	CDF	55	Course	3	2014	625
15992	68	1071	1605	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	900
15993	68	1071	1606	50	Beans	27	CDF	5	KG	3	2014	1428.61999999999989
15994	68	1071	1606	51	Maize	27	CDF	5	KG	3	2014	589.125
15995	68	1071	1606	54	Maize meal	27	CDF	5	KG	3	2014	788.375
15996	68	1071	1606	58	Wheat flour	27	CDF	5	KG	3	2014	1902.25
15997	68	1071	1606	62	Oil (palm)	27	CDF	15	L	3	2014	1235
15998	68	1071	1606	64	Rice (imported)	27	CDF	5	KG	3	2014	1496
15999	68	1071	1606	71	Rice (local)	27	CDF	5	KG	3	2014	1045.25
16000	68	1071	1606	74	Cassava flour	27	CDF	5	KG	3	2014	736.125
16001	68	1071	1606	94	Meat (chicken)	27	CDF	5	KG	3	2014	4091
16002	68	1071	1606	97	Sugar	27	CDF	5	KG	3	2014	1510.25
16003	68	1071	1606	139	Fish	27	CDF	5	KG	3	2014	2907.11999999999989
16004	68	1071	1606	141	Meat (beef)	27	CDF	5	KG	3	2014	6196
16005	68	1071	1606	147	Plantains	27	CDF	5	KG	3	2014	2757.75
16006	68	1071	1606	185	Salt	27	CDF	5	KG	3	2014	762.125
16007	68	1071	1606	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	8558.25
16008	68	1071	1606	284	Fuel (diesel)	27	CDF	15	L	3	2014	1625
16009	68	1071	1606	300	Fish (smoked)	27	CDF	5	KG	3	2014	13717.1000000000004
16010	68	1071	1606	301	Fish (salted)	27	CDF	5	KG	3	2014	7692
16011	68	1071	1606	302	Cassava (cossette)	27	CDF	5	KG	3	2014	397.75
16012	68	1071	1606	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	732.75
16013	68	1071	1606	304	Transport (public)	27	CDF	55	Course	3	2014	300
16014	68	1071	1606	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	910
16015	68	1074	1607	50	Beans	27	CDF	5	KG	2	2016	715.33299999999997
16016	68	1074	1607	51	Maize	27	CDF	5	KG	2	2016	531.33299999999997
16017	68	1074	1607	54	Maize meal	27	CDF	5	KG	2	2016	801.33299999999997
16018	68	1074	1607	58	Wheat flour	27	CDF	5	KG	2	2016	990.33299999999997
16019	68	1074	1607	62	Oil (palm)	27	CDF	15	L	2	2016	662
16020	68	1074	1607	64	Rice (imported)	27	CDF	5	KG	2	2016	894.66700000000003
16021	68	1074	1607	71	Rice (local)	27	CDF	5	KG	2	2016	857
16022	68	1074	1607	74	Cassava flour	27	CDF	5	KG	2	2016	710.66700000000003
16023	68	1074	1607	94	Meat (chicken)	27	CDF	5	KG	2	2016	5008.67000000000007
16024	68	1074	1607	97	Sugar	27	CDF	56	USD/LCU	2	2016	1000
16025	68	1074	1607	139	Fish	27	CDF	5	KG	1	2016	3876
16026	68	1074	1607	141	Meat (beef)	27	CDF	5	KG	2	2016	3400
16027	68	1074	1607	147	Plantains	27	CDF	5	KG	2	2016	263.333000000000027
16028	68	1074	1607	185	Salt	27	CDF	56	USD/LCU	2	2016	500
16029	68	1074	1607	236	Meat (goat, with bones)	27	CDF	5	KG	2	2016	3257.32999999999993
16030	68	1074	1607	284	Fuel (diesel)	27	CDF	15	L	12	2013	1430.82999999999993
16031	68	1074	1607	285	Fuel (petrol-gasoline)	27	CDF	15	L	2	2016	1200
16032	68	1074	1607	300	Fish (smoked)	27	CDF	5	KG	2	2016	8142
16033	68	1074	1607	301	Fish (salted)	27	CDF	5	KG	2	2016	4906.67000000000007
16034	68	1074	1607	302	Cassava (cossette)	27	CDF	5	KG	2	2016	279.333000000000027
16035	68	1074	1607	303	Cassava (chikwangue)	27	CDF	5	KG	2	2016	623.66700000000003
16036	68	1074	1607	304	Transport (public)	27	CDF	55	Course	2	2016	500
16037	68	1074	1607	305	Exchange rate	27	CDF	56	USD/LCU	2	2016	920
16038	68	1074	1607	401	Fish (fresh)	27	CDF	5	KG	2	2016	3483.32999999999993
16039	68	1075	1608	50	Beans	27	CDF	5	KG	3	2014	1225.92000000000007
16040	68	1075	1608	51	Maize	27	CDF	5	KG	3	2014	300.583000000000027
16041	68	1075	1608	54	Maize meal	27	CDF	5	KG	3	2014	598.58299999999997
16042	68	1075	1608	58	Wheat flour	27	CDF	5	KG	3	2014	2168
16043	68	1075	1608	62	Oil (palm)	27	CDF	15	L	3	2014	755.66700000000003
16044	68	1075	1608	64	Rice (imported)	27	CDF	5	KG	8	2012	916
16045	68	1075	1608	71	Rice (local)	27	CDF	5	KG	3	2014	770.08299999999997
16046	68	1075	1608	74	Cassava flour	27	CDF	5	KG	3	2014	644.66700000000003
16047	68	1075	1608	94	Meat (chicken)	27	CDF	5	KG	3	2014	7106
16048	68	1075	1608	97	Sugar	27	CDF	5	KG	3	2014	1344.25
16049	68	1075	1608	139	Fish	27	CDF	5	KG	3	2014	12440.2000000000007
16050	68	1075	1608	141	Meat (beef)	27	CDF	5	KG	3	2014	7571.25
16051	68	1075	1608	147	Plantains	27	CDF	5	KG	3	2014	431
16052	68	1075	1608	185	Salt	27	CDF	5	KG	3	2014	583.91700000000003
16053	68	1075	1608	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	10024.5
16054	68	1075	1608	284	Fuel (diesel)	27	CDF	15	L	3	2014	1555
16055	68	1075	1608	300	Fish (smoked)	27	CDF	5	KG	3	2014	15119.2999999999993
16056	68	1075	1608	301	Fish (salted)	27	CDF	5	KG	3	2014	11223.2999999999993
16057	68	1075	1608	302	Cassava (cossette)	27	CDF	5	KG	3	2014	1665.25
16058	68	1075	1608	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	472.083000000000027
16059	68	1075	1608	304	Transport (public)	27	CDF	55	Course	3	2014	500
16060	68	1075	1608	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	920
16061	68	1075	1609	50	Beans	27	CDF	5	KG	3	2014	1453.67000000000007
16062	68	1075	1609	51	Maize	27	CDF	5	KG	3	2014	701.83299999999997
16063	68	1075	1609	54	Maize meal	27	CDF	5	KG	3	2014	1880.07999999999993
16064	68	1075	1609	58	Wheat flour	27	CDF	5	KG	3	2014	1495.82999999999993
16065	68	1075	1609	62	Oil (palm)	27	CDF	15	L	3	2014	383.25
16066	68	1075	1609	71	Rice (local)	27	CDF	5	KG	3	2014	1092.57999999999993
16067	68	1075	1609	74	Cassava flour	27	CDF	5	KG	3	2014	430.583000000000027
16068	68	1075	1609	94	Meat (chicken)	27	CDF	5	KG	3	2014	7449.17000000000007
16069	68	1075	1609	97	Sugar	27	CDF	5	KG	3	2014	1673.67000000000007
16070	68	1075	1609	139	Fish	27	CDF	5	KG	3	2014	7000
16071	68	1075	1609	141	Meat (beef)	27	CDF	5	KG	3	2014	5000
16072	68	1075	1609	147	Plantains	27	CDF	5	KG	3	2014	319.833000000000027
16073	68	1075	1609	185	Salt	27	CDF	5	KG	3	2014	1136
16074	68	1075	1609	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	7333.32999999999993
16075	68	1075	1609	284	Fuel (diesel)	27	CDF	15	L	3	2014	2033.32999999999993
16076	68	1075	1609	300	Fish (smoked)	27	CDF	5	KG	3	2014	7528.75
16077	68	1075	1609	301	Fish (salted)	27	CDF	5	KG	3	2014	6500
16078	68	1075	1609	302	Cassava (cossette)	27	CDF	5	KG	3	2014	422.166999999999973
16079	68	1075	1609	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	274.083000000000027
16080	68	1075	1609	304	Transport (public)	27	CDF	55	Course	3	2014	650
16081	68	1075	1609	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	929.16700000000003
16082	68	1075	1648	50	Beans	27	CDF	5	KG	3	2014	1186.38000000000011
16083	68	1075	1648	51	Maize	27	CDF	5	KG	3	2014	256.75
16084	68	1075	1648	54	Maize meal	27	CDF	5	KG	3	2014	721.5
16085	68	1075	1648	58	Wheat flour	27	CDF	5	KG	3	2014	1298.61999999999989
16086	68	1075	1648	62	Oil (palm)	27	CDF	15	L	3	2014	820
16087	68	1075	1648	71	Rice (local)	27	CDF	5	KG	3	2014	879.375
16088	68	1075	1648	74	Cassava flour	27	CDF	5	KG	3	2014	462.625
16089	68	1075	1648	94	Meat (chicken)	27	CDF	5	KG	3	2014	5937
16090	68	1075	1648	97	Sugar	27	CDF	5	KG	3	2014	2840.5
16091	68	1075	1648	139	Fish	27	CDF	5	KG	3	2014	14594.8999999999996
16092	68	1075	1648	141	Meat (beef)	27	CDF	5	KG	3	2014	6023.38000000000011
16093	68	1075	1648	147	Plantains	27	CDF	5	KG	3	2014	354.5
16094	68	1075	1648	185	Salt	27	CDF	5	KG	3	2014	1418.75
16095	68	1075	1648	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	6244.11999999999989
16096	68	1075	1648	284	Fuel (diesel)	27	CDF	15	L	3	2014	1950
16097	68	1075	1648	300	Fish (smoked)	27	CDF	5	KG	3	2014	14003.3999999999996
16098	68	1075	1648	301	Fish (salted)	27	CDF	5	KG	3	2014	12311.5
16099	68	1075	1648	302	Cassava (cossette)	27	CDF	5	KG	3	2014	356.25
16100	68	1075	1648	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	350.75
16101	68	1075	1648	304	Transport (public)	27	CDF	55	Course	3	2014	4000
16102	68	1075	1648	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	972.5
16103	68	1068	1649	50	Beans	27	CDF	5	KG	3	2014	2025
16104	68	1068	1649	51	Maize	27	CDF	5	KG	3	2014	400
16105	68	1068	1649	54	Maize meal	27	CDF	5	KG	3	2014	600
16106	68	1068	1649	58	Wheat flour	27	CDF	5	KG	3	2014	3650
16107	68	1068	1649	62	Oil (palm)	27	CDF	15	L	3	2014	612.5
16108	68	1068	1649	64	Rice (imported)	27	CDF	5	KG	3	2014	1237.5
16109	68	1068	1649	71	Rice (local)	27	CDF	5	KG	3	2014	825
16110	68	1068	1649	74	Cassava flour	27	CDF	5	KG	3	2014	350
16111	68	1068	1649	94	Meat (chicken)	27	CDF	5	KG	3	2014	4500
16112	68	1068	1649	97	Sugar	27	CDF	5	KG	3	2014	1800
16113	68	1068	1649	139	Fish	27	CDF	5	KG	3	2014	3500
16114	68	1068	1649	141	Meat (beef)	27	CDF	5	KG	3	2014	7000
16115	68	1068	1649	147	Plantains	27	CDF	5	KG	3	2014	540.5
16116	68	1068	1649	185	Salt	27	CDF	5	KG	3	2014	475
16117	68	1068	1649	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	6000
16118	68	1068	1649	284	Fuel (diesel)	27	CDF	15	L	3	2014	2525
16119	68	1068	1649	300	Fish (smoked)	27	CDF	5	KG	3	2014	5450
16120	68	1068	1649	301	Fish (salted)	27	CDF	5	KG	3	2014	6625
16121	68	1068	1649	302	Cassava (cossette)	27	CDF	5	KG	3	2014	256.5
16122	68	1068	1649	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	200
16123	68	1068	1649	304	Transport (public)	27	CDF	55	Course	3	2014	1000
16124	68	1068	1649	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	922.5
16125	68	1074	1650	50	Beans	27	CDF	5	KG	2	2016	501.199999999999989
16126	68	1074	1650	51	Maize	27	CDF	5	KG	2	2016	248.599999999999994
16127	68	1074	1650	54	Maize meal	27	CDF	5	KG	2	2016	583.399999999999977
16128	68	1074	1650	58	Wheat flour	27	CDF	5	KG	2	2016	1080
16129	68	1074	1650	62	Oil (palm)	27	CDF	15	L	2	2016	608.399999999999977
16130	68	1074	1650	64	Rice (imported)	27	CDF	5	KG	2	2016	995.600000000000023
16131	68	1074	1650	71	Rice (local)	27	CDF	5	KG	2	2016	615.399999999999977
16132	68	1074	1650	74	Cassava flour	27	CDF	5	KG	2	2016	299.399999999999977
16133	68	1074	1650	94	Meat (chicken)	27	CDF	5	KG	2	2016	5283.39999999999964
16134	68	1074	1650	97	Sugar	27	CDF	56	USD/LCU	2	2016	1203.20000000000005
16135	68	1074	1650	139	Fish	27	CDF	5	KG	1	2016	3611
16136	68	1074	1650	141	Meat (beef)	27	CDF	5	KG	2	2016	3535.59999999999991
16137	68	1074	1650	147	Plantains	27	CDF	5	KG	2	2016	251.199999999999989
16138	68	1074	1650	185	Salt	27	CDF	56	USD/LCU	2	2016	499.399999999999977
16139	68	1074	1650	236	Meat (goat, with bones)	27	CDF	5	KG	2	2016	4033.59999999999991
16140	68	1074	1650	284	Fuel (diesel)	27	CDF	15	L	12	2013	1425
16141	68	1074	1650	285	Fuel (petrol-gasoline)	27	CDF	15	L	2	2016	1240
16142	68	1074	1650	300	Fish (smoked)	27	CDF	5	KG	2	2016	6861
16143	68	1074	1650	301	Fish (salted)	27	CDF	5	KG	2	2016	5037.60000000000036
16144	68	1074	1650	302	Cassava (cossette)	27	CDF	5	KG	2	2016	257.600000000000023
16145	68	1074	1650	303	Cassava (chikwangue)	27	CDF	5	KG	2	2016	548.200000000000045
16146	68	1074	1650	304	Transport (public)	27	CDF	55	Course	2	2016	580
16147	68	1074	1650	305	Exchange rate	27	CDF	56	USD/LCU	2	2016	930
16148	68	1074	1650	401	Fish (fresh)	27	CDF	5	KG	2	2016	3594.40000000000009
16149	68	1070	1651	50	Beans	27	CDF	5	KG	3	2014	659.375
16150	68	1070	1651	51	Maize	27	CDF	5	KG	3	2014	319.625
16151	68	1070	1651	54	Maize meal	27	CDF	5	KG	3	2014	413.25
16152	68	1070	1651	58	Wheat flour	27	CDF	5	KG	3	2014	2603.88000000000011
16153	68	1070	1651	62	Oil (palm)	27	CDF	15	L	3	2014	1138.75
16154	68	1070	1651	64	Rice (imported)	27	CDF	5	KG	3	2014	2028.88000000000011
16155	68	1070	1651	71	Rice (local)	27	CDF	5	KG	3	2014	1092.38000000000011
16156	68	1070	1651	74	Cassava flour	27	CDF	5	KG	3	2014	741
16157	68	1070	1651	94	Meat (chicken)	27	CDF	5	KG	3	2014	4569.38000000000011
16158	68	1070	1651	97	Sugar	27	CDF	5	KG	3	2014	1916.88000000000011
16159	68	1070	1651	139	Fish	27	CDF	5	KG	3	2014	2798.75
16160	68	1070	1651	141	Meat (beef)	27	CDF	5	KG	3	2014	8762.5
16161	68	1070	1651	147	Plantains	27	CDF	5	KG	3	2014	548.5
16162	68	1070	1651	185	Salt	27	CDF	5	KG	3	2014	890.375
16163	68	1070	1651	236	Meat (goat, with bones)	27	CDF	5	KG	3	2014	8569.3799999999992
16164	68	1070	1651	284	Fuel (diesel)	27	CDF	15	L	3	2014	2500
16165	68	1070	1651	300	Fish (smoked)	27	CDF	5	KG	3	2014	8323.8799999999992
16166	68	1070	1651	301	Fish (salted)	27	CDF	5	KG	3	2014	3494.38000000000011
16167	68	1070	1651	302	Cassava (cossette)	27	CDF	5	KG	3	2014	350.75
16168	68	1070	1651	303	Cassava (chikwangue)	27	CDF	5	KG	3	2014	701.125
16169	68	1070	1651	304	Transport (public)	27	CDF	55	Course	3	2014	550
16170	68	1070	1651	305	Exchange rate	27	CDF	56	USD/LCU	3	2014	930
16171	70	1095	536	55	Bread	59	DJF	33	Unit	6	2015	30
16172	70	1095	536	58	Wheat flour	59	DJF	5	KG	6	2015	120
16173	70	1095	536	64	Rice (imported)	59	DJF	5	KG	6	2015	120
16174	70	1095	536	65	Sorghum	59	DJF	5	KG	3	2013	240
16175	70	1095	536	66	Beans (white)	59	DJF	5	KG	6	2015	250
16176	70	1095	536	73	Millet	59	DJF	5	KG	6	2015	220
16177	70	1095	536	96	Oil (vegetable)	59	DJF	15	L	6	2015	300
16178	70	1095	536	97	Sugar	59	DJF	5	KG	6	2015	120
16179	70	1095	536	112	Pasta	59	DJF	5	KG	6	2015	200
16180	70	1095	536	135	Sorghum (white)	59	DJF	5	KG	6	2015	140
16181	70	1095	536	282	Sorghum (red)	59	DJF	5	KG	6	2015	200
16182	70	1095	536	283	Fuel (kerosene)	59	DJF	15	L	6	2015	180
16183	70	1093	537	55	Bread	59	DJF	33	Unit	6	2015	30
16184	70	1093	537	58	Wheat flour	59	DJF	5	KG	6	2015	130
16185	70	1093	537	64	Rice (imported)	59	DJF	5	KG	6	2015	140
16186	70	1093	537	65	Sorghum	59	DJF	5	KG	3	2013	140
16187	70	1093	537	66	Beans (white)	59	DJF	5	KG	6	2015	400
16188	70	1093	537	73	Millet	59	DJF	5	KG	6	2015	160
16189	70	1093	537	96	Oil (vegetable)	59	DJF	15	L	6	2015	300
16190	70	1093	537	97	Sugar	59	DJF	5	KG	6	2015	160
16191	70	1093	537	112	Pasta	59	DJF	5	KG	6	2015	200
16192	70	1093	537	282	Sorghum (red)	59	DJF	5	KG	6	2015	160
16193	70	1093	537	283	Fuel (kerosene)	59	DJF	15	L	6	2015	220
16194	70	1094	538	55	Bread	59	DJF	33	Unit	6	2015	30
16195	70	1094	538	58	Wheat flour	59	DJF	5	KG	6	2015	118
16196	70	1094	538	64	Rice (imported)	59	DJF	5	KG	6	2015	124
16197	70	1094	538	65	Sorghum	59	DJF	5	KG	3	2013	80
16198	70	1094	538	66	Beans (white)	59	DJF	5	KG	6	2015	226
16199	70	1094	538	73	Millet	59	DJF	5	KG	6	2015	100
16200	70	1094	538	96	Oil (vegetable)	59	DJF	15	L	6	2015	250
16201	70	1094	538	97	Sugar	59	DJF	5	KG	6	2015	118
16202	70	1094	538	112	Pasta	59	DJF	5	KG	6	2015	160
16203	70	1094	538	282	Sorghum (red)	59	DJF	5	KG	6	2015	124
16204	70	1094	538	283	Fuel (kerosene)	59	DJF	15	L	6	2015	220
16205	70	1096	539	55	Bread	59	DJF	33	Unit	6	2015	30
16206	70	1096	539	58	Wheat flour	59	DJF	5	KG	6	2015	120
16207	70	1096	539	64	Rice (imported)	59	DJF	5	KG	6	2015	140
16208	70	1096	539	96	Oil (vegetable)	59	DJF	15	L	6	2015	300
16209	70	1096	539	97	Sugar	59	DJF	5	KG	6	2015	150
16210	70	1096	539	112	Pasta	59	DJF	5	KG	6	2015	200
16211	70	1096	539	135	Sorghum (white)	59	DJF	5	KG	6	2015	120
16212	70	1096	539	282	Sorghum (red)	59	DJF	5	KG	4	2015	120
16213	70	1096	539	283	Fuel (kerosene)	59	DJF	15	L	6	2015	280
16214	70	1097	540	55	Bread	59	DJF	33	Unit	6	2015	30
16215	70	1097	540	58	Wheat flour	59	DJF	5	KG	6	2015	120
16216	70	1097	540	64	Rice (imported)	59	DJF	5	KG	6	2015	126
16217	70	1097	540	65	Sorghum	59	DJF	5	KG	3	2013	180
16218	70	1097	540	66	Beans (white)	59	DJF	5	KG	6	2015	260
16219	70	1097	540	96	Oil (vegetable)	59	DJF	15	L	6	2015	250
16220	70	1097	540	97	Sugar	59	DJF	5	KG	6	2015	130
16221	70	1097	540	112	Pasta	59	DJF	5	KG	6	2015	200
16222	70	1097	540	135	Sorghum (white)	59	DJF	5	KG	6	2015	200
16223	70	1097	540	283	Fuel (kerosene)	59	DJF	15	L	6	2015	300
16224	72	\N	\N	78	Beans (red)	85	DOP	30	Pound	7	2015	70.2900000000000063
16225	72	\N	\N	85	Beans (black)	85	DOP	30	Pound	7	2015	62.2899999999999991
16226	72	\N	\N	92	Eggs	85	DOP	30	Pound	7	2015	6.29999999999999982
16227	72	\N	\N	97	Sugar	85	DOP	30	Pound	7	2015	20
16228	72	\N	\N	136	Maize (yellow)	85	DOP	30	Pound	7	2015	26
16229	72	\N	\N	274	Wage (qualified labour)	85	DOP	51	Day	7	2015	474
16230	72	\N	\N	277	Wage (non-qualified labour)	85	DOP	51	Day	7	2015	433
16231	72	\N	\N	284	Fuel (diesel)	85	DOP	27	Gallon	7	2015	163.099999999999994
16232	72	\N	\N	285	Fuel (petrol-gasoline)	85	DOP	27	Gallon	7	2015	205.099999999999994
16233	72	\N	\N	436	Rice (good quality)	85	DOP	30	Pound	7	2015	24.6999999999999993
16234	40765	\N	\N	52	Rice	38	EGP	5	KG	1	2016	5.75999999999999979
16235	40765	\N	\N	58	Wheat flour	38	EGP	5	KG	1	2016	3.93000000000000016
16236	40765	\N	\N	83	Potatoes	38	EGP	5	KG	1	2016	5.34999999999999964
16237	40765	\N	\N	92	Eggs	38	EGP	33	Unit	1	2016	1.17999999999999994
16238	40765	\N	\N	97	Sugar	38	EGP	5	KG	1	2016	5.91999999999999993
16239	40765	\N	\N	105	Garlic	38	EGP	5	KG	1	2016	11.1300000000000008
16240	40765	\N	\N	106	Ghee (artificial)	38	EGP	5	KG	9	2015	12.5999999999999996
16241	40765	\N	\N	107	Ghee (natural)	38	EGP	5	KG	1	2016	62.4299999999999997
16242	40765	\N	\N	108	Lentils	38	EGP	5	KG	1	2016	13.6500000000000004
16243	40765	\N	\N	110	Onions (red)	38	EGP	5	KG	1	2016	2.5299999999999998
16244	40765	\N	\N	111	Onions (white)	38	EGP	5	KG	9	2015	2.5
16245	40765	\N	\N	112	Pasta	38	EGP	5	KG	1	2016	4.33999999999999986
16246	40765	\N	\N	114	Tomatoes	38	EGP	5	KG	1	2016	3.85000000000000009
16247	40765	\N	\N	141	Meat (beef)	38	EGP	5	KG	9	2015	62.5
16248	40765	\N	\N	184	Oil (sunflower)	38	EGP	15	L	1	2016	14.3000000000000007
16249	40765	\N	\N	207	Meat (chicken, frozen)	38	EGP	5	KG	1	2016	25.5
16250	40765	\N	\N	319	Cheese (picon)	38	EGP	95	168 G	1	2016	4.87000000000000011
16251	40765	\N	\N	362	Oil (maize)	38	EGP	15	L	1	2016	15.4800000000000004
16252	40765	\N	\N	385	Beans (fava, dry)	38	EGP	5	KG	1	2016	13.8000000000000007
16253	40765	\N	\N	395	Oil (mixed)	38	EGP	15	L	1	2016	10.7799999999999994
16254	40765	\N	\N	414	Cheese	38	EGP	5	KG	1	2016	16.5500000000000007
16255	40765	\N	\N	468	Meat (beef, without bones)	38	EGP	5	KG	1	2016	89.4000000000000057
16256	75	1196	153	52	Rice	28	USD	16	45 KG	12	2014	41
16257	75	1196	153	67	Maize (white)	28	USD	16	45 KG	12	2014	18.0833000000000013
16258	75	1196	153	78	Beans (red)	28	USD	16	45 KG	12	2014	51.6666999999999987
16259	75	1196	153	79	Beans (silk red)	28	USD	16	45 KG	12	2014	62.5
16260	75	1186	154	52	Rice	28	USD	16	45 KG	12	2014	41
16261	75	1186	154	67	Maize (white)	28	USD	16	45 KG	12	2014	21
16262	75	1186	154	78	Beans (red)	28	USD	16	45 KG	12	2014	57.5
16263	75	1186	154	79	Beans (silk red)	28	USD	16	45 KG	12	2014	66
16264	75	1187	155	52	Rice	28	USD	16	45 KG	12	2014	39
16265	75	1187	155	67	Maize (white)	28	USD	16	45 KG	12	2014	18.5
16266	75	1187	155	78	Beans (red)	28	USD	16	45 KG	12	2014	57.5
16267	75	1187	155	79	Beans (silk red)	28	USD	16	45 KG	12	2014	64.5
16268	75	1190	156	52	Rice	28	USD	16	45 KG	12	2014	47.5
16269	75	1190	156	67	Maize (white)	28	USD	16	45 KG	12	2014	19
16270	75	1190	156	78	Beans (red)	28	USD	16	45 KG	12	2014	73.5
16271	75	1190	156	79	Beans (silk red)	28	USD	16	45 KG	12	2014	79.3332999999999942
16272	75	1191	157	52	Rice	28	USD	16	45 KG	12	2014	45.6666999999999987
16273	75	1191	157	67	Maize (white)	28	USD	16	45 KG	12	2014	19.25
16274	75	1191	157	78	Beans (red)	28	USD	16	45 KG	12	2014	63
16275	75	1191	157	79	Beans (silk red)	28	USD	16	45 KG	12	2014	67.6667000000000058
16276	75	1192	158	52	Rice	28	USD	16	45 KG	12	2014	40.6666999999999987
16277	75	1192	158	67	Maize (white)	28	USD	16	45 KG	12	2014	17.0833000000000013
16278	75	1192	158	78	Beans (red)	28	USD	16	45 KG	12	2014	54
16279	75	1192	158	79	Beans (silk red)	28	USD	16	45 KG	12	2014	61.6666999999999987
16280	75	1193	159	52	Rice	28	USD	16	45 KG	12	2014	38.1666999999999987
16281	75	1193	159	67	Maize (white)	28	USD	16	45 KG	12	2014	17.5833000000000013
16282	75	1193	159	78	Beans (red)	28	USD	16	45 KG	12	2014	55
16283	75	1193	159	79	Beans (silk red)	28	USD	16	45 KG	12	2014	65
16284	75	1194	160	52	Rice	28	USD	16	45 KG	12	2014	37.8333000000000013
16285	75	1194	160	67	Maize (white)	28	USD	16	45 KG	12	2014	17.625
16286	75	1194	160	78	Beans (red)	28	USD	16	45 KG	12	2014	52.6666999999999987
16287	75	1194	160	79	Beans (silk red)	28	USD	16	45 KG	12	2014	68.1667000000000058
16288	75	1195	161	52	Rice	28	USD	16	45 KG	12	2014	41.1666999999999987
16289	75	1195	161	67	Maize (white)	28	USD	16	45 KG	12	2014	19.1666999999999987
16290	75	1195	161	78	Beans (red)	28	USD	16	45 KG	12	2014	53
16291	75	1195	161	79	Beans (silk red)	28	USD	16	45 KG	12	2014	63.5
16292	75	1185	162	52	Rice	28	USD	16	45 KG	12	2014	39.3333000000000013
16293	75	1185	162	67	Maize (white)	28	USD	16	45 KG	12	2014	18
16294	75	1185	162	78	Beans (red)	28	USD	16	45 KG	12	2014	53.1666999999999987
16295	75	1185	162	79	Beans (silk red)	28	USD	16	45 KG	12	2014	58
16296	75	1196	163	52	Rice	28	USD	16	45 KG	12	2014	40.75
16297	75	1196	163	67	Maize (white)	28	USD	16	45 KG	12	2014	17.625
16298	75	1196	163	78	Beans (red)	28	USD	16	45 KG	12	2014	52.5
16299	75	1196	163	79	Beans (silk red)	28	USD	16	45 KG	12	2014	62.5
16300	75	1197	164	52	Rice	28	USD	16	45 KG	12	2014	42.3333000000000013
16301	75	1197	164	67	Maize (white)	28	USD	16	45 KG	12	2014	18.3333000000000013
16302	75	1197	164	78	Beans (red)	28	USD	16	45 KG	12	2014	55
16303	75	1197	164	79	Beans (silk red)	28	USD	16	45 KG	12	2014	63.8333000000000013
16304	75	1189	165	52	Rice	28	USD	16	45 KG	12	2014	38.6666999999999987
16305	75	1189	165	67	Maize (white)	28	USD	16	45 KG	12	2014	17.1666999999999987
16306	75	1189	165	78	Beans (red)	28	USD	16	45 KG	12	2014	52
16307	75	1189	165	79	Beans (silk red)	28	USD	16	45 KG	12	2014	63.5
16308	75	\N	\N	52	Rice	28	USD	16	45 KG	11	2015	37.6000000000000014
16309	75	\N	\N	67	Maize (white)	28	USD	16	45 KG	11	2015	19.3000000000000007
16310	75	\N	\N	78	Beans (red)	28	USD	16	45 KG	11	2015	53.8999999999999986
16311	75	\N	\N	79	Beans (silk red)	28	USD	16	45 KG	11	2015	60.5
16312	79	1237	458	65	Sorghum	47	ETB	5	KG	5	2015	6.29999999999999982
16313	79	1237	458	67	Maize (white)	47	ETB	5	KG	5	2015	5.63999999999999968
16314	79	1237	458	84	Wheat	47	ETB	5	KG	5	2015	10.4800000000000004
16315	79	1237	458	108	Lentils	47	ETB	5	KG	5	2015	21.9499999999999993
16316	79	1237	458	307	Barley	47	ETB	9	100 KG	5	2015	968
16317	79	1237	458	385	Beans (fava, dry)	47	ETB	5	KG	5	2015	11
16318	79	1237	459	65	Sorghum	47	ETB	5	KG	5	2015	5.79999999999999982
16319	79	1237	459	67	Maize (white)	47	ETB	5	KG	5	2015	5.59999999999999964
16320	79	1237	459	84	Wheat	47	ETB	5	KG	5	2015	9.55000000000000071
16321	79	1237	459	108	Lentils	47	ETB	5	KG	5	2015	28.5
16322	79	1237	459	307	Barley	47	ETB	9	100 KG	5	2015	1000
16323	79	1237	459	385	Beans (fava, dry)	47	ETB	5	KG	5	2015	12
16324	79	47679	460	58	Wheat flour	47	ETB	5	KG	5	2015	17
16325	79	47679	460	64	Rice (imported)	47	ETB	5	KG	1	2016	23
16326	79	47679	460	65	Sorghum	47	ETB	5	KG	1	2016	14
16327	79	47679	460	67	Maize (white)	47	ETB	5	KG	1	2016	10
16328	79	47679	460	81	Milk	47	ETB	15	L	1	2016	30
16329	79	47679	460	84	Wheat	47	ETB	5	KG	4	2010	4
16330	79	47679	460	97	Sugar	47	ETB	5	KG	1	2016	24
16331	79	47679	460	112	Pasta	47	ETB	5	KG	1	2016	22
16332	79	47679	460	383	Livestock (Goat)	47	ETB	61	Head	1	2016	1150
16333	79	47679	460	390	Livestock (Sheep)	47	ETB	61	Head	1	2016	950
16334	79	47679	461	58	Wheat flour	47	ETB	5	KG	5	2015	18
16335	79	47679	461	64	Rice (imported)	47	ETB	5	KG	2	2016	17
16336	79	47679	461	65	Sorghum	47	ETB	5	KG	2	2016	9
16337	79	47679	461	67	Maize (white)	47	ETB	5	KG	2	2016	9
16338	79	47679	461	81	Milk	47	ETB	15	L	2	2016	45
16339	79	47679	461	84	Wheat	47	ETB	5	KG	2	2016	12
16340	79	47679	461	97	Sugar	47	ETB	5	KG	2	2016	20
16341	79	47679	461	112	Pasta	47	ETB	5	KG	10	2015	26
16342	79	47679	461	383	Livestock (Goat)	47	ETB	61	Head	2	2016	466
16343	79	47679	461	390	Livestock (Sheep)	47	ETB	61	Head	2	2016	450
16344	79	47678	462	65	Sorghum	47	ETB	5	KG	5	2015	7.5
16345	79	47678	462	67	Maize (white)	47	ETB	5	KG	5	2015	6.5
16346	79	47678	462	108	Lentils	47	ETB	5	KG	5	2015	30
16347	79	47678	463	65	Sorghum	47	ETB	5	KG	5	2015	8.5
16348	79	47678	463	67	Maize (white)	47	ETB	5	KG	5	2015	7.5
16349	79	47678	463	84	Wheat	47	ETB	5	KG	5	2015	11
16350	79	47678	463	108	Lentils	47	ETB	5	KG	5	2015	30
16351	79	47678	464	65	Sorghum	47	ETB	5	KG	5	2015	8
16352	79	47678	464	67	Maize (white)	47	ETB	5	KG	5	2015	5.59999999999999964
16353	79	47678	464	84	Wheat	47	ETB	5	KG	5	2015	9.59999999999999964
16354	79	47678	464	108	Lentils	47	ETB	5	KG	5	2015	22
16355	79	1229	465	65	Sorghum	47	ETB	5	KG	5	2015	9.19999999999999929
16356	79	1229	465	67	Maize (white)	47	ETB	5	KG	5	2015	5.59999999999999964
16357	79	1229	465	108	Lentils	47	ETB	5	KG	5	2015	19
16358	79	1229	465	212	Peas (green, dry)	47	ETB	5	KG	4	2015	12
16359	79	1229	465	385	Beans (fava, dry)	47	ETB	5	KG	5	2015	12
16360	79	1237	466	65	Sorghum	47	ETB	5	KG	4	2015	6.79999999999999982
16361	79	1237	466	67	Maize (white)	47	ETB	5	KG	4	2015	6.59999999999999964
16362	79	1237	466	84	Wheat	47	ETB	5	KG	4	2015	8.19999999999999929
16363	79	1229	467	65	Sorghum	47	ETB	5	KG	4	2015	5.90000000000000036
16364	79	1229	467	67	Maize (white)	47	ETB	5	KG	4	2015	6
16365	79	1229	467	212	Peas (green, dry)	47	ETB	5	KG	3	2015	8.5
16366	79	1229	467	385	Beans (fava, dry)	47	ETB	5	KG	4	2015	8.5
16367	79	47678	468	65	Sorghum	47	ETB	5	KG	5	2015	8.5
16368	79	47678	468	67	Maize (white)	47	ETB	5	KG	5	2015	5.59999999999999964
16369	79	1229	469	65	Sorghum	47	ETB	5	KG	2	2016	10
16370	79	1229	469	67	Maize (white)	47	ETB	5	KG	2	2016	5.40000000000000036
16371	79	1229	469	108	Lentils	47	ETB	5	KG	5	2015	35
16372	79	1229	469	212	Peas (green, dry)	47	ETB	5	KG	4	2015	13.1999999999999993
16373	79	1229	469	385	Beans (fava, dry)	47	ETB	5	KG	5	2015	14
16374	79	47678	470	65	Sorghum	47	ETB	5	KG	5	2015	9
16375	79	47678	470	67	Maize (white)	47	ETB	5	KG	4	2015	6
16376	79	47678	470	84	Wheat	47	ETB	5	KG	5	2015	11
16377	79	47678	470	108	Lentils	47	ETB	5	KG	5	2015	35
16378	79	47678	471	65	Sorghum	47	ETB	5	KG	5	2015	6.15000000000000036
16379	79	47678	471	67	Maize (white)	47	ETB	5	KG	5	2015	5
16380	79	47678	471	84	Wheat	47	ETB	5	KG	5	2015	9.5
16381	79	1231	472	65	Sorghum	47	ETB	5	KG	2	2016	13
16382	79	1231	472	67	Maize (white)	47	ETB	5	KG	2	2016	6.5
16383	79	1231	472	84	Wheat	47	ETB	5	KG	2	2016	12
16384	79	1231	472	108	Lentils	47	ETB	5	KG	5	2015	35
16385	79	1231	472	383	Livestock (Goat)	47	ETB	61	Head	2	2016	700
16386	79	1231	472	390	Livestock (Sheep)	47	ETB	61	Head	2	2016	750
16387	79	1236	473	67	Maize (white)	47	ETB	5	KG	4	2012	5.04999999999999982
16388	79	1236	474	67	Maize (white)	47	ETB	9	100 KG	5	2015	483
16389	79	1236	474	84	Wheat	47	ETB	9	100 KG	5	2015	1018
16390	79	1229	475	65	Sorghum	47	ETB	5	KG	5	2015	7.99000000000000021
16391	79	1229	475	67	Maize (white)	47	ETB	5	KG	5	2015	4.92999999999999972
16392	79	1229	475	108	Lentils	47	ETB	5	KG	5	2015	31.75
16393	79	1229	475	385	Beans (fava, dry)	47	ETB	5	KG	5	2015	13
16394	79	1236	476	67	Maize (white)	47	ETB	5	KG	2	2016	5.5
16395	79	1236	476	84	Wheat	47	ETB	5	KG	9	2015	12
16396	79	1236	476	87	Sweet potatoes	47	ETB	5	KG	2	2016	5
16397	79	1236	476	382	Inset	47	ETB	5	KG	2	2016	20
16398	79	1236	476	385	Beans (fava, dry)	47	ETB	5	KG	9	2015	14.6999999999999993
16399	79	1236	476	392	Beans (haricot)	47	ETB	5	KG	9	2015	8.5
16400	79	1237	477	65	Sorghum	47	ETB	5	KG	5	2015	6
16401	79	1237	477	67	Maize (white)	47	ETB	5	KG	5	2015	5.20000000000000018
16402	79	1237	477	84	Wheat	47	ETB	5	KG	5	2015	8.09999999999999964
16403	79	1237	477	108	Lentils	47	ETB	5	KG	5	2015	19.8000000000000007
16404	79	1237	477	307	Barley	47	ETB	9	100 KG	5	2015	512
16405	79	1237	477	385	Beans (fava, dry)	47	ETB	5	KG	5	2015	19.8999999999999986
16406	79	1236	478	67	Maize (white)	47	ETB	5	KG	5	2015	5.33000000000000007
16407	79	1236	478	84	Wheat	47	ETB	5	KG	5	2015	11.0500000000000007
16408	79	47678	479	67	Maize (white)	47	ETB	5	KG	2	2016	6.5
16409	79	47678	479	84	Wheat	47	ETB	5	KG	2	2016	10
16410	79	1227	480	65	Sorghum	47	ETB	9	100 KG	2	2016	1016
16411	79	1227	480	67	Maize (white)	47	ETB	9	100 KG	2	2016	459
16412	79	1227	480	84	Wheat	47	ETB	9	100 KG	2	2016	963
16413	79	1227	480	283	Fuel (kerosene)	47	ETB	15	L	2	2016	12.4299999999999997
16414	79	1227	480	284	Fuel (diesel)	47	ETB	15	L	2	2016	14.1600000000000001
16415	79	1227	480	285	Fuel (petrol-gasoline)	47	ETB	15	L	2	2016	16.6099999999999994
16416	79	1227	480	305	Exchange rate	47	ETB	56	USD/LCU	2	2016	21.2274999999999991
16417	79	1227	480	308	Teff	47	ETB	9	100 KG	8	2015	1487
16418	79	47678	481	67	Maize (white)	47	ETB	9	100 KG	5	2015	393
16419	79	47678	481	84	Wheat	47	ETB	9	100 KG	5	2015	885
16420	79	1229	482	67	Maize (white)	47	ETB	9	100 KG	5	2015	410
16421	79	47678	483	67	Maize (white)	47	ETB	9	100 KG	10	2009	350
16422	79	47678	483	84	Wheat	47	ETB	9	100 KG	5	2015	915
16423	79	1229	484	65	Sorghum	47	ETB	9	100 KG	2	2016	1000
16424	79	1229	484	67	Maize (white)	47	ETB	9	100 KG	2	2016	485
16425	79	1229	484	84	Wheat	47	ETB	9	100 KG	2	2016	843
16426	79	1229	485	65	Sorghum	47	ETB	9	100 KG	4	2014	785
16427	79	1229	485	67	Maize (white)	47	ETB	9	100 KG	5	2015	450
16428	79	1229	485	84	Wheat	47	ETB	9	100 KG	4	2014	950
16429	79	47678	486	67	Maize (white)	47	ETB	9	100 KG	5	2015	378
16430	79	47678	486	84	Wheat	47	ETB	9	100 KG	5	2015	1133
16431	79	1237	487	65	Sorghum	47	ETB	9	100 KG	2	2016	955
16432	79	1237	487	67	Maize (white)	47	ETB	9	100 KG	2	2016	523
16433	79	1237	487	84	Wheat	47	ETB	9	100 KG	10	2015	1100
16434	79	47678	488	67	Maize (white)	47	ETB	9	100 KG	2	2016	480
16435	79	47678	488	84	Wheat	47	ETB	9	100 KG	1	2016	853
16436	79	1229	489	84	Wheat	47	ETB	5	KG	5	2015	10.0800000000000001
16437	79	1229	489	108	Lentils	47	ETB	5	KG	5	2015	24.4499999999999993
16438	79	1229	489	307	Barley	47	ETB	9	100 KG	5	2015	903
16439	79	1229	489	385	Beans (fava, dry)	47	ETB	5	KG	5	2015	10
16440	79	1236	490	84	Wheat	47	ETB	5	KG	10	2011	6.90000000000000036
16441	79	47678	491	84	Wheat	47	ETB	9	100 KG	5	2015	933
16442	79	1229	492	65	Sorghum	47	ETB	5	KG	4	2015	7.79999999999999982
16443	79	1229	492	84	Wheat	47	ETB	5	KG	4	2015	10
16444	79	1229	492	385	Beans (fava, dry)	47	ETB	5	KG	4	2015	7.20000000000000018
16445	79	1236	493	65	Sorghum	47	ETB	5	KG	5	2015	6.75
16446	79	1236	493	67	Maize (white)	47	ETB	5	KG	5	2015	6
16447	79	47678	494	84	Wheat	47	ETB	5	KG	5	2015	8.5
16448	79	47678	494	307	Barley	47	ETB	9	100 KG	5	2015	780
16449	79	47678	495	65	Sorghum	47	ETB	5	KG	5	2015	6.5
16450	79	47678	495	67	Maize (white)	47	ETB	5	KG	5	2015	6
16451	79	1229	496	84	Wheat	47	ETB	5	KG	5	2015	7.5
16452	79	1229	496	307	Barley	47	ETB	9	100 KG	5	2015	680
16453	79	1229	496	385	Beans (fava, dry)	47	ETB	5	KG	5	2015	9.80000000000000071
16454	79	1229	497	65	Sorghum	47	ETB	5	KG	5	2015	7.15000000000000036
16455	79	1229	497	84	Wheat	47	ETB	5	KG	5	2015	10.1999999999999993
16456	79	1229	497	108	Lentils	47	ETB	5	KG	5	2015	29.25
16457	79	1229	497	212	Peas (green, dry)	47	ETB	5	KG	4	2015	12.9499999999999993
16458	79	1229	497	385	Beans (fava, dry)	47	ETB	5	KG	5	2015	11
16459	79	1236	498	65	Sorghum	47	ETB	5	KG	2	2016	6.5
16460	79	1236	498	67	Maize (white)	47	ETB	5	KG	2	2016	6
16461	79	47678	499	67	Maize (white)	47	ETB	9	100 KG	2	2016	440
16462	79	47678	500	67	Maize (white)	47	ETB	9	100 KG	5	2015	448
16463	79	47678	500	84	Wheat	47	ETB	9	100 KG	5	2015	905
16464	79	47678	501	67	Maize (white)	47	ETB	9	100 KG	5	2015	468
16465	79	1229	502	67	Maize (white)	47	ETB	9	100 KG	5	2015	403
16466	79	1229	502	84	Wheat	47	ETB	9	100 KG	5	2015	830
16467	79	1229	503	67	Maize (white)	47	ETB	9	100 KG	2	2016	469
16468	79	1229	503	84	Wheat	47	ETB	9	100 KG	2	2016	763
16469	79	1229	504	65	Sorghum	47	ETB	9	100 KG	5	2015	740
16470	79	1229	504	84	Wheat	47	ETB	9	100 KG	5	2015	915
16471	79	1237	505	65	Sorghum	47	ETB	9	100 KG	5	2015	613
16472	79	1232	506	65	Sorghum	47	ETB	5	KG	1	2016	5
16473	79	1232	506	67	Maize (white)	47	ETB	5	KG	1	2016	4.5
16474	79	1232	506	390	Livestock (Sheep)	47	ETB	61	Head	1	2016	1300
16475	79	1237	507	65	Sorghum	47	ETB	5	KG	1	2016	7.15000000000000036
16476	79	1237	507	67	Maize (white)	47	ETB	5	KG	2	2016	5.79999999999999982
16477	79	1237	507	84	Wheat	47	ETB	5	KG	2	2016	6.40000000000000036
16478	79	1237	507	108	Lentils	47	ETB	5	KG	5	2015	22
16479	79	1237	507	307	Barley	47	ETB	9	100 KG	5	2015	731
16480	79	1237	507	385	Beans (fava, dry)	47	ETB	5	KG	5	2015	14.4000000000000004
16481	79	1237	508	65	Sorghum	47	ETB	5	KG	5	2015	7.5
16482	79	1237	508	67	Maize (white)	47	ETB	5	KG	5	2015	6
16483	79	1237	508	84	Wheat	47	ETB	5	KG	5	2015	8.5
16484	79	1237	508	307	Barley	47	ETB	9	100 KG	5	2015	600
16485	79	1237	508	385	Beans (fava, dry)	47	ETB	5	KG	5	2015	14.5
16486	79	1237	509	65	Sorghum	47	ETB	5	KG	5	2015	5.26999999999999957
16487	79	1237	509	67	Maize (white)	47	ETB	5	KG	5	2015	5
16488	79	1237	509	84	Wheat	47	ETB	5	KG	5	2015	8.07000000000000028
16489	79	1237	509	108	Lentils	47	ETB	5	KG	5	2015	22
16490	79	1237	509	307	Barley	47	ETB	9	100 KG	5	2015	612
16491	79	1237	509	385	Beans (fava, dry)	47	ETB	5	KG	5	2015	11
16492	79	1229	510	84	Wheat	47	ETB	5	KG	5	2015	9
16493	79	1229	510	108	Lentils	47	ETB	5	KG	5	2015	33
16494	79	1229	510	212	Peas (green, dry)	47	ETB	5	KG	4	2015	12
16495	79	1229	510	307	Barley	47	ETB	9	100 KG	5	2015	930
16496	79	1229	510	385	Beans (fava, dry)	47	ETB	5	KG	5	2015	13.5
16497	79	1228	511	65	Sorghum	47	ETB	5	KG	4	2015	9
16498	79	47678	512	65	Sorghum	47	ETB	9	100 KG	5	2015	775
16499	79	47678	512	67	Maize (white)	47	ETB	9	100 KG	5	2015	450
16500	79	47678	512	84	Wheat	47	ETB	9	100 KG	5	2015	968
16501	79	1236	513	84	Wheat	47	ETB	5	KG	2	2011	4.79999999999999982
16502	79	47678	514	84	Wheat	47	ETB	5	KG	1	2010	5.20000000000000018
16503	79	47678	515	65	Sorghum	47	ETB	5	KG	5	2012	7
16504	79	47678	515	84	Wheat	47	ETB	5	KG	5	2012	8
16505	79	1236	516	67	Maize (white)	47	ETB	5	KG	5	2015	5.20999999999999996
16506	79	1236	516	84	Wheat	47	ETB	5	KG	5	2015	10.2100000000000009
16507	79	1232	517	67	Maize (white)	47	ETB	5	KG	4	2015	3.79999999999999982
16508	79	1237	856	67	Maize (white)	47	ETB	5	KG	3	2015	5.5
16509	79	1228	1831	64	Rice (imported)	47	ETB	5	KG	10	2015	20
16510	79	1228	1831	67	Maize (white)	47	ETB	5	KG	1	2016	6
16511	79	1228	1831	97	Sugar	47	ETB	5	KG	10	2015	30
16512	79	1228	1831	112	Pasta	47	ETB	5	KG	10	2015	40
16513	79	1228	1831	277	Wage (non-qualified labour)	47	ETB	51	Day	8	2015	70
16514	79	1228	1831	383	Livestock (Goat)	47	ETB	61	Head	1	2016	800
16515	79	1228	1831	390	Livestock (Sheep)	47	ETB	61	Head	1	2016	700
16516	79	1230	1832	67	Maize (white)	47	ETB	5	KG	8	2015	4.5
16517	90	112869	277	56	Maize (local)	42	GMD	28	500 G	11	2012	9.38000000000000078
16518	90	112869	277	65	Sorghum	42	GMD	28	500 G	11	2012	9.61999999999999922
16519	90	112869	277	73	Millet	42	GMD	28	500 G	4	2013	8.7931000000000008
16520	90	112869	277	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2012	11.25
16521	90	112869	277	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2012	12.9299999999999997
16522	90	112869	277	225	Rice (long grain, imported)	42	GMD	28	500 G	4	2013	10
16523	90	112869	277	226	Rice (medium grain, imported)	42	GMD	28	500 G	4	2013	10
16524	90	112869	277	227	Rice (small grain, imported)	42	GMD	28	500 G	4	2013	10
16525	90	112869	278	51	Maize	42	GMD	28	500 G	11	2015	14.0999999999999996
16526	90	112869	278	55	Bread	42	GMD	28	500 G	11	2015	15.9100000000000001
16527	90	112869	278	56	Maize (local)	42	GMD	28	500 G	8	2014	8.96000000000000085
16528	90	112869	278	62	Oil (palm)	42	GMD	25	500 ML	11	2015	50
16529	90	112869	278	65	Sorghum	42	GMD	28	500 G	11	2015	14.0999999999999996
16530	90	112869	278	68	Cassava	42	GMD	28	500 G	11	2015	20
16531	90	112869	278	73	Millet	42	GMD	28	500 G	11	2015	13.0999999999999996
16532	90	112869	278	76	Maize flour	42	GMD	28	500 G	11	2015	26.7899999999999991
16533	90	112869	278	81	Milk	42	GMD	28	500 G	11	2015	19
16534	90	112869	278	87	Sweet potatoes	42	GMD	28	500 G	11	2015	12.1400000000000006
16535	90	112869	278	92	Eggs	42	GMD	33	Unit	11	2015	8
16536	90	112869	278	94	Meat (chicken)	42	GMD	28	500 G	11	2015	147.060000000000002
16537	90	112869	278	96	Oil (vegetable)	42	GMD	25	500 ML	11	2015	68
16538	90	112869	278	97	Sugar	42	GMD	28	500 G	11	2015	13.5700000000000003
16539	90	112869	278	105	Garlic	42	GMD	28	500 G	11	2015	40
16540	90	112869	278	114	Tomatoes	42	GMD	28	500 G	11	2015	15
16541	90	112869	278	117	Rice (paddy, long grain, local)	42	GMD	28	500 G	11	2015	13
16542	90	112869	278	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2015	16
16543	90	112869	278	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2015	13.4399999999999995
16544	90	112869	278	122	Rice (basmati, broken)	42	GMD	28	500 G	11	2015	60
16545	90	112869	278	141	Meat (beef)	42	GMD	28	500 G	11	2015	110
16546	90	112869	278	148	Potatoes (Irish)	42	GMD	28	500 G	11	2015	20
16547	90	112869	278	152	Fish (bonga)	42	GMD	28	500 G	11	2015	7.13999999999999968
16548	90	112869	278	166	Carrots	42	GMD	28	500 G	11	2015	25
16549	90	112869	278	167	Cashew	42	GMD	28	500 G	11	2015	50
16550	90	112869	278	171	Fish (dry)	42	GMD	28	500 G	11	2015	9
16551	90	112869	278	173	Onions	42	GMD	28	500 G	11	2015	17
16552	90	112869	278	181	Cabbage	42	GMD	28	500 G	11	2015	28.5700000000000003
16553	90	112869	278	183	Meat (mutton)	42	GMD	28	500 G	11	2015	120
16554	90	112869	278	185	Salt	42	GMD	28	500 G	11	2015	4.90000000000000036
16555	90	112869	278	209	Coffee (instant)	42	GMD	33	Unit	11	2015	80
16556	90	112869	278	212	Peas (green, dry)	42	GMD	28	500 G	11	2015	50
16557	90	112869	278	225	Rice (long grain, imported)	42	GMD	28	500 G	11	2015	14
16558	90	112869	278	226	Rice (medium grain, imported)	42	GMD	28	500 G	11	2015	12.5
16559	90	112869	278	227	Rice (small grain, imported)	42	GMD	28	500 G	11	2015	11.5
16560	90	112869	278	229	Apples (red)	42	GMD	28	500 G	11	2015	34.6199999999999974
16561	90	112869	278	238	Milk (powder)	42	GMD	33	Unit	11	2015	130
16562	90	112869	278	241	Oranges (big size)	42	GMD	28	500 G	11	2015	12
16563	90	112869	278	245	Oil (groundnut)	42	GMD	25	500 ML	11	2015	36
16564	90	112869	278	254	Bananas	42	GMD	28	500 G	11	2015	12.5
16565	90	112869	278	262	Beans (dry)	42	GMD	28	500 G	11	2015	15
16566	90	112869	278	281	Tea	42	GMD	33	Unit	11	2015	50
16567	90	112869	278	283	Fuel (kerosene)	42	GMD	25	500 ML	11	2015	22.5
16568	90	112869	278	284	Fuel (diesel)	42	GMD	25	500 ML	11	2015	28.5
16569	90	112869	278	285	Fuel (petrol-gasoline)	42	GMD	25	500 ML	11	2015	29
16570	90	1285	279	51	Maize	42	GMD	28	500 G	11	2015	7.20000000000000018
16571	90	1285	279	55	Bread	42	GMD	28	500 G	11	2015	15.5600000000000005
16572	90	1285	279	56	Maize (local)	42	GMD	28	500 G	8	2014	9.05000000000000071
16573	90	1285	279	62	Oil (palm)	42	GMD	25	500 ML	11	2015	31
16574	90	1285	279	65	Sorghum	42	GMD	28	500 G	6	2014	8.57000000000000028
16575	90	1285	279	68	Cassava	42	GMD	28	500 G	11	2015	9
16576	90	1285	279	73	Millet	42	GMD	28	500 G	11	2015	6.42999999999999972
16577	90	1285	279	81	Milk	42	GMD	28	500 G	11	2015	9
16578	90	1285	279	87	Sweet potatoes	42	GMD	28	500 G	11	2015	8.57000000000000028
16579	90	1285	279	92	Eggs	42	GMD	33	Unit	11	2015	7
16580	90	1285	279	96	Oil (vegetable)	42	GMD	25	500 ML	11	2015	37.5
16581	90	1285	279	97	Sugar	42	GMD	28	500 G	11	2015	14.6699999999999999
16582	90	1285	279	105	Garlic	42	GMD	28	500 G	11	2015	60
16583	90	1285	279	114	Tomatoes	42	GMD	28	500 G	11	2015	12.5
16584	90	1285	279	117	Rice (paddy, long grain, local)	42	GMD	28	500 G	11	2015	9.5
16585	90	1285	279	118	Groundnuts (unshelled)	42	GMD	28	500 G	5	2014	10
16586	90	1285	279	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2015	12.1199999999999992
16587	90	1285	279	141	Meat (beef)	42	GMD	28	500 G	11	2015	55
16588	90	1285	279	148	Potatoes (Irish)	42	GMD	28	500 G	11	2015	21
16589	90	1285	279	152	Fish (bonga)	42	GMD	28	500 G	11	2015	10.9100000000000001
16590	90	1285	279	166	Carrots	42	GMD	28	500 G	11	2015	25
16591	90	1285	279	171	Fish (dry)	42	GMD	28	500 G	11	2015	12.5
16592	90	1285	279	173	Onions	42	GMD	28	500 G	11	2015	19
16593	90	1285	279	181	Cabbage	42	GMD	28	500 G	11	2015	25
16594	90	1285	279	183	Meat (mutton)	42	GMD	28	500 G	11	2015	60
16595	90	1285	279	185	Salt	42	GMD	28	500 G	11	2015	5.70999999999999996
16596	90	1285	279	212	Peas (green, dry)	42	GMD	28	500 G	11	2015	50
16597	90	1285	279	225	Rice (long grain, imported)	42	GMD	28	500 G	11	2015	14
16598	90	1285	279	226	Rice (medium grain, imported)	42	GMD	28	500 G	11	2015	12.5
16599	90	1285	279	227	Rice (small grain, imported)	42	GMD	28	500 G	11	2015	12.5
16600	90	1285	279	229	Apples (red)	42	GMD	28	500 G	11	2015	66.6700000000000017
16601	90	1285	279	238	Milk (powder)	42	GMD	33	Unit	11	2015	140
16602	90	1285	279	254	Bananas	42	GMD	28	500 G	11	2015	12.5
16603	90	1285	279	262	Beans (dry)	42	GMD	28	500 G	11	2015	15
16604	90	1285	279	281	Tea	42	GMD	33	Unit	11	2015	40
16605	90	1285	279	284	Fuel (diesel)	42	GMD	25	500 ML	11	2015	28
16606	90	1285	279	285	Fuel (petrol-gasoline)	42	GMD	25	500 ML	11	2015	29
16607	90	1289	280	51	Maize	42	GMD	28	500 G	11	2015	7.75999999999999979
16608	90	1289	280	55	Bread	42	GMD	28	500 G	11	2015	15.5600000000000005
16609	90	1289	280	56	Maize (local)	42	GMD	28	500 G	8	2014	8.57000000000000028
16610	90	1289	280	62	Oil (palm)	42	GMD	25	500 ML	11	2015	32.5
16611	90	1289	280	65	Sorghum	42	GMD	28	500 G	11	2015	6.82000000000000028
16612	90	1289	280	68	Cassava	42	GMD	28	500 G	11	2015	10
16613	90	1289	280	73	Millet	42	GMD	28	500 G	11	2015	6.82000000000000028
16614	90	1289	280	76	Maize flour	42	GMD	28	500 G	11	2015	12.8599999999999994
16615	90	1289	280	81	Milk	42	GMD	28	500 G	11	2015	8
16616	90	1289	280	87	Sweet potatoes	42	GMD	28	500 G	11	2015	8.24000000000000021
16617	90	1289	280	92	Eggs	42	GMD	33	Unit	11	2015	5
16618	90	1289	280	94	Meat (chicken)	42	GMD	28	500 G	11	2015	60.8699999999999974
16619	90	1289	280	96	Oil (vegetable)	42	GMD	25	500 ML	11	2015	32.5
16620	90	1289	280	97	Sugar	42	GMD	28	500 G	11	2015	16
16621	90	1289	280	105	Garlic	42	GMD	28	500 G	11	2015	66.6700000000000017
16622	90	1289	280	114	Tomatoes	42	GMD	28	500 G	11	2015	12.5
16623	90	1289	280	117	Rice (paddy, long grain, local)	42	GMD	28	500 G	11	2015	9.5
16624	90	1289	280	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2015	9.25999999999999979
16625	90	1289	280	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2015	12.1199999999999992
16626	90	1289	280	141	Meat (beef)	42	GMD	28	500 G	11	2015	50
16627	90	1289	280	148	Potatoes (Irish)	42	GMD	28	500 G	11	2015	22.5
16628	90	1289	280	152	Fish (bonga)	42	GMD	28	500 G	11	2015	11.1099999999999994
16629	90	1289	280	166	Carrots	42	GMD	28	500 G	11	2015	21.4299999999999997
16630	90	1289	280	167	Cashew	42	GMD	28	500 G	11	2015	25
16631	90	1289	280	171	Fish (dry)	42	GMD	28	500 G	11	2015	13.1300000000000008
16632	90	1289	280	173	Onions	42	GMD	28	500 G	11	2015	19.5
16633	90	1289	280	181	Cabbage	42	GMD	28	500 G	11	2015	38.4600000000000009
16634	90	1289	280	183	Meat (mutton)	42	GMD	28	500 G	11	2015	55
16635	90	1289	280	185	Salt	42	GMD	28	500 G	11	2015	6.66999999999999993
16636	90	1289	280	212	Peas (green, dry)	42	GMD	28	500 G	11	2015	81.25
16637	90	1289	280	225	Rice (long grain, imported)	42	GMD	28	500 G	11	2015	14
16638	90	1289	280	226	Rice (medium grain, imported)	42	GMD	28	500 G	11	2015	12.5
16639	90	1289	280	227	Rice (small grain, imported)	42	GMD	28	500 G	11	2015	12.5
16640	90	1289	280	229	Apples (red)	42	GMD	28	500 G	11	2015	50
16641	90	1289	280	238	Milk (powder)	42	GMD	33	Unit	11	2015	140
16642	90	1289	280	241	Oranges (big size)	42	GMD	28	500 G	11	2015	11
16643	90	1289	280	245	Oil (groundnut)	42	GMD	25	500 ML	11	2015	27.5
16644	90	1289	280	254	Bananas	42	GMD	28	500 G	11	2015	12.5
16645	90	1289	280	262	Beans (dry)	42	GMD	28	500 G	11	2015	15
16646	90	1289	280	281	Tea	42	GMD	33	Unit	11	2015	50
16647	90	1289	280	283	Fuel (kerosene)	42	GMD	25	500 ML	11	2015	20
16648	90	1289	280	284	Fuel (diesel)	42	GMD	25	500 ML	11	2015	28.5
16649	90	1289	280	285	Fuel (petrol-gasoline)	42	GMD	25	500 ML	11	2015	30
16650	90	1290	281	51	Maize	42	GMD	28	500 G	11	2015	14.2899999999999991
16651	90	1290	281	55	Bread	42	GMD	28	500 G	11	2015	14
16652	90	1290	281	56	Maize (local)	42	GMD	28	500 G	8	2014	9.51999999999999957
16653	90	1290	281	62	Oil (palm)	42	GMD	25	500 ML	11	2015	32.5
16654	90	1290	281	65	Sorghum	42	GMD	28	500 G	11	2015	14.2899999999999991
16655	90	1290	281	68	Cassava	42	GMD	28	500 G	11	2015	10
16656	90	1290	281	73	Millet	42	GMD	28	500 G	11	2015	13.6400000000000006
16657	90	1290	281	76	Maize flour	42	GMD	28	500 G	11	2015	25
16658	90	1290	281	81	Milk	42	GMD	28	500 G	11	2015	13
16659	90	1290	281	87	Sweet potatoes	42	GMD	28	500 G	11	2015	8.33000000000000007
16660	90	1290	281	92	Eggs	42	GMD	33	Unit	11	2015	6
16661	90	1290	281	94	Meat (chicken)	42	GMD	28	500 G	11	2015	129.409999999999997
16662	90	1290	281	96	Oil (vegetable)	42	GMD	25	500 ML	11	2015	32.5
16663	90	1290	281	97	Sugar	42	GMD	28	500 G	11	2015	13.5700000000000003
16664	90	1290	281	105	Garlic	42	GMD	28	500 G	11	2015	40
16665	90	1290	281	114	Tomatoes	42	GMD	28	500 G	11	2015	12.5
16666	90	1290	281	117	Rice (paddy, long grain, local)	42	GMD	28	500 G	11	2015	13
16667	90	1290	281	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2015	15.3300000000000001
16668	90	1290	281	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2015	12.1199999999999992
16669	90	1290	281	122	Rice (basmati, broken)	42	GMD	28	500 G	11	2015	60
16670	90	1290	281	141	Meat (beef)	42	GMD	28	500 G	11	2015	80
16671	90	1290	281	148	Potatoes (Irish)	42	GMD	28	500 G	11	2015	20
16672	90	1290	281	152	Fish (bonga)	42	GMD	28	500 G	11	2015	6.66999999999999993
16673	90	1290	281	166	Carrots	42	GMD	28	500 G	11	2015	33.3299999999999983
16674	90	1290	281	167	Cashew	42	GMD	28	500 G	11	2015	25
16675	90	1290	281	171	Fish (dry)	42	GMD	28	500 G	11	2015	9
16676	90	1290	281	173	Onions	42	GMD	28	500 G	11	2015	17.5
16677	90	1290	281	181	Cabbage	42	GMD	28	500 G	11	2015	18.1799999999999997
16678	90	1290	281	183	Meat (mutton)	42	GMD	28	500 G	11	2015	85
16679	90	1290	281	185	Salt	42	GMD	28	500 G	11	2015	5.83000000000000007
16680	90	1290	281	209	Coffee (instant)	42	GMD	33	Unit	11	2015	80
16681	90	1290	281	212	Peas (green, dry)	42	GMD	28	500 G	11	2015	50
16682	90	1290	281	225	Rice (long grain, imported)	42	GMD	28	500 G	11	2015	12.7799999999999994
16683	90	1290	281	226	Rice (medium grain, imported)	42	GMD	28	500 G	11	2015	12
16684	90	1290	281	227	Rice (small grain, imported)	42	GMD	28	500 G	11	2015	11.5
16685	90	1290	281	229	Apples (red)	42	GMD	28	500 G	11	2015	46.1499999999999986
16686	90	1290	281	238	Milk (powder)	42	GMD	33	Unit	11	2015	130
16687	90	1290	281	241	Oranges (big size)	42	GMD	28	500 G	11	2015	11
16688	90	1290	281	254	Bananas	42	GMD	28	500 G	11	2015	12.5
16689	90	1290	281	262	Beans (dry)	42	GMD	28	500 G	11	2015	13.6400000000000006
16690	90	1290	281	281	Tea	42	GMD	33	Unit	11	2015	45
16691	90	1290	281	283	Fuel (kerosene)	42	GMD	25	500 ML	11	2015	20
16692	90	1290	281	284	Fuel (diesel)	42	GMD	25	500 ML	11	2015	28
16693	90	1290	281	285	Fuel (petrol-gasoline)	42	GMD	25	500 ML	11	2015	29
16694	90	1288	282	56	Maize (local)	42	GMD	28	500 G	11	2012	7.88999999999999968
16695	90	1288	282	65	Sorghum	42	GMD	28	500 G	11	2012	7.80999999999999961
16696	90	1288	282	73	Millet	42	GMD	28	500 G	4	2013	7.14290000000000003
16697	90	1288	282	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2012	10
16698	90	1288	282	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2012	10.7100000000000009
16699	90	1288	282	225	Rice (long grain, imported)	42	GMD	28	500 G	4	2013	10.4347999999999992
16700	90	1288	282	226	Rice (medium grain, imported)	42	GMD	28	500 G	4	2013	10.5263000000000009
16701	90	1288	282	227	Rice (small grain, imported)	42	GMD	28	500 G	4	2013	10.5263000000000009
16702	90	1288	283	51	Maize	42	GMD	28	500 G	11	2015	7.32000000000000028
16703	90	1288	283	55	Bread	42	GMD	28	500 G	11	2015	15.2200000000000006
16704	90	1288	283	56	Maize (local)	42	GMD	28	500 G	8	2014	9.25
16705	90	1288	283	62	Oil (palm)	42	GMD	25	500 ML	11	2015	32.5
16706	90	1288	283	65	Sorghum	42	GMD	28	500 G	11	2015	6.82000000000000028
16707	90	1288	283	68	Cassava	42	GMD	28	500 G	11	2015	10
16708	90	1288	283	73	Millet	42	GMD	28	500 G	11	2015	6.66999999999999993
16709	90	1288	283	76	Maize flour	42	GMD	28	500 G	11	2015	12.5
16710	90	1288	283	81	Milk	42	GMD	28	500 G	11	2015	8.5
16711	90	1288	283	87	Sweet potatoes	42	GMD	28	500 G	11	2015	8
16712	90	1288	283	92	Eggs	42	GMD	33	Unit	11	2015	5
16713	90	1288	283	94	Meat (chicken)	42	GMD	28	500 G	11	2015	38.4600000000000009
16714	90	1288	283	96	Oil (vegetable)	42	GMD	25	500 ML	11	2015	35
16715	90	1288	283	97	Sugar	42	GMD	28	500 G	11	2015	17.1400000000000006
16716	90	1288	283	105	Garlic	42	GMD	28	500 G	11	2015	66.6700000000000017
16717	90	1288	283	114	Tomatoes	42	GMD	28	500 G	11	2015	12.5
16718	90	1288	283	117	Rice (paddy, long grain, local)	42	GMD	28	500 G	11	2015	8.5
16719	90	1288	283	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2015	10.7100000000000009
16720	90	1288	283	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2015	12.5
16721	90	1288	283	141	Meat (beef)	42	GMD	28	500 G	11	2015	50
16722	90	1288	283	148	Potatoes (Irish)	42	GMD	28	500 G	11	2015	20
16723	90	1288	283	152	Fish (bonga)	42	GMD	28	500 G	11	2015	12.2200000000000006
16724	90	1288	283	166	Carrots	42	GMD	28	500 G	11	2015	18.75
16725	90	1288	283	171	Fish (dry)	42	GMD	28	500 G	11	2015	12.5
16726	90	1288	283	173	Onions	42	GMD	28	500 G	11	2015	18
16727	90	1288	283	181	Cabbage	42	GMD	28	500 G	11	2015	15.6300000000000008
16728	90	1288	283	183	Meat (mutton)	42	GMD	28	500 G	11	2015	55
16729	90	1288	283	185	Salt	42	GMD	28	500 G	11	2015	3.75
16730	90	1288	283	212	Peas (green, dry)	42	GMD	28	500 G	11	2015	40
16731	90	1288	283	225	Rice (long grain, imported)	42	GMD	28	500 G	11	2015	12.5
16732	90	1288	283	226	Rice (medium grain, imported)	42	GMD	28	500 G	11	2015	12
16733	90	1288	283	227	Rice (small grain, imported)	42	GMD	28	500 G	11	2015	12
16734	90	1288	283	229	Apples (red)	42	GMD	28	500 G	11	2015	46.1499999999999986
16735	90	1288	283	238	Milk (powder)	42	GMD	33	Unit	11	2015	135
16736	90	1288	283	254	Bananas	42	GMD	28	500 G	11	2015	15
16737	90	1288	283	262	Beans (dry)	42	GMD	28	500 G	11	2015	15
16738	90	1288	283	281	Tea	42	GMD	33	Unit	11	2015	42
16739	90	1288	283	284	Fuel (diesel)	42	GMD	25	500 ML	11	2015	28
16740	90	1288	283	285	Fuel (petrol-gasoline)	42	GMD	25	500 ML	11	2015	29.2600000000000016
16741	90	1285	284	51	Maize	42	GMD	28	500 G	11	2015	7.5
16742	90	1285	284	55	Bread	42	GMD	28	500 G	11	2015	15.5600000000000005
16743	90	1285	284	56	Maize (local)	42	GMD	28	500 G	8	2014	9.25
16744	90	1285	284	62	Oil (palm)	42	GMD	25	500 ML	11	2015	32.5
16745	90	1285	284	65	Sorghum	42	GMD	28	500 G	11	2015	7.32000000000000028
16746	90	1285	284	68	Cassava	42	GMD	28	500 G	11	2015	10
16747	90	1285	284	73	Millet	42	GMD	28	500 G	11	2015	6.82000000000000028
16748	90	1285	284	76	Maize flour	42	GMD	28	500 G	11	2015	12.0399999999999991
16749	90	1285	284	81	Milk	42	GMD	28	500 G	11	2015	8.5
16750	90	1285	284	87	Sweet potatoes	42	GMD	28	500 G	11	2015	8.33000000000000007
16751	90	1285	284	92	Eggs	42	GMD	33	Unit	11	2015	5
16752	90	1285	284	94	Meat (chicken)	42	GMD	28	500 G	11	2015	40
16753	90	1285	284	96	Oil (vegetable)	42	GMD	25	500 ML	11	2015	32.5
16754	90	1285	284	97	Sugar	42	GMD	28	500 G	11	2015	16.6700000000000017
16755	90	1285	284	105	Garlic	42	GMD	28	500 G	11	2015	50
16756	90	1285	284	114	Tomatoes	42	GMD	28	500 G	11	2015	12.5
16757	90	1285	284	117	Rice (paddy, long grain, local)	42	GMD	28	500 G	11	2015	8
16758	90	1285	284	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2015	10
16759	90	1285	284	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2015	12.1199999999999992
16760	90	1285	284	141	Meat (beef)	42	GMD	28	500 G	11	2015	45
16761	90	1285	284	148	Potatoes (Irish)	42	GMD	28	500 G	11	2015	20
16762	90	1285	284	152	Fish (bonga)	42	GMD	28	500 G	11	2015	12.2200000000000006
16763	90	1285	284	166	Carrots	42	GMD	28	500 G	11	2015	16.6700000000000017
16764	90	1285	284	167	Cashew	42	GMD	28	500 G	11	2015	25
16765	90	1285	284	171	Fish (dry)	42	GMD	28	500 G	11	2015	11.5399999999999991
16766	90	1285	284	173	Onions	42	GMD	28	500 G	11	2015	18
16767	90	1285	284	181	Cabbage	42	GMD	28	500 G	11	2015	17.8599999999999994
16768	90	1285	284	183	Meat (mutton)	42	GMD	28	500 G	11	2015	50
16769	90	1285	284	185	Salt	42	GMD	28	500 G	11	2015	3.33000000000000007
16770	90	1285	284	225	Rice (long grain, imported)	42	GMD	28	500 G	11	2015	12.5
16771	90	1285	284	226	Rice (medium grain, imported)	42	GMD	28	500 G	11	2015	12
16772	90	1285	284	227	Rice (small grain, imported)	42	GMD	28	500 G	11	2015	12
16773	90	1285	284	238	Milk (powder)	42	GMD	33	Unit	11	2015	140
16774	90	1285	284	241	Oranges (big size)	42	GMD	28	500 G	6	2014	9.41000000000000014
16775	90	1285	284	254	Bananas	42	GMD	28	500 G	11	2015	12.5
16776	90	1285	284	262	Beans (dry)	42	GMD	28	500 G	11	2015	15
16777	90	1285	284	281	Tea	42	GMD	33	Unit	11	2015	42
16778	90	1285	284	283	Fuel (kerosene)	42	GMD	25	500 ML	11	2015	25.2800000000000011
16779	90	1285	284	284	Fuel (diesel)	42	GMD	25	500 ML	11	2015	28
16780	90	1285	284	285	Fuel (petrol-gasoline)	42	GMD	25	500 ML	11	2015	29
16781	90	1288	285	118	Groundnuts (unshelled)	42	GMD	28	500 G	3	2012	5
16782	90	1288	285	119	Groundnuts (shelled)	42	GMD	28	500 G	3	2012	8.33329999999999949
16783	90	1288	285	225	Rice (long grain, imported)	42	GMD	28	500 G	2	2011	9
16784	90	1288	285	226	Rice (medium grain, imported)	42	GMD	28	500 G	4	2013	10
16785	90	1288	285	227	Rice (small grain, imported)	42	GMD	28	500 G	4	2013	10
16786	90	1288	286	56	Maize (local)	42	GMD	28	500 G	11	2012	6.42999999999999972
16787	90	1288	286	65	Sorghum	42	GMD	28	500 G	7	2012	7.13999999999999968
16788	90	1288	286	73	Millet	42	GMD	28	500 G	4	2013	5
16789	90	1288	286	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2012	8.15000000000000036
16790	90	1288	286	119	Groundnuts (shelled)	42	GMD	28	500 G	10	2012	9.08999999999999986
16791	90	1288	286	225	Rice (long grain, imported)	42	GMD	28	500 G	7	2012	10
16792	90	1288	286	226	Rice (medium grain, imported)	42	GMD	28	500 G	4	2013	10
16793	90	1288	286	227	Rice (small grain, imported)	42	GMD	28	500 G	4	2013	10
16794	90	1285	287	117	Rice (paddy, long grain, local)	42	GMD	28	500 G	4	2013	6.81820000000000004
16795	90	1285	287	118	Groundnuts (unshelled)	42	GMD	28	500 G	9	2012	9
16796	90	1285	287	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2012	10.9100000000000001
16797	90	1285	287	225	Rice (long grain, imported)	42	GMD	28	500 G	8	2012	9.41000000000000014
16798	90	1285	287	226	Rice (medium grain, imported)	42	GMD	28	500 G	4	2013	10
16799	90	1285	287	227	Rice (small grain, imported)	42	GMD	28	500 G	4	2013	10
16800	90	1287	288	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2012	9.08999999999999986
16801	90	1287	288	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2012	10
16802	90	1287	288	225	Rice (long grain, imported)	42	GMD	28	500 G	3	2011	8
16803	90	1287	288	226	Rice (medium grain, imported)	42	GMD	28	500 G	3	2013	10
16804	90	1287	288	227	Rice (small grain, imported)	42	GMD	28	500 G	3	2013	10.5263000000000009
16805	90	1288	289	56	Maize (local)	42	GMD	28	500 G	11	2012	7.13999999999999968
16806	90	1288	289	65	Sorghum	42	GMD	28	500 G	10	2012	7.92999999999999972
16807	90	1288	289	73	Millet	42	GMD	28	500 G	4	2013	9.0517000000000003
16808	90	1288	289	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2012	10.2300000000000004
16809	90	1288	289	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2012	13.8900000000000006
16810	90	1288	289	225	Rice (long grain, imported)	42	GMD	28	500 G	4	2013	10
16811	90	1288	289	226	Rice (medium grain, imported)	42	GMD	28	500 G	4	2013	10.5263000000000009
16812	90	1288	289	227	Rice (small grain, imported)	42	GMD	28	500 G	4	2013	10.5263000000000009
16813	90	112869	290	56	Maize (local)	42	GMD	28	500 G	11	2012	7.13999999999999968
16814	90	112869	290	65	Sorghum	42	GMD	28	500 G	10	2012	8.33000000000000007
16815	90	112869	290	73	Millet	42	GMD	28	500 G	4	2013	9.375
16816	90	112869	290	117	Rice (paddy, long grain, local)	42	GMD	28	500 G	4	2013	9
16817	90	112869	290	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2012	11.25
16818	90	112869	290	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2012	12.2699999999999996
16819	90	112869	290	225	Rice (long grain, imported)	42	GMD	28	500 G	4	2013	10.5
16820	90	112869	290	226	Rice (medium grain, imported)	42	GMD	28	500 G	4	2013	10
16821	90	112869	290	227	Rice (small grain, imported)	42	GMD	28	500 G	4	2013	10
16822	90	112869	912	51	Maize	42	GMD	28	500 G	11	2015	17.8599999999999994
16823	90	112869	912	55	Bread	42	GMD	28	500 G	11	2015	15.9100000000000001
16824	90	112869	912	56	Maize (local)	42	GMD	28	500 G	8	2014	8.72000000000000064
16825	90	112869	912	62	Oil (palm)	42	GMD	25	500 ML	11	2015	50
16826	90	112869	912	65	Sorghum	42	GMD	28	500 G	11	2015	11.9000000000000004
16827	90	112869	912	68	Cassava	42	GMD	28	500 G	11	2015	13
16828	90	112869	912	73	Millet	42	GMD	28	500 G	11	2015	15.6300000000000008
16829	90	112869	912	76	Maize flour	42	GMD	28	500 G	11	2015	26.7899999999999991
16830	90	112869	912	81	Milk	42	GMD	28	500 G	11	2015	18
16831	90	112869	912	87	Sweet potatoes	42	GMD	28	500 G	11	2015	10
16832	90	112869	912	92	Eggs	42	GMD	33	Unit	11	2015	7
16833	90	112869	912	94	Meat (chicken)	42	GMD	28	500 G	8	2014	44.6499999999999986
16834	90	112869	912	96	Oil (vegetable)	42	GMD	25	500 ML	11	2015	35
16835	90	112869	912	97	Sugar	42	GMD	28	500 G	11	2015	13.5700000000000003
16836	90	112869	912	105	Garlic	42	GMD	28	500 G	11	2015	40
16837	90	112869	912	114	Tomatoes	42	GMD	28	500 G	11	2015	12.5
16838	90	112869	912	117	Rice (paddy, long grain, local)	42	GMD	28	500 G	11	2015	13.5
16839	90	112869	912	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2015	16
16840	90	112869	912	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2015	16
16841	90	112869	912	122	Rice (basmati, broken)	42	GMD	28	500 G	11	2015	62.5
16842	90	112869	912	141	Meat (beef)	42	GMD	28	500 G	11	2015	110
16843	90	112869	912	148	Potatoes (Irish)	42	GMD	28	500 G	11	2015	20
16844	90	112869	912	152	Fish (bonga)	42	GMD	28	500 G	11	2015	8.57000000000000028
16845	90	112869	912	166	Carrots	42	GMD	28	500 G	11	2015	22.2199999999999989
16846	90	112869	912	167	Cashew	42	GMD	28	500 G	11	2015	35
16847	90	112869	912	171	Fish (dry)	42	GMD	28	500 G	11	2015	9.38000000000000078
16848	90	112869	912	173	Onions	42	GMD	28	500 G	11	2015	17
16849	90	112869	912	181	Cabbage	42	GMD	28	500 G	11	2015	33.3299999999999983
16850	90	112869	912	183	Meat (mutton)	42	GMD	28	500 G	11	2015	115
16851	90	112869	912	185	Salt	42	GMD	28	500 G	11	2015	5.62999999999999989
16852	90	112869	912	209	Coffee (instant)	42	GMD	33	Unit	11	2015	80
16853	90	112869	912	212	Peas (green, dry)	42	GMD	28	500 G	11	2015	40
16854	90	112869	912	225	Rice (long grain, imported)	42	GMD	28	500 G	11	2015	12.1099999999999994
16855	90	112869	912	226	Rice (medium grain, imported)	42	GMD	28	500 G	11	2015	12.5
16856	90	112869	912	227	Rice (small grain, imported)	42	GMD	28	500 G	11	2015	11.5
16857	90	112869	912	229	Apples (red)	42	GMD	28	500 G	11	2015	46.1499999999999986
16858	90	112869	912	238	Milk (powder)	42	GMD	33	Unit	11	2015	130
16859	90	112869	912	241	Oranges (big size)	42	GMD	28	500 G	11	2015	12
16860	90	112869	912	254	Bananas	42	GMD	28	500 G	11	2015	12.5
16861	90	112869	912	262	Beans (dry)	42	GMD	28	500 G	11	2015	15
16862	90	112869	912	281	Tea	42	GMD	33	Unit	11	2015	50
16863	90	112869	912	283	Fuel (kerosene)	42	GMD	25	500 ML	11	2015	22.5
16864	90	112869	912	284	Fuel (diesel)	42	GMD	25	500 ML	11	2015	28
16865	90	112869	912	285	Fuel (petrol-gasoline)	42	GMD	25	500 ML	11	2015	29
16866	90	1290	913	56	Maize (local)	42	GMD	28	500 G	6	2011	9
16867	90	1290	913	65	Sorghum	42	GMD	28	500 G	9	2010	8.33329999999999949
16868	90	1290	913	73	Millet	42	GMD	28	500 G	9	2011	7.5
16869	90	1290	913	118	Groundnuts (unshelled)	42	GMD	28	500 G	9	2012	12.5
16870	90	1290	913	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2012	10
16871	90	1290	913	225	Rice (long grain, imported)	42	GMD	28	500 G	3	2013	10
16872	90	1290	913	226	Rice (medium grain, imported)	42	GMD	28	500 G	4	2013	10
16873	90	1290	913	227	Rice (small grain, imported)	42	GMD	28	500 G	4	2013	10
16874	90	1287	914	51	Maize	42	GMD	28	500 G	11	2015	7.75999999999999979
16875	90	1287	914	55	Bread	42	GMD	28	500 G	11	2015	14
16876	90	1287	914	56	Maize (local)	42	GMD	28	500 G	8	2014	9.28999999999999915
16877	90	1287	914	62	Oil (palm)	42	GMD	25	500 ML	11	2015	32.5
16878	90	1287	914	65	Sorghum	42	GMD	28	500 G	11	2015	7.20000000000000018
16879	90	1287	914	68	Cassava	42	GMD	28	500 G	11	2015	10
16880	90	1287	914	73	Millet	42	GMD	28	500 G	11	2015	7.75999999999999979
16881	90	1287	914	81	Milk	42	GMD	28	500 G	11	2015	8.5
16882	90	1287	914	87	Sweet potatoes	42	GMD	28	500 G	11	2015	9.38000000000000078
16883	90	1287	914	92	Eggs	42	GMD	33	Unit	11	2015	7
16884	90	1287	914	94	Meat (chicken)	42	GMD	28	500 G	8	2014	50
16885	90	1287	914	96	Oil (vegetable)	42	GMD	25	500 ML	11	2015	37.25
16886	90	1287	914	97	Sugar	42	GMD	28	500 G	11	2015	13.5099999999999998
16887	90	1287	914	105	Garlic	42	GMD	28	500 G	11	2015	50
16888	90	1287	914	114	Tomatoes	42	GMD	28	500 G	11	2015	12.5
16889	90	1287	914	117	Rice (paddy, long grain, local)	42	GMD	28	500 G	11	2015	9.5
16890	90	1287	914	118	Groundnuts (unshelled)	42	GMD	28	500 G	6	2014	10
16891	90	1287	914	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2015	12.5
16892	90	1287	914	141	Meat (beef)	42	GMD	28	500 G	11	2015	50
16893	90	1287	914	148	Potatoes (Irish)	42	GMD	28	500 G	11	2015	21
16894	90	1287	914	152	Fish (bonga)	42	GMD	28	500 G	11	2015	8.33000000000000007
16895	90	1287	914	166	Carrots	42	GMD	28	500 G	11	2015	30
16896	90	1287	914	171	Fish (dry)	42	GMD	28	500 G	11	2015	10.7100000000000009
16897	90	1287	914	173	Onions	42	GMD	28	500 G	11	2015	20
16898	90	1287	914	181	Cabbage	42	GMD	28	500 G	11	2015	20
16899	90	1287	914	183	Meat (mutton)	42	GMD	28	500 G	11	2015	55
16900	90	1287	914	185	Salt	42	GMD	28	500 G	11	2015	5
16901	90	1287	914	209	Coffee (instant)	42	GMD	33	Unit	11	2015	80
16902	90	1287	914	212	Peas (green, dry)	42	GMD	28	500 G	11	2015	50
16903	90	1287	914	225	Rice (long grain, imported)	42	GMD	28	500 G	11	2015	13
16904	90	1287	914	226	Rice (medium grain, imported)	42	GMD	28	500 G	11	2015	12.5
16905	90	1287	914	227	Rice (small grain, imported)	42	GMD	28	500 G	11	2015	12
16906	90	1287	914	229	Apples (red)	42	GMD	28	500 G	11	2015	60
16907	90	1287	914	238	Milk (powder)	42	GMD	33	Unit	11	2015	135
16908	90	1287	914	254	Bananas	42	GMD	28	500 G	11	2015	12.5
16909	90	1287	914	262	Beans (dry)	42	GMD	28	500 G	11	2015	14
16910	90	1287	914	281	Tea	42	GMD	33	Unit	11	2015	40
16911	90	1287	914	283	Fuel (kerosene)	42	GMD	25	500 ML	11	2015	22.5
16912	90	1287	914	284	Fuel (diesel)	42	GMD	25	500 ML	11	2015	28
16913	90	1287	914	285	Fuel (petrol-gasoline)	42	GMD	25	500 ML	11	2015	29
16914	90	1285	915	56	Maize (local)	42	GMD	28	500 G	11	2012	7.80999999999999961
16915	90	1285	915	65	Sorghum	42	GMD	28	500 G	7	2012	7.80999999999999961
16916	90	1285	915	73	Millet	42	GMD	28	500 G	3	2013	7.5
16917	90	1285	915	117	Rice (paddy, long grain, local)	42	GMD	28	500 G	4	2013	10.625
16918	90	1285	915	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2012	9.38000000000000078
16919	90	1285	915	119	Groundnuts (shelled)	42	GMD	28	500 G	10	2012	10.7100000000000009
16920	90	1285	915	225	Rice (long grain, imported)	42	GMD	28	500 G	4	2013	10.9091000000000005
16921	90	1285	915	226	Rice (medium grain, imported)	42	GMD	28	500 G	3	2013	10
16922	90	1285	915	227	Rice (small grain, imported)	42	GMD	28	500 G	4	2013	10
16923	90	1285	916	56	Maize (local)	42	GMD	28	500 G	8	2012	7.13999999999999968
16924	90	1285	916	65	Sorghum	42	GMD	28	500 G	8	2012	6.94000000000000039
16925	90	1285	916	73	Millet	42	GMD	28	500 G	3	2013	7.5
16926	90	1285	916	117	Rice (paddy, long grain, local)	42	GMD	28	500 G	4	2013	8.88889999999999958
16927	90	1285	916	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2012	9.38000000000000078
16928	90	1285	916	119	Groundnuts (shelled)	42	GMD	28	500 G	10	2012	9.25999999999999979
16929	90	1285	916	225	Rice (long grain, imported)	42	GMD	28	500 G	4	2013	10.4544999999999995
16930	90	1285	916	226	Rice (medium grain, imported)	42	GMD	28	500 G	4	2013	11.1111000000000004
16931	90	1285	916	227	Rice (small grain, imported)	42	GMD	28	500 G	4	2013	10.5263000000000009
16932	90	1289	917	56	Maize (local)	42	GMD	28	500 G	11	2012	7.13999999999999968
16933	90	1289	917	65	Sorghum	42	GMD	28	500 G	11	2012	6.94000000000000039
16934	90	1289	917	73	Millet	42	GMD	28	500 G	4	2013	5
16935	90	1289	917	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2012	8
16936	90	1289	917	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2012	11.0299999999999994
16937	90	1289	917	225	Rice (long grain, imported)	42	GMD	28	500 G	4	2013	10.4347999999999992
16938	90	1289	917	226	Rice (medium grain, imported)	42	GMD	28	500 G	4	2013	12
16939	90	1289	917	227	Rice (small grain, imported)	42	GMD	28	500 G	4	2013	10
16940	90	1289	918	56	Maize (local)	42	GMD	28	500 G	11	2012	7.34999999999999964
16941	90	1289	918	65	Sorghum	42	GMD	28	500 G	11	2012	7.13999999999999968
16942	90	1289	918	73	Millet	42	GMD	28	500 G	4	2013	9.375
16943	90	1289	918	117	Rice (paddy, long grain, local)	42	GMD	28	500 G	4	2013	8.42109999999999914
16944	90	1289	918	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2012	8.82000000000000028
16945	90	1289	918	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2012	9.86999999999999922
16946	90	1289	918	225	Rice (long grain, imported)	42	GMD	28	500 G	4	2013	10
16947	90	1289	918	226	Rice (medium grain, imported)	42	GMD	28	500 G	4	2013	12
16948	90	1289	918	227	Rice (small grain, imported)	42	GMD	28	500 G	4	2013	12
16949	90	1288	919	56	Maize (local)	42	GMD	28	500 G	8	2012	6.07000000000000028
16950	90	1288	919	65	Sorghum	42	GMD	28	500 G	7	2012	7.13999999999999968
16951	90	1288	919	73	Millet	42	GMD	28	500 G	4	2013	5
16952	90	1288	919	117	Rice (paddy, long grain, local)	42	GMD	28	500 G	7	2012	8
16953	90	1288	919	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2012	10.5899999999999999
16954	90	1288	919	119	Groundnuts (shelled)	42	GMD	28	500 G	11	2012	11.0500000000000007
16955	90	1288	919	225	Rice (long grain, imported)	42	GMD	28	500 G	9	2010	8
16956	90	1288	919	226	Rice (medium grain, imported)	42	GMD	28	500 G	4	2013	10
16957	90	1288	919	227	Rice (small grain, imported)	42	GMD	28	500 G	4	2013	10
16958	90	1285	920	56	Maize (local)	42	GMD	28	500 G	11	2012	7.13999999999999968
16959	90	1285	920	65	Sorghum	42	GMD	28	500 G	11	2012	7.05999999999999961
16960	90	1285	920	73	Millet	42	GMD	28	500 G	4	2013	5.37309999999999999
16961	90	1285	920	117	Rice (paddy, long grain, local)	42	GMD	28	500 G	4	2013	6.81820000000000004
16962	90	1285	920	118	Groundnuts (unshelled)	42	GMD	28	500 G	11	2012	9.51999999999999957
16963	90	1285	920	119	Groundnuts (shelled)	42	GMD	28	500 G	10	2012	9.51999999999999957
16964	90	1285	920	225	Rice (long grain, imported)	42	GMD	28	500 G	5	2012	9.625
16965	90	1285	920	226	Rice (medium grain, imported)	42	GMD	28	500 G	4	2013	10
16966	90	1285	920	227	Rice (small grain, imported)	42	GMD	28	500 G	4	2013	10
16967	92	1307	301	58	Wheat flour	50	GEL	22	50 KG	3	2011	54
16968	92	1307	301	76	Maize flour	50	GEL	5	KG	3	2011	2.5
16969	94	1328	209	51	Maize	35	GHS	9	100 KG	12	2015	162.5
16970	94	1328	209	64	Rice (imported)	35	GHS	22	50 KG	12	2015	240
16971	94	1328	209	68	Cassava	35	GHS	23	91 KG	12	2015	70
16972	94	1328	209	71	Rice (local)	35	GHS	22	50 KG	12	2015	190
16973	94	1328	209	98	Plantains (apentu)	35	GHS	21	Bunch	12	2015	10
16974	94	1328	209	99	Yam	35	GHS	20	100 Tubers	12	2015	350
16975	94	1328	210	51	Maize	35	GHS	9	100 KG	12	2015	150
16976	94	1328	210	64	Rice (imported)	35	GHS	22	50 KG	12	2015	220
16977	94	1328	210	68	Cassava	35	GHS	23	91 KG	12	2015	90
16978	94	1328	210	71	Rice (local)	35	GHS	22	50 KG	7	2013	75
16979	94	1328	210	98	Plantains (apentu)	35	GHS	21	Bunch	12	2015	15
16980	94	1328	210	99	Yam	35	GHS	20	100 Tubers	1	2015	10
16981	94	1333	211	51	Maize	35	GHS	9	100 KG	12	2015	166
16982	94	1333	211	64	Rice (imported)	35	GHS	22	50 KG	12	2015	320
16983	94	1333	211	68	Cassava	35	GHS	23	91 KG	12	2015	85
16984	94	1333	211	71	Rice (local)	35	GHS	22	50 KG	12	2015	180
16985	94	1333	211	98	Plantains (apentu)	35	GHS	21	Bunch	12	2015	28
16986	94	1333	211	99	Yam	35	GHS	20	100 Tubers	12	2015	400
16987	94	1327	212	51	Maize	35	GHS	9	100 KG	12	2015	200
16988	94	1327	212	64	Rice (imported)	35	GHS	22	50 KG	12	2015	220
16989	94	1327	212	68	Cassava	35	GHS	23	91 KG	12	2015	50
16990	94	1327	212	71	Rice (local)	35	GHS	22	50 KG	4	2014	110
16991	94	1327	212	98	Plantains (apentu)	35	GHS	21	Bunch	12	2015	13
16992	94	1327	212	99	Yam	35	GHS	20	100 Tubers	7	2015	400
16993	94	1326	213	51	Maize	35	GHS	9	100 KG	12	2015	177.5
16994	94	1326	213	64	Rice (imported)	35	GHS	22	50 KG	12	2015	290
16995	94	1326	213	68	Cassava	35	GHS	23	91 KG	12	2015	70
16996	94	1326	213	71	Rice (local)	35	GHS	22	50 KG	12	2015	170
16997	94	1326	213	98	Plantains (apentu)	35	GHS	21	Bunch	12	2015	15.25
16998	94	1326	213	99	Yam	35	GHS	20	100 Tubers	12	2015	412.5
16999	94	1326	214	51	Maize	35	GHS	9	100 KG	12	2015	197.5
17000	94	1326	214	64	Rice (imported)	35	GHS	22	50 KG	12	2015	297.5
17001	94	1326	214	68	Cassava	35	GHS	23	91 KG	12	2015	69.25
17002	94	1326	214	71	Rice (local)	35	GHS	22	50 KG	12	2015	185.5
17003	94	1326	214	98	Plantains (apentu)	35	GHS	21	Bunch	12	2015	11.75
17004	94	1326	214	99	Yam	35	GHS	20	100 Tubers	12	2015	467.5
17005	94	1324	215	51	Maize	35	GHS	9	100 KG	12	2015	145
17006	94	1324	215	64	Rice (imported)	35	GHS	22	50 KG	12	2015	250
17007	94	1324	215	68	Cassava	35	GHS	23	91 KG	12	2015	43.75
17008	94	1324	215	71	Rice (local)	35	GHS	22	50 KG	12	2015	150
17009	94	1324	215	98	Plantains (apentu)	35	GHS	21	Bunch	12	2015	11.5
17010	94	1324	215	99	Yam	35	GHS	20	100 Tubers	12	2015	232.5
17011	94	1324	216	51	Maize	35	GHS	9	100 KG	12	2015	170
17012	94	1324	216	64	Rice (imported)	35	GHS	22	50 KG	12	2015	190
17013	94	1324	216	68	Cassava	35	GHS	23	91 KG	12	2015	30
17014	94	1324	216	71	Rice (local)	35	GHS	22	50 KG	12	2015	180
17015	94	1324	216	98	Plantains (apentu)	35	GHS	21	Bunch	12	2015	5
17016	94	1324	216	99	Yam	35	GHS	20	100 Tubers	12	2015	400
17017	94	1325	217	51	Maize	35	GHS	9	100 KG	12	2015	112
17018	94	1325	217	64	Rice (imported)	35	GHS	22	50 KG	12	2015	250
17019	94	1325	217	68	Cassava	35	GHS	23	91 KG	12	2015	40
17020	94	1325	217	71	Rice (local)	35	GHS	22	50 KG	12	2015	240
17021	94	1325	217	98	Plantains (apentu)	35	GHS	21	Bunch	12	2015	5
17022	94	1325	217	99	Yam	35	GHS	20	100 Tubers	12	2015	300
17023	94	1325	218	51	Maize	35	GHS	9	100 KG	12	2015	104
17024	94	1325	218	64	Rice (imported)	35	GHS	22	50 KG	12	2015	300
17025	94	1325	218	68	Cassava	35	GHS	23	91 KG	12	2015	45
17026	94	1325	218	71	Rice (local)	35	GHS	22	50 KG	12	2015	245
17027	94	1325	218	98	Plantains (apentu)	35	GHS	21	Bunch	12	2015	11.5
17028	94	1325	218	99	Yam	35	GHS	20	100 Tubers	12	2015	300
17029	94	1332	219	51	Maize	35	GHS	9	100 KG	7	2015	165
17030	94	1332	219	64	Rice (imported)	35	GHS	22	50 KG	7	2015	275
17031	94	1332	219	68	Cassava	35	GHS	23	91 KG	7	2015	73.75
17032	94	1332	219	71	Rice (local)	35	GHS	22	50 KG	7	2015	185
17033	94	1332	219	98	Plantains (apentu)	35	GHS	21	Bunch	7	2015	370
17034	94	1332	219	99	Yam	35	GHS	20	100 Tubers	7	2015	455
17035	94	1329	220	51	Maize	35	GHS	9	100 KG	12	2015	120
17036	94	1329	220	64	Rice (imported)	35	GHS	22	50 KG	12	2015	230
17037	94	1329	220	68	Cassava	35	GHS	23	91 KG	12	2015	80
17038	94	1329	220	71	Rice (local)	35	GHS	22	50 KG	12	2015	100
17039	94	1329	220	98	Plantains (apentu)	35	GHS	21	Bunch	12	2015	20
17040	94	1329	220	99	Yam	35	GHS	20	100 Tubers	12	2015	200
17041	94	1330	221	51	Maize	35	GHS	9	100 KG	12	2015	105
17042	94	1330	221	64	Rice (imported)	35	GHS	22	50 KG	12	2015	290
17043	94	1330	221	68	Cassava	35	GHS	23	91 KG	1	2014	15.4000000000000004
17044	94	1330	221	71	Rice (local)	35	GHS	22	50 KG	12	2015	120
17045	94	1330	221	98	Plantains (apentu)	35	GHS	21	Bunch	12	2015	30
17046	94	1330	221	99	Yam	35	GHS	20	100 Tubers	12	2015	450
17047	94	1331	222	51	Maize	35	GHS	9	100 KG	12	2015	142.849999999999994
17048	94	1331	222	64	Rice (imported)	35	GHS	22	50 KG	12	2015	220
17049	94	1331	222	68	Cassava	35	GHS	23	91 KG	12	2015	70
17050	94	1331	222	71	Rice (local)	35	GHS	22	50 KG	12	2015	142.849999999999994
17051	94	1331	222	98	Plantains (apentu)	35	GHS	21	Bunch	12	2015	30
17052	94	1331	222	99	Yam	35	GHS	20	100 Tubers	12	2015	260
17053	94	1324	223	51	Maize	35	GHS	9	100 KG	12	2015	127.5
17054	94	1324	223	64	Rice (imported)	35	GHS	22	50 KG	12	2015	240
17055	94	1324	223	68	Cassava	35	GHS	23	91 KG	12	2015	24.5
17056	94	1324	223	71	Rice (local)	35	GHS	22	50 KG	12	2015	225
17057	94	1324	223	98	Plantains (apentu)	35	GHS	21	Bunch	12	2015	10.25
17058	94	1324	223	99	Yam	35	GHS	20	100 Tubers	12	2015	442.5
17059	103	\N	\N	55	Bread	82	GTQ	30	Pound	12	2015	11.3100000000000005
17060	103	\N	\N	81	Milk	82	GTQ	15	L	12	2015	12.1300000000000008
17061	103	\N	\N	83	Potatoes	82	GTQ	30	Pound	12	2015	9.08000000000000007
17062	103	\N	\N	85	Beans (black)	82	GTQ	30	Pound	12	2015	6.44000000000000039
17063	103	\N	\N	92	Eggs	82	GTQ	49	650 G	12	2015	18.6700000000000017
17064	103	\N	\N	94	Meat (chicken)	82	GTQ	30	Pound	12	2015	14.5299999999999994
17065	103	\N	\N	96	Oil (vegetable)	82	GTQ	38	750 ML	12	2015	17.879999999999999
17066	103	\N	\N	97	Sugar	82	GTQ	30	Pound	12	2015	3.85000000000000009
17067	103	\N	\N	112	Pasta	82	GTQ	30	Pound	12	2015	6.32000000000000028
17068	103	\N	\N	114	Tomatoes	82	GTQ	30	Pound	12	2015	8.83000000000000007
17069	103	\N	\N	123	Meat (beef, chops with bones)	82	GTQ	30	Pound	12	2015	14.9100000000000001
17070	103	\N	\N	142	Cheese (dry)	82	GTQ	30	Pound	12	2015	40.6400000000000006
17071	103	\N	\N	147	Plantains	82	GTQ	30	Pound	12	2015	5.99000000000000021
17072	103	\N	\N	151	Coffee	82	GTQ	30	Pound	12	2015	33.2800000000000011
17073	103	\N	\N	173	Onions	82	GTQ	30	Pound	12	2015	8.17999999999999972
17074	103	\N	\N	185	Salt	82	GTQ	42	150 G	12	2015	0.440000000000000002
17075	103	\N	\N	198	Rice (ordinary, second quality)	82	GTQ	30	Pound	12	2015	4.32000000000000028
17076	103	\N	\N	238	Milk (powder)	82	GTQ	30	Pound	12	2015	43.3100000000000023
17077	103	\N	\N	254	Bananas	82	GTQ	30	Pound	12	2015	5.59999999999999964
17078	103	\N	\N	269	Tortilla (maize)	82	GTQ	30	Pound	12	2015	7.41999999999999993
17079	103	\N	\N	284	Fuel (diesel)	82	GTQ	27	Gallon	12	2015	15.6899999999999995
17080	103	\N	\N	285	Fuel (petrol-gasoline)	82	GTQ	27	Gallon	12	2015	18.6999999999999993
17081	103	64821	1145	67	Maize (white)	82	GTQ	93	100 Pounds	8	2015	138.590000000000003
17082	103	64821	1145	85	Beans (black)	82	GTQ	93	100 Pounds	8	2015	386.75
17083	103	64821	1145	136	Maize (yellow)	82	GTQ	93	100 Pounds	8	2015	177.650000000000006
17084	103	64821	1145	197	Rice (ordinary, first quality)	82	GTQ	93	100 Pounds	8	2015	288
17085	103	64821	1145	198	Rice (ordinary, second quality)	82	GTQ	93	100 Pounds	8	2015	275
17086	106	40701	354	62	Oil (palm)	54	GNF	15	L	12	2011	9000
17087	106	40701	354	71	Rice (local)	54	GNF	5	KG	12	2011	7000
17088	106	40703	357	55	Bread	54	GNF	33	Unit	2	2016	2000
17089	106	40703	357	62	Oil (palm)	54	GNF	15	L	2	2016	13000
17090	106	40703	357	64	Rice (imported)	54	GNF	5	KG	2	2016	6000
17091	106	40703	357	66	Beans (white)	54	GNF	5	KG	2	2016	6500
17092	106	40703	357	71	Rice (local)	54	GNF	5	KG	2	2016	5500
17093	106	40703	357	97	Sugar	54	GNF	5	KG	2	2016	7000
17094	106	40703	357	114	Tomatoes	54	GNF	5	KG	2	2016	2000
17095	106	40703	357	141	Meat (beef)	54	GNF	5	KG	2	2016	27000
17096	106	40703	357	185	Salt	54	GNF	5	KG	2	2016	2500
17097	106	40703	357	243	Tomatoes (greenhouse)	54	GNF	5	KG	2	2016	1000
17098	106	40703	357	324	Onions (local)	54	GNF	5	KG	8	2015	1000
17099	106	40703	357	403	Cassava meal (gari)	54	GNF	5	KG	2	2016	5000
17100	106	40703	358	55	Bread	54	GNF	33	Unit	2	2016	2500
17101	106	40703	358	62	Oil (palm)	54	GNF	15	L	2	2016	6500
17102	106	40703	358	64	Rice (imported)	54	GNF	5	KG	2	2016	4500
17103	106	40703	358	66	Beans (white)	54	GNF	5	KG	2	2016	6500
17104	106	40703	358	71	Rice (local)	54	GNF	5	KG	2	2016	5000
17105	106	40703	358	97	Sugar	54	GNF	5	KG	2	2016	6000
17106	106	40703	358	114	Tomatoes	54	GNF	5	KG	2	2016	2000
17107	106	40703	358	141	Meat (beef)	54	GNF	5	KG	2	2016	30000
17108	106	40703	358	185	Salt	54	GNF	5	KG	2	2016	2500
17109	106	40703	358	243	Tomatoes (greenhouse)	54	GNF	5	KG	2	2016	1500
17110	106	40703	358	324	Onions (local)	54	GNF	5	KG	8	2015	1000
17111	106	40703	358	403	Cassava meal (gari)	54	GNF	5	KG	2	2016	6000
17112	106	40705	1573	55	Bread	54	GNF	33	Unit	2	2016	3000
17113	106	40705	1573	62	Oil (palm)	54	GNF	15	L	2	2016	12000
17114	106	40705	1573	64	Rice (imported)	54	GNF	5	KG	2	2016	4000
17115	106	40705	1573	66	Beans (white)	54	GNF	5	KG	2	2016	30000
17116	106	40705	1573	71	Rice (local)	54	GNF	5	KG	2	2016	5000
17117	106	40705	1573	97	Sugar	54	GNF	5	KG	2	2016	6000
17118	106	40705	1573	114	Tomatoes	54	GNF	5	KG	2	2016	1500
17119	106	40705	1573	141	Meat (beef)	54	GNF	5	KG	2	2016	30000
17120	106	40705	1573	185	Salt	54	GNF	5	KG	2	2016	2000
17121	106	40705	1573	243	Tomatoes (greenhouse)	54	GNF	5	KG	2	2016	10000
17122	106	40705	1573	403	Cassava meal (gari)	54	GNF	5	KG	2	2016	3000
17123	106	40700	1639	55	Bread	54	GNF	33	Unit	2	2016	2000
17124	106	40700	1639	62	Oil (palm)	54	GNF	15	L	2	2016	9000
17125	106	40700	1639	64	Rice (imported)	54	GNF	5	KG	2	2016	4500
17126	106	40700	1639	66	Beans (white)	54	GNF	5	KG	2	2016	6000
17127	106	40700	1639	71	Rice (local)	54	GNF	5	KG	2	2016	5500
17128	106	40700	1639	97	Sugar	54	GNF	5	KG	2	2016	7000
17129	106	40700	1639	114	Tomatoes	54	GNF	5	KG	2	2016	2000
17130	106	40700	1639	141	Meat (beef)	54	GNF	5	KG	2	2016	22000
17131	106	40700	1639	185	Salt	54	GNF	5	KG	2	2016	2000
17132	106	40700	1639	243	Tomatoes (greenhouse)	54	GNF	5	KG	2	2016	2000
17133	106	40700	1639	403	Cassava meal (gari)	54	GNF	5	KG	2	2016	3000
17134	105	1392	227	51	Maize	26	XOF	5	KG	11	2014	1075
17135	105	1392	227	62	Oil (palm)	26	XOF	15	L	11	2014	1200
17136	105	1392	227	64	Rice (imported)	26	XOF	5	KG	11	2014	600
17137	105	1392	227	65	Sorghum	26	XOF	5	KG	11	2014	600
17138	105	1392	227	71	Rice (local)	26	XOF	5	KG	11	2014	600
17139	105	1392	227	73	Millet	26	XOF	5	KG	11	2014	625
17140	105	1392	227	84	Wheat	26	XOF	5	KG	11	2014	525
17141	105	1392	227	97	Sugar	26	XOF	5	KG	11	2014	600
17142	105	1392	227	100	Fonio	26	XOF	5	KG	11	2014	1100
17143	105	1392	227	101	Oil (vegetable, imported)	26	XOF	15	L	11	2014	1050
17144	105	1392	227	185	Salt	26	XOF	5	KG	11	2014	275
17145	108	1416	102	56	Maize (local)	24	HTG	14	Marmite	3	2016	80
17146	108	1416	102	57	Rice (tchako)	24	HTG	14	Marmite	11	2014	150
17147	108	1416	102	65	Sorghum	24	HTG	14	Marmite	3	2016	84
17148	108	1416	102	71	Rice (local)	24	HTG	14	Marmite	3	2016	185
17149	108	1416	102	78	Beans (red)	24	HTG	14	Marmite	3	2016	380
17150	108	1416	102	85	Beans (black)	24	HTG	14	Marmite	3	2016	333
17151	108	1416	102	101	Oil (vegetable, imported)	24	HTG	27	Gallon	3	2016	375
17152	108	1416	102	112	Pasta	24	HTG	96	350 G	3	2016	30
17153	108	1416	102	339	Wheat flour (imported)	24	HTG	14	Marmite	3	2016	108
17154	108	1416	102	349	Sugar (white)	24	HTG	14	Marmite	3	2016	260
17155	108	1409	103	56	Maize (local)	24	HTG	14	Marmite	3	2016	120
17156	108	1409	103	57	Rice (tchako)	24	HTG	14	Marmite	3	2016	150
17157	108	1409	103	65	Sorghum	24	HTG	14	Marmite	3	2016	120
17158	108	1409	103	71	Rice (local)	24	HTG	14	Marmite	3	2016	180
17159	108	1409	103	78	Beans (red)	24	HTG	14	Marmite	3	2016	396
17160	108	1409	103	85	Beans (black)	24	HTG	14	Marmite	3	2016	350
17161	108	1409	103	101	Oil (vegetable, imported)	24	HTG	27	Gallon	3	2016	375
17162	108	1409	103	112	Pasta	24	HTG	96	350 G	3	2016	17
17163	108	1409	103	339	Wheat flour (imported)	24	HTG	14	Marmite	3	2016	120
17164	108	1409	103	349	Sugar (white)	24	HTG	14	Marmite	3	2016	170
17165	108	1410	104	56	Maize (local)	24	HTG	14	Marmite	3	2016	110
17166	108	1410	104	57	Rice (tchako)	24	HTG	14	Marmite	3	2016	150
17167	108	1410	104	65	Sorghum	24	HTG	14	Marmite	3	2016	90
17168	108	1410	104	71	Rice (local)	24	HTG	14	Marmite	3	2016	175
17169	108	1410	104	78	Beans (red)	24	HTG	14	Marmite	3	2016	350
17170	108	1410	104	85	Beans (black)	24	HTG	14	Marmite	3	2016	350
17171	108	1410	104	101	Oil (vegetable, imported)	24	HTG	27	Gallon	3	2016	325
17172	108	1410	104	112	Pasta	24	HTG	96	350 G	3	2016	25
17173	108	1410	104	339	Wheat flour (imported)	24	HTG	14	Marmite	3	2016	110
17174	108	1410	104	349	Sugar (white)	24	HTG	14	Marmite	3	2016	213
17175	108	1417	105	56	Maize (local)	24	HTG	14	Marmite	3	2016	120
17176	108	1417	105	57	Rice (tchako)	24	HTG	14	Marmite	3	2016	150
17177	108	1417	105	65	Sorghum	24	HTG	14	Marmite	3	2016	180
17178	108	1417	105	71	Rice (local)	24	HTG	14	Marmite	3	2016	138
17179	108	1417	105	78	Beans (red)	24	HTG	14	Marmite	3	2016	420
17180	108	1417	105	85	Beans (black)	24	HTG	14	Marmite	3	2016	390
17181	108	1417	105	101	Oil (vegetable, imported)	24	HTG	27	Gallon	3	2016	425
17182	108	1417	105	112	Pasta	24	HTG	96	350 G	3	2016	30
17183	108	1417	105	339	Wheat flour (imported)	24	HTG	14	Marmite	3	2016	180
17184	108	1417	105	349	Sugar (white)	24	HTG	14	Marmite	3	2016	210
17185	108	1411	106	56	Maize (local)	24	HTG	14	Marmite	3	2016	80
17186	108	1411	106	57	Rice (tchako)	24	HTG	14	Marmite	3	2016	143
17187	108	1411	106	65	Sorghum	24	HTG	14	Marmite	3	2016	160
17188	108	1411	106	78	Beans (red)	24	HTG	14	Marmite	3	2016	400
17189	108	1411	106	85	Beans (black)	24	HTG	14	Marmite	3	2016	356
17190	108	1411	106	101	Oil (vegetable, imported)	24	HTG	27	Gallon	3	2016	360
17191	108	1411	106	112	Pasta	24	HTG	96	350 G	3	2016	20
17192	108	1411	106	339	Wheat flour (imported)	24	HTG	14	Marmite	3	2016	120
17193	108	1411	106	349	Sugar (white)	24	HTG	14	Marmite	3	2016	180
17194	108	1412	107	56	Maize (local)	24	HTG	14	Marmite	3	2016	120
17195	108	1412	107	57	Rice (tchako)	24	HTG	14	Marmite	10	2015	132
17196	108	1412	107	65	Sorghum	24	HTG	14	Marmite	3	2016	132
17197	108	1412	107	71	Rice (local)	24	HTG	14	Marmite	3	2016	120
17198	108	1412	107	78	Beans (red)	24	HTG	14	Marmite	3	2016	365
17199	108	1412	107	85	Beans (black)	24	HTG	14	Marmite	3	2016	380
17200	108	1412	107	101	Oil (vegetable, imported)	24	HTG	27	Gallon	3	2016	375
17201	108	1412	107	112	Pasta	24	HTG	96	350 G	3	2016	25
17202	108	1412	107	339	Wheat flour (imported)	24	HTG	14	Marmite	3	2016	132
17203	108	1412	107	349	Sugar (white)	24	HTG	14	Marmite	3	2016	160
17204	108	1413	108	56	Maize (local)	24	HTG	14	Marmite	3	2016	100
17205	108	1413	108	57	Rice (tchako)	24	HTG	14	Marmite	3	2016	175
17206	108	1413	108	78	Beans (red)	24	HTG	14	Marmite	3	2016	525
17207	108	1413	108	85	Beans (black)	24	HTG	14	Marmite	3	2016	420
17208	108	1413	108	101	Oil (vegetable, imported)	24	HTG	27	Gallon	3	2016	400
17209	108	1413	108	112	Pasta	24	HTG	96	350 G	3	2016	20
17210	108	1413	108	339	Wheat flour (imported)	24	HTG	14	Marmite	3	2016	210
17211	108	1413	108	349	Sugar (white)	24	HTG	14	Marmite	3	2016	210
17212	108	1415	109	56	Maize (local)	24	HTG	14	Marmite	3	2016	110
17213	108	1415	109	57	Rice (tchako)	24	HTG	14	Marmite	3	2016	134
17214	108	1415	109	65	Sorghum	24	HTG	14	Marmite	3	2016	122
17215	108	1415	109	71	Rice (local)	24	HTG	14	Marmite	3	2016	125
17216	108	1415	109	78	Beans (red)	24	HTG	14	Marmite	3	2016	400
17217	108	1415	109	85	Beans (black)	24	HTG	14	Marmite	3	2016	315
17218	108	1415	109	101	Oil (vegetable, imported)	24	HTG	27	Gallon	3	2016	370
17219	108	1415	109	112	Pasta	24	HTG	96	350 G	3	2016	20
17220	108	1415	109	339	Wheat flour (imported)	24	HTG	14	Marmite	3	2016	120
17221	108	1415	109	349	Sugar (white)	24	HTG	14	Marmite	3	2016	156
17222	108	1414	110	56	Maize (local)	24	HTG	14	Marmite	3	2016	90
17223	108	1414	110	57	Rice (tchako)	24	HTG	14	Marmite	3	2016	150
17224	108	1414	110	65	Sorghum	24	HTG	14	Marmite	3	2016	94
17225	108	1414	110	71	Rice (local)	24	HTG	14	Marmite	3	2016	130
17226	108	1414	110	78	Beans (red)	24	HTG	14	Marmite	3	2016	365
17227	108	1414	110	85	Beans (black)	24	HTG	14	Marmite	3	2016	350
17228	108	1414	110	101	Oil (vegetable, imported)	24	HTG	27	Gallon	3	2016	340
17229	108	1414	110	112	Pasta	24	HTG	96	350 G	3	2016	25
17230	108	1414	110	339	Wheat flour (imported)	24	HTG	14	Marmite	3	2016	106
17231	108	1414	110	349	Sugar (white)	24	HTG	14	Marmite	3	2016	168
17232	111	\N	\N	67	Maize (white)	28	USD	18	MT	3	2016	425
17233	111	\N	\N	78	Beans (red)	28	USD	18	MT	3	2016	1062.5
17234	111	\N	\N	86	Rice (milled 80-20)	28	USD	18	MT	3	2016	875
17235	111	\N	\N	134	Maize flour (white)	28	USD	18	MT	8	2013	785.110000000000014
17236	111	\N	\N	135	Sorghum (white)	28	USD	18	MT	3	2016	500
17237	115	1509	921	52	Rice	68	INR	5	KG	2	2016	27.2399999999999984
17238	115	1509	921	58	Wheat flour	68	INR	5	KG	2	2016	26
17239	115	1509	921	61	Lentils (masur)	68	INR	5	KG	2	2016	107
17240	115	1509	921	83	Potatoes	68	INR	5	KG	2	2016	15
17241	115	1509	921	97	Sugar	68	INR	5	KG	2	2016	39
17242	115	1509	921	108	Lentils	68	INR	5	KG	2	2016	70
17243	115	1509	921	114	Tomatoes	68	INR	5	KG	2	2016	32.2899999999999991
17244	115	1509	921	173	Onions	68	INR	5	KG	2	2016	22.7100000000000009
17245	115	1509	921	175	Tea (black)	68	INR	5	KG	2	2016	178
17246	115	1509	921	228	Oil (mustard)	68	INR	5	KG	2	2016	130.189999999999998
17247	115	1509	921	306	Oil (soybean)	68	INR	5	KG	2	2016	82
17248	115	1509	921	325	Lentils (moong)	68	INR	5	KG	2	2016	106.670000000000002
17249	115	1509	921	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	46
17250	115	1509	921	332	Lentils (urad)	68	INR	5	KG	2	2016	123.950000000000003
17251	115	1509	921	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	70
17252	115	1509	921	334	Salt (iodised)	68	INR	5	KG	2	2016	19
17253	115	1509	921	463	Milk (pasteurized)	68	INR	15	L	2	2016	40
17254	115	1510	922	52	Rice	68	INR	5	KG	2	2016	18
17255	115	1510	922	58	Wheat flour	68	INR	5	KG	2	2016	20
17256	115	1510	922	61	Lentils (masur)	68	INR	5	KG	2	2016	66.9500000000000028
17257	115	1510	922	62	Oil (palm)	68	INR	5	KG	2	2016	64
17258	115	1510	922	83	Potatoes	68	INR	5	KG	2	2016	6.62000000000000011
17259	115	1510	922	84	Wheat	68	INR	5	KG	2	2016	17
17260	115	1510	922	97	Sugar	68	INR	5	KG	2	2016	34.1000000000000014
17261	115	1510	922	108	Lentils	68	INR	5	KG	2	2016	59.240000000000002
17262	115	1510	922	114	Tomatoes	68	INR	5	KG	2	2016	20.7100000000000009
17263	115	1510	922	173	Onions	68	INR	5	KG	2	2016	17.620000000000001
17264	115	1510	922	175	Tea (black)	68	INR	5	KG	2	2016	300
17265	115	1510	922	184	Oil (sunflower)	68	INR	5	KG	2	2016	96.1899999999999977
17266	115	1510	922	228	Oil (mustard)	68	INR	5	KG	2	2016	91.6200000000000045
17267	115	1510	922	245	Oil (groundnut)	68	INR	5	KG	2	2016	120.480000000000004
17268	115	1510	922	306	Oil (soybean)	68	INR	5	KG	2	2016	75.4300000000000068
17269	115	1510	922	325	Lentils (moong)	68	INR	5	KG	2	2016	85.1400000000000006
17270	115	1510	922	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	27.6700000000000017
17271	115	1510	922	332	Lentils (urad)	68	INR	5	KG	2	2016	126.760000000000005
17272	115	1510	922	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	67.2399999999999949
17273	115	1510	922	334	Salt (iodised)	68	INR	5	KG	2	2016	18
17274	115	1510	922	463	Milk (pasteurized)	68	INR	15	L	2	2016	48
17275	115	1491	923	52	Rice	68	INR	5	KG	2	2016	28
17276	115	1491	923	58	Wheat flour	68	INR	5	KG	2	2016	25
17277	115	1491	923	61	Lentils (masur)	68	INR	5	KG	2	2016	68.8299999999999983
17278	115	1491	923	62	Oil (palm)	68	INR	5	KG	2	2016	58
17279	115	1491	923	83	Potatoes	68	INR	5	KG	2	2016	14
17280	115	1491	923	84	Wheat	68	INR	5	KG	2	2016	22
17281	115	1491	923	97	Sugar	68	INR	5	KG	2	2016	26
17282	115	1491	923	108	Lentils	68	INR	5	KG	2	2016	58.8299999999999983
17283	115	1491	923	114	Tomatoes	68	INR	5	KG	2	2016	24.6900000000000013
17284	115	1491	923	173	Onions	68	INR	5	KG	2	2016	22.2800000000000011
17285	115	1491	923	175	Tea (black)	68	INR	5	KG	2	2016	264.930000000000007
17286	115	1491	923	184	Oil (sunflower)	68	INR	5	KG	2	2016	83
17287	115	1491	923	228	Oil (mustard)	68	INR	5	KG	2	2016	85
17288	115	1491	923	245	Oil (groundnut)	68	INR	5	KG	2	2016	109
17289	115	1491	923	306	Oil (soybean)	68	INR	5	KG	2	2016	75
17290	115	1491	923	325	Lentils (moong)	68	INR	5	KG	2	2016	94.8299999999999983
17291	115	1491	923	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	48
17292	115	1491	923	332	Lentils (urad)	68	INR	5	KG	2	2016	130.340000000000003
17293	115	1491	923	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	57
17294	115	1491	923	334	Salt (iodised)	68	INR	5	KG	2	2016	17
17295	115	1491	923	463	Milk (pasteurized)	68	INR	15	L	2	2016	42
17296	115	1502	924	52	Rice	68	INR	5	KG	2	2016	30.120000000000001
17297	115	1502	924	58	Wheat flour	68	INR	5	KG	2	2016	25
17298	115	1502	924	61	Lentils (masur)	68	INR	5	KG	2	2016	107
17299	115	1502	924	83	Potatoes	68	INR	5	KG	2	2016	22.3500000000000014
17300	115	1502	924	84	Wheat	68	INR	5	KG	4	2014	20
17301	115	1502	924	97	Sugar	68	INR	5	KG	2	2016	40
17302	115	1502	924	114	Tomatoes	68	INR	5	KG	2	2016	41.5600000000000023
17303	115	1502	924	173	Onions	68	INR	5	KG	2	2016	44.3800000000000026
17304	115	1502	924	175	Tea (black)	68	INR	5	KG	1	2016	360
17305	115	1502	924	184	Oil (sunflower)	68	INR	5	KG	2	2016	98
17306	115	1502	924	228	Oil (mustard)	68	INR	5	KG	2	2016	109
17307	115	1502	924	306	Oil (soybean)	68	INR	5	KG	2	2016	98
17308	115	1502	924	325	Lentils (moong)	68	INR	5	KG	2	2016	120
17309	115	1502	924	331	Sugar (jaggery/gur)	68	INR	5	KG	1	2016	120
17310	115	1502	924	332	Lentils (urad)	68	INR	5	KG	2	2016	90
17311	115	1502	924	334	Salt (iodised)	68	INR	5	KG	2	2016	20
17312	115	1502	924	463	Milk (pasteurized)	68	INR	15	L	2	2016	65
17313	115	1505	925	52	Rice	68	INR	5	KG	2	2016	32
17314	115	1505	925	58	Wheat flour	68	INR	5	KG	2	2016	22
17315	115	1505	925	61	Lentils (masur)	68	INR	5	KG	2	2016	91.7999999999999972
17316	115	1505	925	83	Potatoes	68	INR	5	KG	2	2016	10.4000000000000004
17317	115	1505	925	84	Wheat	68	INR	5	KG	2	2016	18
17318	115	1505	925	97	Sugar	68	INR	5	KG	2	2016	36
17319	115	1505	925	108	Lentils	68	INR	5	KG	2	2016	64.7999999999999972
17320	115	1505	925	114	Tomatoes	68	INR	5	KG	2	2016	26.129999999999999
17321	115	1505	925	173	Onions	68	INR	5	KG	2	2016	18.9299999999999997
17322	115	1505	925	175	Tea (black)	68	INR	5	KG	2	2016	205
17323	115	1505	925	184	Oil (sunflower)	68	INR	5	KG	2	2016	100
17324	115	1505	925	228	Oil (mustard)	68	INR	5	KG	2	2016	101.200000000000003
17325	115	1505	925	245	Oil (groundnut)	68	INR	5	KG	2	2016	135
17326	115	1505	925	306	Oil (soybean)	68	INR	5	KG	2	2016	86
17327	115	1505	925	325	Lentils (moong)	68	INR	5	KG	2	2016	101.200000000000003
17328	115	1505	925	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	41
17329	115	1505	925	332	Lentils (urad)	68	INR	5	KG	2	2016	131.800000000000011
17330	115	1505	925	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	75
17331	115	1505	925	334	Salt (iodised)	68	INR	5	KG	2	2016	18
17332	115	1505	925	463	Milk (pasteurized)	68	INR	15	L	2	2016	44
17333	115	1494	926	52	Rice	68	INR	5	KG	2	2016	36
17334	115	1494	926	58	Wheat flour	68	INR	5	KG	2	2016	27
17335	115	1494	926	62	Oil (palm)	68	INR	5	KG	2	2016	60.0399999999999991
17336	115	1494	926	83	Potatoes	68	INR	5	KG	2	2016	20.75
17337	115	1494	926	84	Wheat	68	INR	5	KG	2	2016	29
17338	115	1494	926	97	Sugar	68	INR	5	KG	2	2016	34
17339	115	1494	926	108	Lentils	68	INR	5	KG	2	2016	69.0400000000000063
17340	115	1494	926	114	Tomatoes	68	INR	5	KG	2	2016	15.8800000000000008
17341	115	1494	926	173	Onions	68	INR	5	KG	2	2016	19.5799999999999983
17342	115	1494	926	175	Tea (black)	68	INR	5	KG	2	2016	220
17343	115	1494	926	184	Oil (sunflower)	68	INR	5	KG	2	2016	84
17344	115	1494	926	228	Oil (mustard)	68	INR	5	KG	12	2012	114.459999999999994
17345	115	1494	926	245	Oil (groundnut)	68	INR	5	KG	2	2016	92
17346	115	1494	926	306	Oil (soybean)	68	INR	5	KG	2	2016	70
17347	115	1494	926	325	Lentils (moong)	68	INR	5	KG	2	2016	112
17348	115	1494	926	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	38.75
17349	115	1494	926	332	Lentils (urad)	68	INR	5	KG	2	2016	167.419999999999987
17350	115	1494	926	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	71
17351	115	1494	926	334	Salt (iodised)	68	INR	5	KG	2	2016	14
17352	115	1494	926	463	Milk (pasteurized)	68	INR	15	L	2	2016	34
17353	115	1488	927	52	Rice	68	INR	5	KG	2	2016	23
17354	115	1488	927	58	Wheat flour	68	INR	5	KG	2	2016	19
17355	115	1488	927	61	Lentils (masur)	68	INR	5	KG	2	2016	77.7399999999999949
17356	115	1488	927	62	Oil (palm)	68	INR	5	KG	2	2016	66
17357	115	1488	927	83	Potatoes	68	INR	5	KG	2	2016	10
17358	115	1488	927	84	Wheat	68	INR	5	KG	2	2016	16
17359	115	1488	927	97	Sugar	68	INR	5	KG	2	2016	32.0399999999999991
17360	115	1488	927	108	Lentils	68	INR	5	KG	2	2016	64
17361	115	1488	927	114	Tomatoes	68	INR	5	KG	2	2016	11
17362	115	1488	927	173	Onions	68	INR	5	KG	2	2016	19.9600000000000009
17363	115	1488	927	175	Tea (black)	68	INR	5	KG	2	2016	260
17364	115	1488	927	184	Oil (sunflower)	68	INR	5	KG	2	2016	142
17365	115	1488	927	228	Oil (mustard)	68	INR	5	KG	2	2016	110
17366	115	1488	927	306	Oil (soybean)	68	INR	5	KG	2	2016	86.3900000000000006
17367	115	1488	927	325	Lentils (moong)	68	INR	5	KG	2	2016	104.480000000000004
17368	115	1488	927	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	34
17369	115	1488	927	332	Lentils (urad)	68	INR	5	KG	2	2016	139.569999999999993
17370	115	1488	927	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	60
17371	115	1488	927	334	Salt (iodised)	68	INR	5	KG	2	2016	10
17372	115	1488	927	463	Milk (pasteurized)	68	INR	15	L	2	2016	36
17373	115	1497	928	52	Rice	68	INR	5	KG	2	2016	23
17374	115	1497	928	58	Wheat flour	68	INR	5	KG	2	2016	21
17375	115	1497	928	61	Lentils (masur)	68	INR	5	KG	2	2016	67
17376	115	1497	928	62	Oil (palm)	68	INR	5	KG	2	2016	57
17377	115	1497	928	83	Potatoes	68	INR	5	KG	2	2016	9.82000000000000028
17378	115	1497	928	84	Wheat	68	INR	5	KG	2	2016	18
17379	115	1497	928	97	Sugar	68	INR	5	KG	2	2016	34
17380	115	1497	928	108	Lentils	68	INR	5	KG	2	2016	60
17381	115	1497	928	114	Tomatoes	68	INR	5	KG	2	2016	14.6400000000000006
17382	115	1497	928	173	Onions	68	INR	5	KG	2	2016	10.9299999999999997
17383	115	1497	928	175	Tea (black)	68	INR	5	KG	2	2016	250
17384	115	1497	928	184	Oil (sunflower)	68	INR	5	KG	2	2016	90
17385	115	1497	928	228	Oil (mustard)	68	INR	5	KG	2	2016	92.3199999999999932
17386	115	1497	928	245	Oil (groundnut)	68	INR	5	KG	2	2016	120
17387	115	1497	928	306	Oil (soybean)	68	INR	5	KG	2	2016	70
17388	115	1497	928	325	Lentils (moong)	68	INR	5	KG	2	2016	89.4599999999999937
17389	115	1497	928	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	38
17390	115	1497	928	332	Lentils (urad)	68	INR	5	KG	2	2016	124.459999999999994
17391	115	1497	928	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	65
17392	115	1497	928	334	Salt (iodised)	68	INR	5	KG	2	2016	14
17393	115	1497	928	463	Milk (pasteurized)	68	INR	15	L	2	2016	38
17394	115	1504	929	52	Rice	68	INR	5	KG	2	2016	23.9699999999999989
17395	115	1504	929	58	Wheat flour	68	INR	5	KG	2	2016	24
17396	115	1504	929	61	Lentils (masur)	68	INR	5	KG	2	2016	67
17397	115	1504	929	62	Oil (palm)	68	INR	5	KG	2	2016	68.3799999999999955
17398	115	1504	929	83	Potatoes	68	INR	5	KG	2	2016	12.4100000000000001
17399	115	1504	929	84	Wheat	68	INR	5	KG	11	2012	18
17400	115	1504	929	97	Sugar	68	INR	5	KG	2	2016	35.5200000000000031
17401	115	1504	929	108	Lentils	68	INR	5	KG	2	2016	61.6899999999999977
17402	115	1504	929	114	Tomatoes	68	INR	5	KG	2	2016	15.1699999999999999
17403	115	1504	929	173	Onions	68	INR	5	KG	2	2016	16.6900000000000013
17404	115	1504	929	175	Tea (black)	68	INR	5	KG	2	2016	180
17405	115	1504	929	184	Oil (sunflower)	68	INR	5	KG	2	2016	92.0699999999999932
17406	115	1504	929	228	Oil (mustard)	68	INR	5	KG	2	2016	102.859999999999999
17407	115	1504	929	306	Oil (soybean)	68	INR	5	KG	11	2015	94
17408	115	1504	929	325	Lentils (moong)	68	INR	5	KG	2	2016	86.9000000000000057
17409	115	1504	929	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	35.9699999999999989
17410	115	1504	929	332	Lentils (urad)	68	INR	5	KG	2	2016	121.790000000000006
17411	115	1504	929	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	57.1700000000000017
17412	115	1504	929	334	Salt (iodised)	68	INR	5	KG	2	2016	17
17413	115	1504	929	463	Milk (pasteurized)	68	INR	15	L	2	2016	34
17414	115	70074	930	52	Rice	68	INR	5	KG	2	2016	28
17415	115	70074	930	58	Wheat flour	68	INR	5	KG	2	2016	22
17416	115	70074	930	61	Lentils (masur)	68	INR	5	KG	2	2016	68
17417	115	70074	930	62	Oil (palm)	68	INR	5	KG	2	2014	108
17418	115	70074	930	83	Potatoes	68	INR	5	KG	2	2016	9.51999999999999957
17419	115	70074	930	84	Wheat	68	INR	5	KG	2	2016	18
17420	115	70074	930	97	Sugar	68	INR	5	KG	2	2016	32
17421	115	70074	930	108	Lentils	68	INR	5	KG	2	2016	60
17422	115	70074	930	114	Tomatoes	68	INR	5	KG	2	2016	27.5199999999999996
17423	115	70074	930	173	Onions	68	INR	5	KG	2	2016	20.1900000000000013
17424	115	70074	930	175	Tea (black)	68	INR	5	KG	2	2016	225
17425	115	70074	930	184	Oil (sunflower)	68	INR	5	KG	2	2016	100
17426	115	70074	930	228	Oil (mustard)	68	INR	5	KG	2	2016	100
17427	115	70074	930	245	Oil (groundnut)	68	INR	5	KG	2	2016	122
17428	115	70074	930	306	Oil (soybean)	68	INR	5	KG	2	2016	86
17429	115	70074	930	325	Lentils (moong)	68	INR	5	KG	2	2016	94
17430	115	70074	930	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	35
17431	115	70074	930	332	Lentils (urad)	68	INR	5	KG	2	2016	120
17432	115	70074	930	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	72
17433	115	70074	930	334	Salt (iodised)	68	INR	5	KG	2	2016	17
17434	115	70074	930	463	Milk (pasteurized)	68	INR	15	L	2	2016	44
17435	115	1508	931	52	Rice	68	INR	5	KG	2	2016	30
17436	115	1508	931	58	Wheat flour	68	INR	5	KG	2	2016	30
17437	115	1508	931	61	Lentils (masur)	68	INR	5	KG	2	2016	89.7900000000000063
17438	115	1508	931	62	Oil (palm)	68	INR	5	KG	2	2016	60.9600000000000009
17439	115	1508	931	83	Potatoes	68	INR	5	KG	2	2016	17.3599999999999994
17440	115	1508	931	84	Wheat	68	INR	5	KG	2	2016	33.25
17441	115	1508	931	97	Sugar	68	INR	5	KG	2	2016	36.9600000000000009
17442	115	1508	931	108	Lentils	68	INR	5	KG	2	2016	71.7900000000000063
17443	115	1508	931	114	Tomatoes	68	INR	5	KG	2	2016	11.75
17444	115	1508	931	173	Onions	68	INR	5	KG	2	2016	16.8599999999999994
17445	115	1508	931	175	Tea (black)	68	INR	5	KG	2	2016	220
17446	115	1508	931	184	Oil (sunflower)	68	INR	5	KG	2	2016	92.1400000000000006
17447	115	1508	931	228	Oil (mustard)	68	INR	5	KG	2	2016	140.210000000000008
17448	115	1508	931	245	Oil (groundnut)	68	INR	5	KG	2	2016	124.430000000000007
17449	115	1508	931	325	Lentils (moong)	68	INR	5	KG	2	2016	108
17450	115	1508	931	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	51.6099999999999994
17451	115	1508	931	332	Lentils (urad)	68	INR	5	KG	2	2016	150.710000000000008
17452	115	1508	931	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	92.9300000000000068
17453	115	1508	931	334	Salt (iodised)	68	INR	5	KG	2	2016	18
17454	115	1508	931	463	Milk (pasteurized)	68	INR	15	L	2	2016	37
17455	115	1504	932	52	Rice	68	INR	5	KG	2	2016	23
17456	115	1504	932	58	Wheat flour	68	INR	5	KG	2	2016	23.6799999999999997
17457	115	1504	932	61	Lentils (masur)	68	INR	5	KG	2	2016	65.1400000000000006
17458	115	1504	932	62	Oil (palm)	68	INR	5	KG	2	2016	66.8599999999999994
17459	115	1504	932	83	Potatoes	68	INR	5	KG	2	2016	12.4499999999999993
17460	115	1504	932	84	Wheat	68	INR	5	KG	6	2012	15
17461	115	1504	932	97	Sugar	68	INR	5	KG	2	2016	36.5499999999999972
17462	115	1504	932	108	Lentils	68	INR	5	KG	2	2016	60.7299999999999969
17463	115	1504	932	114	Tomatoes	68	INR	5	KG	2	2016	18.4100000000000001
17464	115	1504	932	173	Onions	68	INR	5	KG	2	2016	17.5500000000000007
17465	115	1504	932	175	Tea (black)	68	INR	5	KG	2	2016	180
17466	115	1504	932	184	Oil (sunflower)	68	INR	5	KG	2	2016	93.8199999999999932
17467	115	1504	932	228	Oil (mustard)	68	INR	5	KG	2	2016	106
17468	115	1504	932	325	Lentils (moong)	68	INR	5	KG	2	2016	85.1800000000000068
17469	115	1504	932	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	35.2700000000000031
17470	115	1504	932	332	Lentils (urad)	68	INR	5	KG	2	2016	110.180000000000007
17471	115	1504	932	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	56.3200000000000003
17472	115	1504	932	334	Salt (iodised)	68	INR	5	KG	2	2016	17
17473	115	1504	932	463	Milk (pasteurized)	68	INR	15	L	2	2016	34
17474	115	70082	933	52	Rice	68	INR	5	KG	2	2016	23
17475	115	70082	933	58	Wheat flour	68	INR	5	KG	2	2016	23
17476	115	70082	933	61	Lentils (masur)	68	INR	5	KG	2	2016	95.1400000000000006
17477	115	70082	933	83	Potatoes	68	INR	5	KG	2	2016	10.1899999999999995
17478	115	70082	933	84	Wheat	68	INR	5	KG	2	2016	21
17479	115	70082	933	97	Sugar	68	INR	5	KG	2	2016	36
17480	115	70082	933	108	Lentils	68	INR	5	KG	2	2016	68
17481	115	70082	933	114	Tomatoes	68	INR	5	KG	2	2016	29.0500000000000007
17482	115	70082	933	173	Onions	68	INR	5	KG	2	2016	16.1900000000000013
17483	115	70082	933	175	Tea (black)	68	INR	5	KG	2	2016	230
17484	115	70082	933	184	Oil (sunflower)	68	INR	5	KG	2	2016	104.760000000000005
17485	115	70082	933	228	Oil (mustard)	68	INR	5	KG	2	2016	95
17486	115	70082	933	245	Oil (groundnut)	68	INR	5	KG	2	2016	135
17487	115	70082	933	306	Oil (soybean)	68	INR	5	KG	2	2016	87
17488	115	70082	933	325	Lentils (moong)	68	INR	5	KG	2	2016	115.709999999999994
17489	115	70082	933	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	37.8100000000000023
17490	115	70082	933	332	Lentils (urad)	68	INR	5	KG	2	2016	119.760000000000005
17491	115	70082	933	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	79.7600000000000051
17492	115	70082	933	334	Salt (iodised)	68	INR	5	KG	2	2016	17
17493	115	70082	933	463	Milk (pasteurized)	68	INR	15	L	2	2016	38
17494	115	1489	934	52	Rice	68	INR	5	KG	2	2016	28
17495	115	1489	934	58	Wheat flour	68	INR	5	KG	2	2016	21
17496	115	1489	934	61	Lentils (masur)	68	INR	5	KG	2	2016	82.3100000000000023
17497	115	1489	934	83	Potatoes	68	INR	5	KG	2	2016	13.3800000000000008
17498	115	1489	934	84	Wheat	68	INR	5	KG	2	2016	19
17499	115	1489	934	97	Sugar	68	INR	5	KG	2	2016	35
17500	115	1489	934	108	Lentils	68	INR	5	KG	2	2016	72.4099999999999966
17501	115	1489	934	114	Tomatoes	68	INR	5	KG	2	2016	31.8299999999999983
17502	115	1489	934	173	Onions	68	INR	5	KG	2	2016	25.1400000000000006
17503	115	1489	934	175	Tea (black)	68	INR	5	KG	2	2016	202
17504	115	1489	934	184	Oil (sunflower)	68	INR	5	KG	2	2016	105
17505	115	1489	934	228	Oil (mustard)	68	INR	5	KG	2	2016	131.310000000000002
17506	115	1489	934	245	Oil (groundnut)	68	INR	5	KG	2	2016	151.310000000000002
17507	115	1489	934	306	Oil (soybean)	68	INR	5	KG	2	2016	85.519999999999996
17508	115	1489	934	325	Lentils (moong)	68	INR	5	KG	2	2016	103.620000000000005
17509	115	1489	934	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	43.1000000000000014
17510	115	1489	934	332	Lentils (urad)	68	INR	5	KG	2	2016	145.930000000000007
17511	115	1489	934	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	77.0999999999999943
17512	115	1489	934	334	Salt (iodised)	68	INR	5	KG	2	2016	17
17513	115	1489	934	463	Milk (pasteurized)	68	INR	15	L	2	2016	38
17514	115	1494	935	52	Rice	68	INR	5	KG	2	2016	29
17515	115	1494	935	58	Wheat flour	68	INR	5	KG	2	2016	33
17516	115	1494	935	62	Oil (palm)	68	INR	5	KG	2	2016	54.5200000000000031
17517	115	1494	935	83	Potatoes	68	INR	5	KG	2	2016	18
17518	115	1494	935	84	Wheat	68	INR	5	KG	2	2016	32.3500000000000014
17519	115	1494	935	97	Sugar	68	INR	5	KG	2	2016	32.8299999999999983
17520	115	1494	935	108	Lentils	68	INR	5	KG	2	2016	66
17521	115	1494	935	114	Tomatoes	68	INR	5	KG	2	2016	14.8699999999999992
17522	115	1494	935	173	Onions	68	INR	5	KG	2	2016	16.2600000000000016
17523	115	1494	935	175	Tea (black)	68	INR	5	KG	2	2016	200
17524	115	1494	935	184	Oil (sunflower)	68	INR	5	KG	2	2016	85
17525	115	1494	935	245	Oil (groundnut)	68	INR	5	KG	2	2016	105
17526	115	1494	935	306	Oil (soybean)	68	INR	5	KG	2	2016	70
17527	115	1494	935	325	Lentils (moong)	68	INR	5	KG	2	2016	93
17528	115	1494	935	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	37.8299999999999983
17529	115	1494	935	332	Lentils (urad)	68	INR	5	KG	2	2016	150
17530	115	1494	935	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	80
17531	115	1494	935	334	Salt (iodised)	68	INR	5	KG	2	2016	17
17532	115	1494	935	463	Milk (pasteurized)	68	INR	15	L	2	2016	39.6499999999999986
17533	115	1503	936	52	Rice	68	INR	5	KG	2	2016	22
17534	115	1503	936	58	Wheat flour	68	INR	5	KG	2	2016	25
17535	115	1503	936	61	Lentils (masur)	68	INR	5	KG	2	2016	95
17536	115	1503	936	62	Oil (palm)	68	INR	5	KG	2	2016	79
17537	115	1503	936	83	Potatoes	68	INR	5	KG	2	2016	18.6700000000000017
17538	115	1503	936	84	Wheat	68	INR	5	KG	2	2016	20
17539	115	1503	936	97	Sugar	68	INR	5	KG	2	2016	35
17540	115	1503	936	108	Lentils	68	INR	5	KG	2	2016	70
17541	115	1503	936	114	Tomatoes	68	INR	5	KG	2	2016	30.6700000000000017
17542	115	1503	936	173	Onions	68	INR	5	KG	2	2016	34
17543	115	1503	936	175	Tea (black)	68	INR	5	KG	2	2016	270
17544	115	1503	936	184	Oil (sunflower)	68	INR	5	KG	2	2016	192
17545	115	1503	936	228	Oil (mustard)	68	INR	5	KG	2	2016	107
17546	115	1503	936	245	Oil (groundnut)	68	INR	5	KG	2	2016	110
17547	115	1503	936	306	Oil (soybean)	68	INR	5	KG	2	2016	120
17548	115	1503	936	325	Lentils (moong)	68	INR	5	KG	2	2016	120
17549	115	1503	936	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	55
17550	115	1503	936	332	Lentils (urad)	68	INR	5	KG	2	2016	121.25
17551	115	1503	936	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	105
17552	115	1503	936	334	Salt (iodised)	68	INR	5	KG	2	2016	10
17553	115	1503	936	463	Milk (pasteurized)	68	INR	15	L	2	2016	50
17554	115	1508	937	52	Rice	68	INR	5	KG	2	2016	28.4499999999999993
17555	115	1508	937	58	Wheat flour	68	INR	5	KG	2	2016	26
17556	115	1508	937	62	Oil (palm)	68	INR	5	KG	2	2016	62.0300000000000011
17557	115	1508	937	83	Potatoes	68	INR	5	KG	2	2016	20
17558	115	1508	937	84	Wheat	68	INR	5	KG	2	2016	30
17559	115	1508	937	97	Sugar	68	INR	5	KG	2	2016	36.9299999999999997
17560	115	1508	937	108	Lentils	68	INR	5	KG	2	2016	68.3400000000000034
17561	115	1508	937	114	Tomatoes	68	INR	5	KG	2	2016	10.4800000000000004
17562	115	1508	937	173	Onions	68	INR	5	KG	2	2016	20
17563	115	1508	937	175	Tea (black)	68	INR	5	KG	2	2016	220
17564	115	1508	937	184	Oil (sunflower)	68	INR	5	KG	2	2016	93
17565	115	1508	937	245	Oil (groundnut)	68	INR	5	KG	2	2016	126
17566	115	1508	937	325	Lentils (moong)	68	INR	5	KG	2	2016	95.4500000000000028
17567	115	1508	937	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	44
17568	115	1508	937	332	Lentils (urad)	68	INR	5	KG	2	2016	144.069999999999993
17569	115	1508	937	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	82
17570	115	1508	937	334	Salt (iodised)	68	INR	5	KG	2	2016	17
17571	115	1508	937	463	Milk (pasteurized)	68	INR	15	L	2	2016	34
17572	115	1495	938	52	Rice	68	INR	5	KG	2	2016	33
17573	115	1495	938	58	Wheat flour	68	INR	5	KG	2	2016	27.9600000000000009
17574	115	1495	938	61	Lentils (masur)	68	INR	5	KG	2	2016	79.0799999999999983
17575	115	1495	938	62	Oil (palm)	68	INR	5	KG	2	2016	68
17576	115	1495	938	83	Potatoes	68	INR	5	KG	2	2016	29.8500000000000014
17577	115	1495	938	84	Wheat	68	INR	5	KG	2	2016	29
17578	115	1495	938	97	Sugar	68	INR	5	KG	2	2016	31
17579	115	1495	938	108	Lentils	68	INR	5	KG	2	2016	67
17580	115	1495	938	114	Tomatoes	68	INR	5	KG	2	2016	26.1499999999999986
17581	115	1495	938	173	Onions	68	INR	5	KG	2	2016	23.3500000000000014
17582	115	1495	938	175	Tea (black)	68	INR	5	KG	2	2016	143
17583	115	1495	938	184	Oil (sunflower)	68	INR	5	KG	2	2016	105
17584	115	1495	938	228	Oil (mustard)	68	INR	5	KG	2	2016	133
17585	115	1495	938	245	Oil (groundnut)	68	INR	5	KG	2	2016	109
17586	115	1495	938	325	Lentils (moong)	68	INR	5	KG	2	2016	120.959999999999994
17587	115	1495	938	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	55
17588	115	1495	938	332	Lentils (urad)	68	INR	5	KG	2	2016	144
17589	115	1495	938	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	82
17590	115	1495	938	334	Salt (iodised)	68	INR	5	KG	2	2016	14
17591	115	1495	938	463	Milk (pasteurized)	68	INR	15	L	2	2016	38
17592	115	1487	939	52	Rice	68	INR	5	KG	2	2016	24
17593	115	1487	939	58	Wheat flour	68	INR	5	KG	2	2016	25
17594	115	1487	939	61	Lentils (masur)	68	INR	5	KG	2	2016	81.4500000000000028
17595	115	1487	939	62	Oil (palm)	68	INR	5	KG	9	2013	75
17596	115	1487	939	83	Potatoes	68	INR	5	KG	2	2016	12.1500000000000004
17597	115	1487	939	84	Wheat	68	INR	5	KG	2	2016	23
17598	115	1487	939	97	Sugar	68	INR	5	KG	2	2016	36.25
17599	115	1487	939	108	Lentils	68	INR	5	KG	2	2016	61.0499999999999972
17600	115	1487	939	114	Tomatoes	68	INR	5	KG	2	2016	20
17601	115	1487	939	173	Onions	68	INR	5	KG	2	2016	20
17602	115	1487	939	175	Tea (black)	68	INR	5	KG	2	2016	130
17603	115	1487	939	184	Oil (sunflower)	68	INR	5	KG	6	2013	111
17604	115	1487	939	228	Oil (mustard)	68	INR	5	KG	2	2016	80
17605	115	1487	939	306	Oil (soybean)	68	INR	5	KG	2	2016	75
17606	115	1487	939	325	Lentils (moong)	68	INR	5	KG	2	2016	91.9000000000000057
17607	115	1487	939	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	35
17608	115	1487	939	332	Lentils (urad)	68	INR	5	KG	2	2016	137.5
17609	115	1487	939	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	64
17610	115	1487	939	334	Salt (iodised)	68	INR	5	KG	2	2016	6
17611	115	1487	939	463	Milk (pasteurized)	68	INR	15	L	2	2016	44
17612	115	1492	940	52	Rice	68	INR	5	KG	2	2016	30
17613	115	1492	940	58	Wheat flour	68	INR	5	KG	2	2016	19
17614	115	1492	940	61	Lentils (masur)	68	INR	5	KG	2	2016	79
17615	115	1492	940	83	Potatoes	68	INR	5	KG	2	2016	8.27999999999999936
17616	115	1492	940	84	Wheat	68	INR	5	KG	2	2016	16
17617	115	1492	940	97	Sugar	68	INR	5	KG	2	2016	32.3800000000000026
17618	115	1492	940	108	Lentils	68	INR	5	KG	2	2016	65
17619	115	1492	940	114	Tomatoes	68	INR	5	KG	2	2016	30.4100000000000001
17620	115	1492	940	173	Onions	68	INR	5	KG	2	2016	20
17621	115	1492	940	175	Tea (black)	68	INR	5	KG	2	2016	180
17622	115	1492	940	184	Oil (sunflower)	68	INR	5	KG	2	2016	91
17623	115	1492	940	228	Oil (mustard)	68	INR	5	KG	2	2016	104
17624	115	1492	940	245	Oil (groundnut)	68	INR	5	KG	2	2016	110
17625	115	1492	940	306	Oil (soybean)	68	INR	5	KG	2	2016	77
17626	115	1492	940	325	Lentils (moong)	68	INR	5	KG	2	2016	87
17627	115	1492	940	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	34
17628	115	1492	940	332	Lentils (urad)	68	INR	5	KG	2	2016	130
17629	115	1492	940	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	71
17630	115	1492	940	334	Salt (iodised)	68	INR	5	KG	2	2016	15
17631	115	1492	940	463	Milk (pasteurized)	68	INR	15	L	2	2016	46
17632	115	1485	941	52	Rice	68	INR	5	KG	2	2016	28
17633	115	1485	941	58	Wheat flour	68	INR	5	KG	2	2016	31
17634	115	1485	941	61	Lentils (masur)	68	INR	5	KG	2	2016	88
17635	115	1485	941	62	Oil (palm)	68	INR	5	KG	2	2016	62
17636	115	1485	941	83	Potatoes	68	INR	5	KG	2	2016	20
17637	115	1485	941	84	Wheat	68	INR	5	KG	2	2016	29
17638	115	1485	941	97	Sugar	68	INR	5	KG	2	2016	33.8999999999999986
17639	115	1485	941	108	Lentils	68	INR	5	KG	2	2016	70
17640	115	1485	941	114	Tomatoes	68	INR	5	KG	2	2016	15.5199999999999996
17641	115	1485	941	173	Onions	68	INR	5	KG	2	2016	21.7899999999999991
17642	115	1485	941	175	Tea (black)	68	INR	5	KG	2	2016	194
17643	115	1485	941	184	Oil (sunflower)	68	INR	5	KG	2	2016	91
17644	115	1485	941	228	Oil (mustard)	68	INR	5	KG	2	2016	116
17645	115	1485	941	245	Oil (groundnut)	68	INR	5	KG	2	2016	114
17646	115	1485	941	306	Oil (soybean)	68	INR	5	KG	2	2016	87
17647	115	1485	941	325	Lentils (moong)	68	INR	5	KG	2	2016	117.930000000000007
17648	115	1485	941	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	50
17649	115	1485	941	332	Lentils (urad)	68	INR	5	KG	2	2016	165
17650	115	1485	941	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	76
17651	115	1485	941	334	Salt (iodised)	68	INR	5	KG	2	2016	12
17652	115	1485	941	463	Milk (pasteurized)	68	INR	15	L	2	2016	40
17653	115	1497	942	52	Rice	68	INR	5	KG	2	2016	23
17654	115	1497	942	58	Wheat flour	68	INR	5	KG	2	2016	20
17655	115	1497	942	61	Lentils (masur)	68	INR	5	KG	2	2016	66.5699999999999932
17656	115	1497	942	83	Potatoes	68	INR	5	KG	2	2016	11.2899999999999991
17657	115	1497	942	84	Wheat	68	INR	5	KG	2	2016	18
17658	115	1497	942	97	Sugar	68	INR	5	KG	2	2016	34.3900000000000006
17659	115	1497	942	108	Lentils	68	INR	5	KG	2	2016	58.7100000000000009
17660	115	1497	942	114	Tomatoes	68	INR	5	KG	2	2016	13.7100000000000009
17661	115	1497	942	173	Onions	68	INR	5	KG	2	2016	13.1099999999999994
17662	115	1497	942	175	Tea (black)	68	INR	5	KG	2	2016	220
17663	115	1497	942	184	Oil (sunflower)	68	INR	5	KG	2	2016	85.3599999999999994
17664	115	1497	942	228	Oil (mustard)	68	INR	5	KG	2	2016	95.5699999999999932
17665	115	1497	942	245	Oil (groundnut)	68	INR	5	KG	2	2016	115
17666	115	1497	942	306	Oil (soybean)	68	INR	5	KG	2	2016	70
17667	115	1497	942	325	Lentils (moong)	68	INR	5	KG	2	2016	96.9599999999999937
17668	115	1497	942	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	39
17669	115	1497	942	332	Lentils (urad)	68	INR	5	KG	2	2016	120.930000000000007
17670	115	1497	942	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	62
17671	115	1497	942	334	Salt (iodised)	68	INR	5	KG	2	2016	13
17672	115	1497	942	463	Milk (pasteurized)	68	INR	15	L	2	2016	37
17673	115	1486	943	52	Rice	68	INR	5	KG	3	2014	26
17674	115	1486	943	58	Wheat flour	68	INR	5	KG	3	2014	25
17675	115	1486	943	61	Lentils (masur)	68	INR	5	KG	3	2014	85
17676	115	1486	943	83	Potatoes	68	INR	5	KG	3	2014	15
17677	115	1486	943	97	Sugar	68	INR	5	KG	3	2014	40
17678	115	1486	943	114	Tomatoes	68	INR	5	KG	3	2014	30
17679	115	1486	943	173	Onions	68	INR	5	KG	3	2014	20
17680	115	1486	943	184	Oil (sunflower)	68	INR	5	KG	3	2014	149
17681	115	1486	943	228	Oil (mustard)	68	INR	5	KG	3	2014	109
17682	115	1486	943	245	Oil (groundnut)	68	INR	5	KG	3	2014	109
17683	115	1486	943	334	Salt (iodised)	68	INR	5	KG	3	2014	15
17684	115	1486	943	463	Milk (pasteurized)	68	INR	15	L	3	2014	50
17685	115	1506	944	52	Rice	68	INR	5	KG	2	2016	26.2399999999999984
17686	115	1506	944	58	Wheat flour	68	INR	5	KG	2	2016	23
17687	115	1506	944	61	Lentils (masur)	68	INR	5	KG	2	2016	60.8100000000000023
17688	115	1506	944	83	Potatoes	68	INR	5	KG	2	2016	9.14000000000000057
17689	115	1506	944	84	Wheat	68	INR	5	KG	2	2016	21
17690	115	1506	944	97	Sugar	68	INR	5	KG	2	2016	34
17691	115	1506	944	108	Lentils	68	INR	5	KG	2	2016	54.6199999999999974
17692	115	1506	944	114	Tomatoes	68	INR	5	KG	2	2016	15
17693	115	1506	944	173	Onions	68	INR	5	KG	2	2016	11.4299999999999997
17694	115	1506	944	175	Tea (black)	68	INR	5	KG	2	2016	175
17695	115	1506	944	184	Oil (sunflower)	68	INR	5	KG	2	2016	94
17696	115	1506	944	228	Oil (mustard)	68	INR	5	KG	2	2016	80.0499999999999972
17697	115	1506	944	245	Oil (groundnut)	68	INR	5	KG	2	2016	113
17698	115	1506	944	306	Oil (soybean)	68	INR	5	KG	2	2016	72
17699	115	1506	944	325	Lentils (moong)	68	INR	5	KG	2	2016	77.3799999999999955
17700	115	1506	944	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	26
17701	115	1506	944	332	Lentils (urad)	68	INR	5	KG	2	2016	116.239999999999995
17702	115	1506	944	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	53.4799999999999969
17703	115	1506	944	334	Salt (iodised)	68	INR	5	KG	2	2016	16
17704	115	1506	944	463	Milk (pasteurized)	68	INR	15	L	2	2016	34
17705	115	40429	945	52	Rice	68	INR	5	KG	2	2016	30
17706	115	40429	945	58	Wheat flour	68	INR	5	KG	2	2016	20
17707	115	40429	945	61	Lentils (masur)	68	INR	5	KG	2	2016	80.2900000000000063
17708	115	40429	945	62	Oil (palm)	68	INR	5	KG	2	2016	83.9500000000000028
17709	115	40429	945	83	Potatoes	68	INR	5	KG	2	2016	12.1400000000000006
17710	115	40429	945	84	Wheat	68	INR	5	KG	2	2016	18
17711	115	40429	945	97	Sugar	68	INR	5	KG	2	2016	39.9500000000000028
17712	115	40429	945	108	Lentils	68	INR	5	KG	2	2016	66.1899999999999977
17713	115	40429	945	114	Tomatoes	68	INR	5	KG	2	2016	27.379999999999999
17714	115	40429	945	173	Onions	68	INR	5	KG	2	2016	19.620000000000001
17715	115	40429	945	175	Tea (black)	68	INR	5	KG	2	2016	240
17716	115	40429	945	184	Oil (sunflower)	68	INR	5	KG	2	2016	125.620000000000005
17717	115	40429	945	228	Oil (mustard)	68	INR	5	KG	2	2016	134
17718	115	40429	945	245	Oil (groundnut)	68	INR	5	KG	12	2015	165.379999999999995
17719	115	40429	945	306	Oil (soybean)	68	INR	5	KG	2	2016	117.629999999999995
17720	115	40429	945	325	Lentils (moong)	68	INR	5	KG	2	2016	98.0999999999999943
17721	115	40429	945	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	38
17722	115	40429	945	332	Lentils (urad)	68	INR	5	KG	2	2016	151.810000000000002
17723	115	40429	945	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	72.0999999999999943
17724	115	40429	945	334	Salt (iodised)	68	INR	5	KG	2	2016	18
17725	115	40429	945	463	Milk (pasteurized)	68	INR	15	L	2	2016	40
17726	115	1506	946	52	Rice	68	INR	5	KG	2	2016	27
17727	115	1506	946	58	Wheat flour	68	INR	5	KG	2	2016	20.8900000000000006
17728	115	1506	946	61	Lentils (masur)	68	INR	5	KG	2	2016	90
17729	115	1506	946	83	Potatoes	68	INR	5	KG	2	2016	11.1099999999999994
17730	115	1506	946	84	Wheat	68	INR	5	KG	2	2016	18.8900000000000006
17731	115	1506	946	97	Sugar	68	INR	5	KG	2	2016	34.8900000000000006
17732	115	1506	946	108	Lentils	68	INR	5	KG	2	2016	60
17733	115	1506	946	114	Tomatoes	68	INR	5	KG	2	2016	12.7799999999999994
17734	115	1506	946	173	Onions	68	INR	5	KG	2	2016	17.7800000000000011
17735	115	1506	946	175	Tea (black)	68	INR	5	KG	2	2016	220
17736	115	1506	946	184	Oil (sunflower)	68	INR	5	KG	2	2016	100
17737	115	1506	946	228	Oil (mustard)	68	INR	5	KG	2	2016	100
17738	115	1506	946	245	Oil (groundnut)	68	INR	5	KG	2	2016	125
17739	115	1506	946	306	Oil (soybean)	68	INR	5	KG	2	2016	80
17740	115	1506	946	325	Lentils (moong)	68	INR	5	KG	2	2016	100
17741	115	1506	946	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	33.1099999999999994
17742	115	1506	946	332	Lentils (urad)	68	INR	5	KG	2	2016	116
17743	115	1506	946	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	70
17744	115	1506	946	334	Salt (iodised)	68	INR	5	KG	2	2016	16
17745	115	1506	946	463	Milk (pasteurized)	68	INR	15	L	2	2016	34
17746	115	1510	947	52	Rice	68	INR	5	KG	2	2016	20
17747	115	1510	947	58	Wheat flour	68	INR	5	KG	2	2016	20.6000000000000014
17748	115	1510	947	61	Lentils (masur)	68	INR	5	KG	2	2016	81.4500000000000028
17749	115	1510	947	62	Oil (palm)	68	INR	5	KG	2	2016	70
17750	115	1510	947	83	Potatoes	68	INR	5	KG	2	2016	8.59999999999999964
17751	115	1510	947	84	Wheat	68	INR	5	KG	2	2016	18.6000000000000014
17752	115	1510	947	97	Sugar	68	INR	5	KG	2	2016	34.6499999999999986
17753	115	1510	947	108	Lentils	68	INR	5	KG	2	2016	74.25
17754	115	1510	947	114	Tomatoes	68	INR	5	KG	2	2016	20
17755	115	1510	947	173	Onions	68	INR	5	KG	2	2016	20
17756	115	1510	947	175	Tea (black)	68	INR	5	KG	2	2016	190
17757	115	1510	947	184	Oil (sunflower)	68	INR	5	KG	2	2016	100
17758	115	1510	947	228	Oil (mustard)	68	INR	5	KG	2	2016	104.25
17759	115	1510	947	245	Oil (groundnut)	68	INR	5	KG	2	2016	140
17760	115	1510	947	306	Oil (soybean)	68	INR	5	KG	2	2016	85
17761	115	1510	947	325	Lentils (moong)	68	INR	5	KG	2	2016	114.209999999999994
17762	115	1510	947	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	34
17763	115	1510	947	332	Lentils (urad)	68	INR	5	KG	2	2016	140
17764	115	1510	947	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	65
17765	115	1510	947	334	Salt (iodised)	68	INR	5	KG	2	2016	14
17766	115	1510	947	463	Milk (pasteurized)	68	INR	15	L	2	2016	50
17767	115	1492	948	52	Rice	68	INR	5	KG	2	2016	23
17768	115	1492	948	58	Wheat flour	68	INR	5	KG	2	2016	22
17769	115	1492	948	61	Lentils (masur)	68	INR	5	KG	2	2016	84
17770	115	1492	948	62	Oil (palm)	68	INR	5	KG	2	2016	72
17771	115	1492	948	83	Potatoes	68	INR	5	KG	2	2016	10
17772	115	1492	948	84	Wheat	68	INR	5	KG	2	2016	18
17773	115	1492	948	97	Sugar	68	INR	5	KG	2	2016	31
17774	115	1492	948	108	Lentils	68	INR	5	KG	2	2016	64
17775	115	1492	948	114	Tomatoes	68	INR	5	KG	2	2016	31.3099999999999987
17776	115	1492	948	173	Onions	68	INR	5	KG	2	2016	23.6600000000000001
17777	115	1492	948	175	Tea (black)	68	INR	5	KG	2	2016	180
17778	115	1492	948	184	Oil (sunflower)	68	INR	5	KG	2	2016	99
17779	115	1492	948	228	Oil (mustard)	68	INR	5	KG	2	2016	89
17780	115	1492	948	245	Oil (groundnut)	68	INR	5	KG	2	2016	133
17781	115	1492	948	306	Oil (soybean)	68	INR	5	KG	2	2016	84
17782	115	1492	948	325	Lentils (moong)	68	INR	5	KG	2	2016	95
17783	115	1492	948	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	38
17784	115	1492	948	332	Lentils (urad)	68	INR	5	KG	2	2016	120
17785	115	1492	948	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	72
17786	115	1492	948	334	Salt (iodised)	68	INR	5	KG	2	2016	17
17787	115	1492	948	463	Milk (pasteurized)	68	INR	15	L	2	2016	43
17788	115	1503	949	52	Rice	68	INR	5	KG	6	2015	23.3599999999999994
17789	115	1503	949	61	Lentils (masur)	68	INR	5	KG	6	2015	83.8199999999999932
17790	115	1503	949	83	Potatoes	68	INR	5	KG	6	2015	10
17791	115	1503	949	97	Sugar	68	INR	5	KG	6	2015	29.3599999999999994
17792	115	1503	949	108	Lentils	68	INR	5	KG	6	2015	63.2700000000000031
17793	115	1503	949	114	Tomatoes	68	INR	5	KG	6	2015	27.2699999999999996
17794	115	1503	949	173	Onions	68	INR	5	KG	6	2015	28.6400000000000006
17795	115	1503	949	175	Tea (black)	68	INR	5	KG	6	2015	140
17796	115	1503	949	228	Oil (mustard)	68	INR	5	KG	6	2015	107.950000000000003
17797	115	1503	949	306	Oil (soybean)	68	INR	5	KG	6	2015	81.269999999999996
17798	115	1503	949	325	Lentils (moong)	68	INR	5	KG	6	2015	108.140000000000001
17799	115	1503	949	331	Sugar (jaggery/gur)	68	INR	5	KG	6	2015	40
17800	115	1503	949	332	Lentils (urad)	68	INR	5	KG	6	2015	105.730000000000004
17801	115	1503	949	333	Ghee (vanaspati)	68	INR	5	KG	6	2015	66
17802	115	1503	949	334	Salt (iodised)	68	INR	5	KG	6	2015	9
17803	115	1503	949	463	Milk (pasteurized)	68	INR	15	L	6	2015	34
17804	115	1511	950	52	Rice	68	INR	5	KG	2	2016	22.9699999999999989
17805	115	1511	950	58	Wheat flour	68	INR	5	KG	2	2016	23
17806	115	1511	950	61	Lentils (masur)	68	INR	5	KG	2	2016	72.2099999999999937
17807	115	1511	950	62	Oil (palm)	68	INR	5	KG	2	2016	60.2800000000000011
17808	115	1511	950	83	Potatoes	68	INR	5	KG	2	2016	9.27999999999999936
17809	115	1511	950	84	Wheat	68	INR	5	KG	6	2015	16
17810	115	1511	950	97	Sugar	68	INR	5	KG	2	2016	34
17811	115	1511	950	108	Lentils	68	INR	5	KG	2	2016	62
17812	115	1511	950	114	Tomatoes	68	INR	5	KG	2	2016	16.2100000000000009
17813	115	1511	950	173	Onions	68	INR	5	KG	2	2016	20
17814	115	1511	950	175	Tea (black)	68	INR	5	KG	2	2016	140
17815	115	1511	950	184	Oil (sunflower)	68	INR	5	KG	2	2016	92
17816	115	1511	950	228	Oil (mustard)	68	INR	5	KG	2	2016	106.549999999999997
17817	115	1511	950	245	Oil (groundnut)	68	INR	5	KG	2	2016	132
17818	115	1511	950	306	Oil (soybean)	68	INR	5	KG	2	2016	84
17819	115	1511	950	325	Lentils (moong)	68	INR	5	KG	2	2016	101.900000000000006
17820	115	1511	950	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	40
17821	115	1511	950	332	Lentils (urad)	68	INR	5	KG	2	2016	128.280000000000001
17822	115	1511	950	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	62
17823	115	1511	950	334	Salt (iodised)	68	INR	5	KG	2	2016	9
17824	115	1511	950	463	Milk (pasteurized)	68	INR	15	L	2	2016	34
17825	115	1506	951	52	Rice	68	INR	5	KG	2	2016	25
17826	115	1506	951	58	Wheat flour	68	INR	5	KG	2	2016	23
17827	115	1506	951	61	Lentils (masur)	68	INR	5	KG	2	2016	85
17828	115	1506	951	62	Oil (palm)	68	INR	5	KG	2	2016	85
17829	115	1506	951	83	Potatoes	68	INR	5	KG	2	2016	6.95999999999999996
17830	115	1506	951	84	Wheat	68	INR	5	KG	2	2016	18
17831	115	1506	951	97	Sugar	68	INR	5	KG	2	2016	35
17832	115	1506	951	108	Lentils	68	INR	5	KG	2	2016	62
17833	115	1506	951	114	Tomatoes	68	INR	5	KG	2	2016	28.6099999999999994
17834	115	1506	951	173	Onions	68	INR	5	KG	2	2016	13.5199999999999996
17835	115	1506	951	175	Tea (black)	68	INR	5	KG	2	2016	175
17836	115	1506	951	184	Oil (sunflower)	68	INR	5	KG	2	2016	93.7800000000000011
17837	115	1506	951	228	Oil (mustard)	68	INR	5	KG	2	2016	93
17838	115	1506	951	245	Oil (groundnut)	68	INR	5	KG	2	2016	115
17839	115	1506	951	306	Oil (soybean)	68	INR	5	KG	2	2016	80
17840	115	1506	951	325	Lentils (moong)	68	INR	5	KG	2	2016	102
17841	115	1506	951	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	31.9100000000000001
17842	115	1506	951	332	Lentils (urad)	68	INR	5	KG	2	2016	150
17843	115	1506	951	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	55
17844	115	1506	951	334	Salt (iodised)	68	INR	5	KG	2	2016	15
17845	115	1506	951	463	Milk (pasteurized)	68	INR	15	L	2	2016	35
17846	115	1510	952	52	Rice	68	INR	5	KG	2	2016	23
17847	115	1510	952	58	Wheat flour	68	INR	5	KG	2	2016	20
17848	115	1510	952	61	Lentils (masur)	68	INR	5	KG	2	2016	70.7099999999999937
17849	115	1510	952	62	Oil (palm)	68	INR	5	KG	2	2016	67
17850	115	1510	952	83	Potatoes	68	INR	5	KG	2	2016	8
17851	115	1510	952	84	Wheat	68	INR	5	KG	2	2016	17
17852	115	1510	952	97	Sugar	68	INR	5	KG	2	2016	34
17853	115	1510	952	108	Lentils	68	INR	5	KG	2	2016	70
17854	115	1510	952	114	Tomatoes	68	INR	5	KG	2	2016	19.0500000000000007
17855	115	1510	952	173	Onions	68	INR	5	KG	2	2016	20
17856	115	1510	952	175	Tea (black)	68	INR	5	KG	2	2016	230
17857	115	1510	952	184	Oil (sunflower)	68	INR	5	KG	2	2016	92
17858	115	1510	952	228	Oil (mustard)	68	INR	5	KG	2	2016	110
17859	115	1510	952	245	Oil (groundnut)	68	INR	5	KG	2	2016	125
17860	115	1510	952	306	Oil (soybean)	68	INR	5	KG	2	2016	85
17861	115	1510	952	325	Lentils (moong)	68	INR	5	KG	2	2016	100
17862	115	1510	952	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	40
17863	115	1510	952	332	Lentils (urad)	68	INR	5	KG	2	2016	155
17864	115	1510	952	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	60
17865	115	1510	952	334	Salt (iodised)	68	INR	5	KG	2	2016	16
17866	115	1510	952	463	Milk (pasteurized)	68	INR	15	L	2	2016	47
17867	115	1505	953	52	Rice	68	INR	5	KG	2	2016	25
17868	115	1505	953	58	Wheat flour	68	INR	5	KG	2	2016	20.25
17869	115	1505	953	61	Lentils (masur)	68	INR	5	KG	2	2016	93.4399999999999977
17870	115	1505	953	62	Oil (palm)	68	INR	5	KG	2	2016	60
17871	115	1505	953	83	Potatoes	68	INR	5	KG	2	2016	7
17872	115	1505	953	84	Wheat	68	INR	5	KG	2	2016	18.129999999999999
17873	115	1505	953	97	Sugar	68	INR	5	KG	2	2016	33.1300000000000026
17874	115	1505	953	108	Lentils	68	INR	5	KG	2	2016	65
17875	115	1505	953	114	Tomatoes	68	INR	5	KG	2	2016	21.25
17876	115	1505	953	173	Onions	68	INR	5	KG	2	2016	15
17877	115	1505	953	175	Tea (black)	68	INR	5	KG	2	2016	185
17878	115	1505	953	184	Oil (sunflower)	68	INR	5	KG	2	2016	105
17879	115	1505	953	228	Oil (mustard)	68	INR	5	KG	2	2016	100
17880	115	1505	953	245	Oil (groundnut)	68	INR	5	KG	2	2016	135
17881	115	1505	953	306	Oil (soybean)	68	INR	5	KG	2	2016	85
17882	115	1505	953	325	Lentils (moong)	68	INR	5	KG	2	2016	100.629999999999995
17883	115	1505	953	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	40
17884	115	1505	953	332	Lentils (urad)	68	INR	5	KG	2	2016	134.379999999999995
17885	115	1505	953	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	75
17886	115	1505	953	334	Salt (iodised)	68	INR	5	KG	2	2016	16
17887	115	1505	953	463	Milk (pasteurized)	68	INR	15	L	2	2016	42
17888	115	1493	954	52	Rice	68	INR	5	KG	2	2016	30
17889	115	1493	954	58	Wheat flour	68	INR	5	KG	2	2016	22
17890	115	1493	954	61	Lentils (masur)	68	INR	5	KG	2	2016	87.3799999999999955
17891	115	1493	954	83	Potatoes	68	INR	5	KG	2	2016	10
17892	115	1493	954	84	Wheat	68	INR	5	KG	6	2015	26
17893	115	1493	954	97	Sugar	68	INR	5	KG	2	2016	33
17894	115	1493	954	108	Lentils	68	INR	5	KG	2	2016	73.5400000000000063
17895	115	1493	954	114	Tomatoes	68	INR	5	KG	2	2016	27.8000000000000007
17896	115	1493	954	173	Onions	68	INR	5	KG	2	2016	20
17897	115	1493	954	175	Tea (black)	68	INR	5	KG	2	2016	180
17898	115	1493	954	228	Oil (mustard)	68	INR	5	KG	2	2016	142
17899	115	1493	954	245	Oil (groundnut)	68	INR	5	KG	10	2014	158
17900	115	1493	954	306	Oil (soybean)	68	INR	5	KG	2	2016	77.6400000000000006
17901	115	1493	954	325	Lentils (moong)	68	INR	5	KG	2	2016	100.200000000000003
17902	115	1493	954	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	29
17903	115	1493	954	332	Lentils (urad)	68	INR	5	KG	2	2016	139.169999999999987
17904	115	1493	954	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	70
17905	115	1493	954	334	Salt (iodised)	68	INR	5	KG	2	2016	17
17906	115	1493	954	463	Milk (pasteurized)	68	INR	15	L	2	2016	28
17907	115	1498	955	52	Rice	68	INR	5	KG	2	2016	30
17908	115	1498	955	58	Wheat flour	68	INR	5	KG	2	2016	30
17909	115	1498	955	61	Lentils (masur)	68	INR	5	KG	2	2016	88
17910	115	1498	955	62	Oil (palm)	68	INR	5	KG	2	2016	58
17911	115	1498	955	83	Potatoes	68	INR	5	KG	2	2016	19.2800000000000011
17912	115	1498	955	84	Wheat	68	INR	5	KG	2	2016	33.6899999999999977
17913	115	1498	955	97	Sugar	68	INR	5	KG	2	2016	35
17914	115	1498	955	108	Lentils	68	INR	5	KG	2	2016	73.3799999999999955
17915	115	1498	955	114	Tomatoes	68	INR	5	KG	2	2016	22.8999999999999986
17916	115	1498	955	173	Onions	68	INR	5	KG	2	2016	21.5899999999999999
17917	115	1498	955	175	Tea (black)	68	INR	5	KG	2	2016	250
17918	115	1498	955	184	Oil (sunflower)	68	INR	5	KG	2	2016	87.3799999999999955
17919	115	1498	955	228	Oil (mustard)	68	INR	5	KG	2	2016	117.030000000000001
17920	115	1498	955	245	Oil (groundnut)	68	INR	5	KG	2	2016	131.47999999999999
17921	115	1498	955	306	Oil (soybean)	68	INR	5	KG	2	2016	80
17922	115	1498	955	325	Lentils (moong)	68	INR	5	KG	2	2016	121.760000000000005
17923	115	1498	955	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	54
17924	115	1498	955	332	Lentils (urad)	68	INR	5	KG	2	2016	172
17925	115	1498	955	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	92.9000000000000057
17926	115	1498	955	334	Salt (iodised)	68	INR	5	KG	2	2016	18
17927	115	1498	955	463	Milk (pasteurized)	68	INR	15	L	2	2016	41
17928	115	1498	956	52	Rice	68	INR	5	KG	2	2016	27
17929	115	1498	956	58	Wheat flour	68	INR	5	KG	2	2016	30
17930	115	1498	956	61	Lentils (masur)	68	INR	5	KG	2	2016	73.9300000000000068
17931	115	1498	956	62	Oil (palm)	68	INR	5	KG	2	2016	75.8599999999999994
17932	115	1498	956	83	Potatoes	68	INR	5	KG	2	2016	19.2399999999999984
17933	115	1498	956	84	Wheat	68	INR	5	KG	2	2016	24
17934	115	1498	956	97	Sugar	68	INR	5	KG	2	2016	30.9699999999999989
17935	115	1498	956	108	Lentils	68	INR	5	KG	2	2016	66.1400000000000006
17936	115	1498	956	114	Tomatoes	68	INR	5	KG	2	2016	21.2100000000000009
17937	115	1498	956	173	Onions	68	INR	5	KG	2	2016	20.5899999999999999
17938	115	1498	956	175	Tea (black)	68	INR	5	KG	2	2016	220
17939	115	1498	956	184	Oil (sunflower)	68	INR	5	KG	2	2016	100
17940	115	1498	956	228	Oil (mustard)	68	INR	5	KG	2	2016	102
17941	115	1498	956	245	Oil (groundnut)	68	INR	5	KG	2	2016	115
17942	115	1498	956	306	Oil (soybean)	68	INR	5	KG	2	2016	89
17943	115	1498	956	325	Lentils (moong)	68	INR	5	KG	2	2016	102.549999999999997
17944	115	1498	956	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	40
17945	115	1498	956	332	Lentils (urad)	68	INR	5	KG	2	2016	144.069999999999993
17946	115	1498	956	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	79
17947	115	1498	956	334	Salt (iodised)	68	INR	5	KG	2	2016	16
17948	115	1498	956	463	Milk (pasteurized)	68	INR	15	L	2	2016	31
17949	115	1488	957	52	Rice	68	INR	5	KG	2	2016	26
17950	115	1488	957	58	Wheat flour	68	INR	5	KG	2	2016	21.5500000000000007
17951	115	1488	957	61	Lentils (masur)	68	INR	5	KG	2	2016	60.2700000000000031
17952	115	1488	957	62	Oil (palm)	68	INR	5	KG	2	2016	66.4099999999999966
17953	115	1488	957	83	Potatoes	68	INR	5	KG	2	2016	9.14000000000000057
17954	115	1488	957	84	Wheat	68	INR	5	KG	2	2016	18
17955	115	1488	957	97	Sugar	68	INR	5	KG	2	2016	36.1799999999999997
17956	115	1488	957	108	Lentils	68	INR	5	KG	2	2016	58.5499999999999972
17957	115	1488	957	114	Tomatoes	68	INR	5	KG	2	2016	13.5500000000000007
17958	115	1488	957	173	Onions	68	INR	5	KG	2	2016	16.2300000000000004
17959	115	1488	957	175	Tea (black)	68	INR	5	KG	2	2016	150
17960	115	1488	957	184	Oil (sunflower)	68	INR	5	KG	2	2016	103
17961	115	1488	957	228	Oil (mustard)	68	INR	5	KG	2	2016	101.090000000000003
17962	115	1488	957	306	Oil (soybean)	68	INR	5	KG	2	2016	89.5900000000000034
17963	115	1488	957	325	Lentils (moong)	68	INR	5	KG	2	2016	93.769999999999996
17964	115	1488	957	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	35
17965	115	1488	957	332	Lentils (urad)	68	INR	5	KG	2	2016	125.859999999999999
17966	115	1488	957	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	53.5499999999999972
17967	115	1488	957	334	Salt (iodised)	68	INR	5	KG	2	2016	18
17968	115	1488	957	463	Milk (pasteurized)	68	INR	15	L	2	2016	38
17969	115	1498	958	52	Rice	68	INR	5	KG	2	2016	21
17970	115	1498	958	58	Wheat flour	68	INR	5	KG	2	2016	27
17971	115	1498	958	61	Lentils (masur)	68	INR	5	KG	2	2016	69.9000000000000057
17972	115	1498	958	62	Oil (palm)	68	INR	5	KG	2	2016	63.4299999999999997
17973	115	1498	958	83	Potatoes	68	INR	5	KG	2	2016	11.5199999999999996
17974	115	1498	958	84	Wheat	68	INR	5	KG	2	2016	24
17975	115	1498	958	97	Sugar	68	INR	5	KG	2	2016	35
17976	115	1498	958	108	Lentils	68	INR	5	KG	2	2016	67.3299999999999983
17977	115	1498	958	114	Tomatoes	68	INR	5	KG	2	2016	11.8100000000000005
17978	115	1498	958	173	Onions	68	INR	5	KG	2	2016	16.8999999999999986
17979	115	1498	958	175	Tea (black)	68	INR	5	KG	2	2016	180
17980	115	1498	958	184	Oil (sunflower)	68	INR	5	KG	2	2016	88
17981	115	1498	958	228	Oil (mustard)	68	INR	5	KG	2	2016	96
17982	115	1498	958	245	Oil (groundnut)	68	INR	5	KG	2	2016	120
17983	115	1498	958	306	Oil (soybean)	68	INR	5	KG	2	2016	80
17984	115	1498	958	325	Lentils (moong)	68	INR	5	KG	2	2016	95
17985	115	1498	958	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	36
17986	115	1498	958	332	Lentils (urad)	68	INR	5	KG	2	2016	125.329999999999998
17987	115	1498	958	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	64
17988	115	1498	958	334	Salt (iodised)	68	INR	5	KG	2	2016	9
17989	115	1498	958	463	Milk (pasteurized)	68	INR	15	L	2	2016	38
17990	115	1491	959	52	Rice	68	INR	5	KG	2	2016	23.5199999999999996
17991	115	1491	959	58	Wheat flour	68	INR	5	KG	2	2016	23.9299999999999997
17992	115	1491	959	61	Lentils (masur)	68	INR	5	KG	2	2016	76.1700000000000017
17993	115	1491	959	62	Oil (palm)	68	INR	5	KG	2	2016	56.4799999999999969
17994	115	1491	959	83	Potatoes	68	INR	5	KG	2	2016	10.7899999999999991
17995	115	1491	959	84	Wheat	68	INR	5	KG	2	2016	21.4499999999999993
17996	115	1491	959	97	Sugar	68	INR	5	KG	2	2016	31.3399999999999999
17997	115	1491	959	108	Lentils	68	INR	5	KG	2	2016	66.2099999999999937
17998	115	1491	959	114	Tomatoes	68	INR	5	KG	2	2016	15.0700000000000003
17999	115	1491	959	173	Onions	68	INR	5	KG	2	2016	10.2799999999999994
18000	115	1491	959	175	Tea (black)	68	INR	5	KG	2	2016	266.240000000000009
18001	115	1491	959	184	Oil (sunflower)	68	INR	5	KG	2	2016	84
18002	115	1491	959	228	Oil (mustard)	68	INR	5	KG	2	2016	93
18003	115	1491	959	245	Oil (groundnut)	68	INR	5	KG	2	2016	107.310000000000002
18004	115	1491	959	306	Oil (soybean)	68	INR	5	KG	2	2016	78.2099999999999937
18005	115	1491	959	325	Lentils (moong)	68	INR	5	KG	2	2016	109.170000000000002
18006	115	1491	959	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	40
18007	115	1491	959	332	Lentils (urad)	68	INR	5	KG	2	2016	144.169999999999987
18008	115	1491	959	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	56.5900000000000034
18009	115	1491	959	334	Salt (iodised)	68	INR	5	KG	2	2016	19
18010	115	1491	959	463	Milk (pasteurized)	68	INR	15	L	2	2016	48
18011	115	70078	960	52	Rice	68	INR	5	KG	2	2016	29
18012	115	70078	960	58	Wheat flour	68	INR	5	KG	2	2016	22
18013	115	70078	960	61	Lentils (masur)	68	INR	5	KG	2	2016	70.3499999999999943
18014	115	70078	960	62	Oil (palm)	68	INR	5	KG	2	2016	65
18015	115	70078	960	83	Potatoes	68	INR	5	KG	2	2016	13.2899999999999991
18016	115	70078	960	84	Wheat	68	INR	5	KG	2	2016	22
18017	115	70078	960	97	Sugar	68	INR	5	KG	2	2016	35
18018	115	70078	960	108	Lentils	68	INR	5	KG	2	2016	67.2900000000000063
18019	115	70078	960	114	Tomatoes	68	INR	5	KG	2	2016	11.7100000000000009
18020	115	70078	960	173	Onions	68	INR	5	KG	2	2016	16.4699999999999989
18021	115	70078	960	175	Tea (black)	68	INR	5	KG	2	2016	260
18022	115	70078	960	184	Oil (sunflower)	68	INR	5	KG	2	2016	95
18023	115	70078	960	228	Oil (mustard)	68	INR	5	KG	2	2016	113.939999999999998
18024	115	70078	960	245	Oil (groundnut)	68	INR	5	KG	2	2016	132
18025	115	70078	960	306	Oil (soybean)	68	INR	5	KG	2	2016	80
18026	115	70078	960	325	Lentils (moong)	68	INR	5	KG	2	2016	108.819999999999993
18027	115	70078	960	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	36
18028	115	70078	960	332	Lentils (urad)	68	INR	5	KG	2	2016	135.289999999999992
18029	115	70078	960	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	60
18030	115	70078	960	334	Salt (iodised)	68	INR	5	KG	2	2016	18
18031	115	70078	960	463	Milk (pasteurized)	68	INR	15	L	2	2016	38
18032	115	1504	961	52	Rice	68	INR	5	KG	2	2016	24.0700000000000003
18033	115	1504	961	58	Wheat flour	68	INR	5	KG	2	2016	21.4600000000000009
18034	115	1504	961	61	Lentils (masur)	68	INR	5	KG	2	2016	61.0399999999999991
18035	115	1504	961	62	Oil (palm)	68	INR	5	KG	2	2016	67.2099999999999937
18036	115	1504	961	83	Potatoes	68	INR	5	KG	2	2016	11.0700000000000003
18037	115	1504	961	84	Wheat	68	INR	5	KG	1	2013	17
18038	115	1504	961	97	Sugar	68	INR	5	KG	2	2016	35.0399999999999991
18039	115	1504	961	108	Lentils	68	INR	5	KG	2	2016	60.6799999999999997
18040	115	1504	961	114	Tomatoes	68	INR	5	KG	2	2016	13.7899999999999991
18041	115	1504	961	173	Onions	68	INR	5	KG	2	2016	16.7899999999999991
18042	115	1504	961	175	Tea (black)	68	INR	5	KG	2	2016	200
18043	115	1504	961	184	Oil (sunflower)	68	INR	5	KG	2	2016	98
18044	115	1504	961	228	Oil (mustard)	68	INR	5	KG	2	2016	106.319999999999993
18045	115	1504	961	306	Oil (soybean)	68	INR	5	KG	2	2016	81.8900000000000006
18046	115	1504	961	325	Lentils (moong)	68	INR	5	KG	2	2016	87.6099999999999994
18047	115	1504	961	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	32.7899999999999991
18048	115	1504	961	332	Lentils (urad)	68	INR	5	KG	2	2016	114.640000000000001
18049	115	1504	961	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	55.6799999999999997
18050	115	1504	961	334	Salt (iodised)	68	INR	5	KG	2	2016	17
18051	115	1504	961	463	Milk (pasteurized)	68	INR	15	L	2	2016	34
18052	115	1501	962	52	Rice	68	INR	5	KG	2	2016	21
18053	115	1501	962	58	Wheat flour	68	INR	5	KG	2	2016	26
18054	115	1501	962	61	Lentils (masur)	68	INR	5	KG	2	2016	91
18055	115	1501	962	62	Oil (palm)	68	INR	5	KG	2	2016	96
18056	115	1501	962	83	Potatoes	68	INR	5	KG	2	2016	12
18057	115	1501	962	84	Wheat	68	INR	5	KG	2	2016	27
18058	115	1501	962	97	Sugar	68	INR	5	KG	2	2016	35
18059	115	1501	962	108	Lentils	68	INR	5	KG	2	2016	75
18060	115	1501	962	114	Tomatoes	68	INR	5	KG	2	2016	35
18061	115	1501	962	173	Onions	68	INR	5	KG	2	2016	29
18062	115	1501	962	175	Tea (black)	68	INR	5	KG	2	2016	200
18063	115	1501	962	184	Oil (sunflower)	68	INR	5	KG	2	2016	122
18064	115	1501	962	228	Oil (mustard)	68	INR	5	KG	2	2016	98.2000000000000028
18065	115	1501	962	245	Oil (groundnut)	68	INR	5	KG	2	2016	118
18066	115	1501	962	306	Oil (soybean)	68	INR	5	KG	2	2016	89
18067	115	1501	962	325	Lentils (moong)	68	INR	5	KG	2	2016	113.799999999999997
18068	115	1501	962	332	Lentils (urad)	68	INR	5	KG	2	2016	130
18069	115	1501	962	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	50.2000000000000028
18070	115	1501	962	334	Salt (iodised)	68	INR	5	KG	2	2016	20
18071	115	1501	962	463	Milk (pasteurized)	68	INR	15	L	2	2016	60
18072	115	1493	963	52	Rice	68	INR	5	KG	2	2016	30
18073	115	1493	963	58	Wheat flour	68	INR	5	KG	2	2016	22
18074	115	1493	963	61	Lentils (masur)	68	INR	5	KG	2	2016	78.1400000000000006
18075	115	1493	963	83	Potatoes	68	INR	5	KG	2	2016	10
18076	115	1493	963	84	Wheat	68	INR	5	KG	3	2011	15
18077	115	1493	963	97	Sugar	68	INR	5	KG	2	2016	32
18078	115	1493	963	108	Lentils	68	INR	5	KG	2	2016	68
18079	115	1493	963	114	Tomatoes	68	INR	5	KG	2	2016	25.8599999999999994
18080	115	1493	963	173	Onions	68	INR	5	KG	2	2016	21.5500000000000007
18081	115	1493	963	175	Tea (black)	68	INR	5	KG	2	2016	180
18082	115	1493	963	228	Oil (mustard)	68	INR	5	KG	2	2016	142
18083	115	1493	963	245	Oil (groundnut)	68	INR	5	KG	2	2016	147.590000000000003
18084	115	1493	963	306	Oil (soybean)	68	INR	5	KG	2	2016	71.7600000000000051
18085	115	1493	963	325	Lentils (moong)	68	INR	5	KG	2	2016	97.4500000000000028
18086	115	1493	963	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	38
18087	115	1493	963	332	Lentils (urad)	68	INR	5	KG	2	2016	133.969999999999999
18088	115	1493	963	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	72.7600000000000051
18089	115	1493	963	334	Salt (iodised)	68	INR	5	KG	2	2016	17
18090	115	1493	963	463	Milk (pasteurized)	68	INR	15	L	2	2016	30
18091	115	1511	964	52	Rice	68	INR	5	KG	2	2016	32
18092	115	1511	964	58	Wheat flour	68	INR	5	KG	2	2016	23.2600000000000016
18093	115	1511	964	61	Lentils (masur)	68	INR	5	KG	2	2016	90.6200000000000045
18094	115	1511	964	62	Oil (palm)	68	INR	5	KG	2	2016	62.3299999999999983
18095	115	1511	964	83	Potatoes	68	INR	5	KG	2	2016	11.1699999999999999
18096	115	1511	964	84	Wheat	68	INR	5	KG	2	2016	20.2600000000000016
18097	115	1511	964	97	Sugar	68	INR	5	KG	2	2016	34.2700000000000031
18098	115	1511	964	108	Lentils	68	INR	5	KG	2	2016	70.3299999999999983
18099	115	1511	964	114	Tomatoes	68	INR	5	KG	2	2016	21.1700000000000017
18100	115	1511	964	173	Onions	68	INR	5	KG	2	2016	26.6700000000000017
18101	115	1511	964	175	Tea (black)	68	INR	5	KG	2	2016	120.079999999999998
18102	115	1511	964	184	Oil (sunflower)	68	INR	5	KG	2	2016	96.3299999999999983
18103	115	1511	964	228	Oil (mustard)	68	INR	5	KG	2	2016	114.329999999999998
18104	115	1511	964	245	Oil (groundnut)	68	INR	5	KG	2	2016	137.919999999999987
18105	115	1511	964	306	Oil (soybean)	68	INR	5	KG	2	2016	75
18106	115	1511	964	325	Lentils (moong)	68	INR	5	KG	2	2016	110.170000000000002
18107	115	1511	964	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	44
18108	115	1511	964	332	Lentils (urad)	68	INR	5	KG	2	2016	125.379999999999995
18109	115	1511	964	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	65.1700000000000017
18110	115	1511	964	334	Salt (iodised)	68	INR	5	KG	2	2016	10
18111	115	1511	964	463	Milk (pasteurized)	68	INR	15	L	11	2015	30
18112	115	40424	965	52	Rice	68	INR	5	KG	2	2016	26
18113	115	40424	965	58	Wheat flour	68	INR	5	KG	2	2016	22.5300000000000011
18114	115	40424	965	61	Lentils (masur)	68	INR	5	KG	2	2016	90
18115	115	40424	965	83	Potatoes	68	INR	5	KG	2	2016	20.3299999999999983
18116	115	40424	965	84	Wheat	68	INR	5	KG	2	2016	20
18117	115	40424	965	97	Sugar	68	INR	5	KG	2	2016	42.6700000000000017
18118	115	40424	965	108	Lentils	68	INR	5	KG	2	2016	77.3299999999999983
18119	115	40424	965	114	Tomatoes	68	INR	5	KG	2	2016	27.6700000000000017
18120	115	40424	965	173	Onions	68	INR	5	KG	2	2016	22.6700000000000017
18121	115	40424	965	175	Tea (black)	68	INR	5	KG	2	2016	230.400000000000006
18122	115	40424	965	184	Oil (sunflower)	68	INR	5	KG	2	2016	140
18123	115	40424	965	228	Oil (mustard)	68	INR	5	KG	2	2016	137.870000000000005
18124	115	40424	965	306	Oil (soybean)	68	INR	5	KG	2	2016	98
18125	115	40424	965	325	Lentils (moong)	68	INR	5	KG	2	2016	100
18126	115	40424	965	332	Lentils (urad)	68	INR	5	KG	2	2016	120
18127	115	40424	965	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	94.2000000000000028
18128	115	40424	965	334	Salt (iodised)	68	INR	5	KG	2	2016	18
18129	115	40424	965	463	Milk (pasteurized)	68	INR	15	L	2	2016	35.2000000000000028
18130	115	1495	966	52	Rice	68	INR	5	KG	2	2016	31
18131	115	1495	966	58	Wheat flour	68	INR	5	KG	2	2016	32
18132	115	1495	966	61	Lentils (masur)	68	INR	5	KG	2	2016	86.1500000000000057
18133	115	1495	966	62	Oil (palm)	68	INR	5	KG	2	2016	74
18134	115	1495	966	83	Potatoes	68	INR	5	KG	2	2016	27
18135	115	1495	966	84	Wheat	68	INR	5	KG	2	2016	29
18136	115	1495	966	97	Sugar	68	INR	5	KG	2	2016	33.0399999999999991
18137	115	1495	966	108	Lentils	68	INR	5	KG	2	2016	67
18138	115	1495	966	114	Tomatoes	68	INR	5	KG	2	2016	28.8099999999999987
18139	115	1495	966	173	Onions	68	INR	5	KG	2	2016	26.7699999999999996
18140	115	1495	966	175	Tea (black)	68	INR	5	KG	2	2016	159.960000000000008
18141	115	1495	966	184	Oil (sunflower)	68	INR	5	KG	2	2016	99
18142	115	1495	966	228	Oil (mustard)	68	INR	5	KG	2	2016	141
18143	115	1495	966	245	Oil (groundnut)	68	INR	5	KG	2	2016	141
18144	115	1495	966	325	Lentils (moong)	68	INR	5	KG	2	2016	103.620000000000005
18145	115	1495	966	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	48
18146	115	1495	966	332	Lentils (urad)	68	INR	5	KG	2	2016	158.349999999999994
18147	115	1495	966	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	90
18148	115	1495	966	334	Salt (iodised)	68	INR	5	KG	2	2016	12
18149	115	1495	966	463	Milk (pasteurized)	68	INR	15	L	2	2016	38
18150	115	1508	967	52	Rice	68	INR	5	KG	2	2016	28.2899999999999991
18151	115	1508	967	58	Wheat flour	68	INR	5	KG	10	2013	27.5599999999999987
18152	115	1508	967	62	Oil (palm)	68	INR	5	KG	2	2016	63.2100000000000009
18153	115	1508	967	83	Potatoes	68	INR	5	KG	2	2016	20
18154	115	1508	967	84	Wheat	68	INR	5	KG	2	2016	30
18155	115	1508	967	97	Sugar	68	INR	5	KG	2	2016	35.25
18156	115	1508	967	108	Lentils	68	INR	5	KG	2	2016	65.4300000000000068
18157	115	1508	967	114	Tomatoes	68	INR	5	KG	2	2016	9.21000000000000085
18158	115	1508	967	173	Onions	68	INR	5	KG	2	2016	18.7100000000000009
18159	115	1508	967	175	Tea (black)	68	INR	5	KG	2	2016	220
18160	115	1508	967	184	Oil (sunflower)	68	INR	5	KG	2	2016	93.75
18161	115	1508	967	245	Oil (groundnut)	68	INR	5	KG	2	2016	122
18162	115	1508	967	325	Lentils (moong)	68	INR	5	KG	2	2016	95.2900000000000063
18163	115	1508	967	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	40.1400000000000006
18164	115	1508	967	332	Lentils (urad)	68	INR	5	KG	2	2016	143
18165	115	1508	967	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	89
18166	115	1508	967	334	Salt (iodised)	68	INR	5	KG	2	2016	15.8599999999999994
18167	115	1508	967	463	Milk (pasteurized)	68	INR	15	L	2	2016	35
18168	115	1495	968	52	Rice	68	INR	5	KG	12	2014	35
18169	115	1495	968	58	Wheat flour	68	INR	5	KG	12	2014	29
18170	115	1495	968	61	Lentils (masur)	68	INR	5	KG	12	2014	59.6700000000000017
18171	115	1495	968	62	Oil (palm)	68	INR	5	KG	12	2014	74
18172	115	1495	968	83	Potatoes	68	INR	5	KG	12	2014	40
18173	115	1495	968	84	Wheat	68	INR	5	KG	12	2014	29
18174	115	1495	968	97	Sugar	68	INR	5	KG	12	2014	35
18175	115	1495	968	108	Lentils	68	INR	5	KG	12	2014	72
18176	115	1495	968	114	Tomatoes	68	INR	5	KG	12	2014	30.4800000000000004
18177	115	1495	968	173	Onions	68	INR	5	KG	12	2014	38.5200000000000031
18178	115	1495	968	175	Tea (black)	68	INR	5	KG	12	2014	165.189999999999998
18179	115	1495	968	184	Oil (sunflower)	68	INR	5	KG	12	2014	96
18180	115	1495	968	228	Oil (mustard)	68	INR	5	KG	12	2014	132
18181	115	1495	968	245	Oil (groundnut)	68	INR	5	KG	12	2014	152
18182	115	1495	968	334	Salt (iodised)	68	INR	5	KG	12	2014	12
18183	115	1495	968	463	Milk (pasteurized)	68	INR	15	L	12	2014	38
18184	115	1510	970	52	Rice	68	INR	5	KG	2	2016	25.9499999999999993
18185	115	1510	970	58	Wheat flour	68	INR	5	KG	2	2016	22
18186	115	1510	970	61	Lentils (masur)	68	INR	5	KG	2	2016	81.2999999999999972
18187	115	1510	970	62	Oil (palm)	68	INR	5	KG	2	2016	68.7999999999999972
18188	115	1510	970	83	Potatoes	68	INR	5	KG	2	2016	7.75
18189	115	1510	970	84	Wheat	68	INR	5	KG	2	2016	19
18190	115	1510	970	97	Sugar	68	INR	5	KG	2	2016	36.8500000000000014
18191	115	1510	970	108	Lentils	68	INR	5	KG	2	2016	74.5999999999999943
18192	115	1510	970	114	Tomatoes	68	INR	5	KG	2	2016	20.6499999999999986
18193	115	1510	970	173	Onions	68	INR	5	KG	2	2016	19.3000000000000007
18194	115	1510	970	175	Tea (black)	68	INR	5	KG	2	2016	258.949999999999989
18195	115	1510	970	184	Oil (sunflower)	68	INR	5	KG	2	2016	104.599999999999994
18196	115	1510	970	228	Oil (mustard)	68	INR	5	KG	2	2016	125.150000000000006
18197	115	1510	970	245	Oil (groundnut)	68	INR	5	KG	2	2016	140.050000000000011
18198	115	1510	970	306	Oil (soybean)	68	INR	5	KG	2	2016	85.2000000000000028
18199	115	1510	970	325	Lentils (moong)	68	INR	5	KG	2	2016	106.5
18200	115	1510	970	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	42.1000000000000014
18201	115	1510	970	332	Lentils (urad)	68	INR	5	KG	2	2016	102.150000000000006
18202	115	1510	970	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	69.5999999999999943
18203	115	1510	970	334	Salt (iodised)	68	INR	5	KG	2	2016	16
18204	115	1510	970	463	Milk (pasteurized)	68	INR	15	L	2	2016	45
18205	115	1485	971	52	Rice	68	INR	5	KG	2	2016	28
18206	115	1485	971	58	Wheat flour	68	INR	5	KG	2	2016	27
18207	115	1485	971	61	Lentils (masur)	68	INR	5	KG	2	2016	86.6899999999999977
18208	115	1485	971	62	Oil (palm)	68	INR	5	KG	2	2016	59.1199999999999974
18209	115	1485	971	83	Potatoes	68	INR	5	KG	2	2016	18.620000000000001
18210	115	1485	971	84	Wheat	68	INR	5	KG	2	2016	26
18211	115	1485	971	97	Sugar	68	INR	5	KG	2	2016	29.2300000000000004
18212	115	1485	971	108	Lentils	68	INR	5	KG	2	2016	67.6500000000000057
18213	115	1485	971	114	Tomatoes	68	INR	5	KG	2	2016	9.84999999999999964
18214	115	1485	971	173	Onions	68	INR	5	KG	2	2016	16.2300000000000004
18215	115	1485	971	175	Tea (black)	68	INR	5	KG	2	2016	183
18216	115	1485	971	184	Oil (sunflower)	68	INR	5	KG	2	2016	89.1500000000000057
18217	115	1485	971	228	Oil (mustard)	68	INR	5	KG	2	2016	109
18218	115	1485	971	245	Oil (groundnut)	68	INR	5	KG	2	2016	112.579999999999998
18219	115	1485	971	325	Lentils (moong)	68	INR	5	KG	2	2016	112.310000000000002
18220	115	1485	971	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	46.2299999999999969
18221	115	1485	971	332	Lentils (urad)	68	INR	5	KG	2	2016	157.080000000000013
18222	115	1485	971	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	73.5400000000000063
18223	115	1485	971	334	Salt (iodised)	68	INR	5	KG	2	2016	12
18224	115	1485	971	463	Milk (pasteurized)	68	INR	15	L	2	2016	39
18225	115	1505	973	52	Rice	68	INR	5	KG	2	2016	26
18226	115	1505	973	58	Wheat flour	68	INR	5	KG	2	2016	22
18227	115	1505	973	61	Lentils (masur)	68	INR	5	KG	2	2016	98
18228	115	1505	973	83	Potatoes	68	INR	5	KG	2	2016	5.79000000000000004
18229	115	1505	973	84	Wheat	68	INR	5	KG	2	2016	18
18230	115	1505	973	97	Sugar	68	INR	5	KG	2	2016	37.3699999999999974
18231	115	1505	973	108	Lentils	68	INR	5	KG	2	2016	68.6299999999999955
18232	115	1505	973	114	Tomatoes	68	INR	5	KG	2	2016	21.2600000000000016
18233	115	1505	973	173	Onions	68	INR	5	KG	2	2016	21.9499999999999993
18234	115	1505	973	175	Tea (black)	68	INR	5	KG	2	2016	210
18235	115	1505	973	184	Oil (sunflower)	68	INR	5	KG	2	2016	107.590000000000003
18236	115	1505	973	228	Oil (mustard)	68	INR	5	KG	2	2016	115.890000000000001
18237	115	1505	973	245	Oil (groundnut)	68	INR	5	KG	2	2016	159.740000000000009
18238	115	1505	973	306	Oil (soybean)	68	INR	5	KG	2	2016	89.0600000000000023
18239	115	1505	973	325	Lentils (moong)	68	INR	5	KG	2	2016	111
18240	115	1505	973	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	40.6899999999999977
18241	115	1505	973	332	Lentils (urad)	68	INR	5	KG	2	2016	134.150000000000006
18242	115	1505	973	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	73.2099999999999937
18243	115	1505	973	334	Salt (iodised)	68	INR	5	KG	2	2016	18
18244	115	1505	973	463	Milk (pasteurized)	68	INR	15	L	2	2016	42
18245	115	1484	1392	52	Rice	68	INR	5	KG	2	2016	37
18246	115	1484	1392	58	Wheat flour	68	INR	5	KG	2	2016	46
18247	115	1484	1392	61	Lentils (masur)	68	INR	5	KG	2	2016	75.0799999999999983
18248	115	1484	1392	62	Oil (palm)	68	INR	5	KG	2	2016	72.4599999999999937
18249	115	1484	1392	83	Potatoes	68	INR	5	KG	2	2016	23.2699999999999996
18250	115	1484	1392	84	Wheat	68	INR	5	KG	2	2016	31
18251	115	1484	1392	97	Sugar	68	INR	5	KG	2	2016	45.6199999999999974
18252	115	1484	1392	108	Lentils	68	INR	5	KG	2	2016	72.3100000000000023
18253	115	1484	1392	114	Tomatoes	68	INR	5	KG	2	2016	45.4500000000000028
18254	115	1484	1392	173	Onions	68	INR	5	KG	2	2016	30
18255	115	1484	1392	175	Tea (black)	68	INR	5	KG	2	2016	208
18256	115	1484	1392	184	Oil (sunflower)	68	INR	5	KG	2	2016	126
18257	115	1484	1392	228	Oil (mustard)	68	INR	5	KG	2	2016	175
18258	115	1484	1392	245	Oil (groundnut)	68	INR	5	KG	8	2015	110
18259	115	1484	1392	325	Lentils (moong)	68	INR	5	KG	2	2016	98.3799999999999955
18260	115	1484	1392	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	55
18261	115	1484	1392	332	Lentils (urad)	68	INR	5	KG	2	2016	148.689999999999998
18262	115	1484	1392	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	108
18263	115	1484	1392	334	Salt (iodised)	68	INR	5	KG	2	2016	16
18264	115	1484	1392	463	Milk (pasteurized)	68	INR	15	L	2	2016	55
18265	115	1490	1393	52	Rice	68	INR	5	KG	2	2016	36
18266	115	1490	1393	58	Wheat flour	68	INR	5	KG	2	2016	25
18267	115	1490	1393	61	Lentils (masur)	68	INR	5	KG	2	2016	85
18268	115	1490	1393	62	Oil (palm)	68	INR	5	KG	2	2016	64.75
18269	115	1490	1393	83	Potatoes	68	INR	5	KG	2	2016	23.4800000000000004
18270	115	1490	1393	84	Wheat	68	INR	5	KG	2	2016	30
18271	115	1490	1393	97	Sugar	68	INR	5	KG	2	2016	35
18272	115	1490	1393	108	Lentils	68	INR	5	KG	2	2016	77.3799999999999955
18273	115	1490	1393	114	Tomatoes	68	INR	5	KG	2	2016	23.9499999999999993
18274	115	1490	1393	173	Onions	68	INR	5	KG	2	2016	23.9499999999999993
18275	115	1490	1393	175	Tea (black)	68	INR	5	KG	2	2016	240
18276	115	1490	1393	184	Oil (sunflower)	68	INR	5	KG	2	2016	98
18277	115	1490	1393	228	Oil (mustard)	68	INR	5	KG	2	2016	162.120000000000005
18278	115	1490	1393	245	Oil (groundnut)	68	INR	5	KG	2	2016	175
18279	115	1490	1393	306	Oil (soybean)	68	INR	5	KG	2	2016	92
18280	115	1490	1393	325	Lentils (moong)	68	INR	5	KG	2	2016	125
18281	115	1490	1393	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	45
18282	115	1490	1393	332	Lentils (urad)	68	INR	5	KG	2	2016	170
18283	115	1490	1393	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	97
18284	115	1490	1393	334	Salt (iodised)	68	INR	5	KG	2	2016	16
18285	115	1490	1393	463	Milk (pasteurized)	68	INR	15	L	2	2016	44
18286	115	70080	1394	52	Rice	68	INR	5	KG	2	2016	27.5500000000000007
18287	115	70080	1394	58	Wheat flour	68	INR	5	KG	2	2016	26
18288	115	70080	1394	61	Lentils (masur)	68	INR	5	KG	2	2016	90
18289	115	70080	1394	62	Oil (palm)	68	INR	5	KG	2	2016	58.5499999999999972
18290	115	70080	1394	83	Potatoes	68	INR	5	KG	2	2016	20.6900000000000013
18291	115	70080	1394	84	Wheat	68	INR	5	KG	2	2016	32
18292	115	70080	1394	97	Sugar	68	INR	5	KG	2	2016	34
18293	115	70080	1394	108	Lentils	68	INR	5	KG	2	2016	70.2800000000000011
18294	115	70080	1394	114	Tomatoes	68	INR	5	KG	2	2016	8.83000000000000007
18295	115	70080	1394	173	Onions	68	INR	5	KG	2	2016	16.2100000000000009
18296	115	70080	1394	175	Tea (black)	68	INR	5	KG	2	2016	250
18297	115	70080	1394	184	Oil (sunflower)	68	INR	5	KG	2	2016	84.6200000000000045
18298	115	70080	1394	228	Oil (mustard)	68	INR	5	KG	2	2016	119
18299	115	70080	1394	245	Oil (groundnut)	68	INR	5	KG	2	2016	123
18300	115	70080	1394	325	Lentils (moong)	68	INR	5	KG	2	2016	110.689999999999998
18301	115	70080	1394	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	45
18302	115	70080	1394	332	Lentils (urad)	68	INR	5	KG	2	2016	155.689999999999998
18303	115	70080	1394	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	81.2399999999999949
18304	115	70080	1394	334	Salt (iodised)	68	INR	5	KG	2	2016	17
18305	115	70080	1394	463	Milk (pasteurized)	68	INR	15	L	2	2016	36
18306	115	1492	1779	52	Rice	68	INR	5	KG	2	2016	28
18307	115	1492	1779	58	Wheat flour	68	INR	5	KG	2	2016	21
18308	115	1492	1779	62	Oil (palm)	68	INR	5	KG	2	2016	70
18309	115	1492	1779	83	Potatoes	68	INR	5	KG	2	2016	22
18310	115	1492	1779	84	Wheat	68	INR	5	KG	2	2016	18
18311	115	1492	1779	97	Sugar	68	INR	5	KG	2	2016	34
18312	115	1492	1779	108	Lentils	68	INR	5	KG	2	2016	63
18313	115	1492	1779	114	Tomatoes	68	INR	5	KG	2	2016	27.9299999999999997
18314	115	1492	1779	173	Onions	68	INR	5	KG	2	2016	23
18315	115	1492	1779	175	Tea (black)	68	INR	5	KG	2	2016	180
18316	115	1492	1779	184	Oil (sunflower)	68	INR	5	KG	2	2016	92
18317	115	1492	1779	228	Oil (mustard)	68	INR	5	KG	2	2016	110
18318	115	1492	1779	245	Oil (groundnut)	68	INR	5	KG	2	2016	118
18319	115	1492	1779	306	Oil (soybean)	68	INR	5	KG	2	2016	87
18320	115	1492	1779	325	Lentils (moong)	68	INR	5	KG	2	2016	103.549999999999997
18321	115	1492	1779	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	36
18322	115	1492	1779	332	Lentils (urad)	68	INR	5	KG	2	2016	134.47999999999999
18323	115	1492	1779	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	74
18324	115	1492	1779	334	Salt (iodised)	68	INR	5	KG	2	2016	18
18325	115	1492	1779	463	Milk (pasteurized)	68	INR	15	L	2	2016	48
18326	115	1497	1780	52	Rice	68	INR	5	KG	2	2016	28
18327	115	1497	1780	58	Wheat flour	68	INR	5	KG	2	2016	19
18328	115	1497	1780	61	Lentils (masur)	68	INR	5	KG	2	2016	60.1000000000000014
18329	115	1497	1780	62	Oil (palm)	68	INR	5	KG	2	2016	55
18330	115	1497	1780	83	Potatoes	68	INR	5	KG	2	2016	12
18331	115	1497	1780	84	Wheat	68	INR	5	KG	2	2016	15
18332	115	1497	1780	97	Sugar	68	INR	5	KG	2	2016	34
18333	115	1497	1780	108	Lentils	68	INR	5	KG	2	2016	52
18334	115	1497	1780	114	Tomatoes	68	INR	5	KG	2	2016	19.1000000000000014
18335	115	1497	1780	173	Onions	68	INR	5	KG	2	2016	18.2399999999999984
18336	115	1497	1780	175	Tea (black)	68	INR	5	KG	2	2016	180
18337	115	1497	1780	184	Oil (sunflower)	68	INR	5	KG	2	2016	90
18338	115	1497	1780	228	Oil (mustard)	68	INR	5	KG	2	2016	95
18339	115	1497	1780	245	Oil (groundnut)	68	INR	5	KG	2	2016	125
18340	115	1497	1780	306	Oil (soybean)	68	INR	5	KG	2	2016	60
18341	115	1497	1780	325	Lentils (moong)	68	INR	5	KG	2	2016	85.1400000000000006
18342	115	1497	1780	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	35
18343	115	1497	1780	332	Lentils (urad)	68	INR	5	KG	2	2016	110.099999999999994
18344	115	1497	1780	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	65
18345	115	1497	1780	334	Salt (iodised)	68	INR	5	KG	2	2016	17
18346	115	1497	1780	463	Milk (pasteurized)	68	INR	15	L	2	2016	38
18347	115	1495	1781	52	Rice	68	INR	5	KG	2	2016	30
18348	115	1495	1781	58	Wheat flour	68	INR	5	KG	2	2016	43
18349	115	1495	1781	61	Lentils (masur)	68	INR	5	KG	2	2016	78.0799999999999983
18350	115	1495	1781	62	Oil (palm)	68	INR	5	KG	2	2016	66
18351	115	1495	1781	83	Potatoes	68	INR	5	KG	2	2016	22.9600000000000009
18352	115	1495	1781	84	Wheat	68	INR	5	KG	2	2016	34
18353	115	1495	1781	97	Sugar	68	INR	5	KG	2	2016	33
18354	115	1495	1781	108	Lentils	68	INR	5	KG	2	2016	65.1500000000000057
18355	115	1495	1781	114	Tomatoes	68	INR	5	KG	2	2016	24.2699999999999996
18356	115	1495	1781	173	Onions	68	INR	5	KG	2	2016	24.379999999999999
18357	115	1495	1781	175	Tea (black)	68	INR	5	KG	2	2016	150
18358	115	1495	1781	184	Oil (sunflower)	68	INR	5	KG	2	2016	99
18359	115	1495	1781	228	Oil (mustard)	68	INR	5	KG	2	2016	143
18360	115	1495	1781	245	Oil (groundnut)	68	INR	5	KG	2	2016	148
18361	115	1495	1781	325	Lentils (moong)	68	INR	5	KG	2	2016	100.189999999999998
18362	115	1495	1781	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	46
18363	115	1495	1781	332	Lentils (urad)	68	INR	5	KG	2	2016	155.77000000000001
18364	115	1495	1781	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	92
18365	115	1495	1781	334	Salt (iodised)	68	INR	5	KG	2	2016	10
18366	115	1495	1781	463	Milk (pasteurized)	68	INR	15	L	2	2016	39
18367	115	1492	1782	52	Rice	68	INR	5	KG	2	2016	25
18368	115	1492	1782	58	Wheat flour	68	INR	5	KG	2	2016	23
18369	115	1492	1782	83	Potatoes	68	INR	5	KG	2	2016	11.7100000000000009
18370	115	1492	1782	84	Wheat	68	INR	5	KG	2	2016	19
18371	115	1492	1782	97	Sugar	68	INR	5	KG	2	2016	32
18372	115	1492	1782	108	Lentils	68	INR	5	KG	2	2016	65
18373	115	1492	1782	114	Tomatoes	68	INR	5	KG	2	2016	34.2899999999999991
18374	115	1492	1782	173	Onions	68	INR	5	KG	2	2016	25
18375	115	1492	1782	175	Tea (black)	68	INR	5	KG	2	2016	180
18376	115	1492	1782	184	Oil (sunflower)	68	INR	5	KG	2	2016	103
18377	115	1492	1782	228	Oil (mustard)	68	INR	5	KG	2	2016	95
18378	115	1492	1782	245	Oil (groundnut)	68	INR	5	KG	2	2016	130
18379	115	1492	1782	306	Oil (soybean)	68	INR	5	KG	2	2016	84
18380	115	1492	1782	325	Lentils (moong)	68	INR	5	KG	2	2016	95
18381	115	1492	1782	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	40
18382	115	1492	1782	332	Lentils (urad)	68	INR	5	KG	2	2016	120
18383	115	1492	1782	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	75
18384	115	1492	1782	334	Salt (iodised)	68	INR	5	KG	2	2016	20
18385	115	1492	1782	463	Milk (pasteurized)	68	INR	15	L	2	2016	45
18386	115	1504	1783	52	Rice	68	INR	5	KG	2	2016	25
18387	115	1504	1783	58	Wheat flour	68	INR	5	KG	2	2016	24.0399999999999991
18388	115	1504	1783	61	Lentils (masur)	68	INR	5	KG	2	2016	62.6799999999999997
18389	115	1504	1783	62	Oil (palm)	68	INR	5	KG	2	2016	65.9099999999999966
18390	115	1504	1783	83	Potatoes	68	INR	5	KG	2	2016	13
18391	115	1504	1783	84	Wheat	68	INR	5	KG	2	2016	23
18392	115	1504	1783	97	Sugar	68	INR	5	KG	2	2016	36.3200000000000003
18393	115	1504	1783	108	Lentils	68	INR	5	KG	2	2016	62
18394	115	1504	1783	114	Tomatoes	68	INR	5	KG	2	2016	12.8399999999999999
18395	115	1504	1783	173	Onions	68	INR	5	KG	2	2016	15.5600000000000005
18396	115	1504	1783	175	Tea (black)	68	INR	5	KG	2	2016	160
18397	115	1504	1783	184	Oil (sunflower)	68	INR	5	KG	2	2016	86.1299999999999955
18398	115	1504	1783	228	Oil (mustard)	68	INR	5	KG	2	2016	101.599999999999994
18399	115	1504	1783	306	Oil (soybean)	68	INR	5	KG	2	2016	79.2800000000000011
18400	115	1504	1783	325	Lentils (moong)	68	INR	5	KG	2	2016	89.3199999999999932
18401	115	1504	1783	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	32
18402	115	1504	1783	332	Lentils (urad)	68	INR	5	KG	2	2016	115.480000000000004
18403	115	1504	1783	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	55.2899999999999991
18404	115	1504	1783	334	Salt (iodised)	68	INR	5	KG	2	2016	17
18405	115	1504	1783	463	Milk (pasteurized)	68	INR	15	L	2	2016	34
18406	115	70074	1785	52	Rice	68	INR	5	KG	2	2016	26
18407	115	70074	1785	58	Wheat flour	68	INR	5	KG	2	2016	19.7699999999999996
18408	115	70074	1785	61	Lentils (masur)	68	INR	5	KG	2	2016	78.1500000000000057
18409	115	70074	1785	62	Oil (palm)	68	INR	5	KG	2	2016	57.2299999999999969
18410	115	70074	1785	83	Potatoes	68	INR	5	KG	2	2016	10.0800000000000001
18411	115	70074	1785	84	Wheat	68	INR	5	KG	2	2016	18
18412	115	70074	1785	97	Sugar	68	INR	5	KG	2	2016	32
18413	115	70074	1785	108	Lentils	68	INR	5	KG	2	2016	64
18414	115	70074	1785	114	Tomatoes	68	INR	5	KG	2	2016	19.2300000000000004
18415	115	70074	1785	173	Onions	68	INR	5	KG	2	2016	20
18416	115	70074	1785	175	Tea (black)	68	INR	5	KG	2	2016	210
18417	115	70074	1785	184	Oil (sunflower)	68	INR	5	KG	2	2016	85
18418	115	70074	1785	228	Oil (mustard)	68	INR	5	KG	2	2016	100.769999999999996
18419	115	70074	1785	245	Oil (groundnut)	68	INR	5	KG	2	2016	122
18420	115	70074	1785	306	Oil (soybean)	68	INR	5	KG	2	2016	72
18421	115	70074	1785	325	Lentils (moong)	68	INR	5	KG	2	2016	96.5
18422	115	70074	1785	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	35
18423	115	70074	1785	332	Lentils (urad)	68	INR	5	KG	2	2016	120
18424	115	70074	1785	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	62
18425	115	70074	1785	334	Salt (iodised)	68	INR	5	KG	2	2016	12
18426	115	70074	1785	463	Milk (pasteurized)	68	INR	15	L	2	2016	40
18427	115	\N	\N	52	Rice	68	INR	5	KG	2	2016	27.0399999999999991
18428	115	\N	\N	58	Wheat flour	68	INR	5	KG	2	2016	24.9800000000000004
18429	115	\N	\N	61	Lentils (masur)	68	INR	5	KG	2	2016	80.3299999999999983
18430	115	\N	\N	62	Oil (palm)	68	INR	5	KG	2	2016	64.1099999999999994
18431	115	\N	\N	83	Potatoes	68	INR	5	KG	2	2016	14.9199999999999999
18432	115	\N	\N	84	Wheat	68	INR	5	KG	2	2016	23.8200000000000003
18433	115	\N	\N	97	Sugar	68	INR	5	KG	2	2016	33.9200000000000017
18434	115	\N	\N	108	Lentils	68	INR	5	KG	2	2016	66.0499999999999972
18435	115	\N	\N	114	Tomatoes	68	INR	5	KG	2	2016	19.9200000000000017
18436	115	\N	\N	173	Onions	68	INR	5	KG	2	2016	19.620000000000001
18437	115	\N	\N	175	Tea (black)	68	INR	5	KG	2	2016	202.810000000000002
18438	115	\N	\N	184	Oil (sunflower)	68	INR	5	KG	2	2016	95.9000000000000057
18439	115	\N	\N	228	Oil (mustard)	68	INR	5	KG	2	2016	110.870000000000005
18440	115	\N	\N	245	Oil (groundnut)	68	INR	5	KG	2	2016	123.200000000000003
18441	115	\N	\N	306	Oil (soybean)	68	INR	5	KG	2	2016	81.230000000000004
18442	115	\N	\N	325	Lentils (moong)	68	INR	5	KG	2	2016	102.560000000000002
18443	115	\N	\N	331	Sugar (jaggery/gur)	68	INR	5	KG	2	2016	39.490000000000002
18444	115	\N	\N	332	Lentils (urad)	68	INR	5	KG	2	2016	137.169999999999987
18445	115	\N	\N	333	Ghee (vanaspati)	68	INR	5	KG	2	2016	71.3100000000000023
18446	115	\N	\N	334	Salt (iodised)	68	INR	5	KG	2	2016	15.0099999999999998
18447	115	\N	\N	463	Milk (pasteurized)	68	INR	15	L	2	2016	39.6899999999999977
18448	116	\N	\N	52	Rice	34	IDR	5	KG	3	2016	13301
18449	116	\N	\N	84	Wheat	34	IDR	5	KG	3	2016	7985
18450	116	\N	\N	89	Meat (chicken, broiler)	34	IDR	5	KG	3	2016	36203
18451	116	\N	\N	90	Chili (green)	34	IDR	5	KG	3	2016	41504
18452	116	\N	\N	91	Chili (red)	34	IDR	5	KG	3	2016	45554
18453	116	\N	\N	92	Eggs	34	IDR	5	KG	3	2016	20009
18454	116	\N	\N	95	Milk (condensed)	34	IDR	19	385 G	3	2016	9888
18455	116	\N	\N	96	Oil (vegetable)	34	IDR	15	L	3	2016	13466
18456	116	\N	\N	97	Sugar	34	IDR	5	KG	3	2016	13415
18457	116	\N	\N	141	Meat (beef)	34	IDR	5	KG	3	2016	105676
18458	116	\N	\N	283	Fuel (kerosene)	34	IDR	15	L	12	2013	6307
18459	117	1560	1652	71	Rice (local)	89	IRR	5	KG	1	2016	63760
18460	117	1560	1652	92	Eggs	89	IRR	46	1.8 KG	1	2016	108900
18461	117	1560	1652	96	Oil (vegetable)	89	IRR	15	L	1	2016	48870
18462	117	1560	1652	97	Sugar	89	IRR	5	KG	1	2016	29000
18463	117	1560	1652	108	Lentils	89	IRR	5	KG	1	2016	89050
18464	118	1564	1464	52	Rice	84	IQD	5	KG	11	2013	1671
18465	118	1564	1464	58	Wheat flour	84	IQD	5	KG	11	2013	450
18466	118	1564	1464	97	Sugar	84	IQD	5	KG	11	2013	1250
18467	118	1564	1464	259	Bread (khoboz)	84	IQD	33	Unit	11	2013	145
18468	118	1575	1465	52	Rice	84	IQD	5	KG	8	2014	1737.5
18469	118	1575	1465	58	Wheat flour	84	IQD	5	KG	8	2014	750
18470	118	1575	1465	96	Oil (vegetable)	84	IQD	15	L	8	2014	1812.5
18471	118	1575	1465	97	Sugar	84	IQD	5	KG	8	2014	1187.5
18472	118	1575	1465	259	Bread (khoboz)	84	IQD	33	Unit	8	2014	125
18473	118	1579	1466	52	Rice	84	IQD	5	KG	6	2014	2233
18474	118	1579	1466	58	Wheat flour	84	IQD	5	KG	6	2014	475
18475	118	1579	1466	96	Oil (vegetable)	84	IQD	15	L	6	2014	2042
18476	118	1579	1466	97	Sugar	84	IQD	5	KG	6	2014	1250
18477	118	1579	1466	259	Bread (khoboz)	84	IQD	33	Unit	5	2014	200
18478	118	1567	1467	52	Rice	84	IQD	5	KG	6	2014	1808
18479	118	1567	1467	58	Wheat flour	84	IQD	5	KG	6	2014	525
18480	118	1567	1467	96	Oil (vegetable)	84	IQD	15	L	6	2014	2438
18481	118	1567	1467	97	Sugar	84	IQD	5	KG	6	2014	1375
18482	118	1567	1467	259	Bread (khoboz)	84	IQD	33	Unit	6	2014	119
18483	118	1577	1468	52	Rice	84	IQD	5	KG	6	2014	1680
18484	118	1577	1468	58	Wheat flour	84	IQD	5	KG	6	2014	500
18485	118	1577	1468	96	Oil (vegetable)	84	IQD	15	L	6	2014	2167
18486	118	1577	1468	97	Sugar	84	IQD	5	KG	6	2014	1250
18487	118	1577	1468	259	Bread (khoboz)	84	IQD	33	Unit	6	2014	125
18488	118	1576	1469	52	Rice	84	IQD	5	KG	8	2014	2000
18489	118	1576	1469	58	Wheat flour	84	IQD	5	KG	8	2014	875
18490	118	1576	1469	96	Oil (vegetable)	84	IQD	15	L	8	2014	1750
18491	118	1576	1469	97	Sugar	84	IQD	5	KG	8	2014	1250
18492	118	1576	1469	259	Bread (khoboz)	84	IQD	33	Unit	8	2014	125
18493	118	1568	1470	52	Rice	84	IQD	5	KG	8	2014	2000
18494	118	1568	1470	58	Wheat flour	84	IQD	5	KG	8	2014	337.5
18495	118	1568	1470	96	Oil (vegetable)	84	IQD	15	L	8	2014	1750
18496	118	1568	1470	97	Sugar	84	IQD	5	KG	8	2014	1000
18497	118	1568	1470	259	Bread (khoboz)	84	IQD	33	Unit	8	2014	125
18498	118	1566	1471	52	Rice	84	IQD	5	KG	8	2014	2000
18499	118	1566	1471	58	Wheat flour	84	IQD	5	KG	8	2014	733
18500	118	1566	1471	96	Oil (vegetable)	84	IQD	15	L	8	2014	1750
18501	118	1566	1471	97	Sugar	84	IQD	5	KG	8	2014	1250
18502	118	1566	1471	259	Bread (khoboz)	84	IQD	33	Unit	8	2014	125
18503	118	1567	1472	52	Rice	84	IQD	5	KG	8	2014	700
18504	118	1567	1472	58	Wheat flour	84	IQD	5	KG	8	2014	500
18505	118	1567	1472	96	Oil (vegetable)	84	IQD	15	L	8	2014	2062.5
18506	118	1567	1472	97	Sugar	84	IQD	5	KG	8	2014	850
18507	118	1567	1472	259	Bread (khoboz)	84	IQD	33	Unit	8	2014	150
18508	118	1573	1473	52	Rice	84	IQD	5	KG	8	2014	2000
18509	118	1573	1473	58	Wheat flour	84	IQD	5	KG	8	2014	250
18510	118	1573	1473	96	Oil (vegetable)	84	IQD	15	L	8	2014	2500
18511	118	1573	1473	97	Sugar	84	IQD	5	KG	8	2014	1500
18512	118	1573	1473	259	Bread (khoboz)	84	IQD	33	Unit	8	2014	167
18513	118	1569	1474	52	Rice	84	IQD	5	KG	6	2014	2117
18514	118	1569	1474	58	Wheat flour	84	IQD	5	KG	6	2014	500
18515	118	1569	1474	96	Oil (vegetable)	84	IQD	15	L	6	2014	2334
18516	118	1569	1474	97	Sugar	84	IQD	5	KG	6	2014	1375
18517	118	1569	1474	259	Bread (khoboz)	84	IQD	33	Unit	6	2014	125
18518	118	1578	1475	52	Rice	84	IQD	5	KG	6	2014	1910
18519	118	1578	1475	58	Wheat flour	84	IQD	5	KG	6	2014	388
18520	118	1578	1475	96	Oil (vegetable)	84	IQD	15	L	6	2014	2126
18521	118	1578	1475	97	Sugar	84	IQD	5	KG	6	2014	1313
18522	118	1578	1475	259	Bread (khoboz)	84	IQD	33	Unit	5	2014	150
18523	118	1574	1492	52	Rice	84	IQD	5	KG	8	2014	2500
18524	118	1574	1492	58	Wheat flour	84	IQD	5	KG	8	2014	1025
18525	118	1574	1492	96	Oil (vegetable)	84	IQD	15	L	8	2014	1925
18526	118	1574	1492	97	Sugar	84	IQD	5	KG	8	2014	1500.5
18527	118	1574	1492	259	Bread (khoboz)	84	IQD	33	Unit	8	2014	200
18528	118	1572	1493	52	Rice	84	IQD	5	KG	6	2014	1833
18529	118	1572	1493	58	Wheat flour	84	IQD	5	KG	6	2014	563
18530	118	1572	1493	96	Oil (vegetable)	84	IQD	15	L	6	2014	2313
18531	118	1572	1493	97	Sugar	84	IQD	5	KG	6	2014	1500
18532	118	1572	1493	259	Bread (khoboz)	84	IQD	33	Unit	6	2014	119
18533	118	1580	1494	52	Rice	84	IQD	5	KG	6	2014	2105
18534	118	1580	1494	58	Wheat flour	84	IQD	5	KG	6	2014	400
18535	118	1580	1494	96	Oil (vegetable)	84	IQD	15	L	6	2014	2250
18536	118	1580	1494	97	Sugar	84	IQD	5	KG	6	2014	1375
18537	118	1580	1494	259	Bread (khoboz)	84	IQD	33	Unit	6	2014	125
18538	118	1571	1495	52	Rice	84	IQD	5	KG	6	2014	1700
18539	118	1571	1495	58	Wheat flour	84	IQD	5	KG	6	2014	500
18540	118	1571	1495	96	Oil (vegetable)	84	IQD	15	L	6	2014	2000
18541	118	1571	1495	97	Sugar	84	IQD	5	KG	6	2014	1250
18542	118	1571	1495	259	Bread (khoboz)	84	IQD	33	Unit	6	2014	125
18543	118	1565	1496	52	Rice	84	IQD	5	KG	6	2014	2031
18544	118	1565	1496	58	Wheat flour	84	IQD	5	KG	6	2014	500
18545	118	1565	1496	96	Oil (vegetable)	84	IQD	15	L	6	2014	2250
18546	118	1565	1496	97	Sugar	84	IQD	5	KG	6	2014	1500
18547	118	1565	1496	259	Bread (khoboz)	84	IQD	33	Unit	6	2014	125
18548	118	1570	1513	52	Rice	84	IQD	5	KG	6	2014	2263
18549	118	1570	1513	58	Wheat flour	84	IQD	5	KG	6	2014	675
18550	118	1570	1513	96	Oil (vegetable)	84	IQD	15	L	6	2014	2125
18551	118	1570	1513	97	Sugar	84	IQD	5	KG	6	2014	1250
18552	118	1570	1513	259	Bread (khoboz)	84	IQD	33	Unit	6	2014	250
18553	122	\N	\N	229	Apples (red)	28	USD	5	KG	5	2015	1
18554	130	\N	\N	64	Rice (imported)	58	JOD	5	KG	2	2016	1.21999999999999997
18555	130	\N	\N	83	Potatoes	58	JOD	5	KG	2	2016	0.714999999999999969
18556	130	\N	\N	92	Eggs	58	JOD	57	2 KG	2	2016	3.21899999999999986
18557	130	\N	\N	94	Meat (chicken)	58	JOD	5	KG	2	2016	1.62999999999999989
18558	130	\N	\N	96	Oil (vegetable)	58	JOD	15	L	2	2016	1.8819999999999999
18559	130	\N	\N	97	Sugar	58	JOD	5	KG	2	2016	0.676000000000000045
18560	130	\N	\N	105	Garlic	58	JOD	5	KG	2	2016	2.17600000000000016
18561	130	\N	\N	108	Lentils	58	JOD	5	KG	2	2016	1.17300000000000004
18562	130	\N	\N	114	Tomatoes	58	JOD	5	KG	2	2016	0.338000000000000023
18563	130	\N	\N	125	Meat (chicken, whole)	58	JOD	5	KG	2	2016	1.46500000000000008
18564	130	\N	\N	141	Meat (beef)	58	JOD	5	KG	2	2016	9.08999999999999986
18565	130	\N	\N	163	Pulses	58	JOD	5	KG	12	2012	1.504
18566	130	\N	\N	173	Onions	58	JOD	5	KG	2	2016	0.764000000000000012
18567	130	\N	\N	229	Apples (red)	58	JOD	5	KG	2	2016	1.93199999999999994
18568	130	\N	\N	239	Oil (olive)	58	JOD	5	KG	2	2016	5.375
18569	130	\N	\N	241	Oranges (big size)	58	JOD	5	KG	2	2016	0.75
18570	130	\N	\N	244	Chickpeas	58	JOD	5	KG	2	2016	1.68399999999999994
18571	130	\N	\N	254	Bananas	58	JOD	5	KG	2	2016	0.868999999999999995
18572	130	\N	\N	384	Bread (pita)	58	JOD	5	KG	2	2016	0.165000000000000008
18573	130	\N	\N	385	Beans (fava, dry)	58	JOD	5	KG	2	2016	1.57800000000000007
18574	130	\N	\N	386	Meat (lamb)	58	JOD	5	KG	2	2016	11.3940000000000001
18575	130	\N	\N	387	Cheese (white, boiled)	58	JOD	5	KG	2	2016	5.70399999999999974
18576	130	\N	\N	388	Cucumbers	58	JOD	5	KG	2	2016	0.535000000000000031
18577	130	\N	\N	463	Milk (pasteurized)	58	JOD	15	L	2	2016	1.17700000000000005
18578	133	51328	184	55	Bread	30	KES	24	400 G	2	2016	52
18579	133	51328	184	65	Sorghum	30	KES	17	90 KG	2	2016	3075
18580	133	51328	184	67	Maize (white)	30	KES	17	90 KG	2	2016	2655
18581	133	51328	184	96	Oil (vegetable)	30	KES	15	L	2	2016	183
18582	133	51328	184	148	Potatoes (Irish)	30	KES	84	110 KG	7	2015	313.355000000000018
18583	133	51328	184	262	Beans (dry)	30	KES	17	90 KG	2	2016	5775
18584	133	51328	184	283	Fuel (kerosene)	30	KES	15	L	2	2016	39.6199999999999974
18585	133	51328	184	284	Fuel (diesel)	30	KES	15	L	2	2016	67.8799999999999955
18586	133	51328	184	285	Fuel (petrol-gasoline)	30	KES	15	L	2	2016	86.5
18587	133	51328	184	439	Milk (cow, fresh)	30	KES	25	500 ML	2	2016	45
18588	133	51331	185	65	Sorghum	30	KES	17	90 KG	2	2016	4725
18589	133	51331	185	67	Maize (white)	30	KES	17	90 KG	2	2016	2320
18590	133	51331	185	148	Potatoes (Irish)	30	KES	84	110 KG	7	2015	351.235000000000014
18591	133	51331	185	262	Beans (dry)	30	KES	17	90 KG	2	2016	6770
18592	133	51330	186	65	Sorghum	30	KES	17	90 KG	2	2016	3075
18593	133	51330	186	67	Maize (white)	30	KES	17	90 KG	2	2016	3065
18594	133	51330	186	148	Potatoes (Irish)	30	KES	84	110 KG	7	2015	544.075000000000045
18595	133	51330	186	262	Beans (dry)	30	KES	17	90 KG	2	2016	6860
18596	133	51327	187	65	Sorghum	30	KES	17	90 KG	2	2016	4050
18597	133	51327	187	67	Maize (white)	30	KES	5	KG	2	2016	31
18598	133	51327	187	148	Potatoes (Irish)	30	KES	22	50 KG	2	2016	2200
18599	133	51327	187	262	Beans (dry)	30	KES	5	KG	2	2016	74
18600	133	51331	188	67	Maize (white)	30	KES	5	KG	2	2016	75
18601	133	51329	189	67	Maize (white)	30	KES	5	KG	2	2016	61
18602	133	51327	190	67	Maize (white)	30	KES	5	KG	2	2016	47.2999999999999972
18603	133	51326	191	67	Maize (white)	30	KES	17	90 KG	2	2016	2700
18604	133	51326	191	262	Beans (dry)	30	KES	17	90 KG	2	2016	6400
18605	133	51331	1850	65	Sorghum	30	KES	17	90 KG	2	2016	3163
18606	133	51331	1850	67	Maize (white)	30	KES	17	90 KG	2	2016	2525
18607	133	51331	1850	148	Potatoes (Irish)	30	KES	84	110 KG	7	2015	371.899999999999977
18608	133	51331	1850	262	Beans (dry)	30	KES	17	90 KG	2	2016	5825
18609	133	51331	1851	67	Maize (white)	30	KES	5	KG	2	2016	39
18610	133	51331	1851	262	Beans (dry)	30	KES	5	KG	2	2016	97
18611	133	51326	1852	67	Maize (white)	30	KES	5	KG	2	2016	39
18612	133	51326	1852	262	Beans (dry)	30	KES	5	KG	2	2016	87
18613	133	51331	1853	67	Maize (white)	30	KES	5	KG	2	2016	47.5
18614	133	51331	1853	262	Beans (dry)	30	KES	5	KG	2	2016	73
18615	133	51326	1854	67	Maize (white)	30	KES	5	KG	2	2016	39.3800000000000026
18616	133	51329	1855	67	Maize (white)	30	KES	5	KG	2	2016	50
18617	138	1747	671	51	Maize	61	KGS	5	KG	3	2012	25
18618	138	1747	671	52	Rice	61	KGS	5	KG	3	2014	65
18619	138	1747	671	55	Bread	61	KGS	5	KG	6	2015	44.0799999999999983
18620	138	1747	671	83	Potatoes	61	KGS	5	KG	6	2015	24.7100000000000009
18621	138	1747	671	84	Wheat	61	KGS	5	KG	6	2015	34.0600000000000023
18622	138	1747	671	92	Eggs	61	KGS	5	KG	3	2014	73
18623	138	1747	671	94	Meat (chicken)	61	KGS	5	KG	3	2014	120
18624	138	1747	671	97	Sugar	61	KGS	5	KG	3	2014	55
18625	138	1747	671	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	35
18626	138	1747	671	141	Meat (beef)	61	KGS	5	KG	6	2015	334.810000000000002
18627	138	1747	671	166	Carrots	61	KGS	5	KG	3	2014	22.5
18628	138	1747	671	172	Oil (cotton)	61	KGS	15	L	10	2011	90
18629	138	1747	671	173	Onions	61	KGS	5	KG	3	2014	30
18630	138	1747	671	175	Tea (black)	61	KGS	5	KG	3	2013	100
18631	138	1747	671	176	Tea (green)	61	KGS	5	KG	3	2013	150
18632	138	1747	671	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	29
18633	138	1747	671	178	Wheat flour (high quality)	61	KGS	5	KG	3	2012	28
18634	138	1747	671	181	Cabbage	61	KGS	5	KG	3	2014	30
18635	138	1747	671	183	Meat (mutton)	61	KGS	5	KG	6	2015	336.480000000000018
18636	138	1747	671	184	Oil (sunflower)	61	KGS	15	L	3	2014	98
18637	138	1747	671	185	Salt	61	KGS	5	KG	3	2012	17
18638	138	1747	671	186	Peas (yellow)	61	KGS	5	KG	3	2012	40
18639	138	1747	671	284	Fuel (diesel)	61	KGS	15	L	3	2014	41.7999999999999972
18640	138	1747	671	285	Fuel (petrol-gasoline)	61	KGS	15	L	3	2014	38.7999999999999972
18641	138	1747	671	389	Beans (kidney white)	61	KGS	5	KG	3	2012	55
18642	138	1750	672	51	Maize	61	KGS	5	KG	3	2012	20
18643	138	1750	672	52	Rice	61	KGS	5	KG	3	2014	60
18644	138	1750	672	55	Bread	61	KGS	5	KG	6	2015	49.6899999999999977
18645	138	1750	672	83	Potatoes	61	KGS	5	KG	6	2015	20.4100000000000001
18646	138	1750	672	84	Wheat	61	KGS	5	KG	6	2015	38.4099999999999966
18647	138	1750	672	92	Eggs	61	KGS	5	KG	3	2014	77.2222000000000008
18648	138	1750	672	94	Meat (chicken)	61	KGS	5	KG	3	2014	120
18649	138	1750	672	97	Sugar	61	KGS	5	KG	3	2014	55
18650	138	1750	672	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	29.4444000000000017
18651	138	1750	672	141	Meat (beef)	61	KGS	5	KG	6	2015	346.579999999999984
18652	138	1750	672	166	Carrots	61	KGS	5	KG	3	2014	16.6666999999999987
18653	138	1750	672	172	Oil (cotton)	61	KGS	15	L	3	2012	96.533299999999997
18654	138	1750	672	173	Onions	61	KGS	5	KG	3	2014	17
18655	138	1750	672	175	Tea (black)	61	KGS	5	KG	3	2014	250
18656	138	1750	672	176	Tea (green)	61	KGS	5	KG	3	2014	150
18657	138	1750	672	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	27.0650000000000013
18658	138	1750	672	178	Wheat flour (high quality)	61	KGS	5	KG	3	2012	31.7332999999999998
18659	138	1750	672	181	Cabbage	61	KGS	5	KG	3	2014	46.6666999999999987
18660	138	1750	672	183	Meat (mutton)	61	KGS	5	KG	6	2015	343.519999999999982
18661	138	1750	672	184	Oil (sunflower)	61	KGS	15	L	3	2014	102.221999999999994
18662	138	1750	672	185	Salt	61	KGS	5	KG	3	2012	16.7667000000000002
18663	138	1750	672	186	Peas (yellow)	61	KGS	5	KG	3	2012	32.7332999999999998
18664	138	1750	672	274	Wage (qualified labour)	61	KGS	51	Day	3	2014	500
18665	138	1750	672	277	Wage (non-qualified labour)	61	KGS	51	Day	3	2014	266.666999999999973
18666	138	1750	672	284	Fuel (diesel)	61	KGS	15	L	3	2014	41.033299999999997
18667	138	1750	672	285	Fuel (petrol-gasoline)	61	KGS	15	L	3	2014	38.0778000000000034
18668	138	1750	672	389	Beans (kidney white)	61	KGS	5	KG	3	2012	72.7667000000000002
18669	138	1749	673	52	Rice	61	KGS	5	KG	3	2014	69.3332999999999942
18670	138	1749	673	55	Bread	61	KGS	5	KG	6	2015	60.6099999999999994
18671	138	1749	673	83	Potatoes	61	KGS	5	KG	6	2015	18.3999999999999986
18672	138	1749	673	84	Wheat	61	KGS	5	KG	6	2015	33.740000000000002
18673	138	1749	673	92	Eggs	61	KGS	5	KG	3	2014	86.6667000000000058
18674	138	1749	673	94	Meat (chicken)	61	KGS	5	KG	3	2014	130
18675	138	1749	673	97	Sugar	61	KGS	5	KG	3	2014	51.6666999999999987
18676	138	1749	673	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	20
18677	138	1749	673	141	Meat (beef)	61	KGS	5	KG	6	2015	350
18678	138	1749	673	166	Carrots	61	KGS	5	KG	3	2014	19.3333000000000013
18679	138	1749	673	172	Oil (cotton)	61	KGS	15	L	3	2012	111.667000000000002
18680	138	1749	673	173	Onions	61	KGS	5	KG	3	2014	20
18681	138	1749	673	175	Tea (black)	61	KGS	31	Sack	3	2014	53.3333000000000013
18682	138	1749	673	176	Tea (green)	61	KGS	31	Sack	3	2014	41.6666999999999987
18683	138	1749	673	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	25
18684	138	1749	673	178	Wheat flour (high quality)	61	KGS	5	KG	3	2012	31
18685	138	1749	673	181	Cabbage	61	KGS	5	KG	3	2014	20
18686	138	1749	673	183	Meat (mutton)	61	KGS	5	KG	6	2015	350
18687	138	1749	673	184	Oil (sunflower)	61	KGS	15	L	3	2014	88.3332999999999942
18688	138	1749	673	185	Salt	61	KGS	5	KG	3	2012	13.3332999999999995
18689	138	1749	673	186	Peas (yellow)	61	KGS	5	KG	3	2012	40
18690	138	1749	673	274	Wage (qualified labour)	61	KGS	51	Day	3	2014	452
18691	138	1749	673	277	Wage (non-qualified labour)	61	KGS	51	Day	3	2014	166.332999999999998
18692	138	1749	673	284	Fuel (diesel)	61	KGS	15	L	3	2014	40.2667000000000002
18693	138	1749	673	285	Fuel (petrol-gasoline)	61	KGS	15	L	3	2014	38.7667000000000002
18694	138	1749	673	389	Beans (kidney white)	61	KGS	5	KG	3	2012	60
18695	138	1749	674	52	Rice	61	KGS	5	KG	10	2012	69.3332999999999942
18696	138	1749	674	55	Bread	61	KGS	42	150 G	10	2012	15
18697	138	1749	674	83	Potatoes	61	KGS	5	KG	10	2012	13.6667000000000005
18698	138	1749	674	92	Eggs	61	KGS	5	KG	10	2012	61.6666999999999987
18699	138	1749	674	94	Meat (chicken)	61	KGS	5	KG	10	2012	133.332999999999998
18700	138	1749	674	97	Sugar	61	KGS	5	KG	10	2012	48
18701	138	1749	674	102	Milk (non-pasteurized)	61	KGS	15	L	10	2012	20
18702	138	1749	674	166	Carrots	61	KGS	5	KG	10	2012	21.3333000000000013
18703	138	1749	674	173	Onions	61	KGS	5	KG	10	2012	27
18704	138	1749	674	175	Tea (black)	61	KGS	5	KG	10	2012	55
18705	138	1749	674	176	Tea (green)	61	KGS	5	KG	10	2012	63.6666999999999987
18706	138	1749	674	177	Wheat flour (first grade)	61	KGS	5	KG	10	2012	30
18707	138	1749	674	181	Cabbage	61	KGS	5	KG	10	2012	38.6666999999999987
18708	138	1749	674	184	Oil (sunflower)	61	KGS	15	L	10	2012	111.667000000000002
18709	138	1749	674	185	Salt	61	KGS	5	KG	3	2012	10
18710	138	1749	674	186	Peas (yellow)	61	KGS	5	KG	3	2012	45
18711	138	1752	675	52	Rice	61	KGS	5	KG	3	2014	70
18712	138	1752	675	55	Bread	61	KGS	42	150 G	3	2014	25
18713	138	1752	675	83	Potatoes	61	KGS	5	KG	3	2014	18.6666999999999987
18714	138	1752	675	84	Wheat	61	KGS	5	KG	3	2014	17.6666999999999987
18715	138	1752	675	92	Eggs	61	KGS	5	KG	3	2014	75
18716	138	1752	675	94	Meat (chicken)	61	KGS	5	KG	3	2014	110
18717	138	1752	675	97	Sugar	61	KGS	5	KG	3	2014	55
18718	138	1752	675	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	20
18719	138	1752	675	141	Meat (beef)	61	KGS	5	KG	3	2014	300
18720	138	1752	675	166	Carrots	61	KGS	5	KG	3	2014	25
18721	138	1752	675	173	Onions	61	KGS	5	KG	3	2014	20
18722	138	1752	675	175	Tea (black)	61	KGS	31	Sack	3	2014	50
18723	138	1752	675	176	Tea (green)	61	KGS	31	Sack	3	2014	60
18724	138	1752	675	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	26.6999999999999993
18725	138	1752	675	178	Wheat flour (high quality)	61	KGS	5	KG	3	2012	33.75
18726	138	1752	675	181	Cabbage	61	KGS	5	KG	3	2014	25
18727	138	1752	675	183	Meat (mutton)	61	KGS	5	KG	3	2014	290
18728	138	1752	675	184	Oil (sunflower)	61	KGS	15	L	3	2014	100
18729	138	1752	675	185	Salt	61	KGS	5	KG	3	2012	15
18730	138	1752	675	186	Peas (yellow)	61	KGS	5	KG	3	2012	33.5
18731	138	1752	675	274	Wage (qualified labour)	61	KGS	51	Day	3	2014	266.666999999999973
18732	138	1752	675	277	Wage (non-qualified labour)	61	KGS	51	Day	3	2014	266.666999999999973
18733	138	1752	675	284	Fuel (diesel)	61	KGS	15	L	3	2014	40
18734	138	1752	675	285	Fuel (petrol-gasoline)	61	KGS	15	L	3	2014	39
18735	138	1748	676	51	Maize	61	KGS	5	KG	3	2012	20.1666999999999987
18736	138	1748	676	52	Rice	61	KGS	5	KG	3	2012	63.8888999999999996
18737	138	1748	676	55	Bread	61	KGS	42	150 G	3	2012	16.8333000000000013
18738	138	1748	676	83	Potatoes	61	KGS	5	KG	3	2012	12.3332999999999995
18739	138	1748	676	92	Eggs	61	KGS	5	KG	3	2012	80
18740	138	1748	676	94	Meat (chicken)	61	KGS	5	KG	3	2012	108.332999999999998
18741	138	1748	676	97	Sugar	61	KGS	5	KG	3	2012	53.3333000000000013
18742	138	1748	676	141	Meat (beef)	61	KGS	5	KG	3	2012	260
18743	138	1748	676	166	Carrots	61	KGS	5	KG	3	2012	13.3332999999999995
18744	138	1748	676	172	Oil (cotton)	61	KGS	15	L	3	2012	100
18745	138	1748	676	173	Onions	61	KGS	5	KG	3	2012	13.3332999999999995
18746	138	1748	676	175	Tea (black)	61	KGS	5	KG	3	2012	121.667000000000002
18747	138	1748	676	176	Tea (green)	61	KGS	5	KG	3	2012	154.443999999999988
18748	138	1748	676	177	Wheat flour (first grade)	61	KGS	5	KG	3	2012	19.5555999999999983
18749	138	1748	676	178	Wheat flour (high quality)	61	KGS	5	KG	3	2012	23.6666999999999987
18750	138	1748	676	181	Cabbage	61	KGS	5	KG	3	2012	28.3333000000000013
18751	138	1748	676	183	Meat (mutton)	61	KGS	5	KG	3	2012	300
18752	138	1748	676	184	Oil (sunflower)	61	KGS	15	L	3	2012	100
18753	138	1748	676	185	Salt	61	KGS	5	KG	3	2012	15
18754	138	1748	676	186	Peas (yellow)	61	KGS	5	KG	3	2012	101.111000000000004
18755	138	1748	676	389	Beans (kidney white)	61	KGS	5	KG	3	2012	70
18756	138	1748	677	51	Maize	61	KGS	5	KG	3	2012	21.3333000000000013
18757	138	1748	677	52	Rice	61	KGS	5	KG	3	2012	68.8889000000000067
18758	138	1748	677	55	Bread	61	KGS	42	150 G	3	2012	19.3333000000000013
18759	138	1748	677	83	Potatoes	61	KGS	5	KG	3	2012	13.3332999999999995
18760	138	1748	677	92	Eggs	61	KGS	5	KG	3	2012	78.8889000000000067
18761	138	1748	677	94	Meat (chicken)	61	KGS	5	KG	3	2012	105
18762	138	1748	677	97	Sugar	61	KGS	5	KG	3	2012	52.7777999999999992
18763	138	1748	677	102	Milk (non-pasteurized)	61	KGS	15	L	3	2012	33.8888999999999996
18764	138	1748	677	141	Meat (beef)	61	KGS	5	KG	3	2012	290
18765	138	1748	677	166	Carrots	61	KGS	5	KG	3	2012	13.3332999999999995
18766	138	1748	677	172	Oil (cotton)	61	KGS	15	L	3	2012	105
18767	138	1748	677	173	Onions	61	KGS	5	KG	3	2012	13
18768	138	1748	677	175	Tea (black)	61	KGS	5	KG	3	2012	125
18769	138	1748	677	176	Tea (green)	61	KGS	5	KG	3	2012	160
18770	138	1748	677	177	Wheat flour (first grade)	61	KGS	5	KG	3	2012	19.3333000000000013
18771	138	1748	677	183	Meat (mutton)	61	KGS	5	KG	3	2012	300
18772	138	1748	677	184	Oil (sunflower)	61	KGS	15	L	3	2012	100
18773	138	1748	677	185	Salt	61	KGS	5	KG	3	2012	15
18774	138	1748	677	186	Peas (yellow)	61	KGS	5	KG	3	2012	108.888999999999996
18775	138	1748	677	389	Beans (kidney white)	61	KGS	5	KG	3	2012	70
18776	138	1751	678	51	Maize	61	KGS	5	KG	3	2012	19
18777	138	1751	678	52	Rice	61	KGS	5	KG	3	2014	51.6666999999999987
18778	138	1751	678	55	Bread	61	KGS	42	150 G	3	2014	17.3333000000000013
18779	138	1751	678	83	Potatoes	61	KGS	5	KG	3	2014	22.3333000000000013
18780	138	1751	678	84	Wheat	61	KGS	5	KG	3	2014	12.5
18781	138	1751	678	92	Eggs	61	KGS	5	KG	3	2014	90
18782	138	1751	678	94	Meat (chicken)	61	KGS	5	KG	3	2014	127.5
18783	138	1751	678	97	Sugar	61	KGS	5	KG	3	2014	55
18784	138	1751	678	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	25
18785	138	1751	678	141	Meat (beef)	61	KGS	5	KG	3	2014	297.5
18786	138	1751	678	166	Carrots	61	KGS	5	KG	3	2014	17.5
18787	138	1751	678	172	Oil (cotton)	61	KGS	15	L	3	2012	96.6667000000000058
18788	138	1751	678	173	Onions	61	KGS	5	KG	3	2014	15
18789	138	1751	678	175	Tea (black)	61	KGS	31	Sack	3	2014	46.6666999999999987
18790	138	1751	678	176	Tea (green)	61	KGS	31	Sack	3	2014	24.6666999999999987
18791	138	1751	678	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	23.8000000000000007
18792	138	1751	678	178	Wheat flour (high quality)	61	KGS	5	KG	3	2012	30.6666999999999987
18793	138	1751	678	181	Cabbage	61	KGS	5	KG	3	2014	22.5
18794	138	1751	678	183	Meat (mutton)	61	KGS	5	KG	3	2014	305
18795	138	1751	678	184	Oil (sunflower)	61	KGS	15	L	3	2014	82.3332999999999942
18796	138	1751	678	185	Salt	61	KGS	5	KG	3	2012	10.6667000000000005
18797	138	1751	678	186	Peas (yellow)	61	KGS	5	KG	3	2012	44
18798	138	1751	678	274	Wage (qualified labour)	61	KGS	51	Day	3	2014	253.332999999999998
18799	138	1751	678	284	Fuel (diesel)	61	KGS	15	L	3	2014	39.7667000000000002
18800	138	1751	678	285	Fuel (petrol-gasoline)	61	KGS	15	L	3	2014	37.8999999999999986
18801	138	1751	678	389	Beans (kidney white)	61	KGS	5	KG	3	2012	39
18802	138	1751	679	51	Maize	61	KGS	5	KG	3	2012	18.5
18803	138	1751	679	52	Rice	61	KGS	5	KG	3	2014	53.3333000000000013
18804	138	1751	679	55	Bread	61	KGS	42	150 G	3	2014	13.5
18805	138	1751	679	83	Potatoes	61	KGS	5	KG	3	2014	22.5
18806	138	1751	679	84	Wheat	61	KGS	5	KG	3	2014	12.5
18807	138	1751	679	92	Eggs	61	KGS	5	KG	3	2014	90
18808	138	1751	679	94	Meat (chicken)	61	KGS	5	KG	3	2014	125
18809	138	1751	679	97	Sugar	61	KGS	5	KG	3	2014	54.5
18810	138	1751	679	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	25
18811	138	1751	679	166	Carrots	61	KGS	5	KG	3	2014	20
18812	138	1751	679	172	Oil (cotton)	61	KGS	15	L	3	2012	101.667000000000002
18813	138	1751	679	173	Onions	61	KGS	5	KG	3	2014	17.5
18814	138	1751	679	175	Tea (black)	61	KGS	31	Sack	3	2014	31
18815	138	1751	679	176	Tea (green)	61	KGS	31	Sack	3	2014	19
18816	138	1751	679	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	24
18817	138	1751	679	181	Cabbage	61	KGS	5	KG	3	2014	25
18818	138	1751	679	183	Meat (mutton)	61	KGS	5	KG	3	2014	300
18819	138	1751	679	184	Oil (sunflower)	61	KGS	15	L	3	2014	90
18820	138	1751	679	185	Salt	61	KGS	5	KG	3	2012	10.6667000000000005
18821	138	1751	679	186	Peas (yellow)	61	KGS	5	KG	3	2012	43
18822	138	1751	679	277	Wage (non-qualified labour)	61	KGS	51	Day	3	2014	275
18823	138	1751	679	284	Fuel (diesel)	61	KGS	15	L	3	2014	40.3999999999999986
18824	138	1751	679	285	Fuel (petrol-gasoline)	61	KGS	15	L	3	2014	37.8999999999999986
18825	138	1751	679	389	Beans (kidney white)	61	KGS	5	KG	3	2012	37
18826	138	1746	680	51	Maize	61	KGS	5	KG	3	2012	24.3333000000000013
18827	138	1746	680	52	Rice	61	KGS	5	KG	3	2014	95
18828	138	1746	680	55	Bread	61	KGS	5	KG	6	2015	53.3400000000000034
18829	138	1746	680	83	Potatoes	61	KGS	5	KG	6	2015	16.9200000000000017
18830	138	1746	680	84	Wheat	61	KGS	5	KG	6	2015	33.1099999999999994
18831	138	1746	680	92	Eggs	61	KGS	5	KG	3	2014	90
18832	138	1746	680	94	Meat (chicken)	61	KGS	5	KG	3	2014	125
18833	138	1746	680	97	Sugar	61	KGS	5	KG	3	2014	56
18834	138	1746	680	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	36.6666999999999987
18835	138	1746	680	141	Meat (beef)	61	KGS	5	KG	6	2015	350
18836	138	1746	680	166	Carrots	61	KGS	5	KG	3	2014	21.6666999999999987
18837	138	1746	680	172	Oil (cotton)	61	KGS	15	L	3	2012	97.7777999999999992
18838	138	1746	680	173	Onions	61	KGS	5	KG	3	2014	21.6666999999999987
18839	138	1746	680	175	Tea (black)	61	KGS	31	Sack	3	2014	46.6666999999999987
18840	138	1746	680	176	Tea (green)	61	KGS	31	Sack	3	2014	46.6666999999999987
18841	138	1746	680	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	24.8000000000000007
18842	138	1746	680	181	Cabbage	61	KGS	5	KG	3	2014	40.6666999999999987
18843	138	1746	680	183	Meat (mutton)	61	KGS	5	KG	6	2015	350
18844	138	1746	680	184	Oil (sunflower)	61	KGS	15	L	3	2014	98.3332999999999942
18845	138	1746	680	185	Salt	61	KGS	5	KG	3	2012	13.3332999999999995
18846	138	1746	680	186	Peas (yellow)	61	KGS	5	KG	3	2012	44.4444000000000017
18847	138	1746	680	274	Wage (qualified labour)	61	KGS	51	Day	1	2014	1366.67000000000007
18848	138	1746	680	284	Fuel (diesel)	61	KGS	15	L	3	2014	44.3333000000000013
18849	138	1746	680	285	Fuel (petrol-gasoline)	61	KGS	15	L	3	2014	41.8333000000000013
18850	138	1746	680	389	Beans (kidney white)	61	KGS	5	KG	3	2012	33.5555999999999983
18851	138	1746	681	51	Maize	61	KGS	5	KG	3	2012	24.3333000000000013
18852	138	1746	681	52	Rice	61	KGS	5	KG	3	2014	105
18853	138	1746	681	55	Bread	61	KGS	42	150 G	3	2014	18.3333000000000013
18854	138	1746	681	83	Potatoes	61	KGS	5	KG	3	2014	22.3333000000000013
18855	138	1746	681	84	Wheat	61	KGS	5	KG	3	2014	16.6666999999999987
18856	138	1746	681	92	Eggs	61	KGS	5	KG	3	2014	90
18857	138	1746	681	94	Meat (chicken)	61	KGS	5	KG	3	2014	125
18858	138	1746	681	97	Sugar	61	KGS	5	KG	3	2014	58
18859	138	1746	681	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	38.3333000000000013
18860	138	1746	681	141	Meat (beef)	61	KGS	5	KG	3	2014	320
18861	138	1746	681	166	Carrots	61	KGS	5	KG	3	2014	23.3333000000000013
18862	138	1746	681	172	Oil (cotton)	61	KGS	15	L	3	2012	97.7777999999999992
18863	138	1746	681	173	Onions	61	KGS	5	KG	3	2014	23.3333000000000013
18864	138	1746	681	175	Tea (black)	61	KGS	31	Sack	3	2014	45
18865	138	1746	681	176	Tea (green)	61	KGS	31	Sack	3	2014	45
18866	138	1746	681	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	25.5
18867	138	1746	681	181	Cabbage	61	KGS	5	KG	3	2014	43.3333000000000013
18868	138	1746	681	183	Meat (mutton)	61	KGS	5	KG	3	2014	350
18869	138	1746	681	184	Oil (sunflower)	61	KGS	15	L	3	2014	100
18870	138	1746	681	185	Salt	61	KGS	5	KG	3	2012	13.3332999999999995
18871	138	1746	681	186	Peas (yellow)	61	KGS	5	KG	3	2012	45
18872	138	1746	681	274	Wage (qualified labour)	61	KGS	51	Day	3	2014	1033.32999999999993
18873	138	1746	681	284	Fuel (diesel)	61	KGS	15	L	3	2014	43.7667000000000002
18874	138	1746	681	285	Fuel (petrol-gasoline)	61	KGS	15	L	3	2014	41.2667000000000002
18875	138	1746	681	389	Beans (kidney white)	61	KGS	5	KG	3	2012	33.6666999999999987
18876	138	1750	682	51	Maize	61	KGS	5	KG	3	2012	19.8888999999999996
18877	138	1750	682	52	Rice	61	KGS	5	KG	3	2014	61.6666999999999987
18878	138	1750	682	55	Bread	61	KGS	42	150 G	3	2014	10
18879	138	1750	682	83	Potatoes	61	KGS	5	KG	3	2014	31.6666999999999987
18880	138	1750	682	84	Wheat	61	KGS	5	KG	3	2014	16.6666999999999987
18881	138	1750	682	92	Eggs	61	KGS	5	KG	3	2014	75
18882	138	1750	682	94	Meat (chicken)	61	KGS	5	KG	3	2014	130
18883	138	1750	682	97	Sugar	61	KGS	5	KG	3	2014	55
18884	138	1750	682	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	30
18885	138	1750	682	141	Meat (beef)	61	KGS	5	KG	3	2014	320
18886	138	1750	682	166	Carrots	61	KGS	5	KG	3	2014	20
18887	138	1750	682	172	Oil (cotton)	61	KGS	15	L	3	2012	99.4444000000000017
18888	138	1750	682	173	Onions	61	KGS	5	KG	3	2014	18.3333000000000013
18889	138	1750	682	175	Tea (black)	61	KGS	5	KG	3	2014	250
18890	138	1750	682	176	Tea (green)	61	KGS	5	KG	3	2014	150
18891	138	1750	682	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	26
18892	138	1750	682	178	Wheat flour (high quality)	61	KGS	5	KG	3	2012	29.8888999999999996
18893	138	1750	682	181	Cabbage	61	KGS	5	KG	3	2014	50
18894	138	1750	682	183	Meat (mutton)	61	KGS	5	KG	3	2014	320
18895	138	1750	682	184	Oil (sunflower)	61	KGS	15	L	3	2014	100
18896	138	1750	682	185	Salt	61	KGS	5	KG	3	2012	17.8888999999999996
18897	138	1750	682	186	Peas (yellow)	61	KGS	5	KG	3	2012	33.8888999999999996
18898	138	1750	682	274	Wage (qualified labour)	61	KGS	51	Day	3	2014	500
18899	138	1750	682	277	Wage (non-qualified labour)	61	KGS	51	Day	3	2014	300
18900	138	1750	682	284	Fuel (diesel)	61	KGS	15	L	3	2014	43.033299999999997
18901	138	1750	682	285	Fuel (petrol-gasoline)	61	KGS	15	L	3	2014	39.6332999999999984
18902	138	1750	682	389	Beans (kidney white)	61	KGS	5	KG	3	2012	77.7777999999999992
18903	138	1750	683	52	Rice	61	KGS	5	KG	3	2014	75.3332999999999942
18904	138	1750	683	55	Bread	61	KGS	42	150 G	3	2014	25
18905	138	1750	683	83	Potatoes	61	KGS	5	KG	3	2014	18
18906	138	1750	683	84	Wheat	61	KGS	5	KG	3	2014	17
18907	138	1750	683	92	Eggs	61	KGS	5	KG	3	2014	70
18908	138	1750	683	94	Meat (chicken)	61	KGS	5	KG	3	2014	111.667000000000002
18909	138	1750	683	97	Sugar	61	KGS	5	KG	3	2014	60
18910	138	1750	683	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	25
18911	138	1750	683	141	Meat (beef)	61	KGS	5	KG	3	2014	300
18912	138	1750	683	166	Carrots	61	KGS	5	KG	3	2014	20
18913	138	1750	683	173	Onions	61	KGS	5	KG	3	2014	20
18914	138	1750	683	175	Tea (black)	61	KGS	31	Sack	3	2014	50
18915	138	1750	683	176	Tea (green)	61	KGS	31	Sack	2	2014	50
18916	138	1750	683	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	27
18917	138	1750	683	181	Cabbage	61	KGS	5	KG	2	2014	20
18918	138	1750	683	183	Meat (mutton)	61	KGS	5	KG	3	2014	290
18919	138	1750	683	184	Oil (sunflower)	61	KGS	15	L	3	2014	105
18920	138	1750	683	185	Salt	61	KGS	5	KG	3	2012	15
18921	138	1750	683	186	Peas (yellow)	61	KGS	5	KG	3	2012	40
18922	138	1750	683	274	Wage (qualified labour)	61	KGS	51	Day	3	2014	200
18923	138	1750	683	277	Wage (non-qualified labour)	61	KGS	51	Day	3	2014	200
18924	138	1748	1422	52	Rice	61	KGS	5	KG	3	2014	75
18925	138	1748	1422	55	Bread	61	KGS	42	150 G	3	2014	20
18926	138	1748	1422	83	Potatoes	61	KGS	5	KG	3	2014	25.6666999999999987
18927	138	1748	1422	84	Wheat	61	KGS	5	KG	3	2014	14.6667000000000005
18928	138	1748	1422	92	Eggs	61	KGS	5	KG	3	2014	73.3332999999999942
18929	138	1748	1422	94	Meat (chicken)	61	KGS	5	KG	3	2014	126.667000000000002
18930	138	1748	1422	97	Sugar	61	KGS	5	KG	3	2014	58
18931	138	1748	1422	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	25
18932	138	1748	1422	141	Meat (beef)	61	KGS	5	KG	3	2014	300
18933	138	1748	1422	166	Carrots	61	KGS	5	KG	3	2014	29.3333000000000013
18934	138	1748	1422	173	Onions	61	KGS	5	KG	3	2014	20
18935	138	1748	1422	175	Tea (black)	61	KGS	5	KG	3	2014	120
18936	138	1748	1422	176	Tea (green)	61	KGS	5	KG	3	2014	220
18937	138	1748	1422	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	25.5
18938	138	1748	1422	181	Cabbage	61	KGS	5	KG	3	2014	56.6666999999999987
18939	138	1748	1422	183	Meat (mutton)	61	KGS	5	KG	3	2014	320
18940	138	1748	1422	184	Oil (sunflower)	61	KGS	15	L	3	2014	90
18941	138	1748	1422	274	Wage (qualified labour)	61	KGS	51	Day	3	2014	300
18942	138	1748	1422	277	Wage (non-qualified labour)	61	KGS	51	Day	3	2014	333.333000000000027
18943	138	1748	1422	284	Fuel (diesel)	61	KGS	15	L	3	2014	43
18944	138	1748	1422	285	Fuel (petrol-gasoline)	61	KGS	15	L	3	2014	42
18945	138	1748	1423	52	Rice	61	KGS	5	KG	3	2014	70
18946	138	1748	1423	55	Bread	61	KGS	42	150 G	3	2014	20
18947	138	1748	1423	83	Potatoes	61	KGS	5	KG	3	2014	30
18948	138	1748	1423	84	Wheat	61	KGS	5	KG	3	2014	14
18949	138	1748	1423	92	Eggs	61	KGS	5	KG	3	2014	73.3332999999999942
18950	138	1748	1423	94	Meat (chicken)	61	KGS	5	KG	3	2014	120
18951	138	1748	1423	97	Sugar	61	KGS	5	KG	3	2014	55
18952	138	1748	1423	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	30
18953	138	1748	1423	141	Meat (beef)	61	KGS	5	KG	3	2014	300
18954	138	1748	1423	166	Carrots	61	KGS	5	KG	3	2014	25
18955	138	1748	1423	173	Onions	61	KGS	5	KG	3	2014	20
18956	138	1748	1423	175	Tea (black)	61	KGS	5	KG	3	2014	113.332999999999998
18957	138	1748	1423	176	Tea (green)	61	KGS	5	KG	3	2014	213.332999999999998
18958	138	1748	1423	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	26
18959	138	1748	1423	181	Cabbage	61	KGS	5	KG	3	2014	50
18960	138	1748	1423	183	Meat (mutton)	61	KGS	5	KG	3	2014	320
18961	138	1748	1423	184	Oil (sunflower)	61	KGS	15	L	3	2014	85
18962	138	1748	1423	274	Wage (qualified labour)	61	KGS	51	Day	3	2014	350
18963	138	1748	1423	277	Wage (non-qualified labour)	61	KGS	51	Day	3	2014	333.333000000000027
18964	138	1748	1423	284	Fuel (diesel)	61	KGS	15	L	3	2014	41.7332999999999998
18965	138	1748	1423	285	Fuel (petrol-gasoline)	61	KGS	15	L	3	2014	40
18966	138	1748	1424	52	Rice	61	KGS	5	KG	3	2014	73.3332999999999942
18967	138	1748	1424	55	Bread	61	KGS	5	KG	6	2015	56.4600000000000009
18968	138	1748	1424	83	Potatoes	61	KGS	5	KG	6	2015	18.9499999999999993
18969	138	1748	1424	84	Wheat	61	KGS	5	KG	6	2015	56.4600000000000009
18970	138	1748	1424	92	Eggs	61	KGS	5	KG	3	2014	73.3332999999999942
18971	138	1748	1424	94	Meat (chicken)	61	KGS	5	KG	3	2014	116.667000000000002
18972	138	1748	1424	97	Sugar	61	KGS	5	KG	3	2014	55
18973	138	1748	1424	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	30
18974	138	1748	1424	141	Meat (beef)	61	KGS	5	KG	6	2015	300.769999999999982
18975	138	1748	1424	166	Carrots	61	KGS	5	KG	3	2014	25
18976	138	1748	1424	173	Onions	61	KGS	5	KG	3	2014	19.3333000000000013
18977	138	1748	1424	175	Tea (black)	61	KGS	5	KG	3	2014	110
18978	138	1748	1424	176	Tea (green)	61	KGS	5	KG	3	2014	213.332999999999998
18979	138	1748	1424	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	24
18980	138	1748	1424	181	Cabbage	61	KGS	5	KG	3	2014	50
18981	138	1748	1424	183	Meat (mutton)	61	KGS	5	KG	6	2015	329.009999999999991
18982	138	1748	1424	184	Oil (sunflower)	61	KGS	15	L	3	2014	85
18983	138	1748	1424	274	Wage (qualified labour)	61	KGS	51	Day	3	2014	366.666999999999973
18984	138	1748	1424	277	Wage (non-qualified labour)	61	KGS	51	Day	3	2014	366.666999999999973
18985	138	1748	1424	284	Fuel (diesel)	61	KGS	15	L	3	2014	41.5666999999999973
18986	138	1748	1424	285	Fuel (petrol-gasoline)	61	KGS	15	L	3	2014	40
18987	138	1751	1426	52	Rice	61	KGS	5	KG	3	2014	52.5
18988	138	1751	1426	55	Bread	61	KGS	42	150 G	3	2014	15
18989	138	1751	1426	92	Eggs	61	KGS	5	KG	3	2014	90
18990	138	1751	1426	94	Meat (chicken)	61	KGS	5	KG	3	2014	130
18991	138	1751	1426	97	Sugar	61	KGS	5	KG	3	2014	54
18992	138	1751	1426	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	20
18993	138	1751	1426	166	Carrots	61	KGS	5	KG	3	2014	20
18994	138	1751	1426	173	Onions	61	KGS	5	KG	3	2014	15
18995	138	1751	1426	175	Tea (black)	61	KGS	31	Sack	3	2014	42.6666999999999987
18996	138	1751	1426	176	Tea (green)	61	KGS	31	Sack	3	2014	26
18997	138	1751	1426	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	25.5
18998	138	1751	1426	184	Oil (sunflower)	61	KGS	15	L	3	2014	90
18999	138	1751	1426	277	Wage (non-qualified labour)	61	KGS	51	Day	3	2014	250
19000	138	1751	1426	284	Fuel (diesel)	61	KGS	15	L	3	2014	40.3999999999999986
19001	138	1751	1426	285	Fuel (petrol-gasoline)	61	KGS	15	L	3	2014	38.1499999999999986
19002	138	1750	1427	52	Rice	61	KGS	5	KG	3	2014	60
19003	138	1750	1427	55	Bread	61	KGS	42	150 G	3	2014	10
19004	138	1750	1427	83	Potatoes	61	KGS	5	KG	3	2014	25
19005	138	1750	1427	84	Wheat	61	KGS	5	KG	3	2014	15
19006	138	1750	1427	92	Eggs	61	KGS	5	KG	3	2014	73.3332999999999942
19007	138	1750	1427	94	Meat (chicken)	61	KGS	5	KG	3	2014	125
19008	138	1750	1427	97	Sugar	61	KGS	5	KG	3	2014	55
19009	138	1750	1427	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	26.6666999999999987
19010	138	1750	1427	141	Meat (beef)	61	KGS	5	KG	3	2014	290
19011	138	1750	1427	166	Carrots	61	KGS	5	KG	3	2014	23.3333000000000013
19012	138	1750	1427	173	Onions	61	KGS	5	KG	3	2014	15
19013	138	1750	1427	175	Tea (black)	61	KGS	5	KG	3	2014	250
19014	138	1750	1427	176	Tea (green)	61	KGS	5	KG	3	2014	150
19015	138	1750	1427	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	26.6000000000000014
19016	138	1750	1427	181	Cabbage	61	KGS	5	KG	3	2014	50
19017	138	1750	1427	183	Meat (mutton)	61	KGS	5	KG	3	2014	320
19018	138	1750	1427	184	Oil (sunflower)	61	KGS	15	L	3	2014	96.6667000000000058
19019	138	1750	1427	274	Wage (qualified labour)	61	KGS	51	Day	3	2014	433.333000000000027
19020	138	1750	1427	277	Wage (non-qualified labour)	61	KGS	51	Day	3	2014	266.666999999999973
19021	138	1750	1427	284	Fuel (diesel)	61	KGS	15	L	3	2014	42.4333000000000027
19022	138	1750	1427	285	Fuel (petrol-gasoline)	61	KGS	15	L	3	2014	39.533299999999997
19023	138	1749	1476	52	Rice	61	KGS	5	KG	3	2014	85
19024	138	1749	1476	55	Bread	61	KGS	42	150 G	3	2014	12.6667000000000005
19025	138	1749	1476	83	Potatoes	61	KGS	5	KG	3	2014	26
19026	138	1749	1476	84	Wheat	61	KGS	5	KG	3	2014	10
19027	138	1749	1476	92	Eggs	61	KGS	5	KG	3	2014	96.6667000000000058
19028	138	1749	1476	94	Meat (chicken)	61	KGS	5	KG	3	2014	146.667000000000002
19029	138	1749	1476	97	Sugar	61	KGS	5	KG	3	2014	62.6666999999999987
19030	138	1749	1476	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	20
19031	138	1749	1476	141	Meat (beef)	61	KGS	5	KG	3	2014	343.333000000000027
19032	138	1749	1476	166	Carrots	61	KGS	5	KG	3	2014	23.3333000000000013
19033	138	1749	1476	173	Onions	61	KGS	5	KG	3	2014	25
19034	138	1749	1476	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	27.3299999999999983
19035	138	1749	1476	181	Cabbage	61	KGS	5	KG	3	2014	22.6666999999999987
19036	138	1749	1476	183	Meat (mutton)	61	KGS	5	KG	3	2014	336.666999999999973
19037	138	1749	1476	184	Oil (sunflower)	61	KGS	15	L	3	2014	98.3332999999999942
19038	138	1749	1476	274	Wage (qualified labour)	61	KGS	51	Day	3	2014	283.333000000000027
19039	138	1749	1476	277	Wage (non-qualified labour)	61	KGS	51	Day	3	2014	145.332999999999998
19040	138	1749	1476	284	Fuel (diesel)	61	KGS	15	L	3	2014	45.6666999999999987
19041	138	1749	1476	285	Fuel (petrol-gasoline)	61	KGS	15	L	3	2014	42.3333000000000013
19042	138	1747	1477	52	Rice	61	KGS	5	KG	3	2014	60
19043	138	1747	1477	55	Bread	61	KGS	42	150 G	3	2014	14
19044	138	1747	1477	83	Potatoes	61	KGS	5	KG	3	2014	24
19045	138	1747	1477	94	Meat (chicken)	61	KGS	5	KG	3	2014	130
19046	138	1747	1477	97	Sugar	61	KGS	5	KG	3	2014	54
19047	138	1747	1477	141	Meat (beef)	61	KGS	5	KG	3	2014	300
19048	138	1747	1477	166	Carrots	61	KGS	5	KG	3	2014	23
19049	138	1747	1477	173	Onions	61	KGS	5	KG	3	2014	25
19050	138	1747	1477	175	Tea (black)	61	KGS	31	Sack	3	2014	50
19051	138	1747	1477	176	Tea (green)	61	KGS	31	Sack	3	2014	27
19052	138	1747	1477	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	28.3000000000000007
19053	138	1747	1477	181	Cabbage	61	KGS	5	KG	3	2014	23
19054	138	1747	1477	183	Meat (mutton)	61	KGS	5	KG	3	2014	300
19055	138	1747	1477	184	Oil (sunflower)	61	KGS	15	L	3	2014	98
19056	138	1747	1477	284	Fuel (diesel)	61	KGS	15	L	3	2014	41.7999999999999972
19057	138	1747	1477	285	Fuel (petrol-gasoline)	61	KGS	15	L	3	2014	38.7999999999999972
19058	138	1752	1478	52	Rice	61	KGS	5	KG	3	2014	75
19059	138	1752	1478	55	Bread	61	KGS	42	150 G	3	2014	25
19060	138	1752	1478	83	Potatoes	61	KGS	5	KG	3	2014	18
19061	138	1752	1478	84	Wheat	61	KGS	5	KG	3	2014	17
19062	138	1752	1478	92	Eggs	61	KGS	5	KG	3	2014	70
19063	138	1752	1478	94	Meat (chicken)	61	KGS	5	KG	3	2014	115
19064	138	1752	1478	97	Sugar	61	KGS	5	KG	3	2014	60.6666999999999987
19065	138	1752	1478	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	25
19066	138	1752	1478	166	Carrots	61	KGS	5	KG	1	2014	12
19067	138	1752	1478	173	Onions	61	KGS	5	KG	3	2014	20
19068	138	1752	1478	175	Tea (black)	61	KGS	31	Sack	3	2014	50
19069	138	1752	1478	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	28.6000000000000014
19070	138	1752	1478	184	Oil (sunflower)	61	KGS	15	L	3	2014	110
19071	138	1752	1478	274	Wage (qualified labour)	61	KGS	51	Day	3	2014	200
19072	138	1752	1478	277	Wage (non-qualified labour)	61	KGS	51	Day	3	2014	200
19073	138	1749	1479	52	Rice	61	KGS	5	KG	3	2014	90
19074	138	1749	1479	55	Bread	61	KGS	42	150 G	11	2013	20
19075	138	1749	1479	83	Potatoes	61	KGS	5	KG	11	2013	15
19076	138	1749	1479	92	Eggs	61	KGS	5	KG	3	2014	90
19077	138	1749	1479	94	Meat (chicken)	61	KGS	5	KG	3	2014	150
19078	138	1749	1479	97	Sugar	61	KGS	5	KG	3	2014	60
19079	138	1749	1479	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	20
19080	138	1749	1479	166	Carrots	61	KGS	5	KG	3	2014	30
19081	138	1749	1479	173	Onions	61	KGS	5	KG	3	2014	25
19082	138	1749	1479	175	Tea (black)	61	KGS	31	Sack	3	2014	65
19083	138	1749	1479	176	Tea (green)	61	KGS	31	Sack	3	2014	45
19084	138	1749	1479	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	30
19085	138	1749	1479	181	Cabbage	61	KGS	5	KG	1	2014	30
19086	138	1749	1479	184	Oil (sunflower)	61	KGS	15	L	3	2014	120
19087	138	1749	1479	274	Wage (qualified labour)	61	KGS	51	Day	3	2014	283.333000000000027
19088	138	1749	1479	277	Wage (non-qualified labour)	61	KGS	51	Day	3	2014	145.332999999999998
19089	138	1746	1481	52	Rice	61	KGS	5	KG	3	2014	105
19090	138	1746	1481	55	Bread	61	KGS	42	150 G	3	2014	18.3333000000000013
19091	138	1746	1481	83	Potatoes	61	KGS	5	KG	3	2014	22.3333000000000013
19092	138	1746	1481	84	Wheat	61	KGS	5	KG	3	2014	16.6666999999999987
19093	138	1746	1481	92	Eggs	61	KGS	5	KG	3	2014	90
19094	138	1746	1481	94	Meat (chicken)	61	KGS	5	KG	3	2014	125
19095	138	1746	1481	97	Sugar	61	KGS	5	KG	3	2014	55
19096	138	1746	1481	102	Milk (non-pasteurized)	61	KGS	15	L	3	2014	38.3333000000000013
19097	138	1746	1481	141	Meat (beef)	61	KGS	5	KG	3	2014	320
19098	138	1746	1481	166	Carrots	61	KGS	5	KG	3	2014	23.3333000000000013
19099	138	1746	1481	173	Onions	61	KGS	5	KG	3	2014	23.3333000000000013
19100	138	1746	1481	175	Tea (black)	61	KGS	31	Sack	3	2014	45
19101	138	1746	1481	176	Tea (green)	61	KGS	31	Sack	3	2014	45
19102	138	1746	1481	177	Wheat flour (first grade)	61	KGS	5	KG	3	2014	27.6000000000000014
19103	138	1746	1481	181	Cabbage	61	KGS	5	KG	3	2014	43.3333000000000013
19104	138	1746	1481	183	Meat (mutton)	61	KGS	5	KG	3	2014	350
19105	138	1746	1481	184	Oil (sunflower)	61	KGS	15	L	3	2014	100
19106	138	1746	1481	274	Wage (qualified labour)	61	KGS	51	Day	3	2014	1066.67000000000007
19107	138	1746	1481	284	Fuel (diesel)	61	KGS	15	L	3	2014	43.7667000000000002
19108	138	1746	1481	285	Fuel (petrol-gasoline)	61	KGS	15	L	3	2014	41.2667000000000002
19109	139	1768	666	62	Oil (palm)	63	LAK	15	L	1	2016	15000
19110	139	1768	666	92	Eggs	63	LAK	33	Unit	1	2016	1000
19111	139	1768	666	94	Meat (chicken)	63	LAK	5	KG	1	2016	43500
19112	139	1768	666	187	Meat (beef, first quality)	63	LAK	5	KG	1	2016	73750
19113	139	1768	666	188	Meat (beef, second quality)	63	LAK	5	KG	1	2016	64500
19114	139	1768	666	189	Meat (buffalo, first quality)	63	LAK	5	KG	1	2016	73750
19115	139	1768	666	190	Meat (buffalo, second quality)	63	LAK	5	KG	1	2016	64500
19116	139	1768	666	192	Meat (pork, first quality)	63	LAK	5	KG	1	2016	36500
19117	139	1768	666	193	Meat (pork, second quality)	63	LAK	5	KG	1	2016	33250
19118	139	1768	666	194	Rice (glutinous, first quality)	63	LAK	5	KG	1	2016	8300
19119	139	1768	666	195	Rice (glutinous, second quality)	63	LAK	5	KG	1	2016	7300
19120	139	1768	666	196	Rice (glutinous, unmilled)	63	LAK	5	KG	1	2016	3100
19121	139	1768	666	197	Rice (ordinary, first quality)	63	LAK	5	KG	1	2016	10000
19122	139	1768	666	198	Rice (ordinary, second quality)	63	LAK	5	KG	1	2016	8600
19123	139	1768	666	199	Rice (ordinary, unmilled)	63	LAK	5	KG	1	2016	3800
19124	139	1768	666	214	Sugar (brown)	63	LAK	5	KG	1	2016	9000
19125	139	1768	666	284	Fuel (diesel)	63	LAK	15	L	1	2016	5600
19126	139	1768	666	285	Fuel (petrol-gasoline)	63	LAK	15	L	1	2016	6970
19127	139	1768	666	289	Garlic (small)	63	LAK	5	KG	1	2016	9000
19128	139	1768	666	306	Oil (soybean)	63	LAK	15	L	1	2016	17000
19129	139	1768	666	309	Fish (snake head)	63	LAK	5	KG	1	2016	60000
19130	139	1768	666	310	Fish (catfish)	63	LAK	5	KG	1	2016	18000
19131	139	1768	666	311	Fish (tilapia, farmed)	63	LAK	5	KG	1	2016	22000
19132	139	1758	667	62	Oil (palm)	63	LAK	15	L	12	2015	14000
19133	139	1758	667	92	Eggs	63	LAK	33	Unit	12	2015	1000
19134	139	1758	667	94	Meat (chicken)	63	LAK	5	KG	12	2015	35000
19135	139	1758	667	187	Meat (beef, first quality)	63	LAK	5	KG	12	2015	70000
19136	139	1758	667	188	Meat (beef, second quality)	63	LAK	5	KG	12	2015	50000
19137	139	1758	667	189	Meat (buffalo, first quality)	63	LAK	5	KG	12	2015	70000
19138	139	1758	667	190	Meat (buffalo, second quality)	63	LAK	5	KG	12	2015	50000
19139	139	1758	667	192	Meat (pork, first quality)	63	LAK	5	KG	12	2015	40000
19140	139	1758	667	193	Meat (pork, second quality)	63	LAK	5	KG	12	2015	35000
19141	139	1758	667	194	Rice (glutinous, first quality)	63	LAK	5	KG	12	2015	5500
19142	139	1758	667	195	Rice (glutinous, second quality)	63	LAK	5	KG	12	2015	4500
19143	139	1758	667	196	Rice (glutinous, unmilled)	63	LAK	5	KG	12	2015	3000
19144	139	1758	667	197	Rice (ordinary, first quality)	63	LAK	5	KG	12	2015	6500
19145	139	1758	667	198	Rice (ordinary, second quality)	63	LAK	5	KG	12	2015	6000
19146	139	1758	667	199	Rice (ordinary, unmilled)	63	LAK	5	KG	12	2015	3000
19147	139	1758	667	214	Sugar (brown)	63	LAK	5	KG	12	2015	7000
19148	139	1758	667	284	Fuel (diesel)	63	LAK	15	L	12	2015	5930
19149	139	1758	667	285	Fuel (petrol-gasoline)	63	LAK	15	L	12	2015	7310
19150	139	1758	667	289	Garlic (small)	63	LAK	5	KG	12	2015	13000
19151	139	1758	667	306	Oil (soybean)	63	LAK	15	L	12	2015	15000
19152	139	1758	667	309	Fish (snake head)	63	LAK	5	KG	12	2015	45000
19153	139	1758	667	310	Fish (catfish)	63	LAK	5	KG	12	2015	20000
19154	139	1758	667	311	Fish (tilapia, farmed)	63	LAK	5	KG	12	2015	28000
19155	139	1764	668	62	Oil (palm)	63	LAK	15	L	12	2015	16000
19156	139	1764	668	92	Eggs	63	LAK	33	Unit	12	2015	1250
19157	139	1764	668	94	Meat (chicken)	63	LAK	5	KG	12	2015	60000
19158	139	1764	668	187	Meat (beef, first quality)	63	LAK	5	KG	12	2015	70000
19159	139	1764	668	188	Meat (beef, second quality)	63	LAK	5	KG	12	2015	60000
19160	139	1764	668	189	Meat (buffalo, first quality)	63	LAK	5	KG	12	2015	70000
19161	139	1764	668	190	Meat (buffalo, second quality)	63	LAK	5	KG	12	2015	60000
19162	139	1764	668	192	Meat (pork, first quality)	63	LAK	5	KG	12	2015	45000
19163	139	1764	668	193	Meat (pork, second quality)	63	LAK	5	KG	12	2015	40000
19164	139	1764	668	194	Rice (glutinous, first quality)	63	LAK	5	KG	12	2015	5000
19165	139	1764	668	195	Rice (glutinous, second quality)	63	LAK	5	KG	12	2015	4500
19166	139	1764	668	196	Rice (glutinous, unmilled)	63	LAK	5	KG	12	2015	2600
19167	139	1764	668	197	Rice (ordinary, first quality)	63	LAK	5	KG	12	2015	8000
19168	139	1764	668	198	Rice (ordinary, second quality)	63	LAK	5	KG	12	2015	7000
19169	139	1764	668	199	Rice (ordinary, unmilled)	63	LAK	5	KG	12	2015	3000
19170	139	1764	668	214	Sugar (brown)	63	LAK	5	KG	12	2015	9000
19171	139	1764	668	284	Fuel (diesel)	63	LAK	15	L	12	2015	5930
19172	139	1764	668	285	Fuel (petrol-gasoline)	63	LAK	15	L	12	2015	7320
19173	139	1764	668	289	Garlic (small)	63	LAK	5	KG	12	2015	17000
19174	139	1764	668	306	Oil (soybean)	63	LAK	15	L	12	2015	17000
19175	139	1764	668	309	Fish (snake head)	63	LAK	5	KG	12	2015	27000
19176	139	1764	668	310	Fish (catfish)	63	LAK	5	KG	12	2015	18000
19177	139	1764	668	311	Fish (tilapia, farmed)	63	LAK	5	KG	12	2015	22000
19178	139	1756	669	62	Oil (palm)	63	LAK	15	L	12	2015	12000
19179	139	1756	669	92	Eggs	63	LAK	33	Unit	12	2015	1000
19180	139	1756	669	94	Meat (chicken)	63	LAK	5	KG	12	2015	35000
19181	139	1756	669	187	Meat (beef, first quality)	63	LAK	5	KG	12	2015	70000
19182	139	1756	669	188	Meat (beef, second quality)	63	LAK	5	KG	12	2015	65000
19183	139	1756	669	189	Meat (buffalo, first quality)	63	LAK	5	KG	12	2015	70000
19184	139	1756	669	190	Meat (buffalo, second quality)	63	LAK	5	KG	12	2015	65000
19185	139	1756	669	192	Meat (pork, first quality)	63	LAK	5	KG	12	2015	35000
19186	139	1756	669	193	Meat (pork, second quality)	63	LAK	5	KG	12	2015	30000
19187	139	1756	669	194	Rice (glutinous, first quality)	63	LAK	5	KG	12	2015	7000
19188	139	1756	669	195	Rice (glutinous, second quality)	63	LAK	5	KG	12	2015	6000
19189	139	1756	669	196	Rice (glutinous, unmilled)	63	LAK	5	KG	12	2015	2500
19190	139	1756	669	197	Rice (ordinary, first quality)	63	LAK	5	KG	12	2015	10000
19191	139	1756	669	198	Rice (ordinary, second quality)	63	LAK	5	KG	12	2015	7000
19192	139	1756	669	199	Rice (ordinary, unmilled)	63	LAK	5	KG	12	2015	3500
19193	139	1756	669	214	Sugar (brown)	63	LAK	5	KG	12	2015	6000
19194	139	1756	669	284	Fuel (diesel)	63	LAK	15	L	12	2015	5960
19195	139	1756	669	285	Fuel (petrol-gasoline)	63	LAK	15	L	12	2015	7340
19196	139	1756	669	289	Garlic (small)	63	LAK	5	KG	12	2015	12000
19197	139	1756	669	306	Oil (soybean)	63	LAK	15	L	12	2015	13000
19198	139	1756	669	309	Fish (snake head)	63	LAK	5	KG	12	2015	50000
19199	139	1756	669	310	Fish (catfish)	63	LAK	5	KG	12	2015	16000
19200	139	1756	669	311	Fish (tilapia, farmed)	63	LAK	5	KG	12	2015	25000
19201	139	1759	670	62	Oil (palm)	63	LAK	15	L	1	2016	14000
19202	139	1759	670	92	Eggs	63	LAK	33	Unit	1	2016	1000
19203	139	1759	670	94	Meat (chicken)	63	LAK	5	KG	1	2016	55000
19204	139	1759	670	187	Meat (beef, first quality)	63	LAK	5	KG	1	2016	75000
19205	139	1759	670	188	Meat (beef, second quality)	63	LAK	5	KG	1	2016	70000
19206	139	1759	670	189	Meat (buffalo, first quality)	63	LAK	5	KG	1	2016	75000
19207	139	1759	670	190	Meat (buffalo, second quality)	63	LAK	5	KG	1	2016	70000
19208	139	1759	670	192	Meat (pork, first quality)	63	LAK	5	KG	1	2016	35000
19209	139	1759	670	193	Meat (pork, second quality)	63	LAK	5	KG	1	2016	33000
19210	139	1759	670	194	Rice (glutinous, first quality)	63	LAK	5	KG	1	2016	7500
19211	139	1759	670	195	Rice (glutinous, second quality)	63	LAK	5	KG	1	2016	6000
19212	139	1759	670	196	Rice (glutinous, unmilled)	63	LAK	5	KG	1	2016	3000
19213	139	1759	670	197	Rice (ordinary, first quality)	63	LAK	5	KG	1	2016	8000
19214	139	1759	670	198	Rice (ordinary, second quality)	63	LAK	5	KG	1	2016	6000
19215	139	1759	670	199	Rice (ordinary, unmilled)	63	LAK	5	KG	1	2016	3000
19216	139	1759	670	214	Sugar (brown)	63	LAK	5	KG	1	2016	8500
19217	139	1759	670	284	Fuel (diesel)	63	LAK	15	L	1	2016	6060
19218	139	1759	670	285	Fuel (petrol-gasoline)	63	LAK	15	L	1	2016	7430
19219	139	1759	670	289	Garlic (small)	63	LAK	5	KG	1	2016	10000
19220	139	1759	670	306	Oil (soybean)	63	LAK	15	L	1	2016	15000
19221	139	1759	670	310	Fish (catfish)	63	LAK	5	KG	1	2016	16000
19222	139	1759	670	311	Fish (tilapia, farmed)	63	LAK	5	KG	1	2016	20000
19223	139	1760	1566	62	Oil (palm)	63	LAK	15	L	1	2016	13000
19224	139	1760	1566	92	Eggs	63	LAK	33	Unit	1	2016	1000
19225	139	1760	1566	94	Meat (chicken)	63	LAK	5	KG	1	2016	60000
19226	139	1760	1566	187	Meat (beef, first quality)	63	LAK	5	KG	1	2016	65000
19227	139	1760	1566	188	Meat (beef, second quality)	63	LAK	5	KG	1	2016	60000
19228	139	1760	1566	189	Meat (buffalo, first quality)	63	LAK	5	KG	1	2016	65000
19229	139	1760	1566	190	Meat (buffalo, second quality)	63	LAK	5	KG	1	2016	60000
19230	139	1760	1566	192	Meat (pork, first quality)	63	LAK	5	KG	1	2016	45000
19231	139	1760	1566	193	Meat (pork, second quality)	63	LAK	5	KG	1	2016	40000
19232	139	1760	1566	194	Rice (glutinous, first quality)	63	LAK	5	KG	1	2016	8000
19233	139	1760	1566	195	Rice (glutinous, second quality)	63	LAK	5	KG	1	2016	7000
19234	139	1760	1566	196	Rice (glutinous, unmilled)	63	LAK	5	KG	1	2016	3500
19235	139	1760	1566	197	Rice (ordinary, first quality)	63	LAK	5	KG	1	2016	7000
19236	139	1760	1566	198	Rice (ordinary, second quality)	63	LAK	5	KG	1	2016	6000
19237	139	1760	1566	199	Rice (ordinary, unmilled)	63	LAK	5	KG	1	2016	4500
19238	139	1760	1566	214	Sugar (brown)	63	LAK	5	KG	1	2016	8000
19239	139	1760	1566	284	Fuel (diesel)	63	LAK	15	L	1	2016	5960
19240	139	1760	1566	285	Fuel (petrol-gasoline)	63	LAK	15	L	1	2016	7330
19241	139	1760	1566	289	Garlic (small)	63	LAK	5	KG	1	2016	10000
19242	139	1760	1566	306	Oil (soybean)	63	LAK	15	L	1	2016	15000
19243	139	1760	1566	309	Fish (snake head)	63	LAK	5	KG	1	2016	35000
19244	139	1760	1566	310	Fish (catfish)	63	LAK	5	KG	1	2016	35000
19245	139	1760	1566	311	Fish (tilapia, farmed)	63	LAK	5	KG	1	2016	22000
19246	139	1770	1567	92	Eggs	63	LAK	33	Unit	1	2016	1000
19247	139	1770	1567	94	Meat (chicken)	63	LAK	5	KG	1	2016	50000
19248	139	1770	1567	187	Meat (beef, first quality)	63	LAK	5	KG	1	2016	60000
19249	139	1770	1567	188	Meat (beef, second quality)	63	LAK	5	KG	1	2016	55000
19250	139	1770	1567	189	Meat (buffalo, first quality)	63	LAK	5	KG	1	2016	60000
19251	139	1770	1567	190	Meat (buffalo, second quality)	63	LAK	5	KG	1	2016	55000
19252	139	1770	1567	192	Meat (pork, first quality)	63	LAK	5	KG	1	2016	35000
19253	139	1770	1567	193	Meat (pork, second quality)	63	LAK	5	KG	1	2016	33000
19254	139	1770	1567	194	Rice (glutinous, first quality)	63	LAK	5	KG	1	2016	6500
19255	139	1770	1567	195	Rice (glutinous, second quality)	63	LAK	5	KG	1	2016	5000
19256	139	1770	1567	196	Rice (glutinous, unmilled)	63	LAK	5	KG	1	2016	3500
19257	139	1770	1567	197	Rice (ordinary, first quality)	63	LAK	5	KG	1	2016	7000
19258	139	1770	1567	198	Rice (ordinary, second quality)	63	LAK	5	KG	1	2016	6000
19259	139	1770	1567	199	Rice (ordinary, unmilled)	63	LAK	5	KG	1	2016	4500
19260	139	1770	1567	214	Sugar (brown)	63	LAK	5	KG	1	2016	8000
19261	139	1770	1567	284	Fuel (diesel)	63	LAK	15	L	12	2015	6350
19262	139	1770	1567	285	Fuel (petrol-gasoline)	63	LAK	15	L	1	2016	7160
19263	139	1770	1567	289	Garlic (small)	63	LAK	5	KG	1	2016	15000
19264	139	1770	1567	306	Oil (soybean)	63	LAK	15	L	1	2016	18000
19265	139	1770	1567	309	Fish (snake head)	63	LAK	5	KG	1	2016	50000
19266	139	1770	1567	310	Fish (catfish)	63	LAK	5	KG	1	2016	20000
19267	139	1770	1567	311	Fish (tilapia, farmed)	63	LAK	5	KG	1	2016	28000
19268	139	1755	1568	62	Oil (palm)	63	LAK	15	L	12	2015	12500
19269	139	1755	1568	92	Eggs	63	LAK	33	Unit	12	2015	1000
19270	139	1755	1568	94	Meat (chicken)	63	LAK	5	KG	12	2015	50000
19271	139	1755	1568	187	Meat (beef, first quality)	63	LAK	5	KG	12	2015	75000
19272	139	1755	1568	188	Meat (beef, second quality)	63	LAK	5	KG	9	2015	75000
19273	139	1755	1568	189	Meat (buffalo, first quality)	63	LAK	5	KG	12	2015	70000
19274	139	1755	1568	190	Meat (buffalo, second quality)	63	LAK	5	KG	10	2015	70000
19275	139	1755	1568	192	Meat (pork, first quality)	63	LAK	5	KG	12	2015	45000
19276	139	1755	1568	193	Meat (pork, second quality)	63	LAK	5	KG	12	2015	35000
19277	139	1755	1568	194	Rice (glutinous, first quality)	63	LAK	5	KG	12	2015	6000
19278	139	1755	1568	195	Rice (glutinous, second quality)	63	LAK	5	KG	12	2015	5833
19279	139	1755	1568	196	Rice (glutinous, unmilled)	63	LAK	5	KG	12	2015	2330
19280	139	1755	1568	197	Rice (ordinary, first quality)	63	LAK	5	KG	12	2015	7000
19281	139	1755	1568	198	Rice (ordinary, second quality)	63	LAK	5	KG	12	2015	6000
19282	139	1755	1568	199	Rice (ordinary, unmilled)	63	LAK	5	KG	12	2015	2420
19283	139	1755	1568	214	Sugar (brown)	63	LAK	5	KG	12	2015	8000
19284	139	1755	1568	284	Fuel (diesel)	63	LAK	15	L	12	2015	6020
19285	139	1755	1568	285	Fuel (petrol-gasoline)	63	LAK	15	L	12	2015	7410
19286	139	1755	1568	289	Garlic (small)	63	LAK	5	KG	12	2015	10000
19287	139	1755	1568	306	Oil (soybean)	63	LAK	15	L	12	2015	16000
19288	139	1755	1568	309	Fish (snake head)	63	LAK	5	KG	12	2015	50000
19289	139	1755	1568	310	Fish (catfish)	63	LAK	5	KG	12	2015	15000
19290	139	1755	1568	311	Fish (tilapia, farmed)	63	LAK	5	KG	12	2015	20000
19291	139	1763	1569	62	Oil (palm)	63	LAK	15	L	12	2015	15000
19292	139	1763	1569	92	Eggs	63	LAK	33	Unit	12	2015	1000
19293	139	1763	1569	94	Meat (chicken)	63	LAK	5	KG	12	2015	35000
19294	139	1763	1569	187	Meat (beef, first quality)	63	LAK	5	KG	12	2015	60000
19295	139	1763	1569	188	Meat (beef, second quality)	63	LAK	5	KG	12	2015	50000
19296	139	1763	1569	189	Meat (buffalo, first quality)	63	LAK	5	KG	12	2015	60000
19297	139	1763	1569	190	Meat (buffalo, second quality)	63	LAK	5	KG	12	2015	50000
19298	139	1763	1569	192	Meat (pork, first quality)	63	LAK	5	KG	12	2015	35000
19299	139	1763	1569	193	Meat (pork, second quality)	63	LAK	5	KG	12	2015	35000
19300	139	1763	1569	194	Rice (glutinous, first quality)	63	LAK	5	KG	12	2015	6000
19301	139	1763	1569	195	Rice (glutinous, second quality)	63	LAK	5	KG	12	2015	5000
19302	139	1763	1569	196	Rice (glutinous, unmilled)	63	LAK	5	KG	12	2015	2100
19303	139	1763	1569	197	Rice (ordinary, first quality)	63	LAK	5	KG	12	2015	7000
19304	139	1763	1569	198	Rice (ordinary, second quality)	63	LAK	5	KG	12	2015	5000
19305	139	1763	1569	199	Rice (ordinary, unmilled)	63	LAK	5	KG	12	2015	2800
19306	139	1763	1569	214	Sugar (brown)	63	LAK	5	KG	12	2015	8000
19307	139	1763	1569	284	Fuel (diesel)	63	LAK	15	L	12	2015	6110
19308	139	1763	1569	285	Fuel (petrol-gasoline)	63	LAK	15	L	12	2015	7490
19309	139	1763	1569	289	Garlic (small)	63	LAK	5	KG	12	2015	12000
19310	139	1763	1569	306	Oil (soybean)	63	LAK	15	L	12	2015	15000
19311	139	1763	1569	309	Fish (snake head)	63	LAK	5	KG	12	2015	45000
19312	139	1763	1569	310	Fish (catfish)	63	LAK	5	KG	12	2015	20000
19313	139	1763	1569	311	Fish (tilapia, farmed)	63	LAK	5	KG	12	2015	25000
19314	139	1762	1640	62	Oil (palm)	63	LAK	15	L	1	2016	15000
19315	139	1762	1640	92	Eggs	63	LAK	33	Unit	1	2016	1000
19316	139	1762	1640	94	Meat (chicken)	63	LAK	5	KG	1	2016	55000
19317	139	1762	1640	187	Meat (beef, first quality)	63	LAK	5	KG	1	2016	60000
19318	139	1762	1640	188	Meat (beef, second quality)	63	LAK	5	KG	1	2016	55000
19319	139	1762	1640	189	Meat (buffalo, first quality)	63	LAK	5	KG	1	2016	60000
19320	139	1762	1640	190	Meat (buffalo, second quality)	63	LAK	5	KG	1	2016	55000
19321	139	1762	1640	192	Meat (pork, first quality)	63	LAK	5	KG	1	2016	40000
19322	139	1762	1640	193	Meat (pork, second quality)	63	LAK	5	KG	1	2016	35000
19323	139	1762	1640	194	Rice (glutinous, first quality)	63	LAK	5	KG	1	2016	7000
19324	139	1762	1640	195	Rice (glutinous, second quality)	63	LAK	5	KG	1	2016	6500
19325	139	1762	1640	196	Rice (glutinous, unmilled)	63	LAK	5	KG	1	2016	3300
19326	139	1762	1640	197	Rice (ordinary, first quality)	63	LAK	5	KG	1	2016	7000
19327	139	1762	1640	198	Rice (ordinary, second quality)	63	LAK	5	KG	1	2016	5500
19328	139	1762	1640	199	Rice (ordinary, unmilled)	63	LAK	5	KG	1	2016	3300
19329	139	1762	1640	214	Sugar (brown)	63	LAK	5	KG	1	2016	10000
19330	139	1762	1640	284	Fuel (diesel)	63	LAK	15	L	1	2016	6330
19331	139	1762	1640	285	Fuel (petrol-gasoline)	63	LAK	15	L	1	2016	7700
19332	139	1762	1640	289	Garlic (small)	63	LAK	5	KG	1	2016	15000
19333	139	1762	1640	306	Oil (soybean)	63	LAK	15	L	1	2016	18000
19334	139	1762	1640	309	Fish (snake head)	63	LAK	5	KG	1	2016	75000
19335	139	1762	1640	310	Fish (catfish)	63	LAK	5	KG	1	2016	22000
19336	139	1762	1640	311	Fish (tilapia, farmed)	63	LAK	5	KG	1	2016	24000
19337	139	1761	1641	62	Oil (palm)	63	LAK	15	L	1	2016	12000
19338	139	1761	1641	92	Eggs	63	LAK	33	Unit	1	2016	833
19339	139	1761	1641	94	Meat (chicken)	63	LAK	5	KG	1	2016	30000
19340	139	1761	1641	187	Meat (beef, first quality)	63	LAK	5	KG	1	2016	65000
19341	139	1761	1641	188	Meat (beef, second quality)	63	LAK	5	KG	1	2016	65000
19342	139	1761	1641	189	Meat (buffalo, first quality)	63	LAK	5	KG	1	2016	65000
19343	139	1761	1641	190	Meat (buffalo, second quality)	63	LAK	5	KG	1	2016	65000
19344	139	1761	1641	192	Meat (pork, first quality)	63	LAK	5	KG	1	2016	40000
19345	139	1761	1641	193	Meat (pork, second quality)	63	LAK	5	KG	1	2016	35000
19346	139	1761	1641	194	Rice (glutinous, first quality)	63	LAK	5	KG	1	2016	6000
19347	139	1761	1641	195	Rice (glutinous, second quality)	63	LAK	5	KG	1	2016	5500
19348	139	1761	1641	196	Rice (glutinous, unmilled)	63	LAK	5	KG	1	2016	3000
19349	139	1761	1641	197	Rice (ordinary, first quality)	63	LAK	5	KG	1	2016	6000
19350	139	1761	1641	198	Rice (ordinary, second quality)	63	LAK	5	KG	1	2016	5500
19351	139	1761	1641	199	Rice (ordinary, unmilled)	63	LAK	5	KG	1	2016	3000
19352	139	1761	1641	214	Sugar (brown)	63	LAK	5	KG	1	2016	7500
19353	139	1761	1641	284	Fuel (diesel)	63	LAK	15	L	1	2016	6050
19354	139	1761	1641	285	Fuel (petrol-gasoline)	63	LAK	15	L	1	2016	7420
19355	139	1761	1641	289	Garlic (small)	63	LAK	5	KG	1	2016	10000
19356	139	1761	1641	306	Oil (soybean)	63	LAK	15	L	1	2016	16000
19357	139	1761	1641	309	Fish (snake head)	63	LAK	5	KG	1	2016	35000
19358	139	1761	1641	310	Fish (catfish)	63	LAK	5	KG	1	2016	20000
19359	139	1761	1641	311	Fish (tilapia, farmed)	63	LAK	5	KG	1	2016	20000
19360	139	1754	1642	62	Oil (palm)	63	LAK	15	L	1	2016	15000
19361	139	1754	1642	92	Eggs	63	LAK	33	Unit	1	2016	1000
19362	139	1754	1642	94	Meat (chicken)	63	LAK	5	KG	1	2016	40000
19363	139	1754	1642	187	Meat (beef, first quality)	63	LAK	5	KG	1	2016	60000
19364	139	1754	1642	188	Meat (beef, second quality)	63	LAK	5	KG	1	2016	50000
19365	139	1754	1642	189	Meat (buffalo, first quality)	63	LAK	5	KG	1	2016	60000
19366	139	1754	1642	190	Meat (buffalo, second quality)	63	LAK	5	KG	1	2016	50000
19367	139	1754	1642	192	Meat (pork, first quality)	63	LAK	5	KG	1	2016	35000
19368	139	1754	1642	193	Meat (pork, second quality)	63	LAK	5	KG	1	2016	30000
19369	139	1754	1642	194	Rice (glutinous, first quality)	63	LAK	5	KG	1	2016	9000
19370	139	1754	1642	195	Rice (glutinous, second quality)	63	LAK	5	KG	1	2016	7500
19371	139	1754	1642	196	Rice (glutinous, unmilled)	63	LAK	5	KG	1	2016	2500
19372	139	1754	1642	197	Rice (ordinary, first quality)	63	LAK	5	KG	1	2016	9000
19373	139	1754	1642	198	Rice (ordinary, second quality)	63	LAK	5	KG	1	2016	7500
19374	139	1754	1642	199	Rice (ordinary, unmilled)	63	LAK	5	KG	1	2016	2500
19375	139	1754	1642	214	Sugar (brown)	63	LAK	5	KG	1	2016	8000
19376	139	1754	1642	284	Fuel (diesel)	63	LAK	15	L	1	2016	5700
19377	139	1754	1642	285	Fuel (petrol-gasoline)	63	LAK	15	L	1	2016	7070
19378	139	1754	1642	289	Garlic (small)	63	LAK	5	KG	1	2016	12000
19379	139	1754	1642	306	Oil (soybean)	63	LAK	15	L	1	2016	18000
19380	139	1754	1642	310	Fish (catfish)	63	LAK	5	KG	1	2016	20000
19381	139	1754	1642	311	Fish (tilapia, farmed)	63	LAK	5	KG	1	2016	22000
19382	139	1757	1643	62	Oil (palm)	63	LAK	15	L	1	2016	5000
19383	139	1757	1643	92	Eggs	63	LAK	33	Unit	1	2016	1000
19384	139	1757	1643	94	Meat (chicken)	63	LAK	5	KG	1	2016	65000
19385	139	1757	1643	187	Meat (beef, first quality)	63	LAK	5	KG	1	2016	60000
19386	139	1757	1643	188	Meat (beef, second quality)	63	LAK	5	KG	1	2016	50000
19387	139	1757	1643	189	Meat (buffalo, first quality)	63	LAK	5	KG	1	2016	60000
19388	139	1757	1643	190	Meat (buffalo, second quality)	63	LAK	5	KG	1	2016	50000
19389	139	1757	1643	192	Meat (pork, first quality)	63	LAK	5	KG	1	2016	35000
19390	139	1757	1643	193	Meat (pork, second quality)	63	LAK	5	KG	1	2016	30000
19391	139	1757	1643	194	Rice (glutinous, first quality)	63	LAK	5	KG	1	2016	7500
19392	139	1757	1643	195	Rice (glutinous, second quality)	63	LAK	5	KG	1	2016	6000
19393	139	1757	1643	196	Rice (glutinous, unmilled)	63	LAK	5	KG	1	2016	3200
19394	139	1757	1643	197	Rice (ordinary, first quality)	63	LAK	5	KG	1	2016	7000
19395	139	1757	1643	199	Rice (ordinary, unmilled)	63	LAK	5	KG	1	2016	3000
19396	139	1757	1643	214	Sugar (brown)	63	LAK	5	KG	1	2016	8000
19397	139	1757	1643	284	Fuel (diesel)	63	LAK	15	L	1	2016	6000
19398	139	1757	1643	285	Fuel (petrol-gasoline)	63	LAK	15	L	1	2016	7370
19399	139	1757	1643	289	Garlic (small)	63	LAK	5	KG	1	2016	15000
19400	139	1757	1643	306	Oil (soybean)	63	LAK	15	L	1	2016	18000
19401	139	1757	1643	310	Fish (catfish)	63	LAK	5	KG	1	2016	20000
19402	139	1757	1643	311	Fish (tilapia, farmed)	63	LAK	5	KG	1	2016	30000
19403	139	1765	1644	92	Eggs	63	LAK	33	Unit	1	2016	900
19404	139	1765	1644	94	Meat (chicken)	63	LAK	5	KG	1	2016	55000
19405	139	1765	1644	187	Meat (beef, first quality)	63	LAK	5	KG	1	2016	60000
19406	139	1765	1644	188	Meat (beef, second quality)	63	LAK	5	KG	1	2016	55000
19407	139	1765	1644	189	Meat (buffalo, first quality)	63	LAK	5	KG	1	2016	60000
19408	139	1765	1644	190	Meat (buffalo, second quality)	63	LAK	5	KG	1	2016	55000
19409	139	1765	1644	192	Meat (pork, first quality)	63	LAK	5	KG	1	2016	35000
19410	139	1765	1644	193	Meat (pork, second quality)	63	LAK	5	KG	1	2016	33000
19411	139	1765	1644	194	Rice (glutinous, first quality)	63	LAK	5	KG	1	2016	6500
19412	139	1765	1644	195	Rice (glutinous, second quality)	63	LAK	5	KG	1	2016	5500
19413	139	1765	1644	196	Rice (glutinous, unmilled)	63	LAK	5	KG	1	2016	3500
19414	139	1765	1644	197	Rice (ordinary, first quality)	63	LAK	5	KG	1	2016	7500
19415	139	1765	1644	198	Rice (ordinary, second quality)	63	LAK	5	KG	1	2016	6000
19416	139	1765	1644	199	Rice (ordinary, unmilled)	63	LAK	5	KG	1	2016	4000
19417	139	1765	1644	284	Fuel (diesel)	63	LAK	15	L	1	2016	6000
19418	139	1765	1644	285	Fuel (petrol-gasoline)	63	LAK	15	L	1	2016	7370
19419	139	1765	1644	289	Garlic (small)	63	LAK	5	KG	1	2016	18000
19420	139	1765	1644	306	Oil (soybean)	63	LAK	15	L	1	2016	17000
19421	139	1765	1644	309	Fish (snake head)	63	LAK	5	KG	1	2016	25000
19422	139	1765	1644	310	Fish (catfish)	63	LAK	5	KG	1	2016	18000
19423	139	1765	1644	311	Fish (tilapia, farmed)	63	LAK	5	KG	1	2016	25000
19424	139	1766	1645	62	Oil (palm)	63	LAK	15	L	12	2015	20000
19425	139	1766	1645	92	Eggs	63	LAK	33	Unit	12	2015	1500
19426	139	1766	1645	94	Meat (chicken)	63	LAK	5	KG	12	2015	40000
19427	139	1766	1645	187	Meat (beef, first quality)	63	LAK	5	KG	12	2015	70000
19428	139	1766	1645	188	Meat (beef, second quality)	63	LAK	5	KG	12	2015	60000
19429	139	1766	1645	189	Meat (buffalo, first quality)	63	LAK	5	KG	12	2015	70000
19430	139	1766	1645	190	Meat (buffalo, second quality)	63	LAK	5	KG	12	2015	50000
19431	139	1766	1645	192	Meat (pork, first quality)	63	LAK	5	KG	12	2015	40000
19432	139	1766	1645	193	Meat (pork, second quality)	63	LAK	5	KG	12	2015	32000
19433	139	1766	1645	194	Rice (glutinous, first quality)	63	LAK	5	KG	12	2015	7000
19434	139	1766	1645	195	Rice (glutinous, second quality)	63	LAK	5	KG	12	2015	6000
19435	139	1766	1645	196	Rice (glutinous, unmilled)	63	LAK	5	KG	12	2015	2800
19436	139	1766	1645	197	Rice (ordinary, first quality)	63	LAK	5	KG	12	2015	10000
19437	139	1766	1645	198	Rice (ordinary, second quality)	63	LAK	5	KG	12	2015	8000
19438	139	1766	1645	199	Rice (ordinary, unmilled)	63	LAK	5	KG	12	2015	3000
19439	139	1766	1645	214	Sugar (brown)	63	LAK	5	KG	12	2015	9000
19440	139	1766	1645	284	Fuel (diesel)	63	LAK	15	L	12	2015	6140
19441	139	1766	1645	285	Fuel (petrol-gasoline)	63	LAK	15	L	12	2015	7520
19442	139	1766	1645	289	Garlic (small)	63	LAK	5	KG	12	2015	12000
19443	139	1766	1645	306	Oil (soybean)	63	LAK	15	L	12	2015	20000
19444	139	1766	1645	309	Fish (snake head)	63	LAK	5	KG	12	2015	60000
19445	139	1766	1645	310	Fish (catfish)	63	LAK	5	KG	12	2015	20000
19446	139	1766	1645	311	Fish (tilapia, farmed)	63	LAK	5	KG	12	2015	35000
19447	139	1753	1646	62	Oil (palm)	63	LAK	15	L	12	2015	15000
19448	139	1753	1646	92	Eggs	63	LAK	33	Unit	12	2015	1000
19449	139	1753	1646	94	Meat (chicken)	63	LAK	5	KG	12	2015	40000
19450	139	1753	1646	187	Meat (beef, first quality)	63	LAK	5	KG	12	2015	70000
19451	139	1753	1646	188	Meat (beef, second quality)	63	LAK	5	KG	12	2015	60000
19452	139	1753	1646	189	Meat (buffalo, first quality)	63	LAK	5	KG	12	2015	65000
19453	139	1753	1646	190	Meat (buffalo, second quality)	63	LAK	5	KG	12	2015	50000
19454	139	1753	1646	192	Meat (pork, first quality)	63	LAK	5	KG	12	2015	45000
19455	139	1753	1646	193	Meat (pork, second quality)	63	LAK	5	KG	12	2015	40000
19456	139	1753	1646	194	Rice (glutinous, first quality)	63	LAK	5	KG	12	2015	7000
19457	139	1753	1646	195	Rice (glutinous, second quality)	63	LAK	5	KG	12	2015	6000
19458	139	1753	1646	196	Rice (glutinous, unmilled)	63	LAK	5	KG	12	2015	3000
19459	139	1753	1646	197	Rice (ordinary, first quality)	63	LAK	5	KG	12	2015	8000
19460	139	1753	1646	198	Rice (ordinary, second quality)	63	LAK	5	KG	12	2015	6000
19461	139	1753	1646	199	Rice (ordinary, unmilled)	63	LAK	5	KG	12	2015	2500
19462	139	1753	1646	214	Sugar (brown)	63	LAK	5	KG	12	2015	8000
19463	139	1753	1646	284	Fuel (diesel)	63	LAK	15	L	12	2015	6170
19464	139	1753	1646	285	Fuel (petrol-gasoline)	63	LAK	15	L	12	2015	7520
19465	139	1753	1646	289	Garlic (small)	63	LAK	5	KG	12	2015	17000
19466	139	1753	1646	306	Oil (soybean)	63	LAK	15	L	12	2015	18000
19467	139	1753	1646	309	Fish (snake head)	63	LAK	5	KG	12	2015	40000
19468	139	1753	1646	310	Fish (catfish)	63	LAK	5	KG	12	2015	17000
19469	139	1753	1646	311	Fish (tilapia, farmed)	63	LAK	5	KG	12	2015	23000
19470	139	1767	1647	62	Oil (palm)	63	LAK	15	L	12	2015	18000
19471	139	1767	1647	92	Eggs	63	LAK	33	Unit	12	2015	1000
19472	139	1767	1647	94	Meat (chicken)	63	LAK	5	KG	12	2015	40000
19473	139	1767	1647	187	Meat (beef, first quality)	63	LAK	5	KG	12	2015	70000
19474	139	1767	1647	188	Meat (beef, second quality)	63	LAK	5	KG	12	2015	65000
19475	139	1767	1647	189	Meat (buffalo, first quality)	63	LAK	5	KG	12	2015	70000
19476	139	1767	1647	190	Meat (buffalo, second quality)	63	LAK	5	KG	12	2015	65000
19477	139	1767	1647	192	Meat (pork, first quality)	63	LAK	5	KG	12	2015	38000
19478	139	1767	1647	193	Meat (pork, second quality)	63	LAK	5	KG	12	2015	35000
19479	139	1767	1647	194	Rice (glutinous, first quality)	63	LAK	5	KG	12	2015	6000
19480	139	1767	1647	195	Rice (glutinous, second quality)	63	LAK	5	KG	12	2015	5500
19481	139	1767	1647	196	Rice (glutinous, unmilled)	63	LAK	5	KG	12	2015	2500
19482	139	1767	1647	197	Rice (ordinary, first quality)	63	LAK	5	KG	12	2015	7500
19483	139	1767	1647	198	Rice (ordinary, second quality)	63	LAK	5	KG	12	2015	7000
19484	139	1767	1647	199	Rice (ordinary, unmilled)	63	LAK	5	KG	12	2015	3000
19485	139	1767	1647	214	Sugar (brown)	63	LAK	5	KG	12	2015	8000
19486	139	1767	1647	284	Fuel (diesel)	63	LAK	15	L	12	2015	5900
19487	139	1767	1647	285	Fuel (petrol-gasoline)	63	LAK	15	L	12	2015	7290
19488	139	1767	1647	289	Garlic (small)	63	LAK	5	KG	12	2015	10000
19489	139	1767	1647	306	Oil (soybean)	63	LAK	15	L	12	2015	16000
19490	139	1767	1647	309	Fish (snake head)	63	LAK	5	KG	12	2015	45000
19491	139	1767	1647	310	Fish (catfish)	63	LAK	5	KG	12	2015	18000
19492	139	1767	1647	311	Fish (tilapia, farmed)	63	LAK	5	KG	12	2015	22000
19493	141	1799	1684	58	Wheat flour	90	LBP	87	5 KG	12	2015	5683.32999999999993
19494	141	1799	1684	66	Beans (white)	90	LBP	5	KG	12	2015	2935.13000000000011
19495	141	1799	1684	92	Eggs	90	LBP	69	30 pcs	12	2015	2265.61999999999989
19496	141	1799	1684	97	Sugar	90	LBP	5	KG	12	2015	962.5
19497	141	1799	1684	108	Lentils	90	LBP	5	KG	12	2015	2406.25
19498	141	1799	1684	112	Pasta	90	LBP	5	KG	12	2015	2029.61999999999989
19499	141	1799	1684	125	Meat (chicken, whole)	90	LBP	5	KG	12	2015	5426
19500	141	1799	1684	181	Cabbage	90	LBP	5	KG	12	2015	625
19501	141	1799	1684	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	10494.7999999999993
19502	141	1799	1684	185	Salt	90	LBP	5	KG	12	2015	445.625
19503	141	1799	1684	233	Cucumbers (greenhouse)	90	LBP	5	KG	12	2015	1357.1400000000001
19504	141	1799	1684	238	Milk (powder)	90	LBP	5	KG	12	2015	9738.10000000000036
19505	141	1799	1684	244	Chickpeas	90	LBP	5	KG	12	2015	2250
19506	141	1799	1684	258	Bulgur	90	LBP	5	KG	12	2015	1615.61999999999989
19507	141	1799	1684	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	1714.38000000000011
19508	141	1799	1684	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	2796.05000000000018
19509	141	1799	1684	318	Lettuce	90	LBP	61	Head	12	2015	850
19510	141	1799	1684	319	Cheese (picon)	90	LBP	65	160 G	12	2015	1937.5
19511	141	1799	1684	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1683.32999999999993
19512	141	1799	1684	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	8000
19513	141	1799	1684	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	9547.75
19514	141	1799	1684	384	Bread (pita)	90	LBP	5	KG	12	2015	1449.53999999999996
19515	141	1799	1684	404	Spinach	90	LBP	5	KG	12	2015	1333.32999999999993
19516	141	1801	1685	58	Wheat flour	90	LBP	87	5 KG	12	2015	6250
19517	141	1801	1685	66	Beans (white)	90	LBP	5	KG	12	2015	2633.32999999999993
19518	141	1801	1685	92	Eggs	90	LBP	69	30 pcs	12	2015	2777.7800000000002
19519	141	1801	1685	97	Sugar	90	LBP	5	KG	12	2015	883.33299999999997
19520	141	1801	1685	108	Lentils	90	LBP	5	KG	12	2015	3000
19521	141	1801	1685	112	Pasta	90	LBP	5	KG	12	2015	1933.32999999999993
19522	141	1801	1685	125	Meat (chicken, whole)	90	LBP	5	KG	12	2015	5200
19523	141	1801	1685	181	Cabbage	90	LBP	5	KG	12	2015	675
19524	141	1801	1685	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	9666.67000000000007
19525	141	1801	1685	185	Salt	90	LBP	5	KG	12	2015	583.33299999999997
19526	141	1801	1685	233	Cucumbers (greenhouse)	90	LBP	5	KG	12	2015	1875
19527	141	1801	1685	238	Milk (powder)	90	LBP	5	KG	12	2015	9946.67000000000007
19528	141	1801	1685	244	Chickpeas	90	LBP	5	KG	12	2015	2666.67000000000007
19529	141	1801	1685	258	Bulgur	90	LBP	5	KG	12	2015	1450
19530	141	1801	1685	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	1653.32999999999993
19531	141	1801	1685	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	2857.13999999999987
19532	141	1801	1685	318	Lettuce	90	LBP	61	Head	12	2015	1250
19533	141	1801	1685	319	Cheese (picon)	90	LBP	65	160 G	12	2015	2000
19534	141	1801	1685	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1696.67000000000007
19535	141	1801	1685	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	7333.32999999999993
19536	141	1801	1685	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	9369.3700000000008
19537	141	1801	1685	384	Bread (pita)	90	LBP	5	KG	12	2015	1578.95000000000005
19538	141	1801	1685	404	Spinach	90	LBP	5	KG	12	2015	1500
19539	141	1801	1686	58	Wheat flour	90	LBP	87	5 KG	12	2015	7500
19540	141	1801	1686	66	Beans (white)	90	LBP	5	KG	12	2015	4260.75
19541	141	1801	1686	92	Eggs	90	LBP	69	30 pcs	12	2015	2743.05999999999995
19542	141	1801	1686	97	Sugar	90	LBP	5	KG	12	2015	962.5
19543	141	1801	1686	108	Lentils	90	LBP	5	KG	12	2015	3152
19544	141	1801	1686	112	Pasta	90	LBP	5	KG	12	2015	2625
19545	141	1801	1686	125	Meat (chicken, whole)	90	LBP	5	KG	12	2015	5666.67000000000007
19546	141	1801	1686	181	Cabbage	90	LBP	5	KG	6	2015	1187.5
19547	141	1801	1686	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	10750
19548	141	1801	1686	185	Salt	90	LBP	5	KG	12	2015	468.75
19549	141	1801	1686	233	Cucumbers (greenhouse)	90	LBP	5	KG	6	2015	1125
19550	141	1801	1686	238	Milk (powder)	90	LBP	5	KG	12	2015	10611.1000000000004
19551	141	1801	1686	244	Chickpeas	90	LBP	5	KG	12	2015	3471.5
19552	141	1801	1686	258	Bulgur	90	LBP	5	KG	12	2015	1926
19553	141	1801	1686	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	1787.5
19554	141	1801	1686	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	3258.92999999999984
19555	141	1801	1686	318	Lettuce	90	LBP	61	Head	6	2015	875
19556	141	1801	1686	319	Cheese (picon)	90	LBP	65	160 G	12	2015	2000
19557	141	1801	1686	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1750
19558	141	1801	1686	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	8500
19559	141	1801	1686	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	11824.2999999999993
19560	141	1801	1686	384	Bread (pita)	90	LBP	5	KG	12	2015	1578.95000000000005
19561	141	1797	1687	58	Wheat flour	90	LBP	87	5 KG	12	2015	4125
19562	141	1797	1687	66	Beans (white)	90	LBP	5	KG	12	2015	2765.61999999999989
19563	141	1797	1687	92	Eggs	90	LBP	69	30 pcs	12	2015	2135.42000000000007
19564	141	1797	1687	97	Sugar	90	LBP	5	KG	12	2015	898.75
19565	141	1797	1687	108	Lentils	90	LBP	5	KG	12	2015	2437.5
19566	141	1797	1687	112	Pasta	90	LBP	5	KG	12	2015	1857.1400000000001
19567	141	1797	1687	125	Meat (chicken, whole)	90	LBP	5	KG	12	2015	4093.75
19568	141	1797	1687	181	Cabbage	90	LBP	5	KG	12	2015	475
19569	141	1797	1687	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	8898.75
19570	141	1797	1687	185	Salt	90	LBP	5	KG	12	2015	500
19571	141	1797	1687	233	Cucumbers (greenhouse)	90	LBP	5	KG	12	2015	1281.25
19572	141	1797	1687	238	Milk (powder)	90	LBP	5	KG	12	2015	10705
19573	141	1797	1687	244	Chickpeas	90	LBP	5	KG	12	2015	1843.11999999999989
19574	141	1797	1687	258	Bulgur	90	LBP	5	KG	12	2015	1201.88000000000011
19575	141	1797	1687	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	1783.88000000000011
19576	141	1797	1687	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	2432.59000000000015
19577	141	1797	1687	318	Lettuce	90	LBP	61	Head	12	2015	964.285999999999945
19578	141	1797	1687	319	Cheese (picon)	90	LBP	65	160 G	12	2015	1298.75
19579	141	1797	1687	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1647.5
19580	141	1797	1687	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	7875
19581	141	1797	1687	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	8202.70000000000073
19582	141	1797	1687	384	Bread (pita)	90	LBP	5	KG	12	2015	1151.31999999999994
19583	141	1797	1687	404	Spinach	90	LBP	5	KG	12	2015	1250
19584	141	1799	1688	58	Wheat flour	90	LBP	87	5 KG	12	2015	5000
19585	141	1799	1688	66	Beans (white)	90	LBP	5	KG	12	2015	3500
19586	141	1799	1688	92	Eggs	90	LBP	69	30 pcs	12	2015	2777.7800000000002
19587	141	1799	1688	97	Sugar	90	LBP	5	KG	12	2015	1050
19588	141	1799	1688	108	Lentils	90	LBP	5	KG	12	2015	2500
19589	141	1799	1688	112	Pasta	90	LBP	5	KG	12	2015	2500
19590	141	1799	1688	125	Meat (chicken, whole)	90	LBP	5	KG	11	2015	6750
19591	141	1799	1688	181	Cabbage	90	LBP	5	KG	12	2015	750
19592	141	1799	1688	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	10250
19593	141	1799	1688	185	Salt	90	LBP	5	KG	12	2015	500
19594	141	1799	1688	233	Cucumbers (greenhouse)	90	LBP	5	KG	12	2015	1500
19595	141	1799	1688	238	Milk (powder)	90	LBP	5	KG	12	2015	9888.88999999999942
19596	141	1799	1688	244	Chickpeas	90	LBP	5	KG	12	2015	2500
19597	141	1799	1688	258	Bulgur	90	LBP	5	KG	12	2015	1750
19598	141	1799	1688	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	1800
19599	141	1799	1688	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	2535.71000000000004
19600	141	1799	1688	318	Lettuce	90	LBP	61	Head	12	2015	1125
19601	141	1799	1688	319	Cheese (picon)	90	LBP	65	160 G	12	2015	2000
19602	141	1799	1688	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1625
19603	141	1799	1688	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	9000
19604	141	1799	1688	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	12837.7999999999993
19605	141	1799	1688	384	Bread (pita)	90	LBP	5	KG	12	2015	1578.95000000000005
19606	141	1799	1688	404	Spinach	90	LBP	5	KG	12	2015	2000
19607	141	1798	1689	58	Wheat flour	90	LBP	87	5 KG	12	2015	6166.67000000000007
19608	141	1798	1689	66	Beans (white)	90	LBP	5	KG	12	2015	4481.32999999999993
19609	141	1798	1689	92	Eggs	90	LBP	69	30 pcs	12	2015	3101.84999999999991
19610	141	1798	1689	97	Sugar	90	LBP	5	KG	12	2015	1050
19611	141	1798	1689	108	Lentils	90	LBP	5	KG	12	2015	3083.32999999999993
19612	141	1798	1689	112	Pasta	90	LBP	5	KG	12	2015	3000
19613	141	1798	1689	125	Meat (chicken, whole)	90	LBP	5	KG	12	2015	5075
19614	141	1798	1689	181	Cabbage	90	LBP	5	KG	12	2015	1000
19615	141	1798	1689	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	10750
19616	141	1798	1689	185	Salt	90	LBP	5	KG	12	2015	738
19617	141	1798	1689	233	Cucumbers (greenhouse)	90	LBP	5	KG	12	2015	2000
19618	141	1798	1689	238	Milk (powder)	90	LBP	5	KG	12	2015	10370.3999999999996
19619	141	1798	1689	244	Chickpeas	90	LBP	5	KG	12	2015	3750
19620	141	1798	1689	258	Bulgur	90	LBP	5	KG	12	2015	1800
19621	141	1798	1689	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	2000
19622	141	1798	1689	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	3273.80999999999995
19623	141	1798	1689	318	Lettuce	90	LBP	61	Head	12	2015	1625
19624	141	1798	1689	319	Cheese (picon)	90	LBP	65	160 G	12	2015	2000
19625	141	1798	1689	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1833.32999999999993
19626	141	1798	1689	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	9333.32999999999993
19627	141	1798	1689	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	9909.90999999999985
19628	141	1798	1689	384	Bread (pita)	90	LBP	5	KG	12	2015	1578.95000000000005
19629	141	1798	1689	404	Spinach	90	LBP	5	KG	12	2015	2125
19630	141	1802	1690	58	Wheat flour	90	LBP	87	5 KG	10	2015	8333
19631	141	1802	1690	66	Beans (white)	90	LBP	5	KG	10	2015	3333
19632	141	1802	1690	92	Eggs	90	LBP	69	30 pcs	10	2015	2222.2199999999998
19633	141	1802	1690	97	Sugar	90	LBP	5	KG	10	2015	1000
19634	141	1802	1690	108	Lentils	90	LBP	5	KG	10	2015	3028
19635	141	1802	1690	112	Pasta	90	LBP	5	KG	10	2015	2500
19636	141	1802	1690	125	Meat (chicken, whole)	90	LBP	5	KG	10	2015	4000
19637	141	1802	1690	181	Cabbage	90	LBP	5	KG	10	2015	1000
19638	141	1802	1690	184	Oil (sunflower)	90	LBP	67	5 L	10	2015	10000
19639	141	1802	1690	185	Salt	90	LBP	5	KG	10	2015	714
19640	141	1802	1690	233	Cucumbers (greenhouse)	90	LBP	5	KG	10	2015	1500
19641	141	1802	1690	238	Milk (powder)	90	LBP	5	KG	10	2015	10666.7000000000007
19642	141	1802	1690	244	Chickpeas	90	LBP	5	KG	10	2015	3854
19643	141	1802	1690	258	Bulgur	90	LBP	5	KG	10	2015	1651
19644	141	1802	1690	316	Rice (imported, Egyptian)	90	LBP	5	KG	10	2015	1800
19645	141	1802	1690	317	Tomatoes (paste)	90	LBP	5	KG	10	2015	3035.71000000000004
19646	141	1802	1690	318	Lettuce	90	LBP	61	Head	10	2015	1000
19647	141	1802	1690	319	Cheese (picon)	90	LBP	65	160 G	10	2015	2000
19648	141	1802	1690	320	Meat (beef, canned)	90	LBP	63	200 G	10	2015	1750
19649	141	1802	1690	321	Fish (sardine, canned)	90	LBP	5	KG	10	2015	8000
19650	141	1802	1690	322	Fish (tuna, canned)	90	LBP	5	KG	10	2015	9459.45999999999913
19651	141	1802	1690	384	Bread (pita)	90	LBP	5	KG	10	2015	1578.95000000000005
19652	141	1799	1691	58	Wheat flour	90	LBP	87	5 KG	10	2015	5333.32999999999993
19653	141	1799	1691	66	Beans (white)	90	LBP	5	KG	10	2015	3150
19654	141	1799	1691	92	Eggs	90	LBP	69	30 pcs	10	2015	3425.92999999999984
19655	141	1799	1691	97	Sugar	90	LBP	5	KG	10	2015	1100
19656	141	1799	1691	108	Lentils	90	LBP	5	KG	10	2015	3300
19657	141	1799	1691	112	Pasta	90	LBP	5	KG	10	2015	3133.32999999999993
19658	141	1799	1691	125	Meat (chicken, whole)	90	LBP	5	KG	10	2015	5000
19659	141	1799	1691	184	Oil (sunflower)	90	LBP	67	5 L	10	2015	11000
19660	141	1799	1691	185	Salt	90	LBP	5	KG	10	2015	483.333000000000027
19661	141	1799	1691	233	Cucumbers (greenhouse)	90	LBP	5	KG	6	2015	1000
19662	141	1799	1691	238	Milk (powder)	90	LBP	5	KG	10	2015	9762.95999999999913
19663	141	1799	1691	244	Chickpeas	90	LBP	5	KG	10	2015	2500
19664	141	1799	1691	258	Bulgur	90	LBP	5	KG	10	2015	1983.32999999999993
19665	141	1799	1691	316	Rice (imported, Egyptian)	90	LBP	5	KG	10	2015	2213.32999999999993
19666	141	1799	1691	317	Tomatoes (paste)	90	LBP	5	KG	10	2015	3337.86000000000013
19667	141	1799	1691	319	Cheese (picon)	90	LBP	65	160 G	10	2015	2000
19668	141	1799	1691	320	Meat (beef, canned)	90	LBP	63	200 G	10	2015	1750
19669	141	1799	1691	321	Fish (sardine, canned)	90	LBP	5	KG	10	2015	8000
19670	141	1799	1691	322	Fish (tuna, canned)	90	LBP	5	KG	10	2015	12522.5
19671	141	1799	1691	384	Bread (pita)	90	LBP	5	KG	10	2015	1578.95000000000005
19672	141	1801	1692	58	Wheat flour	90	LBP	87	5 KG	12	2015	5725
19673	141	1801	1692	66	Beans (white)	90	LBP	5	KG	12	2015	3245.40000000000009
19674	141	1801	1692	92	Eggs	90	LBP	69	30 pcs	12	2015	2777.7800000000002
19675	141	1801	1692	97	Sugar	90	LBP	5	KG	12	2015	895
19676	141	1801	1692	108	Lentils	90	LBP	5	KG	12	2015	3016.59999999999991
19677	141	1801	1692	112	Pasta	90	LBP	5	KG	12	2015	2020
19678	141	1801	1692	125	Meat (chicken, whole)	90	LBP	5	KG	12	2015	5220
19679	141	1801	1692	181	Cabbage	90	LBP	5	KG	12	2015	1000
19680	141	1801	1692	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	9962.39999999999964
19681	141	1801	1692	185	Salt	90	LBP	5	KG	12	2015	547.799999999999955
19682	141	1801	1692	233	Cucumbers (greenhouse)	90	LBP	5	KG	12	2015	2250
19683	141	1801	1692	238	Milk (powder)	90	LBP	5	KG	12	2015	9640
19684	141	1801	1692	244	Chickpeas	90	LBP	5	KG	12	2015	2490
19685	141	1801	1692	258	Bulgur	90	LBP	5	KG	12	2015	1540
19686	141	1801	1692	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	1597.07999999999993
19687	141	1801	1692	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	2714.28999999999996
19688	141	1801	1692	318	Lettuce	90	LBP	61	Head	12	2015	1500
19689	141	1801	1692	319	Cheese (picon)	90	LBP	65	160 G	12	2015	1930
19690	141	1801	1692	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1678
19691	141	1801	1692	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	7560
19692	141	1801	1692	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	10324.2999999999993
19693	141	1801	1692	384	Bread (pita)	90	LBP	5	KG	12	2015	1578.95000000000005
19694	141	1801	1692	404	Spinach	90	LBP	5	KG	12	2015	1000
19695	141	1801	1693	58	Wheat flour	90	LBP	87	5 KG	12	2015	7500
19696	141	1801	1693	66	Beans (white)	90	LBP	5	KG	12	2015	4000
19697	141	1801	1693	92	Eggs	90	LBP	69	30 pcs	12	2015	2500
19698	141	1801	1693	97	Sugar	90	LBP	5	KG	12	2015	1000
19699	141	1801	1693	108	Lentils	90	LBP	5	KG	12	2015	2875
19700	141	1801	1693	112	Pasta	90	LBP	5	KG	12	2015	2000
19701	141	1801	1693	125	Meat (chicken, whole)	90	LBP	5	KG	12	2015	4875
19702	141	1801	1693	181	Cabbage	90	LBP	5	KG	12	2015	1000
19703	141	1801	1693	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	11500
19704	141	1801	1693	185	Salt	90	LBP	5	KG	12	2015	732
19705	141	1801	1693	233	Cucumbers (greenhouse)	90	LBP	5	KG	12	2015	1000
19706	141	1801	1693	238	Milk (powder)	90	LBP	5	KG	12	2015	10111.1000000000004
19707	141	1801	1693	244	Chickpeas	90	LBP	5	KG	12	2015	3125
19708	141	1801	1693	258	Bulgur	90	LBP	5	KG	12	2015	2111
19709	141	1801	1693	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	1950
19710	141	1801	1693	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	3446.78999999999996
19711	141	1801	1693	318	Lettuce	90	LBP	61	Head	12	2015	500
19712	141	1801	1693	319	Cheese (picon)	90	LBP	65	160 G	12	2015	2000
19713	141	1801	1693	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1750
19714	141	1801	1693	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	8000
19715	141	1801	1693	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	12837.7999999999993
19716	141	1801	1693	384	Bread (pita)	90	LBP	5	KG	12	2015	1578.95000000000005
19717	141	1801	1693	404	Spinach	90	LBP	5	KG	11	2015	1500
19718	141	1802	1694	58	Wheat flour	90	LBP	87	5 KG	9	2015	5000
19719	141	1802	1694	66	Beans (white)	90	LBP	5	KG	9	2015	3500
19720	141	1802	1694	92	Eggs	90	LBP	69	30 pcs	9	2015	5000
19721	141	1802	1694	97	Sugar	90	LBP	5	KG	9	2015	1000
19722	141	1802	1694	108	Lentils	90	LBP	5	KG	9	2015	2500
19723	141	1802	1694	112	Pasta	90	LBP	5	KG	9	2015	2000
19724	141	1802	1694	125	Meat (chicken, whole)	90	LBP	5	KG	9	2015	5666
19725	141	1802	1694	181	Cabbage	90	LBP	5	KG	6	2015	500
19726	141	1802	1694	184	Oil (sunflower)	90	LBP	67	5 L	9	2015	10000
19727	141	1802	1694	185	Salt	90	LBP	5	KG	9	2015	714
19728	141	1802	1694	233	Cucumbers (greenhouse)	90	LBP	5	KG	6	2015	1000
19729	141	1802	1694	238	Milk (powder)	90	LBP	5	KG	9	2015	11111.1000000000004
19730	141	1802	1694	244	Chickpeas	90	LBP	5	KG	9	2015	2500
19731	141	1802	1694	258	Bulgur	90	LBP	5	KG	9	2015	1500
19732	141	1802	1694	316	Rice (imported, Egyptian)	90	LBP	5	KG	9	2015	1500
19733	141	1802	1694	317	Tomatoes (paste)	90	LBP	5	KG	9	2015	2500
19734	141	1802	1694	318	Lettuce	90	LBP	61	Head	6	2015	1000
19735	141	1802	1694	319	Cheese (picon)	90	LBP	65	160 G	9	2015	2000
19736	141	1802	1694	320	Meat (beef, canned)	90	LBP	63	200 G	9	2015	1750
19737	141	1802	1694	321	Fish (sardine, canned)	90	LBP	5	KG	9	2015	8000
19738	141	1802	1694	322	Fish (tuna, canned)	90	LBP	5	KG	9	2015	10115
19739	141	1802	1694	384	Bread (pita)	90	LBP	5	KG	9	2015	1578.95000000000005
19740	141	1797	1695	58	Wheat flour	90	LBP	87	5 KG	6	2015	4000
19741	141	1797	1695	66	Beans (white)	90	LBP	5	KG	6	2015	5000
19742	141	1797	1695	92	Eggs	90	LBP	69	30 pcs	6	2015	4490
19743	141	1797	1695	97	Sugar	90	LBP	5	KG	6	2015	800
19744	141	1797	1695	108	Lentils	90	LBP	5	KG	6	2015	2500
19745	141	1797	1695	112	Pasta	90	LBP	5	KG	6	2015	1000
19746	141	1797	1695	125	Meat (chicken, whole)	90	LBP	5	KG	6	2015	5500
19747	141	1797	1695	181	Cabbage	90	LBP	5	KG	6	2015	750
19748	141	1797	1695	184	Oil (sunflower)	90	LBP	67	5 L	6	2015	11000
19749	141	1797	1695	185	Salt	90	LBP	5	KG	6	2015	475
19750	141	1797	1695	233	Cucumbers (greenhouse)	90	LBP	5	KG	6	2015	500
19751	141	1797	1695	238	Milk (powder)	90	LBP	5	KG	6	2015	10888.8999999999996
19752	141	1797	1695	244	Chickpeas	90	LBP	5	KG	6	2015	2500
19753	141	1797	1695	258	Bulgur	90	LBP	5	KG	6	2015	1500
19754	141	1797	1695	316	Rice (imported, Egyptian)	90	LBP	5	KG	6	2015	1800
19755	141	1797	1695	317	Tomatoes (paste)	90	LBP	5	KG	6	2015	2187.5
19756	141	1797	1695	318	Lettuce	90	LBP	61	Head	6	2015	1000
19757	141	1797	1695	319	Cheese (picon)	90	LBP	65	160 G	6	2015	1990
19758	141	1797	1695	320	Meat (beef, canned)	90	LBP	63	200 G	6	2015	1750
19759	141	1797	1695	321	Fish (sardine, canned)	90	LBP	5	KG	6	2015	6000
19760	141	1797	1695	322	Fish (tuna, canned)	90	LBP	5	KG	6	2015	10810.7999999999993
19761	141	1797	1695	384	Bread (pita)	90	LBP	5	KG	6	2015	1578.95000000000005
19762	141	1797	1695	404	Spinach	90	LBP	5	KG	6	2015	1650
19763	141	1801	1696	58	Wheat flour	90	LBP	87	5 KG	12	2015	7250
19764	141	1801	1696	66	Beans (white)	90	LBP	5	KG	12	2015	3870
19765	141	1801	1696	92	Eggs	90	LBP	69	30 pcs	12	2015	3333.32999999999993
19766	141	1801	1696	97	Sugar	90	LBP	5	KG	12	2015	1125
19767	141	1801	1696	108	Lentils	90	LBP	5	KG	12	2015	2875
19768	141	1801	1696	112	Pasta	90	LBP	5	KG	12	2015	2500
19769	141	1801	1696	125	Meat (chicken, whole)	90	LBP	5	KG	12	2015	5750
19770	141	1801	1696	181	Cabbage	90	LBP	5	KG	12	2015	1000
19771	141	1801	1696	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	10745
19772	141	1801	1696	185	Salt	90	LBP	5	KG	12	2015	500
19773	141	1801	1696	233	Cucumbers (greenhouse)	90	LBP	5	KG	12	2015	1500
19774	141	1801	1696	238	Milk (powder)	90	LBP	5	KG	12	2015	10111.1000000000004
19775	141	1801	1696	244	Chickpeas	90	LBP	5	KG	12	2015	3000
19776	141	1801	1696	258	Bulgur	90	LBP	5	KG	12	2015	1875
19777	141	1801	1696	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	1975
19778	141	1801	1696	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	3357.13999999999987
19779	141	1801	1696	318	Lettuce	90	LBP	61	Head	12	2015	1250
19780	141	1801	1696	319	Cheese (picon)	90	LBP	65	160 G	12	2015	2000
19781	141	1801	1696	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1750
19782	141	1801	1696	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	9000
19783	141	1801	1696	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	8756.76000000000022
19784	141	1801	1696	384	Bread (pita)	90	LBP	5	KG	12	2015	1578.95000000000005
19785	141	1801	1696	404	Spinach	90	LBP	5	KG	12	2015	2500
19786	141	1798	1698	58	Wheat flour	90	LBP	87	5 KG	12	2015	6500
19787	141	1798	1698	66	Beans (white)	90	LBP	5	KG	12	2015	4250
19788	141	1798	1698	92	Eggs	90	LBP	69	30 pcs	12	2015	3333.32999999999993
19789	141	1798	1698	97	Sugar	90	LBP	5	KG	12	2015	1000
19790	141	1798	1698	108	Lentils	90	LBP	5	KG	12	2015	3500
19791	141	1798	1698	112	Pasta	90	LBP	5	KG	12	2015	2000
19792	141	1798	1698	125	Meat (chicken, whole)	90	LBP	5	KG	12	2015	5000
19793	141	1798	1698	181	Cabbage	90	LBP	5	KG	12	2015	750
19794	141	1798	1698	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	9750
19795	141	1798	1698	185	Salt	90	LBP	5	KG	12	2015	714
19796	141	1798	1698	233	Cucumbers (greenhouse)	90	LBP	5	KG	12	2015	1500
19797	141	1798	1698	238	Milk (powder)	90	LBP	5	KG	12	2015	10177.7999999999993
19798	141	1798	1698	244	Chickpeas	90	LBP	5	KG	12	2015	3500
19799	141	1798	1698	258	Bulgur	90	LBP	5	KG	12	2015	1750
19800	141	1798	1698	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	2000
19801	141	1798	1698	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	3147.86000000000013
19802	141	1798	1698	318	Lettuce	90	LBP	61	Head	12	2015	1500
19803	141	1798	1698	319	Cheese (picon)	90	LBP	65	160 G	12	2015	1950
19804	141	1798	1698	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1485
19805	141	1798	1698	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	7920
19806	141	1798	1698	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	13513.5
19807	141	1798	1698	384	Bread (pita)	90	LBP	5	KG	12	2015	1578.95000000000005
19808	141	1798	1698	404	Spinach	90	LBP	5	KG	12	2015	1500
19809	141	1799	1699	58	Wheat flour	90	LBP	87	5 KG	12	2015	5833.32999999999993
19810	141	1799	1699	66	Beans (white)	90	LBP	5	KG	12	2015	4375
19811	141	1799	1699	92	Eggs	90	LBP	69	30 pcs	12	2015	2685.19000000000005
19812	141	1799	1699	97	Sugar	90	LBP	5	KG	12	2015	966.66700000000003
19813	141	1799	1699	108	Lentils	90	LBP	5	KG	12	2015	2583.32999999999993
19814	141	1799	1699	112	Pasta	90	LBP	5	KG	12	2015	2333.32999999999993
19815	141	1799	1699	125	Meat (chicken, whole)	90	LBP	5	KG	12	2015	5500
19816	141	1799	1699	181	Cabbage	90	LBP	5	KG	12	2015	575
19817	141	1799	1699	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	10000
19818	141	1799	1699	185	Salt	90	LBP	5	KG	12	2015	500
19819	141	1799	1699	233	Cucumbers (greenhouse)	90	LBP	5	KG	12	2015	1500
19820	141	1799	1699	238	Milk (powder)	90	LBP	5	KG	12	2015	10148.1000000000004
19821	141	1799	1699	244	Chickpeas	90	LBP	5	KG	12	2015	1916.67000000000007
19822	141	1799	1699	258	Bulgur	90	LBP	5	KG	12	2015	1750
19823	141	1799	1699	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	1766.67000000000007
19824	141	1799	1699	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	2857.13999999999987
19825	141	1799	1699	318	Lettuce	90	LBP	61	Head	12	2015	875
19826	141	1799	1699	319	Cheese (picon)	90	LBP	65	160 G	12	2015	2000
19827	141	1799	1699	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1583.32999999999993
19828	141	1799	1699	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	8666.67000000000007
19829	141	1799	1699	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	11891.8999999999996
19830	141	1799	1699	384	Bread (pita)	90	LBP	5	KG	12	2015	1578.95000000000005
19831	141	1799	1701	58	Wheat flour	90	LBP	87	5 KG	12	2015	5448
19832	141	1799	1701	66	Beans (white)	90	LBP	5	KG	12	2015	3081.67000000000007
19833	141	1799	1701	92	Eggs	90	LBP	69	30 pcs	12	2015	2500
19834	141	1799	1701	97	Sugar	90	LBP	5	KG	12	2015	891.66700000000003
19835	141	1799	1701	108	Lentils	90	LBP	5	KG	12	2015	2629
19836	141	1799	1701	112	Pasta	90	LBP	5	KG	12	2015	1980
19837	141	1799	1701	125	Meat (chicken, whole)	90	LBP	5	KG	12	2015	5658.32999999999993
19838	141	1799	1701	181	Cabbage	90	LBP	5	KG	12	2015	625
19839	141	1799	1701	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	9540
19840	141	1799	1701	185	Salt	90	LBP	5	KG	12	2015	447.166999999999973
19841	141	1799	1701	233	Cucumbers (greenhouse)	90	LBP	5	KG	12	2015	1187.5
19842	141	1799	1701	238	Milk (powder)	90	LBP	5	KG	12	2015	9888.14999999999964
19843	141	1799	1701	244	Chickpeas	90	LBP	5	KG	12	2015	2165.82999999999993
19844	141	1799	1701	258	Bulgur	90	LBP	5	KG	12	2015	1648.32999999999993
19845	141	1799	1701	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	1716.67000000000007
19846	141	1799	1701	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	2457.73999999999978
19847	141	1799	1701	318	Lettuce	90	LBP	61	Head	12	2015	625
19848	141	1799	1701	319	Cheese (picon)	90	LBP	65	160 G	12	2015	1998.32999999999993
19849	141	1799	1701	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1750
19850	141	1799	1701	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	7660
19851	141	1799	1701	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	11617.1000000000004
19852	141	1799	1701	384	Bread (pita)	90	LBP	5	KG	12	2015	1578.95000000000005
19853	141	1799	1701	404	Spinach	90	LBP	5	KG	12	2015	1000
19854	141	1802	1702	58	Wheat flour	90	LBP	87	5 KG	12	2015	7083.32999999999993
19855	141	1802	1702	66	Beans (white)	90	LBP	5	KG	12	2015	3000
19856	141	1802	1702	92	Eggs	90	LBP	69	30 pcs	12	2015	2314.80999999999995
19857	141	1802	1702	97	Sugar	90	LBP	5	KG	12	2015	883.33299999999997
19858	141	1802	1702	108	Lentils	90	LBP	5	KG	12	2015	2650
19859	141	1802	1702	112	Pasta	90	LBP	5	KG	12	2015	2666.67000000000007
19860	141	1802	1702	125	Meat (chicken, whole)	90	LBP	5	KG	12	2015	5166.5
19861	141	1802	1702	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	9083.32999999999993
19862	141	1802	1702	185	Salt	90	LBP	5	KG	12	2015	444.333000000000027
19863	141	1802	1702	238	Milk (powder)	90	LBP	5	KG	12	2015	10318.5
19864	141	1802	1702	244	Chickpeas	90	LBP	5	KG	12	2015	2533.32999999999993
19865	141	1802	1702	258	Bulgur	90	LBP	5	KG	12	2015	1633.32999999999993
19866	141	1802	1702	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	1616.67000000000007
19867	141	1802	1702	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	2797.61999999999989
19868	141	1802	1702	319	Cheese (picon)	90	LBP	65	160 G	12	2015	1950
19869	141	1802	1702	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1716.67000000000007
19870	141	1802	1702	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	8000
19871	141	1802	1702	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	8738.73999999999978
19872	141	1802	1702	384	Bread (pita)	90	LBP	5	KG	12	2015	1578.95000000000005
19873	141	1797	1703	58	Wheat flour	90	LBP	87	5 KG	11	2015	7812.5
19874	141	1797	1703	66	Beans (white)	90	LBP	5	KG	11	2015	3000
19875	141	1797	1703	92	Eggs	90	LBP	69	30 pcs	11	2015	2777.7800000000002
19876	141	1797	1703	97	Sugar	90	LBP	5	KG	11	2015	1100
19877	141	1797	1703	108	Lentils	90	LBP	5	KG	11	2015	3000
19878	141	1797	1703	112	Pasta	90	LBP	5	KG	11	2015	2500
19879	141	1797	1703	125	Meat (chicken, whole)	90	LBP	5	KG	11	2015	4500
19880	141	1797	1703	181	Cabbage	90	LBP	5	KG	6	2015	750
19881	141	1797	1703	184	Oil (sunflower)	90	LBP	67	5 L	11	2015	10000
19882	141	1797	1703	185	Salt	90	LBP	5	KG	11	2015	500
19883	141	1797	1703	233	Cucumbers (greenhouse)	90	LBP	5	KG	9	2015	1500
19884	141	1797	1703	238	Milk (powder)	90	LBP	5	KG	11	2015	10000
19885	141	1797	1703	244	Chickpeas	90	LBP	5	KG	11	2015	3250
19886	141	1797	1703	258	Bulgur	90	LBP	5	KG	11	2015	2500
19887	141	1797	1703	316	Rice (imported, Egyptian)	90	LBP	5	KG	11	2015	2000
19888	141	1797	1703	317	Tomatoes (paste)	90	LBP	5	KG	11	2015	2857.13999999999987
19889	141	1797	1703	318	Lettuce	90	LBP	61	Head	6	2015	1000
19890	141	1797	1703	319	Cheese (picon)	90	LBP	65	160 G	11	2015	2000
19891	141	1797	1703	320	Meat (beef, canned)	90	LBP	63	200 G	11	2015	2750
19892	141	1797	1703	321	Fish (sardine, canned)	90	LBP	5	KG	11	2015	8000
19893	141	1797	1703	322	Fish (tuna, canned)	90	LBP	5	KG	11	2015	10810.7999999999993
19894	141	1797	1703	384	Bread (pita)	90	LBP	5	KG	11	2015	1578.95000000000005
19895	141	1800	1704	58	Wheat flour	90	LBP	87	5 KG	12	2015	8333.32999999999993
19896	141	1800	1704	66	Beans (white)	90	LBP	5	KG	12	2015	3333.32999999999993
19897	141	1800	1704	92	Eggs	90	LBP	69	30 pcs	12	2015	3055.55999999999995
19898	141	1800	1704	97	Sugar	90	LBP	5	KG	12	2015	1100
19899	141	1800	1704	108	Lentils	90	LBP	5	KG	12	2015	2916.67000000000007
19900	141	1800	1704	112	Pasta	90	LBP	5	KG	12	2015	2000
19901	141	1800	1704	125	Meat (chicken, whole)	90	LBP	5	KG	12	2015	5500
19902	141	1800	1704	181	Cabbage	90	LBP	5	KG	12	2015	875
19903	141	1800	1704	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	10000
19904	141	1800	1704	185	Salt	90	LBP	5	KG	12	2015	726
19905	141	1800	1704	233	Cucumbers (greenhouse)	90	LBP	5	KG	12	2015	1500
19906	141	1800	1704	238	Milk (powder)	90	LBP	5	KG	12	2015	10000
19907	141	1800	1704	244	Chickpeas	90	LBP	5	KG	12	2015	2750
19908	141	1800	1704	258	Bulgur	90	LBP	5	KG	12	2015	2000
19909	141	1800	1704	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	2100
19910	141	1800	1704	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	2916.67000000000007
19911	141	1800	1704	318	Lettuce	90	LBP	61	Head	12	2015	1000
19912	141	1800	1704	319	Cheese (picon)	90	LBP	65	160 G	12	2015	2000
19913	141	1800	1704	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1833.32999999999993
19914	141	1800	1704	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	8666.67000000000007
19915	141	1800	1704	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	13063.1000000000004
19916	141	1800	1704	384	Bread (pita)	90	LBP	5	KG	12	2015	1578.95000000000005
19917	141	1800	1704	404	Spinach	90	LBP	5	KG	12	2015	1500
19918	141	1799	1705	58	Wheat flour	90	LBP	87	5 KG	12	2015	6150
19919	141	1799	1705	66	Beans (white)	90	LBP	5	KG	12	2015	2806.25
19920	141	1799	1705	92	Eggs	90	LBP	69	30 pcs	12	2015	2716.67000000000007
19921	141	1799	1705	97	Sugar	90	LBP	5	KG	12	2015	899.600000000000023
19922	141	1799	1705	108	Lentils	90	LBP	5	KG	12	2015	2580
19923	141	1799	1705	112	Pasta	90	LBP	5	KG	12	2015	2276
19924	141	1799	1705	125	Meat (chicken, whole)	90	LBP	5	KG	12	2015	5787.5
19925	141	1799	1705	181	Cabbage	90	LBP	5	KG	12	2015	863.33299999999997
19926	141	1799	1705	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	9272.5
19927	141	1799	1705	185	Salt	90	LBP	5	KG	12	2015	430
19928	141	1799	1705	233	Cucumbers (greenhouse)	90	LBP	5	KG	12	2015	1746.67000000000007
19929	141	1799	1705	238	Milk (powder)	90	LBP	5	KG	12	2015	9541.32999999999993
19930	141	1799	1705	244	Chickpeas	90	LBP	5	KG	12	2015	2177
19931	141	1799	1705	258	Bulgur	90	LBP	5	KG	12	2015	1390
19932	141	1799	1705	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	1629.59999999999991
19933	141	1799	1705	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	2375
19934	141	1799	1705	318	Lettuce	90	LBP	61	Head	12	2015	1000
19935	141	1799	1705	319	Cheese (picon)	90	LBP	65	160 G	12	2015	1972
19936	141	1799	1705	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1697
19937	141	1799	1705	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	8064
19938	141	1799	1705	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	11935.1000000000004
19939	141	1799	1705	384	Bread (pita)	90	LBP	5	KG	12	2015	1576.83999999999992
19940	141	1799	1705	404	Spinach	90	LBP	5	KG	12	2015	1490
19941	141	1800	1706	58	Wheat flour	90	LBP	87	5 KG	12	2015	5625
19942	141	1800	1706	66	Beans (white)	90	LBP	5	KG	12	2015	3375
19943	141	1800	1706	92	Eggs	90	LBP	69	30 pcs	12	2015	2638.88999999999987
19944	141	1800	1706	97	Sugar	90	LBP	5	KG	12	2015	900
19945	141	1800	1706	108	Lentils	90	LBP	5	KG	12	2015	2725
19946	141	1800	1706	112	Pasta	90	LBP	5	KG	12	2015	3000
19947	141	1800	1706	125	Meat (chicken, whole)	90	LBP	5	KG	12	2015	5500
19948	141	1800	1706	181	Cabbage	90	LBP	5	KG	12	2015	1000
19949	141	1800	1706	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	10500
19950	141	1800	1706	185	Salt	90	LBP	5	KG	12	2015	541.5
19951	141	1800	1706	233	Cucumbers (greenhouse)	90	LBP	5	KG	12	2015	1500
19952	141	1800	1706	238	Milk (powder)	90	LBP	5	KG	12	2015	10666.7000000000007
19953	141	1800	1706	244	Chickpeas	90	LBP	5	KG	12	2015	2850
19954	141	1800	1706	258	Bulgur	90	LBP	5	KG	12	2015	1725
19955	141	1800	1706	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	1850
19956	141	1800	1706	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	2500
19957	141	1800	1706	318	Lettuce	90	LBP	61	Head	12	2015	1250
19958	141	1800	1706	319	Cheese (picon)	90	LBP	65	160 G	12	2015	2000
19959	141	1800	1706	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1750
19960	141	1800	1706	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	8000
19961	141	1800	1706	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	8783.78000000000065
19962	141	1800	1706	384	Bread (pita)	90	LBP	5	KG	12	2015	1578.95000000000005
19963	141	1800	1706	404	Spinach	90	LBP	5	KG	11	2015	1500
19964	141	1797	1707	58	Wheat flour	90	LBP	87	5 KG	12	2015	5107.14000000000033
19965	141	1797	1707	66	Beans (white)	90	LBP	5	KG	12	2015	3571.42999999999984
19966	141	1797	1707	92	Eggs	90	LBP	69	30 pcs	12	2015	2420.63000000000011
19967	141	1797	1707	97	Sugar	90	LBP	5	KG	12	2015	1014.28999999999996
19968	141	1797	1707	108	Lentils	90	LBP	5	KG	12	2015	2750
19969	141	1797	1707	112	Pasta	90	LBP	5	KG	12	2015	1857.1400000000001
19970	141	1797	1707	125	Meat (chicken, whole)	90	LBP	5	KG	12	2015	5333.32999999999993
19971	141	1797	1707	181	Cabbage	90	LBP	5	KG	12	2015	950
19972	141	1797	1707	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	9928.56999999999971
19973	141	1797	1707	185	Salt	90	LBP	5	KG	12	2015	500
19974	141	1797	1707	233	Cucumbers (greenhouse)	90	LBP	5	KG	12	2015	1500
19975	141	1797	1707	238	Milk (powder)	90	LBP	5	KG	12	2015	10857.1000000000004
19976	141	1797	1707	244	Chickpeas	90	LBP	5	KG	12	2015	2107.13999999999987
19977	141	1797	1707	258	Bulgur	90	LBP	5	KG	12	2015	1642.8599999999999
19978	141	1797	1707	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	1871.43000000000006
19979	141	1797	1707	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	2500
19980	141	1797	1707	318	Lettuce	90	LBP	61	Head	12	2015	1200
19981	141	1797	1707	319	Cheese (picon)	90	LBP	65	160 G	12	2015	2000
19982	141	1797	1707	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1607.1400000000001
19983	141	1797	1707	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	8000
19984	141	1797	1707	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	9073.36000000000058
19985	141	1797	1707	384	Bread (pita)	90	LBP	5	KG	12	2015	1541.34999999999991
19986	141	1797	1707	404	Spinach	90	LBP	5	KG	12	2015	1000
19987	141	1797	1708	58	Wheat flour	90	LBP	87	5 KG	12	2015	5714.28999999999996
19988	141	1797	1708	66	Beans (white)	90	LBP	5	KG	12	2015	3482.13999999999987
19989	141	1797	1708	92	Eggs	90	LBP	69	30 pcs	12	2015	2361.11000000000013
19990	141	1797	1708	97	Sugar	90	LBP	5	KG	12	2015	1014.28999999999996
19991	141	1797	1708	108	Lentils	90	LBP	5	KG	12	2015	2553.57000000000016
19992	141	1797	1708	112	Pasta	90	LBP	5	KG	12	2015	1714.28999999999996
19993	141	1797	1708	125	Meat (chicken, whole)	90	LBP	5	KG	12	2015	5229.17000000000007
19994	141	1797	1708	181	Cabbage	90	LBP	5	KG	12	2015	937.5
19995	141	1797	1708	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	9785.70999999999913
19996	141	1797	1708	185	Salt	90	LBP	5	KG	12	2015	500
19997	141	1797	1708	233	Cucumbers (greenhouse)	90	LBP	5	KG	12	2015	1531.25
19998	141	1797	1708	238	Milk (powder)	90	LBP	5	KG	12	2015	10254
19999	141	1797	1708	244	Chickpeas	90	LBP	5	KG	12	2015	2571.42999999999984
20000	141	1797	1708	258	Bulgur	90	LBP	5	KG	12	2015	1553.56999999999994
20001	141	1797	1708	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	1896.43000000000006
20002	141	1797	1708	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	3405.61000000000013
20003	141	1797	1708	318	Lettuce	90	LBP	61	Head	12	2015	1035.71000000000004
20004	141	1797	1708	319	Cheese (picon)	90	LBP	65	160 G	12	2015	1978.56999999999994
20005	141	1797	1708	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1500
20006	141	1797	1708	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	8714.29000000000087
20007	141	1797	1708	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	8880.30999999999949
20008	141	1797	1708	384	Bread (pita)	90	LBP	5	KG	12	2015	1447.36999999999989
20009	141	1797	1708	404	Spinach	90	LBP	5	KG	12	2015	1500
20010	141	1799	1709	58	Wheat flour	90	LBP	87	5 KG	12	2015	6250
20011	141	1799	1709	66	Beans (white)	90	LBP	5	KG	12	2015	3500
20012	141	1799	1709	92	Eggs	90	LBP	69	30 pcs	12	2015	2777.7800000000002
20013	141	1799	1709	97	Sugar	90	LBP	5	KG	12	2015	900
20014	141	1799	1709	108	Lentils	90	LBP	5	KG	12	2015	2500
20015	141	1799	1709	112	Pasta	90	LBP	5	KG	12	2015	1800
20016	141	1799	1709	125	Meat (chicken, whole)	90	LBP	5	KG	10	2015	5000
20017	141	1799	1709	181	Cabbage	90	LBP	5	KG	8	2015	1000
20018	141	1799	1709	184	Oil (sunflower)	90	LBP	67	5 L	12	2015	9500
20019	141	1799	1709	185	Salt	90	LBP	5	KG	12	2015	333
20020	141	1799	1709	233	Cucumbers (greenhouse)	90	LBP	5	KG	12	2015	1000
20021	141	1799	1709	238	Milk (powder)	90	LBP	5	KG	12	2015	10000
20022	141	1799	1709	244	Chickpeas	90	LBP	5	KG	12	2015	2250
20023	141	1799	1709	258	Bulgur	90	LBP	5	KG	12	2015	1500
20024	141	1799	1709	316	Rice (imported, Egyptian)	90	LBP	5	KG	12	2015	1600
20025	141	1799	1709	317	Tomatoes (paste)	90	LBP	5	KG	12	2015	2500
20026	141	1799	1709	318	Lettuce	90	LBP	61	Head	12	2015	1000
20027	141	1799	1709	319	Cheese (picon)	90	LBP	65	160 G	12	2015	2000
20028	141	1799	1709	320	Meat (beef, canned)	90	LBP	63	200 G	12	2015	1750
20029	141	1799	1709	321	Fish (sardine, canned)	90	LBP	5	KG	12	2015	7920
20030	141	1799	1709	322	Fish (tuna, canned)	90	LBP	5	KG	12	2015	13513.5
20031	141	1799	1709	384	Bread (pita)	90	LBP	5	KG	12	2015	1052.63000000000011
20032	142	1807	522	54	Maize meal	56	LSL	36	12.5 KG	2	2016	71.4399999999999977
20033	142	1807	522	58	Wheat flour	56	LSL	36	12.5 KG	2	2016	77.5100000000000051
20034	142	1807	522	159	Bread (brown)	56	LSL	37	Loaf	2	2016	8.83000000000000007
20035	142	1807	522	161	Peas (split, dry)	56	LSL	28	500 G	2	2016	11.75
20036	142	1807	522	184	Oil (sunflower)	56	LSL	38	750 ML	2	2016	17.6099999999999994
20037	142	1807	522	354	Beans (sugar-red)	56	LSL	28	500 G	2	2016	11.5199999999999996
20038	142	1804	523	54	Maize meal	56	LSL	36	12.5 KG	2	2016	96.1400000000000006
20039	142	1804	523	58	Wheat flour	56	LSL	36	12.5 KG	2	2016	79.0900000000000034
20040	142	1804	523	159	Bread (brown)	56	LSL	37	Loaf	2	2016	9.05000000000000071
20041	142	1804	523	161	Peas (split, dry)	56	LSL	28	500 G	2	2016	11.1099999999999994
20042	142	1804	523	184	Oil (sunflower)	56	LSL	38	750 ML	2	2016	16.7699999999999996
20043	142	1804	523	354	Beans (sugar-red)	56	LSL	28	500 G	2	2016	11.6799999999999997
20044	142	1805	524	54	Maize meal	56	LSL	36	12.5 KG	2	2016	62.8599999999999994
20045	142	1805	524	58	Wheat flour	56	LSL	36	12.5 KG	2	2016	77.1700000000000017
20046	142	1805	524	159	Bread (brown)	56	LSL	37	Loaf	2	2016	8.51999999999999957
20047	142	1805	524	161	Peas (split, dry)	56	LSL	28	500 G	2	2016	10.8699999999999992
20048	142	1805	524	184	Oil (sunflower)	56	LSL	38	750 ML	2	2016	15.8800000000000008
20049	142	1805	524	354	Beans (sugar-red)	56	LSL	28	500 G	2	2016	11.4100000000000001
20050	142	1803	525	54	Maize meal	56	LSL	36	12.5 KG	2	2016	64.8400000000000034
20051	142	1803	525	58	Wheat flour	56	LSL	36	12.5 KG	2	2016	76.3799999999999955
20052	142	1803	525	159	Bread (brown)	56	LSL	37	Loaf	2	2016	8.90000000000000036
20053	142	1803	525	161	Peas (split, dry)	56	LSL	28	500 G	2	2016	10.8200000000000003
20054	142	1803	525	184	Oil (sunflower)	56	LSL	38	750 ML	2	2016	16.2800000000000011
20055	142	1803	525	354	Beans (sugar-red)	56	LSL	28	500 G	2	2016	10.9299999999999997
20056	142	1806	526	54	Maize meal	56	LSL	36	12.5 KG	2	2016	77.5
20057	142	1806	526	58	Wheat flour	56	LSL	36	12.5 KG	2	2016	81.4399999999999977
20058	142	1806	526	159	Bread (brown)	56	LSL	37	Loaf	2	2016	8.50999999999999979
20059	142	1806	526	161	Peas (split, dry)	56	LSL	28	500 G	2	2016	10.8800000000000008
20060	142	1806	526	184	Oil (sunflower)	56	LSL	38	750 ML	2	2016	16.5700000000000003
20061	142	1806	526	354	Beans (sugar-red)	56	LSL	28	500 G	2	2016	11.0199999999999996
20062	142	1808	527	54	Maize meal	56	LSL	36	12.5 KG	2	2016	75.480000000000004
20063	142	1808	527	58	Wheat flour	56	LSL	36	12.5 KG	2	2016	88.9200000000000017
20064	142	1808	527	159	Bread (brown)	56	LSL	37	Loaf	2	2016	9.17999999999999972
20065	142	1808	527	161	Peas (split, dry)	56	LSL	28	500 G	2	2016	12.1999999999999993
20066	142	1808	527	184	Oil (sunflower)	56	LSL	38	750 ML	2	2016	18.1700000000000017
20067	142	1808	527	354	Beans (sugar-red)	56	LSL	28	500 G	2	2016	11.9299999999999997
20068	142	1811	528	54	Maize meal	56	LSL	36	12.5 KG	2	2016	70.6400000000000006
20069	142	1811	528	58	Wheat flour	56	LSL	36	12.5 KG	2	2016	85.5799999999999983
20070	142	1811	528	159	Bread (brown)	56	LSL	37	Loaf	2	2016	8.82000000000000028
20071	142	1811	528	161	Peas (split, dry)	56	LSL	28	500 G	2	2016	11.9100000000000001
20072	142	1811	528	184	Oil (sunflower)	56	LSL	38	750 ML	2	2016	17.6400000000000006
20073	142	1811	528	354	Beans (sugar-red)	56	LSL	28	500 G	2	2016	12.1500000000000004
20074	142	1812	529	54	Maize meal	56	LSL	36	12.5 KG	2	2016	76.730000000000004
20075	142	1812	529	58	Wheat flour	56	LSL	36	12.5 KG	2	2016	84.1400000000000006
20076	142	1812	529	159	Bread (brown)	56	LSL	37	Loaf	2	2016	8.97000000000000064
20077	142	1812	529	161	Peas (split, dry)	56	LSL	28	500 G	2	2016	12.2300000000000004
20078	142	1812	529	184	Oil (sunflower)	56	LSL	38	750 ML	2	2016	17.0700000000000003
20079	142	1812	529	354	Beans (sugar-red)	56	LSL	28	500 G	2	2016	12.5999999999999996
20080	142	1810	530	54	Maize meal	56	LSL	36	12.5 KG	2	2016	75.480000000000004
20081	142	1810	530	58	Wheat flour	56	LSL	36	12.5 KG	2	2016	82.3799999999999955
20082	142	1810	530	159	Bread (brown)	56	LSL	37	Loaf	2	2016	9.85999999999999943
20083	142	1810	530	161	Peas (split, dry)	56	LSL	28	500 G	2	2016	12.7300000000000004
20084	142	1810	530	184	Oil (sunflower)	56	LSL	38	750 ML	2	2016	19
20085	142	1810	530	354	Beans (sugar-red)	56	LSL	28	500 G	2	2016	12.0899999999999999
20086	142	1809	531	54	Maize meal	56	LSL	36	12.5 KG	2	2016	77.2000000000000028
20087	142	1809	531	58	Wheat flour	56	LSL	36	12.5 KG	2	2016	86.5600000000000023
20088	142	1809	531	159	Bread (brown)	56	LSL	37	Loaf	2	2016	9.08000000000000007
20089	142	1809	531	161	Peas (split, dry)	56	LSL	28	500 G	2	2016	13.0399999999999991
20090	142	1809	531	184	Oil (sunflower)	56	LSL	38	750 ML	2	2016	18.4400000000000013
20091	142	1809	531	354	Beans (sugar-red)	56	LSL	28	500 G	2	2016	14.1600000000000001
20092	144	1814	237	62	Oil (palm)	40	LRD	27	Gallon	2	2016	450
20093	144	1814	237	64	Rice (imported)	40	LRD	22	50 KG	2	2016	2950
20094	144	1814	237	218	Cowpeas	40	LRD	5	KG	2	2016	80
20095	144	1814	237	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	255
20096	144	1814	237	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	261.666999999999973
20097	144	1814	237	291	Cassava (fresh)	40	LRD	22	50 KG	11	2015	208.332999999999998
20098	144	1814	237	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	88
20099	144	1814	237	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	3125
20100	144	1814	237	465	Wage (non-qualified labour, non-agricultural)	40	LRD	51	Day	9	2015	212.5
20101	144	1821	238	62	Oil (palm)	40	LRD	27	Gallon	2	2016	600
20102	144	1821	238	64	Rice (imported)	40	LRD	22	50 KG	2	2016	3308.32999999999993
20103	144	1821	238	150	Cocoa	40	LRD	5	KG	11	2015	141.667000000000002
20104	144	1821	238	218	Cowpeas	40	LRD	5	KG	2	2016	75.8332999999999942
20105	144	1821	238	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	311.666999999999973
20106	144	1821	238	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	301.666999999999973
20107	144	1821	238	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	425
20108	144	1821	238	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	90
20109	144	1821	238	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	3000
20110	144	1821	238	467	Wage (non-qualified labour, agricultural)	40	LRD	51	Day	10	2015	125
20111	144	1819	239	62	Oil (palm)	40	LRD	27	Gallon	2	2016	450
20112	144	1819	239	64	Rice (imported)	40	LRD	22	50 KG	2	2016	3237.5
20113	144	1819	239	150	Cocoa	40	LRD	5	KG	2	2016	180
20114	144	1819	239	218	Cowpeas	40	LRD	5	KG	2	2016	100
20115	144	1819	239	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	355
20116	144	1819	239	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	290
20117	144	1819	239	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	850
20118	144	1819	239	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	90
20119	144	1819	239	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	3041.67000000000007
20120	144	1819	239	467	Wage (non-qualified labour, agricultural)	40	LRD	51	Day	10	2015	375
20121	144	1815	240	62	Oil (palm)	40	LRD	27	Gallon	2	2016	316.666999999999973
20122	144	1815	240	64	Rice (imported)	40	LRD	22	50 KG	2	2016	2958.32999999999993
20123	144	1815	240	150	Cocoa	40	LRD	5	KG	1	2016	63.125
20124	144	1815	240	218	Cowpeas	40	LRD	5	KG	2	2016	70.8332999999999942
20125	144	1815	240	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	267.5
20126	144	1815	240	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	259.166999999999973
20127	144	1815	240	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	483.333000000000027
20128	144	1815	240	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	90
20129	144	1815	240	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	2450
20130	144	1815	240	467	Wage (non-qualified labour, agricultural)	40	LRD	51	Day	10	2015	219
20131	144	1817	241	62	Oil (palm)	40	LRD	27	Gallon	2	2016	375
20132	144	1817	241	64	Rice (imported)	40	LRD	22	50 KG	2	2016	2900
20133	144	1817	241	150	Cocoa	40	LRD	5	KG	2	2016	145
20134	144	1817	241	218	Cowpeas	40	LRD	5	KG	2	2016	80
20135	144	1817	241	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	252.5
20136	144	1817	241	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	262.5
20137	144	1817	241	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	908.33299999999997
20138	144	1817	241	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	89.5
20139	144	1817	241	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	2500
20140	144	1818	242	62	Oil (palm)	40	LRD	27	Gallon	2	2016	516.66700000000003
20141	144	1818	242	64	Rice (imported)	40	LRD	22	50 KG	2	2016	2916.67000000000007
20142	144	1818	242	218	Cowpeas	40	LRD	5	KG	2	2016	85
20143	144	1818	242	284	Fuel (diesel)	40	LRD	27	Gallon	9	2015	300
20144	144	1818	242	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	260
20145	144	1818	242	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	858.33299999999997
20146	144	1818	242	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	88.5
20147	144	1818	242	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	2566.67000000000007
20148	144	1821	243	62	Oil (palm)	40	LRD	27	Gallon	2	2016	450
20149	144	1821	243	64	Rice (imported)	40	LRD	22	50 KG	2	2016	3362.5
20150	144	1821	243	150	Cocoa	40	LRD	5	KG	2	2016	140
20151	144	1821	243	218	Cowpeas	40	LRD	5	KG	2	2016	76.6667000000000058
20152	144	1821	243	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	350
20153	144	1821	243	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	320
20154	144	1821	243	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	500
20155	144	1821	243	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	87.5
20156	144	1821	243	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	3016.67000000000007
20157	144	1821	243	467	Wage (non-qualified labour, agricultural)	40	LRD	51	Day	10	2015	114
20158	144	1823	244	62	Oil (palm)	40	LRD	27	Gallon	2	2016	308.333000000000027
20159	144	1823	244	64	Rice (imported)	40	LRD	22	50 KG	2	2016	3308.32999999999993
20160	144	1823	244	218	Cowpeas	40	LRD	5	KG	2	2016	96.6667000000000058
20161	144	1823	244	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	358.333000000000027
20162	144	1823	244	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	304.166999999999973
20163	144	1823	244	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	862.5
20164	144	1823	244	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	88
20165	144	1823	244	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	3033.32999999999993
20166	144	1823	244	467	Wage (non-qualified labour, agricultural)	40	LRD	51	Day	10	2015	450
20167	144	1824	245	62	Oil (palm)	40	LRD	27	Gallon	2	2016	404.166999999999973
20168	144	1824	245	64	Rice (imported)	40	LRD	22	50 KG	2	2016	2860.32999999999993
20169	144	1824	245	218	Cowpeas	40	LRD	5	KG	2	2016	75
20170	144	1824	245	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	263.333000000000027
20171	144	1824	245	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	250
20172	144	1824	245	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	679.16700000000003
20173	144	1824	245	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	89.5
20174	144	1824	245	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	2640.32999999999993
20175	144	1825	246	62	Oil (palm)	40	LRD	27	Gallon	2	2016	391.666999999999973
20176	144	1825	246	64	Rice (imported)	40	LRD	22	50 KG	2	2016	3200
20177	144	1825	246	150	Cocoa	40	LRD	5	KG	12	2015	200
20178	144	1825	246	218	Cowpeas	40	LRD	5	KG	2	2016	85
20179	144	1825	246	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	295
20180	144	1825	246	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	268.333000000000027
20181	144	1825	246	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	425
20182	144	1825	246	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	90
20183	144	1825	246	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	2850
20184	144	1825	246	467	Wage (non-qualified labour, agricultural)	40	LRD	51	Day	10	2015	200
20185	144	1819	631	62	Oil (palm)	40	LRD	27	Gallon	2	2016	450
20186	144	1819	631	64	Rice (imported)	40	LRD	22	50 KG	2	2016	3360
20187	144	1819	631	150	Cocoa	40	LRD	5	KG	2	2016	176.667000000000002
20188	144	1819	631	218	Cowpeas	40	LRD	5	KG	2	2016	100
20189	144	1819	631	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	355
20190	144	1819	631	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	300
20191	144	1819	631	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	750
20192	144	1819	631	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	87.5
20193	144	1819	631	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	3112.5
20194	144	1819	631	467	Wage (non-qualified labour, agricultural)	40	LRD	51	Day	10	2015	375
20195	144	1824	1742	62	Oil (palm)	40	LRD	27	Gallon	2	2016	430
20196	144	1824	1742	64	Rice (imported)	40	LRD	22	50 KG	2	2016	2850
20197	144	1824	1742	218	Cowpeas	40	LRD	5	KG	2	2016	75
20198	144	1824	1742	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	260
20199	144	1824	1742	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	250
20200	144	1824	1742	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	558.33299999999997
20201	144	1824	1742	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	89
20202	144	1824	1742	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	2651.67000000000007
20203	144	1822	1743	62	Oil (palm)	40	LRD	27	Gallon	2	2016	350
20204	144	1822	1743	64	Rice (imported)	40	LRD	22	50 KG	2	2016	2850
20205	144	1822	1743	150	Cocoa	40	LRD	5	KG	12	2015	100
20206	144	1822	1743	218	Cowpeas	40	LRD	5	KG	2	2016	70
20207	144	1822	1743	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	265
20208	144	1822	1743	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	261.666999999999973
20209	144	1822	1743	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	833.33299999999997
20210	144	1822	1743	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	90
20211	144	1822	1743	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	2616.67000000000007
20212	144	1822	1743	467	Wage (non-qualified labour, agricultural)	40	LRD	51	Day	10	2015	300
20213	144	1825	1744	62	Oil (palm)	40	LRD	27	Gallon	2	2016	375
20214	144	1825	1744	64	Rice (imported)	40	LRD	22	50 KG	2	2016	3075
20215	144	1825	1744	218	Cowpeas	40	LRD	5	KG	2	2016	75
20216	144	1825	1744	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	287.5
20217	144	1825	1744	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	255
20218	144	1825	1744	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	500
20219	144	1825	1744	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	90
20220	144	1825	1744	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	2725
20221	144	1825	1744	467	Wage (non-qualified labour, agricultural)	40	LRD	51	Day	10	2015	200
20222	144	1827	1745	62	Oil (palm)	40	LRD	27	Gallon	2	2016	500
20223	144	1827	1745	64	Rice (imported)	40	LRD	22	50 KG	2	2016	3366.67000000000007
20224	144	1827	1745	218	Cowpeas	40	LRD	5	KG	2	2016	100
20225	144	1827	1745	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	360
20226	144	1827	1745	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	250
20227	144	1827	1745	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	87.5
20228	144	1827	1745	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	3650
20229	144	1827	1745	467	Wage (non-qualified labour, agricultural)	40	LRD	51	Day	10	2015	325
20230	144	1827	1746	62	Oil (palm)	40	LRD	27	Gallon	2	2016	275
20231	144	1827	1746	64	Rice (imported)	40	LRD	22	50 KG	2	2016	3766.67000000000007
20232	144	1827	1746	150	Cocoa	40	LRD	5	KG	12	2015	100
20233	144	1827	1746	218	Cowpeas	40	LRD	5	KG	2	2016	100
20234	144	1827	1746	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	360
20235	144	1827	1746	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	250
20236	144	1827	1746	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	87
20237	144	1827	1746	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	3716.67000000000007
20238	144	1827	1746	467	Wage (non-qualified labour, agricultural)	40	LRD	51	Day	10	2015	163
20239	144	1823	1747	62	Oil (palm)	40	LRD	27	Gallon	2	2016	458.333000000000027
20240	144	1823	1747	64	Rice (imported)	40	LRD	22	50 KG	2	2016	3442.5
20241	144	1823	1747	218	Cowpeas	40	LRD	5	KG	2	2016	106.667000000000002
20242	144	1823	1747	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	375
20243	144	1823	1747	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	306.666999999999973
20244	144	1823	1747	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	88
20245	144	1823	1747	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	3170
20246	144	1823	1747	467	Wage (non-qualified labour, agricultural)	40	LRD	51	Day	10	2015	450
20247	144	1828	1748	62	Oil (palm)	40	LRD	27	Gallon	2	2016	400
20248	144	1828	1748	64	Rice (imported)	40	LRD	22	50 KG	2	2016	3200
20249	144	1828	1748	218	Cowpeas	40	LRD	5	KG	2	2016	93.3332999999999942
20250	144	1828	1748	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	350
20251	144	1828	1748	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	290
20252	144	1828	1748	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	800
20253	144	1828	1748	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	89
20254	144	1828	1748	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	3200
20255	144	1828	1748	467	Wage (non-qualified labour, agricultural)	40	LRD	51	Day	10	2015	250
20256	144	1820	1808	62	Oil (palm)	40	LRD	27	Gallon	2	2016	600
20257	144	1820	1808	64	Rice (imported)	40	LRD	22	50 KG	2	2016	3375
20258	144	1820	1808	218	Cowpeas	40	LRD	5	KG	2	2016	150
20259	144	1820	1808	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	441.666999999999973
20260	144	1820	1808	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	393.333000000000027
20261	144	1820	1808	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	286.666999999999973
20262	144	1820	1808	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	85
20263	144	1820	1808	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	3333.32999999999993
20264	144	1820	1808	467	Wage (non-qualified labour, agricultural)	40	LRD	51	Day	9	2015	775
20265	144	1816	1809	62	Oil (palm)	40	LRD	27	Gallon	2	2016	425
20266	144	1816	1809	64	Rice (imported)	40	LRD	22	50 KG	2	2016	3126.67000000000007
20267	144	1816	1809	218	Cowpeas	40	LRD	5	KG	2	2016	88
20268	144	1816	1809	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	350
20269	144	1816	1809	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	275
20270	144	1816	1809	291	Cassava (fresh)	40	LRD	22	50 KG	1	2016	566.66700000000003
20271	144	1816	1809	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	88
20272	144	1816	1809	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	3083.32999999999993
20273	144	1816	1809	467	Wage (non-qualified labour, agricultural)	40	LRD	51	Day	9	2015	275
20274	144	1826	1810	62	Oil (palm)	40	LRD	27	Gallon	2	2016	275
20275	144	1826	1810	64	Rice (imported)	40	LRD	22	50 KG	2	2016	3400
20276	144	1826	1810	218	Cowpeas	40	LRD	5	KG	2	2016	133
20277	144	1826	1810	284	Fuel (diesel)	40	LRD	27	Gallon	2	2016	350
20278	144	1826	1810	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	340
20279	144	1826	1810	291	Cassava (fresh)	40	LRD	22	50 KG	2	2016	650
20280	144	1826	1810	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	85
20281	144	1826	1810	400	Rice (white, imported)	40	LRD	22	50 KG	2	2016	3150
20282	144	1826	1810	467	Wage (non-qualified labour, agricultural)	40	LRD	51	Day	9	2015	450
20283	144	1816	1811	62	Oil (palm)	40	LRD	27	Gallon	2	2016	345.833000000000027
20284	144	1816	1811	64	Rice (imported)	40	LRD	22	50 KG	2	2016	3150
20285	144	1816	1811	218	Cowpeas	40	LRD	5	KG	2	2016	71.6667000000000058
20286	144	1816	1811	285	Fuel (petrol-gasoline)	40	LRD	27	Gallon	2	2016	319.166999999999973
20287	144	1816	1811	305	Exchange rate	40	LRD	56	USD/LCU	2	2016	87.5
20288	150	1885	732	71	Rice (local)	65	MGA	5	KG	12	2010	1217
20289	150	1885	733	71	Rice (local)	65	MGA	5	KG	12	2010	1350
20290	150	1885	734	71	Rice (local)	65	MGA	5	KG	12	2010	1703
20291	150	1885	735	71	Rice (local)	65	MGA	5	KG	12	2010	1435
20292	150	1885	736	71	Rice (local)	65	MGA	5	KG	12	2010	1400
20293	150	1885	737	71	Rice (local)	65	MGA	5	KG	11	2010	1429.17000000000007
20294	150	1885	738	71	Rice (local)	65	MGA	5	KG	12	2010	1400
20295	150	1885	739	71	Rice (local)	65	MGA	5	KG	11	2010	1426.25
20296	150	1880	740	71	Rice (local)	65	MGA	5	KG	12	2010	1293
20297	150	1883	741	58	Wheat flour	65	MGA	5	KG	2	2016	2250
20298	150	1883	741	71	Rice (local)	65	MGA	5	KG	2	2016	1211.66000000000008
20299	150	1883	741	96	Oil (vegetable)	65	MGA	15	L	2	2016	3766.65999999999985
20300	150	1883	741	97	Sugar	65	MGA	5	KG	2	2016	2216.65999999999985
20301	150	1883	741	203	Rice (paddy)	65	MGA	5	KG	9	2012	585
20302	150	1883	741	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2960
20303	150	1883	741	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20304	150	1883	741	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20305	150	1882	742	58	Wheat flour	65	MGA	5	KG	2	2016	2200
20306	150	1882	742	71	Rice (local)	65	MGA	5	KG	2	2016	1225
20307	150	1882	742	96	Oil (vegetable)	65	MGA	15	L	2	2016	4800
20308	150	1882	742	97	Sugar	65	MGA	5	KG	2	2016	2400
20309	150	1882	742	203	Rice (paddy)	65	MGA	5	KG	9	2012	590
20310	150	1882	742	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2911
20311	150	1882	742	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20312	150	1882	742	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20313	150	1883	743	58	Wheat flour	65	MGA	5	KG	4	2014	2200
20314	150	1883	743	71	Rice (local)	65	MGA	5	KG	4	2014	1459.40000000000009
20315	150	1883	743	96	Oil (vegetable)	65	MGA	15	L	4	2014	4396
20316	150	1883	743	97	Sugar	65	MGA	5	KG	4	2014	2700
20317	150	1883	743	283	Fuel (kerosene)	65	MGA	15	L	4	2014	2996
20318	150	1881	744	58	Wheat flour	65	MGA	5	KG	12	2014	2200
20319	150	1881	744	71	Rice (local)	65	MGA	5	KG	12	2014	1170.32999999999993
20320	150	1881	744	96	Oil (vegetable)	65	MGA	15	L	12	2014	4167
20321	150	1881	744	97	Sugar	65	MGA	5	KG	12	2014	2467
20322	150	1881	744	203	Rice (paddy)	65	MGA	5	KG	9	2012	580
20323	150	1881	744	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2744.67000000000007
20324	150	1882	745	58	Wheat flour	65	MGA	5	KG	2	2016	2200
20325	150	1882	745	71	Rice (local)	65	MGA	5	KG	2	2016	1450
20326	150	1882	745	96	Oil (vegetable)	65	MGA	15	L	2	2016	4366.65999999999985
20327	150	1882	745	97	Sugar	65	MGA	5	KG	2	2016	2316.65999999999985
20328	150	1882	745	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2733
20329	150	1882	745	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20330	150	1882	745	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20331	150	1881	746	58	Wheat flour	65	MGA	5	KG	2	2016	2250
20332	150	1881	746	71	Rice (local)	65	MGA	5	KG	2	2016	1550
20333	150	1881	746	96	Oil (vegetable)	65	MGA	15	L	2	2016	3966.67000000000007
20334	150	1881	746	97	Sugar	65	MGA	5	KG	2	2016	1983.33999999999992
20335	150	1881	746	203	Rice (paddy)	65	MGA	5	KG	9	2012	660
20336	150	1881	746	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2871
20337	150	1881	746	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20338	150	1881	746	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20339	150	1883	747	58	Wheat flour	65	MGA	5	KG	2	2016	2270
20340	150	1883	747	71	Rice (local)	65	MGA	5	KG	2	2016	1105.38000000000011
20341	150	1883	747	96	Oil (vegetable)	65	MGA	15	L	2	2016	4160
20342	150	1883	747	97	Sugar	65	MGA	5	KG	2	2016	2407.5
20343	150	1883	747	203	Rice (paddy)	65	MGA	5	KG	9	2012	458
20344	150	1883	747	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2829
20345	150	1883	747	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20346	150	1883	747	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20347	150	1880	748	58	Wheat flour	65	MGA	5	KG	2	2016	2200
20348	150	1880	748	71	Rice (local)	65	MGA	5	KG	2	2016	1170
20349	150	1880	748	96	Oil (vegetable)	65	MGA	15	L	2	2016	4000
20350	150	1880	748	97	Sugar	65	MGA	5	KG	2	2016	2400
20351	150	1880	748	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2950
20352	150	1880	748	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20353	150	1880	748	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20354	150	1885	749	58	Wheat flour	65	MGA	5	KG	2	2016	2325
20355	150	1885	749	71	Rice (local)	65	MGA	5	KG	2	2016	1590
20356	150	1885	749	96	Oil (vegetable)	65	MGA	15	L	2	2016	4100
20357	150	1885	749	97	Sugar	65	MGA	5	KG	2	2016	2925
20358	150	1885	749	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2673.32999999999993
20359	150	1885	749	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20360	150	1885	749	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20361	150	1884	750	58	Wheat flour	65	MGA	5	KG	2	2016	1950
20362	150	1884	750	71	Rice (local)	65	MGA	5	KG	2	2016	1450
20363	150	1884	750	96	Oil (vegetable)	65	MGA	15	L	2	2016	4050
20364	150	1884	750	97	Sugar	65	MGA	5	KG	2	2016	2100
20365	150	1884	750	203	Rice (paddy)	65	MGA	5	KG	9	2012	650
20366	150	1884	750	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2400
20367	150	1884	750	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20368	150	1884	750	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20369	150	1880	751	58	Wheat flour	65	MGA	5	KG	2	2016	2110
20370	150	1880	751	71	Rice (local)	65	MGA	5	KG	2	2016	1427.5
20371	150	1880	751	96	Oil (vegetable)	65	MGA	15	L	2	2016	4455
20372	150	1880	751	97	Sugar	65	MGA	5	KG	2	2016	2349.15999999999985
20373	150	1880	751	203	Rice (paddy)	65	MGA	5	KG	9	2012	712
20374	150	1880	751	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2727.67000000000007
20375	150	1880	751	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20376	150	1880	751	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20377	150	1882	752	58	Wheat flour	65	MGA	5	KG	2	2016	2100
20378	150	1882	752	71	Rice (local)	65	MGA	5	KG	2	2016	1383.33999999999992
20379	150	1882	752	96	Oil (vegetable)	65	MGA	15	L	2	2016	4266.65999999999985
20380	150	1882	752	97	Sugar	65	MGA	5	KG	2	2016	2500
20381	150	1882	752	283	Fuel (kerosene)	65	MGA	15	L	12	2014	3067
20382	150	1882	752	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20383	150	1882	752	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20384	150	1880	753	58	Wheat flour	65	MGA	5	KG	2	2016	2099.15999999999985
20385	150	1880	753	71	Rice (local)	65	MGA	5	KG	2	2016	1466.41000000000008
20386	150	1880	753	96	Oil (vegetable)	65	MGA	15	L	2	2016	4599.15999999999985
20387	150	1880	753	97	Sugar	65	MGA	5	KG	2	2016	2254.15999999999985
20388	150	1880	753	203	Rice (paddy)	65	MGA	5	KG	9	2012	650
20389	150	1880	753	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2200
20390	150	1880	753	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20391	150	1880	753	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20392	150	1884	754	58	Wheat flour	65	MGA	5	KG	2	2016	2150
20393	150	1884	754	71	Rice (local)	65	MGA	5	KG	2	2016	1260
20394	150	1884	754	96	Oil (vegetable)	65	MGA	15	L	2	2016	4700
20395	150	1884	754	97	Sugar	65	MGA	5	KG	2	2016	2200
20396	150	1884	754	203	Rice (paddy)	65	MGA	5	KG	9	2012	580
20397	150	1884	754	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2050
20398	150	1884	754	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20399	150	1884	754	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20400	150	1882	755	58	Wheat flour	65	MGA	5	KG	2	2016	2392.86000000000013
20401	150	1882	755	71	Rice (local)	65	MGA	5	KG	2	2016	1153.63000000000011
20402	150	1882	755	96	Oil (vegetable)	65	MGA	15	L	2	2016	4815.47999999999956
20403	150	1882	755	97	Sugar	65	MGA	5	KG	2	2016	2601.19000000000005
20404	150	1882	755	203	Rice (paddy)	65	MGA	5	KG	9	2012	644
20405	150	1882	755	283	Fuel (kerosene)	65	MGA	15	L	12	2014	3522
20406	150	1882	755	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20407	150	1882	755	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20408	150	1880	756	58	Wheat flour	65	MGA	5	KG	2	2016	2200
20409	150	1880	756	71	Rice (local)	65	MGA	5	KG	2	2016	1230
20410	150	1880	756	96	Oil (vegetable)	65	MGA	15	L	2	2016	4600
20411	150	1880	756	97	Sugar	65	MGA	5	KG	2	2016	2300
20412	150	1880	756	203	Rice (paddy)	65	MGA	5	KG	9	2012	660
20413	150	1880	756	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2900
20414	150	1880	756	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20415	150	1880	756	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20416	150	1885	757	58	Wheat flour	65	MGA	5	KG	2	2016	2125
20417	150	1885	757	71	Rice (local)	65	MGA	5	KG	2	2016	1307.5
20418	150	1885	757	96	Oil (vegetable)	65	MGA	15	L	2	2016	3637.5
20419	150	1885	757	97	Sugar	65	MGA	5	KG	2	2016	2662.5
20420	150	1885	757	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2841
20421	150	1885	757	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20422	150	1885	757	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20423	150	1884	758	58	Wheat flour	65	MGA	5	KG	2	2016	1966.67000000000007
20424	150	1884	758	71	Rice (local)	65	MGA	5	KG	2	2016	1620.82999999999993
20425	150	1884	758	96	Oil (vegetable)	65	MGA	15	L	2	2016	3933.32999999999993
20426	150	1884	758	97	Sugar	65	MGA	5	KG	2	2016	2133.34000000000015
20427	150	1884	758	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2400
20428	150	1884	758	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20429	150	1884	758	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20430	150	1885	759	58	Wheat flour	65	MGA	5	KG	2	2016	2200
20431	150	1885	759	71	Rice (local)	65	MGA	5	KG	2	2016	1548.75
20432	150	1885	759	96	Oil (vegetable)	65	MGA	15	L	2	2016	4000
20433	150	1885	759	97	Sugar	65	MGA	5	KG	2	2016	2850
20434	150	1885	759	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2904.67000000000007
20435	150	1885	759	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20436	150	1885	759	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20437	150	1882	760	58	Wheat flour	65	MGA	5	KG	2	2016	2266.67000000000007
20438	150	1882	760	71	Rice (local)	65	MGA	5	KG	2	2016	1254.16000000000008
20439	150	1882	760	96	Oil (vegetable)	65	MGA	15	L	2	2016	4433.32999999999993
20440	150	1882	760	97	Sugar	65	MGA	5	KG	2	2016	2400
20441	150	1882	760	203	Rice (paddy)	65	MGA	5	KG	9	2012	1070
20442	150	1882	760	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2543
20443	150	1882	760	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20444	150	1882	760	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20445	150	1885	761	58	Wheat flour	65	MGA	5	KG	2	2016	2150
20446	150	1885	761	71	Rice (local)	65	MGA	5	KG	2	2016	1157.91000000000008
20447	150	1885	761	96	Oil (vegetable)	65	MGA	15	L	2	2016	3883.34000000000015
20448	150	1885	761	97	Sugar	65	MGA	5	KG	2	2016	2333.34000000000015
20449	150	1885	761	203	Rice (paddy)	65	MGA	5	KG	9	2012	500
20450	150	1885	761	283	Fuel (kerosene)	65	MGA	15	L	12	2014	3033.32999999999993
20451	150	1885	761	284	Fuel (diesel)	65	MGA	15	L	2	2016	3090
20452	150	1885	761	285	Fuel (petrol-gasoline)	65	MGA	15	L	2	2016	3550
20453	150	1883	762	58	Wheat flour	65	MGA	5	KG	12	2015	2400
20454	150	1883	762	71	Rice (local)	65	MGA	5	KG	12	2015	1225
20455	150	1883	762	96	Oil (vegetable)	65	MGA	15	L	12	2015	4000
20456	150	1883	762	97	Sugar	65	MGA	5	KG	12	2015	2500
20457	150	1883	762	283	Fuel (kerosene)	65	MGA	15	L	12	2014	2867
20458	150	1883	762	284	Fuel (diesel)	65	MGA	15	L	12	2015	3090
20459	150	1883	762	285	Fuel (petrol-gasoline)	65	MGA	15	L	12	2015	3550
20460	152	1890	763	50	Beans	66	MWK	5	KG	2	2016	615.366999999999962
20461	152	1890	763	51	Maize	66	MWK	5	KG	2	2016	297.769999999999982
20462	152	1890	763	52	Rice	66	MWK	5	KG	2	2016	657.726999999999975
20463	152	1890	763	68	Cassava	66	MWK	5	KG	1	2015	107.340000000000003
20464	152	1890	763	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	410.774999999999977
20465	152	1890	764	50	Beans	66	MWK	5	KG	9	2015	500
20466	152	1890	764	51	Maize	66	MWK	5	KG	12	2015	176.469999999999999
20467	152	1890	764	52	Rice	66	MWK	5	KG	12	2015	513.625
20468	152	1890	764	119	Groundnuts (shelled)	66	MWK	5	KG	10	2015	597.716999999999985
20469	152	1890	764	155	Pigeon peas	66	MWK	5	KG	5	2015	247.056999999999988
20470	152	1890	764	218	Cowpeas	66	MWK	5	KG	5	2015	204.703000000000003
20471	152	1888	765	50	Beans	66	MWK	5	KG	2	2016	550
20472	152	1888	765	51	Maize	66	MWK	5	KG	2	2016	220
20473	152	1888	765	52	Rice	66	MWK	5	KG	2	2016	550
20474	152	1888	765	68	Cassava	66	MWK	5	KG	1	2015	92.5
20475	152	1888	765	119	Groundnuts (shelled)	66	MWK	5	KG	11	2015	685.600000000000023
20476	152	1888	765	218	Cowpeas	66	MWK	5	KG	6	2015	138.75
20477	152	1888	766	50	Beans	66	MWK	5	KG	9	2015	500
20478	152	1888	766	51	Maize	66	MWK	5	KG	9	2015	108.909999999999997
20479	152	1888	766	52	Rice	66	MWK	5	KG	5	2015	484.202999999999975
20480	152	1888	766	119	Groundnuts (shelled)	66	MWK	5	KG	9	2015	547.639999999999986
20481	152	1890	767	50	Beans	66	MWK	5	KG	2	2016	670.888000000000034
20482	152	1890	767	51	Maize	66	MWK	5	KG	2	2016	260.550000000000011
20483	152	1890	767	52	Rice	66	MWK	5	KG	2	2016	626.674999999999955
20484	152	1890	767	68	Cassava	66	MWK	5	KG	1	2014	136.370000000000005
20485	152	1890	767	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	697.340000000000032
20486	152	1888	768	50	Beans	66	MWK	5	KG	12	2015	220.310000000000002
20487	152	1888	768	51	Maize	66	MWK	5	KG	2	2016	275
20488	152	1888	768	52	Rice	66	MWK	5	KG	2	2016	600
20489	152	1888	768	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	488.353000000000009
20490	152	1890	769	50	Beans	66	MWK	5	KG	12	2015	740.059999999999945
20491	152	1890	769	51	Maize	66	MWK	5	KG	12	2015	159.879999999999995
20492	152	1890	769	52	Rice	66	MWK	5	KG	11	2015	160
20493	152	1890	769	119	Groundnuts (shelled)	66	MWK	5	KG	11	2015	705.466999999999985
20494	152	1889	770	50	Beans	66	MWK	5	KG	2	2016	456.110000000000014
20495	152	1889	770	51	Maize	66	MWK	5	KG	2	2016	256.273000000000025
20496	152	1889	770	52	Rice	66	MWK	5	KG	2	2016	445.357000000000028
20497	152	1889	770	68	Cassava	66	MWK	5	KG	2	2015	55.0050000000000026
20498	152	1889	770	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	483.04000000000002
20499	152	1888	771	50	Beans	66	MWK	5	KG	2	2016	475.569999999999993
20500	152	1888	771	51	Maize	66	MWK	5	KG	2	2016	195.425000000000011
20501	152	1888	771	52	Rice	66	MWK	5	KG	1	2016	550
20502	152	1888	771	68	Cassava	66	MWK	5	KG	2	2015	139.189999999999998
20503	152	1888	771	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	725.17999999999995
20504	152	1889	772	50	Beans	66	MWK	5	KG	2	2016	706.855000000000018
20505	152	1889	772	51	Maize	66	MWK	5	KG	2	2016	200.115000000000009
20506	152	1889	772	52	Rice	66	MWK	5	KG	2	2016	695.110000000000014
20507	152	1889	772	68	Cassava	66	MWK	5	KG	1	2015	114.287000000000006
20508	152	1889	772	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	527.440000000000055
20509	152	1889	772	218	Cowpeas	66	MWK	5	KG	6	2015	351.793000000000006
20510	152	1890	773	50	Beans	66	MWK	5	KG	2	2016	614.976999999999975
20511	152	1890	773	51	Maize	66	MWK	5	KG	2	2016	272.901999999999987
20512	152	1890	773	52	Rice	66	MWK	5	KG	2	2016	654.909999999999968
20513	152	1890	773	68	Cassava	66	MWK	5	KG	4	2014	65.5974999999999966
20514	152	1890	773	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	612.633000000000038
20515	152	1889	774	50	Beans	66	MWK	5	KG	2	2016	447.314999999999998
20516	152	1889	774	51	Maize	66	MWK	5	KG	2	2016	202.969999999999999
20517	152	1889	774	52	Rice	66	MWK	5	KG	2	2016	547.059999999999945
20518	152	1889	774	68	Cassava	66	MWK	5	KG	2	2015	191.789999999999992
20519	152	1889	774	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	467.220000000000027
20520	152	1889	774	218	Cowpeas	66	MWK	5	KG	6	2015	280.057000000000016
20521	152	1888	775	50	Beans	66	MWK	5	KG	2	2016	950
20522	152	1888	775	51	Maize	66	MWK	5	KG	2	2016	283.735000000000014
20523	152	1888	775	52	Rice	66	MWK	5	KG	2	2016	638.024999999999977
20524	152	1888	775	68	Cassava	66	MWK	5	KG	2	2015	96.7900000000000063
20525	152	1888	775	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	1200
20526	152	1888	775	155	Pigeon peas	66	MWK	5	KG	6	2015	500
20527	152	1888	775	218	Cowpeas	66	MWK	5	KG	6	2015	600
20528	152	1889	776	50	Beans	66	MWK	5	KG	2	2016	617.822000000000003
20529	152	1889	776	51	Maize	66	MWK	5	KG	2	2016	217.335000000000008
20530	152	1889	776	52	Rice	66	MWK	5	KG	2	2016	600
20531	152	1889	776	68	Cassava	66	MWK	5	KG	2	2015	199.650000000000006
20532	152	1889	776	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	500
20533	152	1889	777	50	Beans	66	MWK	5	KG	2	2016	504.360000000000014
20534	152	1889	777	51	Maize	66	MWK	5	KG	2	2016	173.905000000000001
20535	152	1889	777	52	Rice	66	MWK	5	KG	2	2016	513.220000000000027
20536	152	1889	777	68	Cassava	66	MWK	5	KG	2	2015	210.360000000000014
20537	152	1889	777	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	498.987000000000023
20538	152	1890	778	50	Beans	66	MWK	5	KG	2	2016	655.174999999999955
20539	152	1890	778	51	Maize	66	MWK	5	KG	2	2016	232.919999999999987
20540	152	1890	778	52	Rice	66	MWK	5	KG	2	2016	604.424999999999955
20541	152	1890	778	68	Cassava	66	MWK	5	KG	1	2015	148.780000000000001
20542	152	1890	778	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	644.264999999999986
20543	152	1889	779	50	Beans	66	MWK	5	KG	2	2016	750.17999999999995
20544	152	1889	779	51	Maize	66	MWK	5	KG	2	2016	294.75
20545	152	1889	779	52	Rice	66	MWK	5	KG	2	2016	260.920000000000016
20546	152	1889	779	68	Cassava	66	MWK	5	KG	1	2015	91.019999999999996
20547	152	1889	779	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	720.17999999999995
20548	152	1889	779	155	Pigeon peas	66	MWK	5	KG	6	2015	209.064999999999998
20549	152	1889	779	218	Cowpeas	66	MWK	5	KG	6	2015	269.802999999999997
20550	152	1888	780	50	Beans	66	MWK	5	KG	2	2016	766.66700000000003
20551	152	1888	780	51	Maize	66	MWK	5	KG	2	2016	202.5
20552	152	1888	780	52	Rice	66	MWK	5	KG	2	2016	575
20553	152	1888	780	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	775.009999999999991
20554	152	1890	781	50	Beans	66	MWK	5	KG	2	2016	733.409999999999968
20555	152	1890	781	51	Maize	66	MWK	5	KG	2	2016	191.72999999999999
20556	152	1890	781	52	Rice	66	MWK	5	KG	2	2016	755.909999999999968
20557	152	1890	781	68	Cassava	66	MWK	5	KG	2	2015	140.276999999999987
20558	152	1890	781	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	780.294999999999959
20559	152	1890	782	50	Beans	66	MWK	5	KG	2	2016	740.659999999999968
20560	152	1890	782	51	Maize	66	MWK	5	KG	8	2014	88.4124999999999943
20561	152	1890	782	52	Rice	66	MWK	5	KG	2	2016	500
20562	152	1890	782	68	Cassava	66	MWK	5	KG	4	2014	127.626999999999995
20563	152	1890	782	119	Groundnuts (shelled)	66	MWK	5	KG	12	2015	734.559999999999945
20564	152	1890	783	50	Beans	66	MWK	5	KG	1	2016	645.636999999999944
20565	152	1890	783	51	Maize	66	MWK	5	KG	2	2016	226.360000000000014
20566	152	1890	783	52	Rice	66	MWK	5	KG	2	2016	518.90300000000002
20567	152	1890	783	68	Cassava	66	MWK	5	KG	10	2014	204.340000000000003
20568	152	1890	783	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	924.712999999999965
20569	152	1890	783	155	Pigeon peas	66	MWK	5	KG	6	2015	337.550000000000011
20570	152	1890	783	218	Cowpeas	66	MWK	5	KG	6	2015	339.545000000000016
20571	152	1890	784	50	Beans	66	MWK	5	KG	2	2016	698.399999999999977
20572	152	1890	784	51	Maize	66	MWK	5	KG	2	2016	279.199999999999989
20573	152	1890	784	52	Rice	66	MWK	5	KG	2	2016	695.710000000000036
20574	152	1890	784	68	Cassava	66	MWK	5	KG	10	2014	72.4000000000000057
20575	152	1890	784	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	1099.84999999999991
20576	152	1890	784	155	Pigeon peas	66	MWK	5	KG	5	2015	399.310000000000002
20577	152	1890	784	218	Cowpeas	66	MWK	5	KG	5	2015	398.33499999999998
20578	152	1888	785	50	Beans	66	MWK	5	KG	1	2014	350.269999999999982
20579	152	1888	785	51	Maize	66	MWK	5	KG	9	2015	125.349999999999994
20580	152	1888	785	52	Rice	66	MWK	5	KG	12	2014	427.689999999999998
20581	152	1888	785	119	Groundnuts (shelled)	66	MWK	5	KG	12	2014	398.420000000000016
20582	152	1888	786	50	Beans	66	MWK	5	KG	9	2015	442
20583	152	1888	786	51	Maize	66	MWK	5	KG	9	2015	122.804000000000002
20584	152	1888	786	52	Rice	66	MWK	5	KG	9	2015	437.5
20585	152	1888	786	68	Cassava	66	MWK	5	KG	2	2015	188.02000000000001
20586	152	1888	786	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	700
20587	152	1888	786	218	Cowpeas	66	MWK	5	KG	6	2015	301.666999999999973
20588	152	1890	787	50	Beans	66	MWK	5	KG	2	2016	762.297000000000025
20589	152	1890	787	51	Maize	66	MWK	5	KG	2	2016	213.796999999999997
20590	152	1890	787	52	Rice	66	MWK	5	KG	2	2016	563.322999999999979
20591	152	1890	787	68	Cassava	66	MWK	5	KG	2	2015	224.439999999999998
20592	152	1890	787	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	854.539999999999964
20593	152	1890	787	155	Pigeon peas	66	MWK	5	KG	6	2015	459.259999999999991
20594	152	1890	787	218	Cowpeas	66	MWK	5	KG	6	2015	385.466999999999985
20595	152	1890	788	50	Beans	66	MWK	5	KG	2	2016	405.300000000000011
20596	152	1890	788	51	Maize	66	MWK	5	KG	2	2016	191.344999999999999
20597	152	1890	788	52	Rice	66	MWK	5	KG	2	2016	410.095000000000027
20598	152	1890	788	68	Cassava	66	MWK	5	KG	12	2014	86.3199999999999932
20599	152	1890	788	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	501.79000000000002
20600	152	1890	788	155	Pigeon peas	66	MWK	5	KG	6	2015	200.189999999999998
20601	152	1890	788	218	Cowpeas	66	MWK	5	KG	6	2015	180.77000000000001
20602	152	1888	789	50	Beans	66	MWK	5	KG	2	2016	743.100000000000023
20603	152	1888	789	51	Maize	66	MWK	5	KG	2	2016	155
20604	152	1888	789	52	Rice	66	MWK	5	KG	2	2016	500
20605	152	1888	789	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	671.039999999999964
20606	152	1888	789	218	Cowpeas	66	MWK	5	KG	6	2015	438.271999999999991
20607	152	1889	790	50	Beans	66	MWK	5	KG	2	2016	428.529999999999973
20608	152	1889	790	51	Maize	66	MWK	5	KG	2	2016	152.629999999999995
20609	152	1889	790	52	Rice	66	MWK	5	KG	2	2016	467.180000000000007
20610	152	1889	790	68	Cassava	66	MWK	5	KG	12	2014	91.6400000000000006
20611	152	1889	790	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	498.720000000000027
20612	152	1888	791	50	Beans	66	MWK	5	KG	2	2016	748.883000000000038
20613	152	1888	791	51	Maize	66	MWK	5	KG	2	2016	244.164999999999992
20614	152	1888	791	52	Rice	66	MWK	5	KG	2	2016	543.581999999999994
20615	152	1888	791	68	Cassava	66	MWK	5	KG	2	2015	159.490000000000009
20616	152	1888	791	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	683.168000000000006
20617	152	1888	791	218	Cowpeas	66	MWK	5	KG	6	2015	350.747000000000014
20618	152	1888	792	50	Beans	66	MWK	5	KG	2	2016	657.466999999999985
20619	152	1888	792	51	Maize	66	MWK	5	KG	2	2016	266.75
20620	152	1888	792	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	500
20621	152	1890	793	50	Beans	66	MWK	5	KG	2	2016	691.09699999999998
20622	152	1890	793	51	Maize	66	MWK	5	KG	2	2016	243.207999999999998
20623	152	1890	793	52	Rice	66	MWK	5	KG	2	2016	628.75
20624	152	1890	793	68	Cassava	66	MWK	5	KG	2	2015	285.220000000000027
20625	152	1890	793	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	690.726999999999975
20626	152	1890	793	218	Cowpeas	66	MWK	5	KG	6	2015	334.720000000000027
20627	152	1889	794	50	Beans	66	MWK	5	KG	6	2015	408.297000000000025
20628	152	1889	794	51	Maize	66	MWK	5	KG	2	2016	152.169999999999987
20629	152	1889	794	52	Rice	66	MWK	5	KG	6	2015	396.317000000000007
20630	152	1889	794	68	Cassava	66	MWK	5	KG	2	2015	144.590000000000003
20631	152	1889	794	119	Groundnuts (shelled)	66	MWK	5	KG	11	2015	750.211999999999989
20632	152	1888	795	50	Beans	66	MWK	5	KG	2	2016	611.113000000000056
20633	152	1888	795	51	Maize	66	MWK	5	KG	2	2016	171.926999999999992
20634	152	1888	795	52	Rice	66	MWK	5	KG	2	2016	550
20635	152	1888	795	68	Cassava	66	MWK	5	KG	2	2015	208.719999999999999
20636	152	1888	795	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	650
20637	152	1888	795	218	Cowpeas	66	MWK	5	KG	6	2015	205
20638	152	1888	796	50	Beans	66	MWK	5	KG	2	2016	786.115000000000009
20639	152	1888	796	51	Maize	66	MWK	5	KG	2	2016	235.585000000000008
20640	152	1888	796	52	Rice	66	MWK	5	KG	2	2016	559.32000000000005
20641	152	1888	796	68	Cassava	66	MWK	5	KG	10	2014	124.560000000000002
20642	152	1888	796	119	Groundnuts (shelled)	66	MWK	5	KG	12	2015	765.490000000000009
20643	152	1890	797	50	Beans	66	MWK	5	KG	2	2016	643.315000000000055
20644	152	1890	797	51	Maize	66	MWK	5	KG	2	2016	246.844999999999999
20645	152	1890	797	52	Rice	66	MWK	5	KG	2	2016	501.742999999999995
20646	152	1890	797	68	Cassava	66	MWK	5	KG	1	2015	108.439999999999998
20647	152	1890	797	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	805.94500000000005
20648	152	1890	797	155	Pigeon peas	66	MWK	5	KG	6	2015	346.879999999999995
20649	152	1890	797	218	Cowpeas	66	MWK	5	KG	6	2015	300.009999999999991
20650	152	1888	798	50	Beans	66	MWK	5	KG	2	2016	696.159999999999968
20651	152	1888	798	51	Maize	66	MWK	5	KG	2	2016	261.110000000000014
20652	152	1888	798	52	Rice	66	MWK	5	KG	2	2016	575
20653	152	1888	798	68	Cassava	66	MWK	5	KG	2	2015	97.0400000000000063
20654	152	1888	798	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	720.940000000000055
20655	152	1890	799	50	Beans	66	MWK	5	KG	2	2016	730.365000000000009
20656	152	1890	799	51	Maize	66	MWK	5	KG	2	2016	219.167000000000002
20657	152	1890	799	52	Rice	66	MWK	5	KG	2	2016	586.66700000000003
20658	152	1890	799	68	Cassava	66	MWK	5	KG	2	2015	107.415000000000006
20659	152	1890	799	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	644.732999999999947
20660	152	1890	799	155	Pigeon peas	66	MWK	5	KG	6	2015	338.593000000000018
20661	152	1890	799	218	Cowpeas	66	MWK	5	KG	6	2015	326.016999999999996
20662	152	1889	800	50	Beans	66	MWK	5	KG	2	2016	693.865000000000009
20663	152	1889	800	51	Maize	66	MWK	5	KG	2	2016	219.340000000000003
20664	152	1889	800	52	Rice	66	MWK	5	KG	2	2016	600
20665	152	1889	800	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	602.923000000000002
20666	152	1889	800	218	Cowpeas	66	MWK	5	KG	6	2015	437.420000000000016
20667	152	1889	801	50	Beans	66	MWK	5	KG	2	2016	700.149999999999977
20668	152	1889	801	51	Maize	66	MWK	5	KG	2	2016	207.650000000000006
20669	152	1889	801	52	Rice	66	MWK	5	KG	2	2016	710.5
20670	152	1889	801	68	Cassava	66	MWK	5	KG	2	2015	255
20671	152	1889	801	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	660.370000000000005
20672	152	1889	801	218	Cowpeas	66	MWK	5	KG	6	2015	488.725000000000023
20673	152	1890	802	50	Beans	66	MWK	5	KG	9	2015	638
20674	152	1890	802	51	Maize	66	MWK	5	KG	2	2016	235
20675	152	1890	802	52	Rice	66	MWK	5	KG	9	2015	394.333000000000027
20676	152	1890	802	119	Groundnuts (shelled)	66	MWK	5	KG	11	2015	605.090000000000032
20677	152	1888	803	50	Beans	66	MWK	5	KG	2	2016	743.697000000000003
20678	152	1888	803	51	Maize	66	MWK	5	KG	2	2016	208.402999999999992
20679	152	1888	803	52	Rice	66	MWK	5	KG	2	2016	600
20680	152	1888	803	68	Cassava	66	MWK	5	KG	1	2015	173
20681	152	1888	803	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	894.133000000000038
20682	152	1888	803	218	Cowpeas	66	MWK	5	KG	6	2015	360.773000000000025
20683	152	1890	804	50	Beans	66	MWK	5	KG	2	2016	662.225000000000023
20684	152	1890	804	51	Maize	66	MWK	5	KG	2	2016	201.85499999999999
20685	152	1890	804	52	Rice	66	MWK	5	KG	2	2016	400.475000000000023
20686	152	1890	804	68	Cassava	66	MWK	5	KG	2	2015	229.425000000000011
20687	152	1890	804	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	679.440000000000055
20688	152	1890	804	155	Pigeon peas	66	MWK	5	KG	6	2015	341.516999999999996
20689	152	1890	804	218	Cowpeas	66	MWK	5	KG	6	2015	336.139999999999986
20690	152	1890	805	50	Beans	66	MWK	5	KG	2	2016	709.955000000000041
20691	152	1890	805	51	Maize	66	MWK	5	KG	2	2016	303.115000000000009
20692	152	1890	805	52	Rice	66	MWK	5	KG	2	2016	599.514999999999986
20693	152	1890	805	68	Cassava	66	MWK	5	KG	2	2015	360.560000000000002
20694	152	1890	805	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	800.44500000000005
20695	152	1890	805	155	Pigeon peas	66	MWK	5	KG	6	2015	290.132999999999981
20696	152	1890	805	218	Cowpeas	66	MWK	5	KG	6	2015	531.100000000000023
20697	152	1890	806	50	Beans	66	MWK	5	KG	2	2016	654.615000000000009
20698	152	1890	806	51	Maize	66	MWK	5	KG	2	2016	200.384999999999991
20699	152	1890	806	52	Rice	66	MWK	5	KG	2	2016	409.375
20700	152	1890	806	68	Cassava	66	MWK	5	KG	12	2014	151.900000000000006
20701	152	1890	806	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	673.019999999999982
20702	152	1890	806	155	Pigeon peas	66	MWK	5	KG	6	2015	327.625
20703	152	1890	806	218	Cowpeas	66	MWK	5	KG	6	2015	306.064999999999998
20704	152	1888	807	50	Beans	66	MWK	5	KG	2	2016	845.360000000000014
20705	152	1888	807	51	Maize	66	MWK	5	KG	2	2016	260
20706	152	1888	807	52	Rice	66	MWK	5	KG	2	2016	550
20707	152	1889	808	50	Beans	66	MWK	5	KG	2	2016	710.42999999999995
20708	152	1889	808	51	Maize	66	MWK	5	KG	2	2016	200.782000000000011
20709	152	1889	808	52	Rice	66	MWK	5	KG	2	2016	717.769999999999982
20710	152	1889	808	68	Cassava	66	MWK	5	KG	1	2015	136.400000000000006
20711	152	1889	808	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	710.591999999999985
20712	152	1888	809	50	Beans	66	MWK	5	KG	2	2016	807.16700000000003
20713	152	1888	809	51	Maize	66	MWK	5	KG	2	2016	213.5
20714	152	1888	809	52	Rice	66	MWK	5	KG	2	2016	865.700000000000045
20715	152	1888	809	68	Cassava	66	MWK	5	KG	2	2015	74.5974999999999966
20716	152	1888	809	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	752.961999999999989
20717	152	1888	809	218	Cowpeas	66	MWK	5	KG	6	2015	209.266999999999996
20718	152	1888	810	50	Beans	66	MWK	5	KG	2	2016	1053.78999999999996
20719	152	1888	810	51	Maize	66	MWK	5	KG	2	2016	205.043000000000006
20720	152	1888	810	52	Rice	66	MWK	5	KG	2	2016	456.990000000000009
20721	152	1888	810	68	Cassava	66	MWK	5	KG	4	2014	86.4950000000000045
20722	152	1888	810	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	1017.07000000000005
20723	152	1888	810	218	Cowpeas	66	MWK	5	KG	6	2015	750.039999999999964
20724	152	1890	811	50	Beans	66	MWK	5	KG	2	2016	801.961999999999989
20725	152	1890	811	51	Maize	66	MWK	5	KG	2	2016	276.944999999999993
20726	152	1890	811	52	Rice	66	MWK	5	KG	2	2016	658.393000000000029
20727	152	1890	811	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	890.567000000000007
20728	152	1890	811	155	Pigeon peas	66	MWK	5	KG	6	2015	364.795000000000016
20729	152	1890	811	218	Cowpeas	66	MWK	5	KG	6	2015	475.95999999999998
20730	152	1888	812	50	Beans	66	MWK	5	KG	12	2015	699.879999999999995
20731	152	1888	812	51	Maize	66	MWK	5	KG	2	2016	166.069999999999993
20732	152	1888	812	52	Rice	66	MWK	5	KG	2	2016	592.32000000000005
20733	152	1888	812	68	Cassava	66	MWK	5	KG	2	2015	250.36699999999999
20734	152	1888	812	119	Groundnuts (shelled)	66	MWK	5	KG	12	2015	625
20735	152	1888	812	218	Cowpeas	66	MWK	5	KG	6	2015	120.534999999999997
20736	152	1890	813	50	Beans	66	MWK	5	KG	12	2015	610.105000000000018
20737	152	1890	813	51	Maize	66	MWK	5	KG	12	2015	152.465000000000003
20738	152	1890	813	52	Rice	66	MWK	5	KG	12	2015	421.894999999999982
20739	152	1890	813	68	Cassava	66	MWK	5	KG	1	2015	109.611999999999995
20740	152	1890	813	119	Groundnuts (shelled)	66	MWK	5	KG	12	2015	615.5
20741	152	1888	814	50	Beans	66	MWK	5	KG	2	2016	625.529999999999973
20742	152	1888	814	51	Maize	66	MWK	5	KG	2	2016	170.539999999999992
20743	152	1888	814	52	Rice	66	MWK	5	KG	2	2016	500
20744	152	1888	814	68	Cassava	66	MWK	5	KG	2	2015	190.5
20745	152	1888	814	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	704.919999999999959
20746	152	1888	814	155	Pigeon peas	66	MWK	5	KG	6	2015	290.079999999999984
20747	152	1888	815	50	Beans	66	MWK	5	KG	12	2015	425.75
20748	152	1888	815	51	Maize	66	MWK	5	KG	2	2016	193.72999999999999
20749	152	1888	815	52	Rice	66	MWK	5	KG	2	2016	500
20750	152	1888	815	119	Groundnuts (shelled)	66	MWK	5	KG	12	2015	600
20751	152	1889	816	50	Beans	66	MWK	5	KG	2	2016	432.08499999999998
20752	152	1889	816	51	Maize	66	MWK	5	KG	2	2016	210.39500000000001
20753	152	1889	816	52	Rice	66	MWK	5	KG	2	2016	559.799999999999955
20754	152	1889	816	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	431.925000000000011
20755	152	1889	816	218	Cowpeas	66	MWK	5	KG	6	2015	122.060000000000002
20756	152	1890	817	50	Beans	66	MWK	5	KG	2	2016	756.950000000000045
20757	152	1890	817	51	Maize	66	MWK	5	KG	2	2016	230
20758	152	1890	817	52	Rice	66	MWK	5	KG	2	2016	500
20759	152	1890	817	68	Cassava	66	MWK	5	KG	1	2015	168.800000000000011
20760	152	1890	817	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	870.559999999999945
20761	152	1890	817	155	Pigeon peas	66	MWK	5	KG	6	2015	287.949999999999989
20762	152	1890	817	218	Cowpeas	66	MWK	5	KG	6	2015	353.41500000000002
20763	152	1889	818	50	Beans	66	MWK	5	KG	2	2016	750.841999999999985
20764	152	1889	818	51	Maize	66	MWK	5	KG	2	2016	221.052999999999997
20765	152	1889	818	52	Rice	66	MWK	5	KG	2	2016	659.55499999999995
20766	152	1889	818	68	Cassava	66	MWK	5	KG	2	2015	213.955000000000013
20767	152	1889	818	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	713.628000000000043
20768	152	1888	819	50	Beans	66	MWK	5	KG	12	2015	521.330000000000041
20769	152	1888	819	51	Maize	66	MWK	5	KG	12	2015	121.439999999999998
20770	152	1888	819	52	Rice	66	MWK	5	KG	12	2015	423.639999999999986
20771	152	1888	819	68	Cassava	66	MWK	5	KG	10	2013	98.6299999999999955
20772	152	1888	819	119	Groundnuts (shelled)	66	MWK	5	KG	12	2015	396.939999999999998
20773	152	1888	819	155	Pigeon peas	66	MWK	5	KG	6	2015	301.660000000000025
20774	152	1888	819	218	Cowpeas	66	MWK	5	KG	6	2015	301.259999999999991
20775	152	1888	820	50	Beans	66	MWK	5	KG	2	2016	750
20776	152	1888	820	51	Maize	66	MWK	5	KG	2	2016	147.245000000000005
20777	152	1888	820	52	Rice	66	MWK	5	KG	2	2016	608.80499999999995
20778	152	1888	820	68	Cassava	66	MWK	5	KG	1	2015	98.3900000000000006
20779	152	1888	820	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	625
20780	152	1888	820	218	Cowpeas	66	MWK	5	KG	6	2015	351.793000000000006
20781	152	1888	821	50	Beans	66	MWK	5	KG	12	2015	516.164999999999964
20782	152	1888	821	51	Maize	66	MWK	5	KG	12	2015	153.473000000000013
20783	152	1888	821	52	Rice	66	MWK	5	KG	12	2015	550
20784	152	1888	821	119	Groundnuts (shelled)	66	MWK	5	KG	12	2015	387.860000000000014
20785	152	1888	822	50	Beans	66	MWK	5	KG	2	2016	600
20786	152	1888	822	51	Maize	66	MWK	5	KG	2	2016	193.332999999999998
20787	152	1888	822	52	Rice	66	MWK	5	KG	2	2016	516.812999999999988
20788	152	1888	822	68	Cassava	66	MWK	5	KG	2	2015	84.0799999999999983
20789	152	1888	822	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	700
20790	152	1890	823	50	Beans	66	MWK	5	KG	11	2015	708.33299999999997
20791	152	1890	823	51	Maize	66	MWK	5	KG	11	2015	149.560000000000002
20792	152	1890	823	52	Rice	66	MWK	5	KG	11	2015	260.339999999999975
20793	152	1890	823	68	Cassava	66	MWK	5	KG	1	2015	288.430000000000007
20794	152	1890	823	119	Groundnuts (shelled)	66	MWK	5	KG	11	2015	690.625
20795	152	1890	824	50	Beans	66	MWK	5	KG	11	2015	601.961999999999989
20796	152	1890	824	51	Maize	66	MWK	5	KG	9	2015	115.105000000000004
20797	152	1890	824	52	Rice	66	MWK	5	KG	7	2015	416.666999999999973
20798	152	1890	824	119	Groundnuts (shelled)	66	MWK	5	KG	11	2015	690.27800000000002
20799	152	1888	825	50	Beans	66	MWK	5	KG	11	2015	950
20800	152	1888	825	51	Maize	66	MWK	5	KG	9	2015	105.290000000000006
20801	152	1888	825	52	Rice	66	MWK	5	KG	8	2015	450.100000000000023
20802	152	1888	825	68	Cassava	66	MWK	5	KG	12	2014	125
20803	152	1888	825	119	Groundnuts (shelled)	66	MWK	5	KG	11	2015	900
20804	152	1888	825	218	Cowpeas	66	MWK	5	KG	6	2015	300
20805	152	1888	826	50	Beans	66	MWK	5	KG	2	2016	545.200000000000045
20806	152	1888	826	51	Maize	66	MWK	5	KG	2	2016	211.384999999999991
20807	152	1888	826	52	Rice	66	MWK	5	KG	2	2016	510.399999999999977
20808	152	1888	826	68	Cassava	66	MWK	5	KG	9	2014	143.742999999999995
20809	152	1888	826	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	590.684999999999945
20810	152	1888	826	218	Cowpeas	66	MWK	5	KG	6	2015	192.775000000000006
20811	152	1888	827	50	Beans	66	MWK	5	KG	2	2016	663.585000000000036
20812	152	1888	827	51	Maize	66	MWK	5	KG	2	2016	220
20813	152	1888	827	52	Rice	66	MWK	5	KG	2	2016	600
20814	152	1888	827	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	642.225000000000023
20815	152	1888	827	155	Pigeon peas	66	MWK	5	KG	5	2015	351.66500000000002
20816	152	1888	827	218	Cowpeas	66	MWK	5	KG	5	2015	454.447000000000003
20817	152	1889	828	50	Beans	66	MWK	5	KG	2	2016	565.299999999999955
20818	152	1889	828	51	Maize	66	MWK	5	KG	2	2016	221.317000000000007
20819	152	1889	828	52	Rice	66	MWK	5	KG	2	2016	680.845000000000027
20820	152	1889	828	68	Cassava	66	MWK	5	KG	2	2015	109.117000000000004
20821	152	1889	828	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	625.726999999999975
20822	152	1889	828	218	Cowpeas	66	MWK	5	KG	6	2015	179.582999999999998
20823	152	1888	829	50	Beans	66	MWK	5	KG	8	2015	450
20824	152	1888	829	51	Maize	66	MWK	5	KG	2	2016	177.180000000000007
20825	152	1888	829	52	Rice	66	MWK	5	KG	8	2015	425
20826	152	1888	829	68	Cassava	66	MWK	5	KG	2	2015	102.120000000000005
20827	152	1888	829	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	578.5
20828	152	1890	830	51	Maize	66	MWK	5	KG	8	2012	27.4699999999999989
20829	152	1888	831	50	Beans	66	MWK	5	KG	2	2016	640.264999999999986
20830	152	1888	831	51	Maize	66	MWK	5	KG	2	2016	221.25
20831	152	1888	831	52	Rice	66	MWK	5	KG	2	2016	652.643000000000029
20832	152	1888	831	68	Cassava	66	MWK	5	KG	10	2014	30
20833	152	1888	831	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	529.216999999999985
20834	152	1888	832	50	Beans	66	MWK	5	KG	2	2016	990
20835	152	1888	832	51	Maize	66	MWK	5	KG	2	2016	185.5
20836	152	1888	832	52	Rice	66	MWK	5	KG	2	2016	575
20837	152	1888	832	68	Cassava	66	MWK	5	KG	2	2015	312.5
20838	152	1888	832	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	652.75
20839	152	1888	832	155	Pigeon peas	66	MWK	5	KG	6	2015	652.55499999999995
20840	152	1888	832	218	Cowpeas	66	MWK	5	KG	6	2015	295.050000000000011
20841	152	1888	833	50	Beans	66	MWK	5	KG	2	2016	607.59699999999998
20842	152	1888	833	51	Maize	66	MWK	5	KG	2	2016	142.037000000000006
20843	152	1888	833	52	Rice	66	MWK	5	KG	2	2016	450.182999999999993
20844	152	1888	833	155	Pigeon peas	66	MWK	5	KG	6	2015	262.447000000000003
20845	152	1888	833	218	Cowpeas	66	MWK	5	KG	6	2015	253.687000000000012
20846	152	1888	1710	51	Maize	66	MWK	5	KG	2	2016	233.332999999999998
20847	152	1888	1710	119	Groundnuts (shelled)	66	MWK	5	KG	2	2016	600
20848	155	1926	247	51	Maize	26	XOF	5	KG	3	2012	250
20849	155	1926	247	65	Sorghum	26	XOF	5	KG	3	2012	275
20850	155	1926	247	73	Millet	26	XOF	5	KG	3	2012	275
20851	155	1927	248	51	Maize	26	XOF	5	KG	3	2016	194
20852	155	1927	248	64	Rice (imported)	26	XOF	5	KG	3	2016	375
20853	155	1927	248	65	Sorghum	26	XOF	5	KG	3	2016	200
20854	155	1927	248	71	Rice (local)	26	XOF	5	KG	3	2016	388
20855	155	1927	248	73	Millet	26	XOF	5	KG	3	2016	200
20856	155	1927	248	100	Fonio	26	XOF	5	KG	3	2012	550
20857	155	1927	248	203	Rice (paddy)	26	XOF	5	KG	3	2016	133
20858	155	1928	249	51	Maize	26	XOF	5	KG	3	2016	203
20859	155	1928	249	64	Rice (imported)	26	XOF	5	KG	3	2016	350
20860	155	1928	249	65	Sorghum	26	XOF	5	KG	3	2016	200
20861	155	1928	249	71	Rice (local)	26	XOF	5	KG	3	2016	484
20862	155	1928	249	73	Millet	26	XOF	5	KG	3	2016	249
20863	155	1928	249	100	Fonio	26	XOF	5	KG	3	2012	550
20864	155	1929	250	51	Maize	26	XOF	5	KG	1	2012	250
20865	155	1929	250	64	Rice (imported)	26	XOF	5	KG	3	2012	500
20866	155	1929	250	65	Sorghum	26	XOF	5	KG	1	2012	225
20867	155	1929	250	71	Rice (local)	26	XOF	5	KG	3	2012	500
20868	155	1929	250	73	Millet	26	XOF	5	KG	3	2012	300
20869	155	1929	250	100	Fonio	26	XOF	5	KG	3	2012	500
20870	155	1930	251	51	Maize	26	XOF	5	KG	3	2016	158
20871	155	1930	251	64	Rice (imported)	26	XOF	5	KG	3	2016	350
20872	155	1930	251	65	Sorghum	26	XOF	5	KG	3	2016	165
20873	155	1930	251	71	Rice (local)	26	XOF	5	KG	3	2016	363
20874	155	1930	251	73	Millet	26	XOF	5	KG	3	2016	177
20875	155	1930	251	100	Fonio	26	XOF	5	KG	3	2012	550
20876	155	1931	252	51	Maize	26	XOF	5	KG	3	2016	175
20877	155	1931	252	64	Rice (imported)	26	XOF	5	KG	3	2016	350
20878	155	1931	252	65	Sorghum	26	XOF	5	KG	3	2016	175
20879	155	1931	252	71	Rice (local)	26	XOF	5	KG	3	2016	328
20880	155	1931	252	73	Millet	26	XOF	5	KG	3	2016	197
20881	155	1931	252	100	Fonio	26	XOF	5	KG	3	2012	450
20882	155	1931	252	203	Rice (paddy)	26	XOF	5	KG	5	2009	168
20883	155	1926	253	51	Maize	26	XOF	5	KG	3	2016	175
20884	155	1926	253	64	Rice (imported)	26	XOF	5	KG	3	2016	350
20885	155	1926	253	65	Sorghum	26	XOF	5	KG	3	2016	200
20886	155	1926	253	71	Rice (local)	26	XOF	5	KG	3	2016	375
20887	155	1926	253	73	Millet	26	XOF	5	KG	3	2016	225
20888	155	1934	255	51	Maize	26	XOF	5	KG	3	2016	250
20889	155	1934	255	64	Rice (imported)	26	XOF	5	KG	3	2016	320
20890	155	1934	255	65	Sorghum	26	XOF	5	KG	3	2016	250
20891	155	1934	255	71	Rice (local)	26	XOF	5	KG	3	2016	350
20892	155	1934	255	73	Millet	26	XOF	5	KG	3	2016	220
20893	155	1934	255	203	Rice (paddy)	26	XOF	5	KG	3	2016	221
20894	155	1933	256	51	Maize	26	XOF	5	KG	3	2016	125
20895	155	1933	256	64	Rice (imported)	26	XOF	5	KG	3	2016	376
20896	155	1933	256	65	Sorghum	26	XOF	5	KG	3	2016	166
20897	155	1933	256	71	Rice (local)	26	XOF	5	KG	3	2016	331
20898	155	1933	256	73	Millet	26	XOF	5	KG	3	2016	196
20899	155	1933	256	100	Fonio	26	XOF	5	KG	3	2012	500
20900	155	1927	857	51	Maize	26	XOF	5	KG	3	2016	200
20901	155	1927	857	64	Rice (imported)	26	XOF	5	KG	3	2016	375
20902	155	1927	857	65	Sorghum	26	XOF	5	KG	3	2016	200
20903	155	1927	857	71	Rice (local)	26	XOF	5	KG	3	2016	400
20904	155	1927	857	73	Millet	26	XOF	5	KG	3	2016	200
20905	155	1927	857	203	Rice (paddy)	26	XOF	5	KG	3	2016	120
20906	155	1926	858	51	Maize	26	XOF	5	KG	3	2016	175
20907	155	1926	858	64	Rice (imported)	26	XOF	5	KG	3	2016	375
20908	155	1926	858	65	Sorghum	26	XOF	5	KG	3	2016	180
20909	155	1926	858	71	Rice (local)	26	XOF	5	KG	3	2016	375
20910	155	1926	858	73	Millet	26	XOF	5	KG	3	2016	200
20911	155	1928	859	51	Maize	26	XOF	5	KG	3	2016	130
20912	155	1928	859	64	Rice (imported)	26	XOF	5	KG	3	2016	325
20913	155	1928	859	65	Sorghum	26	XOF	5	KG	3	2016	140
20914	155	1928	859	71	Rice (local)	26	XOF	5	KG	5	2011	400
20915	155	1928	859	73	Millet	26	XOF	5	KG	9	2014	275
20916	155	1931	860	51	Maize	26	XOF	5	KG	3	2016	150
20917	155	1931	860	64	Rice (imported)	26	XOF	5	KG	3	2016	355
20918	155	1931	860	65	Sorghum	26	XOF	5	KG	3	2016	150
20919	155	1931	860	71	Rice (local)	26	XOF	5	KG	3	2016	350
20920	155	1931	860	73	Millet	26	XOF	5	KG	3	2016	160
20921	155	1931	861	64	Rice (imported)	26	XOF	5	KG	3	2016	375
20922	155	1931	861	71	Rice (local)	26	XOF	5	KG	2	2015	350
20923	155	1931	861	73	Millet	26	XOF	5	KG	3	2016	160
20924	155	1932	862	51	Maize	26	XOF	5	KG	3	2016	120
20925	155	1932	862	64	Rice (imported)	26	XOF	5	KG	12	2015	315
20926	155	1932	862	65	Sorghum	26	XOF	5	KG	3	2016	130
20927	155	1932	862	71	Rice (local)	26	XOF	5	KG	3	2016	323
20928	155	1932	862	73	Millet	26	XOF	5	KG	3	2016	146
20929	155	1933	863	51	Maize	26	XOF	5	KG	3	2016	150
20930	155	1933	863	64	Rice (imported)	26	XOF	5	KG	3	2016	463
20931	155	1933	863	65	Sorghum	26	XOF	5	KG	3	2016	169
20932	155	1933	863	71	Rice (local)	26	XOF	5	KG	3	2016	400
20933	155	1933	863	73	Millet	26	XOF	5	KG	3	2016	200
20934	155	1932	864	51	Maize	26	XOF	5	KG	3	2016	150
20935	155	1932	864	65	Sorghum	26	XOF	5	KG	3	2016	129
20936	155	1932	864	71	Rice (local)	26	XOF	5	KG	3	2016	300
20937	155	1932	864	73	Millet	26	XOF	5	KG	3	2016	129
20938	155	1931	865	64	Rice (imported)	26	XOF	5	KG	3	2016	375
20939	155	1931	865	65	Sorghum	26	XOF	5	KG	12	2014	130
20940	155	1931	865	73	Millet	26	XOF	5	KG	3	2016	153
20941	155	1931	865	203	Rice (paddy)	26	XOF	5	KG	10	2011	155
20942	155	1926	866	51	Maize	26	XOF	5	KG	3	2016	175
20943	155	1926	866	64	Rice (imported)	26	XOF	5	KG	3	2016	360
20944	155	1926	866	65	Sorghum	26	XOF	5	KG	3	2016	175
20945	155	1926	866	71	Rice (local)	26	XOF	5	KG	3	2016	375
20946	155	1926	866	73	Millet	26	XOF	5	KG	3	2016	200
20947	155	1928	867	51	Maize	26	XOF	5	KG	3	2016	165
20948	155	1928	867	64	Rice (imported)	26	XOF	5	KG	3	2016	350
20949	155	1928	867	65	Sorghum	26	XOF	5	KG	3	2016	115
20950	155	1928	867	71	Rice (local)	26	XOF	5	KG	3	2016	400
20951	155	1928	867	73	Millet	26	XOF	5	KG	3	2016	143
20952	155	1930	868	51	Maize	26	XOF	5	KG	3	2016	125
20953	155	1930	868	64	Rice (imported)	26	XOF	5	KG	3	2016	350
20954	155	1930	868	65	Sorghum	26	XOF	5	KG	3	2016	138
20955	155	1930	868	71	Rice (local)	26	XOF	5	KG	3	2016	369
20956	155	1930	868	73	Millet	26	XOF	5	KG	3	2016	175
20957	155	1932	869	51	Maize	26	XOF	5	KG	3	2016	150
20958	155	1932	869	65	Sorghum	26	XOF	5	KG	3	2016	150
20959	155	1932	869	71	Rice (local)	26	XOF	5	KG	3	2016	300
20960	155	1932	869	73	Millet	26	XOF	5	KG	3	2016	150
20961	155	1934	870	51	Maize	26	XOF	5	KG	3	2016	225
20962	155	1934	870	65	Sorghum	26	XOF	5	KG	3	2016	245
20963	155	1934	870	71	Rice (local)	26	XOF	5	KG	3	2016	290
20964	155	1934	870	73	Millet	26	XOF	5	KG	3	2016	250
20965	155	1934	870	203	Rice (paddy)	26	XOF	5	KG	3	2016	179
20966	155	1931	871	51	Maize	26	XOF	5	KG	3	2016	150
20967	155	1931	871	64	Rice (imported)	26	XOF	5	KG	2	2016	340
20968	155	1931	871	65	Sorghum	26	XOF	5	KG	3	2016	140
20969	155	1931	871	71	Rice (local)	26	XOF	5	KG	3	2016	309
20970	155	1931	871	73	Millet	26	XOF	5	KG	3	2016	141
20971	155	1926	872	51	Maize	26	XOF	5	KG	3	2016	175
20972	155	1926	872	64	Rice (imported)	26	XOF	5	KG	3	2016	350
20973	155	1926	872	65	Sorghum	26	XOF	5	KG	3	2016	200
20974	155	1926	872	71	Rice (local)	26	XOF	5	KG	3	2016	375
20975	155	1926	872	73	Millet	26	XOF	5	KG	3	2016	225
20976	155	1932	873	51	Maize	26	XOF	5	KG	3	2016	150
20977	155	1932	873	64	Rice (imported)	26	XOF	5	KG	9	2015	352
20978	155	1932	873	65	Sorghum	26	XOF	5	KG	3	2016	150
20979	155	1932	873	71	Rice (local)	26	XOF	5	KG	3	2016	294
20980	155	1932	873	73	Millet	26	XOF	5	KG	3	2016	150
20981	155	1932	874	51	Maize	26	XOF	5	KG	3	2016	120
20982	155	1932	874	64	Rice (imported)	26	XOF	5	KG	1	2016	300
20983	155	1932	874	65	Sorghum	26	XOF	5	KG	3	2016	130
20984	155	1932	874	71	Rice (local)	26	XOF	5	KG	3	2016	323
20985	155	1932	874	73	Millet	26	XOF	5	KG	3	2016	145
20986	155	1926	875	51	Maize	26	XOF	5	KG	3	2016	175
20987	155	1926	875	64	Rice (imported)	26	XOF	5	KG	3	2016	350
20988	155	1926	875	65	Sorghum	26	XOF	5	KG	3	2016	200
20989	155	1926	875	71	Rice (local)	26	XOF	5	KG	3	2016	375
20990	155	1926	875	73	Millet	26	XOF	5	KG	3	2016	200
20991	155	1930	876	51	Maize	26	XOF	5	KG	3	2016	175
20992	155	1930	876	64	Rice (imported)	26	XOF	5	KG	3	2016	350
20993	155	1930	876	65	Sorghum	26	XOF	5	KG	3	2016	200
20994	155	1930	876	71	Rice (local)	26	XOF	5	KG	3	2016	375
20995	155	1930	876	73	Millet	26	XOF	5	KG	3	2016	200
20996	155	1930	877	51	Maize	26	XOF	5	KG	3	2016	140
20997	155	1930	877	64	Rice (imported)	26	XOF	5	KG	3	2016	375
20998	155	1930	877	65	Sorghum	26	XOF	5	KG	3	2016	150
20999	155	1930	877	71	Rice (local)	26	XOF	5	KG	3	2016	350
21000	155	1930	877	73	Millet	26	XOF	5	KG	3	2016	175
21001	155	1932	878	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21002	155	1932	878	65	Sorghum	26	XOF	5	KG	3	2016	110
21003	155	1932	878	71	Rice (local)	26	XOF	5	KG	3	2016	333
21004	155	1932	878	73	Millet	26	XOF	5	KG	3	2016	115
21005	155	1928	879	51	Maize	26	XOF	5	KG	3	2016	156
21006	155	1928	879	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21007	155	1928	879	65	Sorghum	26	XOF	5	KG	3	2016	164
21008	155	1928	879	71	Rice (local)	26	XOF	5	KG	10	2015	500
21009	155	1928	879	73	Millet	26	XOF	5	KG	3	2016	196
21010	155	1928	880	51	Maize	26	XOF	5	KG	3	2016	188
21011	155	1928	880	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21012	155	1928	880	65	Sorghum	26	XOF	5	KG	3	2016	188
21013	155	1928	880	73	Millet	26	XOF	5	KG	3	2016	219
21014	155	1928	881	51	Maize	26	XOF	5	KG	3	2016	131
21015	155	1928	881	64	Rice (imported)	26	XOF	5	KG	3	2016	325
21016	155	1928	881	65	Sorghum	26	XOF	5	KG	3	2016	149
21017	155	1928	881	71	Rice (local)	26	XOF	5	KG	3	2016	400
21018	155	1928	881	73	Millet	26	XOF	5	KG	3	2016	158
21019	155	1930	882	51	Maize	26	XOF	5	KG	3	2016	175
21020	155	1930	882	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21021	155	1930	882	65	Sorghum	26	XOF	5	KG	3	2016	175
21022	155	1930	882	71	Rice (local)	26	XOF	5	KG	3	2016	375
21023	155	1930	882	73	Millet	26	XOF	5	KG	3	2016	200
21024	155	1931	883	64	Rice (imported)	26	XOF	5	KG	3	2016	375
21025	155	1931	883	65	Sorghum	26	XOF	5	KG	10	2015	135
21026	155	1931	883	73	Millet	26	XOF	5	KG	3	2016	153
21027	155	1931	883	203	Rice (paddy)	26	XOF	5	KG	10	2011	154
21028	155	1933	884	51	Maize	26	XOF	5	KG	3	2016	125
21029	155	1933	884	64	Rice (imported)	26	XOF	5	KG	3	2016	400
21030	155	1933	884	65	Sorghum	26	XOF	5	KG	3	2016	125
21031	155	1933	884	71	Rice (local)	26	XOF	5	KG	3	2016	375
21032	155	1933	884	73	Millet	26	XOF	5	KG	3	2016	150
21033	155	1933	885	51	Maize	26	XOF	5	KG	3	2016	141
21034	155	1933	885	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21035	155	1933	885	65	Sorghum	26	XOF	5	KG	3	2016	150
21036	155	1933	885	71	Rice (local)	26	XOF	5	KG	3	2016	325
21037	155	1933	885	73	Millet	26	XOF	5	KG	3	2016	175
21038	155	1933	886	51	Maize	26	XOF	5	KG	3	2016	144
21039	155	1933	886	64	Rice (imported)	26	XOF	5	KG	3	2016	500
21040	155	1933	886	65	Sorghum	26	XOF	5	KG	3	2016	150
21041	155	1933	886	71	Rice (local)	26	XOF	5	KG	3	2016	350
21042	155	1933	886	73	Millet	26	XOF	5	KG	3	2016	175
21043	155	1926	887	51	Maize	26	XOF	5	KG	3	2016	175
21044	155	1926	887	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21045	155	1926	887	65	Sorghum	26	XOF	5	KG	3	2016	200
21046	155	1926	887	71	Rice (local)	26	XOF	5	KG	3	2016	375
21047	155	1926	887	73	Millet	26	XOF	5	KG	3	2016	225
21048	155	1934	888	51	Maize	26	XOF	5	KG	10	2011	130
21049	155	1934	888	65	Sorghum	26	XOF	5	KG	10	2011	170
21050	155	1934	888	71	Rice (local)	26	XOF	5	KG	10	2011	366.879999999999995
21051	155	1934	888	73	Millet	26	XOF	5	KG	10	2011	170
21052	155	1934	888	203	Rice (paddy)	26	XOF	5	KG	10	2011	200
21053	155	1933	889	51	Maize	26	XOF	5	KG	3	2016	123
21054	155	1933	889	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21055	155	1933	889	65	Sorghum	26	XOF	5	KG	3	2016	150
21056	155	1933	889	71	Rice (local)	26	XOF	5	KG	3	2016	329
21057	155	1933	889	73	Millet	26	XOF	5	KG	3	2016	226
21058	155	1926	890	51	Maize	26	XOF	5	KG	3	2016	175
21059	155	1926	890	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21060	155	1926	890	65	Sorghum	26	XOF	5	KG	3	2016	175
21061	155	1926	890	71	Rice (local)	26	XOF	5	KG	3	2016	375
21062	155	1926	890	73	Millet	26	XOF	5	KG	3	2016	200
21063	155	1926	891	51	Maize	26	XOF	5	KG	3	2016	185
21064	155	1926	891	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21065	155	1926	891	65	Sorghum	26	XOF	5	KG	3	2016	200
21066	155	1926	891	71	Rice (local)	26	XOF	5	KG	3	2016	375
21067	155	1926	891	73	Millet	26	XOF	5	KG	3	2016	200
21068	155	1932	892	65	Sorghum	26	XOF	5	KG	3	2016	105
21069	155	1932	892	71	Rice (local)	26	XOF	5	KG	3	2016	335
21070	155	1932	892	73	Millet	26	XOF	5	KG	3	2016	105
21071	155	1932	892	203	Rice (paddy)	26	XOF	5	KG	3	2016	173
21072	155	1931	893	51	Maize	26	XOF	5	KG	3	2016	181
21073	155	1931	893	64	Rice (imported)	26	XOF	5	KG	3	2016	344
21074	155	1931	893	65	Sorghum	26	XOF	5	KG	3	2016	189
21075	155	1931	893	71	Rice (local)	26	XOF	5	KG	3	2016	326
21076	155	1931	893	73	Millet	26	XOF	5	KG	3	2016	189
21077	155	1933	894	51	Maize	26	XOF	5	KG	3	2016	125
21078	155	1933	894	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21079	155	1933	894	65	Sorghum	26	XOF	5	KG	3	2016	125
21080	155	1933	894	71	Rice (local)	26	XOF	5	KG	3	2016	325
21081	155	1933	894	73	Millet	26	XOF	5	KG	3	2016	150
21082	155	1933	894	203	Rice (paddy)	26	XOF	5	KG	10	2011	167
21083	155	1930	895	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21084	155	1930	895	65	Sorghum	26	XOF	5	KG	3	2016	200
21085	155	1930	895	71	Rice (local)	26	XOF	5	KG	3	2016	350
21086	155	1930	895	73	Millet	26	XOF	5	KG	3	2016	192
21087	155	1926	896	51	Maize	26	XOF	5	KG	3	2016	175
21088	155	1926	896	64	Rice (imported)	26	XOF	5	KG	3	2016	365
21089	155	1926	896	65	Sorghum	26	XOF	5	KG	3	2016	175
21090	155	1926	896	71	Rice (local)	26	XOF	5	KG	3	2016	375
21091	155	1926	896	73	Millet	26	XOF	5	KG	3	2016	200
21092	155	1932	897	51	Maize	26	XOF	5	KG	3	2016	140
21093	155	1932	897	64	Rice (imported)	26	XOF	5	KG	10	2015	350
21094	155	1932	897	65	Sorghum	26	XOF	5	KG	3	2016	145
21095	155	1932	897	71	Rice (local)	26	XOF	5	KG	3	2016	325
21096	155	1932	897	73	Millet	26	XOF	5	KG	3	2016	140
21097	155	1928	898	51	Maize	26	XOF	5	KG	3	2016	200
21098	155	1928	898	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21099	155	1928	898	65	Sorghum	26	XOF	5	KG	3	2016	200
21100	155	1928	898	71	Rice (local)	26	XOF	5	KG	3	2016	400
21101	155	1928	898	73	Millet	26	XOF	5	KG	3	2016	280
21102	155	1926	899	51	Maize	26	XOF	5	KG	3	2016	180
21103	155	1926	899	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21104	155	1926	899	65	Sorghum	26	XOF	5	KG	3	2016	200
21105	155	1926	899	71	Rice (local)	26	XOF	5	KG	3	2016	375
21106	155	1926	899	73	Millet	26	XOF	5	KG	3	2016	200
21107	155	1932	900	51	Maize	26	XOF	5	KG	3	2016	150
21108	155	1932	900	64	Rice (imported)	26	XOF	5	KG	3	2016	325
21109	155	1932	900	65	Sorghum	26	XOF	5	KG	3	2016	150
21110	155	1932	900	71	Rice (local)	26	XOF	5	KG	3	2016	338
21111	155	1932	900	73	Millet	26	XOF	5	KG	3	2016	175
21112	155	1932	900	203	Rice (paddy)	26	XOF	5	KG	3	2016	150
21113	155	1933	901	51	Maize	26	XOF	5	KG	3	2016	150
21114	155	1933	901	64	Rice (imported)	26	XOF	5	KG	3	2010	290
21115	155	1933	901	65	Sorghum	26	XOF	5	KG	3	2016	150
21116	155	1933	901	71	Rice (local)	26	XOF	5	KG	3	2016	325
21117	155	1933	901	73	Millet	26	XOF	5	KG	3	2016	150
21118	155	1932	902	51	Maize	26	XOF	5	KG	3	2016	150
21119	155	1932	902	65	Sorghum	26	XOF	5	KG	3	2016	144
21120	155	1932	902	71	Rice (local)	26	XOF	5	KG	3	2016	325
21121	155	1932	902	73	Millet	26	XOF	5	KG	3	2016	150
21122	155	1932	903	51	Maize	26	XOF	5	KG	3	2016	150
21123	155	1932	903	64	Rice (imported)	26	XOF	5	KG	9	2015	350
21124	155	1932	903	65	Sorghum	26	XOF	5	KG	3	2016	145
21125	155	1932	903	71	Rice (local)	26	XOF	5	KG	3	2016	306
21126	155	1932	903	73	Millet	26	XOF	5	KG	3	2016	140
21127	155	1933	904	51	Maize	26	XOF	5	KG	3	2016	125
21128	155	1933	904	64	Rice (imported)	26	XOF	5	KG	3	2016	371
21129	155	1933	904	65	Sorghum	26	XOF	5	KG	3	2016	170
21130	155	1933	904	71	Rice (local)	26	XOF	5	KG	3	2016	338
21131	155	1933	904	73	Millet	26	XOF	5	KG	3	2016	200
21132	155	1930	905	51	Maize	26	XOF	5	KG	12	2015	120
21133	155	1930	905	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21134	155	1930	905	65	Sorghum	26	XOF	5	KG	3	2016	135
21135	155	1930	905	71	Rice (local)	26	XOF	5	KG	3	2016	375
21136	155	1930	905	73	Millet	26	XOF	5	KG	3	2016	135
21137	155	1926	906	51	Maize	26	XOF	5	KG	3	2016	175
21138	155	1926	906	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21139	155	1926	906	65	Sorghum	26	XOF	5	KG	3	2016	200
21140	155	1926	906	71	Rice (local)	26	XOF	5	KG	3	2016	375
21141	155	1926	906	73	Millet	26	XOF	5	KG	3	2016	200
21142	155	1932	907	64	Rice (imported)	26	XOF	5	KG	9	2015	353
21143	155	1932	907	65	Sorghum	26	XOF	5	KG	3	2016	150
21144	155	1932	907	71	Rice (local)	26	XOF	5	KG	3	2016	295
21145	155	1932	907	73	Millet	26	XOF	5	KG	3	2016	150
21146	155	1934	908	51	Maize	26	XOF	5	KG	3	2016	213
21147	155	1934	908	65	Sorghum	26	XOF	5	KG	3	2016	243
21148	155	1934	908	71	Rice (local)	26	XOF	5	KG	3	2016	338
21149	155	1934	908	73	Millet	26	XOF	5	KG	3	2016	248
21150	155	1934	908	203	Rice (paddy)	26	XOF	5	KG	3	2016	186
21151	155	1932	909	51	Maize	26	XOF	5	KG	3	2016	125
21152	155	1932	909	64	Rice (imported)	26	XOF	5	KG	11	2015	350
21153	155	1932	909	65	Sorghum	26	XOF	5	KG	3	2016	130
21154	155	1932	909	71	Rice (local)	26	XOF	5	KG	3	2016	323
21155	155	1932	909	73	Millet	26	XOF	5	KG	3	2016	144
21156	155	1933	910	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21157	155	1933	910	71	Rice (local)	26	XOF	5	KG	3	2016	331
21158	155	1932	911	51	Maize	26	XOF	5	KG	3	2016	200
21159	155	1932	911	64	Rice (imported)	26	XOF	5	KG	3	2016	200
21160	155	1932	911	65	Sorghum	26	XOF	5	KG	3	2016	125
21161	155	1932	911	71	Rice (local)	26	XOF	5	KG	3	2016	288
21162	155	1932	911	73	Millet	26	XOF	5	KG	3	2016	125
21163	155	1932	911	203	Rice (paddy)	26	XOF	5	KG	3	2016	164
21164	155	1930	1682	51	Maize	26	XOF	5	KG	3	2016	175
21165	155	1930	1682	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21166	155	1930	1682	65	Sorghum	26	XOF	5	KG	3	2016	188
21167	155	1930	1682	71	Rice (local)	26	XOF	5	KG	3	2016	375
21168	155	1930	1682	73	Millet	26	XOF	5	KG	3	2016	200
21169	155	1930	1812	51	Maize	26	XOF	5	KG	3	2016	200
21170	155	1930	1812	64	Rice (imported)	26	XOF	5	KG	3	2016	400
21171	155	1930	1812	65	Sorghum	26	XOF	5	KG	3	2016	200
21172	155	1930	1812	71	Rice (local)	26	XOF	5	KG	3	2016	425
21173	155	1930	1812	73	Millet	26	XOF	5	KG	3	2016	200
21174	155	1930	1813	51	Maize	26	XOF	5	KG	3	2016	175
21175	155	1930	1813	64	Rice (imported)	26	XOF	5	KG	3	2016	375
21176	155	1930	1813	65	Sorghum	26	XOF	5	KG	3	2016	175
21177	155	1930	1813	71	Rice (local)	26	XOF	5	KG	3	2016	400
21178	155	1930	1813	73	Millet	26	XOF	5	KG	3	2016	200
21179	155	1930	1814	51	Maize	26	XOF	5	KG	3	2016	150
21180	155	1930	1814	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21181	155	1930	1814	65	Sorghum	26	XOF	5	KG	3	2016	150
21182	155	1930	1814	71	Rice (local)	26	XOF	5	KG	3	2016	400
21183	155	1930	1814	73	Millet	26	XOF	5	KG	3	2016	175
21184	155	1933	1815	51	Maize	26	XOF	5	KG	3	2016	118
21185	155	1933	1815	64	Rice (imported)	26	XOF	5	KG	3	2016	400
21186	155	1933	1815	65	Sorghum	26	XOF	5	KG	3	2016	235
21187	155	1933	1815	71	Rice (local)	26	XOF	5	KG	3	2016	400
21188	155	1933	1815	73	Millet	26	XOF	5	KG	3	2016	235
21189	155	1933	1816	51	Maize	26	XOF	5	KG	3	2016	144
21190	155	1933	1816	64	Rice (imported)	26	XOF	5	KG	3	2016	375
21191	155	1933	1816	65	Sorghum	26	XOF	5	KG	3	2016	150
21192	155	1933	1816	71	Rice (local)	26	XOF	5	KG	3	2016	363
21193	155	1933	1816	73	Millet	26	XOF	5	KG	3	2016	175
21194	155	1931	1817	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21195	155	1931	1817	71	Rice (local)	26	XOF	5	KG	5	2015	400
21196	155	1931	1817	73	Millet	26	XOF	5	KG	3	2016	155
21197	155	1932	1818	65	Sorghum	26	XOF	5	KG	3	2016	175
21198	155	1932	1818	71	Rice (local)	26	XOF	5	KG	3	2016	284
21199	155	1932	1818	73	Millet	26	XOF	5	KG	3	2016	175
21200	155	1933	1819	51	Maize	26	XOF	5	KG	3	2016	111
21201	155	1933	1819	64	Rice (imported)	26	XOF	5	KG	3	2016	350
21202	155	1933	1819	65	Sorghum	26	XOF	5	KG	3	2016	125
21203	155	1933	1819	71	Rice (local)	26	XOF	5	KG	3	2016	345
21204	155	1933	1819	73	Millet	26	XOF	5	KG	3	2016	145
21205	159	2006	689	64	Rice (imported)	64	MRO	5	KG	2	2016	212.5
21206	159	2006	689	71	Rice (local)	64	MRO	5	KG	2	2016	190
21207	159	2006	689	84	Wheat	64	MRO	5	KG	2	2016	125
21208	159	2006	689	96	Oil (vegetable)	64	MRO	15	L	2	2016	350
21209	159	2006	689	97	Sugar	64	MRO	5	KG	2	2016	200
21210	159	2006	689	200	Sorghum (taghalit)	64	MRO	5	KG	2	2016	250
21211	159	2006	690	64	Rice (imported)	64	MRO	5	KG	2	2016	270
21212	159	2006	690	71	Rice (local)	64	MRO	5	KG	2	2016	245
21213	159	2006	690	84	Wheat	64	MRO	5	KG	2	2016	147.5
21214	159	2006	690	96	Oil (vegetable)	64	MRO	15	L	2	2016	500
21215	159	2006	690	97	Sugar	64	MRO	5	KG	2	2016	200
21216	159	2006	690	200	Sorghum (taghalit)	64	MRO	5	KG	2	2016	200
21217	159	2016	691	64	Rice (imported)	64	MRO	5	KG	11	2011	230
21218	159	2016	691	71	Rice (local)	64	MRO	5	KG	11	2011	190
21219	159	2016	691	84	Wheat	64	MRO	5	KG	11	2011	165
21220	159	2016	691	96	Oil (vegetable)	64	MRO	15	L	11	2011	465
21221	159	2016	691	97	Sugar	64	MRO	5	KG	11	2011	272
21222	159	2014	692	64	Rice (imported)	64	MRO	5	KG	10	2015	280
21223	159	2014	692	71	Rice (local)	64	MRO	5	KG	8	2015	220
21224	159	2014	692	84	Wheat	64	MRO	5	KG	10	2015	150
21225	159	2014	692	96	Oil (vegetable)	64	MRO	15	L	10	2015	500
21226	159	2014	692	97	Sugar	64	MRO	5	KG	10	2015	200
21227	159	2014	692	200	Sorghum (taghalit)	64	MRO	5	KG	10	2015	400
21228	159	2013	693	64	Rice (imported)	64	MRO	5	KG	2	2016	300
21229	159	2013	693	71	Rice (local)	64	MRO	5	KG	2	2016	280
21230	159	2013	693	84	Wheat	64	MRO	5	KG	2	2016	100
21231	159	2013	693	96	Oil (vegetable)	64	MRO	15	L	2	2016	450
21232	159	2013	693	97	Sugar	64	MRO	5	KG	2	2016	200
21233	159	2013	693	200	Sorghum (taghalit)	64	MRO	5	KG	2	2016	300
21234	159	2008	694	64	Rice (imported)	64	MRO	5	KG	2	2016	200
21235	159	2008	694	71	Rice (local)	64	MRO	5	KG	7	2015	200
21236	159	2008	694	84	Wheat	64	MRO	5	KG	4	2014	180
21237	159	2008	694	96	Oil (vegetable)	64	MRO	15	L	2	2016	400
21238	159	2008	694	97	Sugar	64	MRO	5	KG	2	2016	200
21239	159	2008	694	200	Sorghum (taghalit)	64	MRO	5	KG	1	2016	200
21240	159	2010	695	64	Rice (imported)	64	MRO	5	KG	2	2016	380
21241	159	2010	695	71	Rice (local)	64	MRO	5	KG	2	2016	280
21242	159	2010	695	84	Wheat	64	MRO	5	KG	2	2016	185
21243	159	2010	695	96	Oil (vegetable)	64	MRO	15	L	2	2016	500
21244	159	2010	695	97	Sugar	64	MRO	5	KG	2	2016	242.5
21245	159	2010	695	200	Sorghum (taghalit)	64	MRO	5	KG	2	2016	120
21246	159	2004	696	64	Rice (imported)	64	MRO	5	KG	2	2016	400
21247	159	2004	696	71	Rice (local)	64	MRO	5	KG	2	2016	210
21248	159	2004	696	84	Wheat	64	MRO	5	KG	2	2016	120
21249	159	2004	696	96	Oil (vegetable)	64	MRO	15	L	2	2016	500
21250	159	2004	696	97	Sugar	64	MRO	5	KG	2	2016	215
21251	159	2004	696	200	Sorghum (taghalit)	64	MRO	5	KG	2	2016	300
21252	159	2005	1357	64	Rice (imported)	64	MRO	5	KG	2	2016	330
21253	159	2005	1357	71	Rice (local)	64	MRO	5	KG	2	2016	227
21254	159	2005	1357	84	Wheat	64	MRO	5	KG	2	2016	152.5
21255	159	2005	1357	96	Oil (vegetable)	64	MRO	15	L	2	2016	400
21256	159	2005	1357	97	Sugar	64	MRO	5	KG	2	2016	200
21257	159	2005	1357	200	Sorghum (taghalit)	64	MRO	5	KG	2	2016	150
21258	159	2011	1396	64	Rice (imported)	64	MRO	5	KG	2	2016	331.689999999999998
21259	159	2011	1396	71	Rice (local)	64	MRO	5	KG	12	2015	280
21260	159	2011	1396	84	Wheat	64	MRO	5	KG	2	2016	140.414999999999992
21261	159	2011	1396	96	Oil (vegetable)	64	MRO	15	L	2	2016	500
21262	159	2011	1396	97	Sugar	64	MRO	5	KG	2	2016	208
21263	159	2011	1396	200	Sorghum (taghalit)	64	MRO	5	KG	2	2016	300
21264	159	2005	1614	64	Rice (imported)	64	MRO	5	KG	2	2016	293
21265	159	2005	1614	71	Rice (local)	64	MRO	5	KG	2	2016	250
21266	159	2005	1614	84	Wheat	64	MRO	5	KG	2	2016	118.332999999999998
21267	159	2005	1614	96	Oil (vegetable)	64	MRO	15	L	2	2016	483.333000000000027
21268	159	2005	1614	97	Sugar	64	MRO	5	KG	2	2016	210
21269	159	2005	1614	200	Sorghum (taghalit)	64	MRO	5	KG	2	2016	163
21270	159	2009	1615	64	Rice (imported)	64	MRO	5	KG	11	2014	258
21271	159	2009	1615	71	Rice (local)	64	MRO	5	KG	11	2014	193
21272	159	2009	1615	96	Oil (vegetable)	64	MRO	15	L	11	2014	467
21273	159	2009	1615	97	Sugar	64	MRO	5	KG	11	2014	267
21274	159	2008	1618	64	Rice (imported)	64	MRO	5	KG	11	2014	250
21275	159	2008	1618	71	Rice (local)	64	MRO	5	KG	11	2014	213
21276	159	2008	1618	84	Wheat	64	MRO	5	KG	11	2014	142
21277	159	2008	1618	96	Oil (vegetable)	64	MRO	15	L	11	2014	470
21278	159	2008	1618	97	Sugar	64	MRO	5	KG	11	2014	220
21279	159	2008	1618	200	Sorghum (taghalit)	64	MRO	5	KG	11	2014	207
21280	159	2008	1619	64	Rice (imported)	64	MRO	5	KG	11	2014	240
21281	159	2008	1619	71	Rice (local)	64	MRO	5	KG	11	2014	200
21282	159	2008	1619	84	Wheat	64	MRO	5	KG	11	2014	175
21283	159	2008	1619	96	Oil (vegetable)	64	MRO	15	L	11	2014	480
21284	159	2008	1619	97	Sugar	64	MRO	5	KG	11	2014	250
21365	170	2120	318	67	Maize (white)	51	MZN	5	KG	2	2016	21.8182000000000009
21285	159	2008	1619	200	Sorghum (taghalit)	64	MRO	5	KG	11	2014	187
21286	159	2006	1620	64	Rice (imported)	64	MRO	5	KG	2	2016	200
21287	159	2006	1620	96	Oil (vegetable)	64	MRO	15	L	2	2016	390
21288	159	2006	1620	97	Sugar	64	MRO	5	KG	2	2016	200
21289	159	2006	1620	200	Sorghum (taghalit)	64	MRO	5	KG	11	2014	200
21290	159	2008	1621	64	Rice (imported)	64	MRO	5	KG	11	2014	202
21291	159	2008	1621	71	Rice (local)	64	MRO	5	KG	11	2014	179
21292	159	2008	1621	84	Wheat	64	MRO	5	KG	11	2014	125
21293	159	2008	1621	96	Oil (vegetable)	64	MRO	15	L	11	2014	491
21294	159	2008	1621	97	Sugar	64	MRO	5	KG	11	2014	235
21295	159	2008	1621	200	Sorghum (taghalit)	64	MRO	5	KG	11	2014	202
21296	159	2016	1623	64	Rice (imported)	64	MRO	5	KG	2	2016	331
21297	159	2016	1623	71	Rice (local)	64	MRO	5	KG	2	2016	230
21298	159	2016	1623	84	Wheat	64	MRO	5	KG	2	2016	150
21299	159	2016	1623	96	Oil (vegetable)	64	MRO	15	L	2	2016	500
21300	159	2016	1623	97	Sugar	64	MRO	5	KG	2	2016	300
21301	159	2007	1625	64	Rice (imported)	64	MRO	5	KG	11	2014	216.25
21302	159	2007	1625	84	Wheat	64	MRO	5	KG	11	2014	150
21303	159	2007	1625	96	Oil (vegetable)	64	MRO	15	L	11	2014	431.25
21304	159	2007	1625	97	Sugar	64	MRO	5	KG	11	2014	232.5
21305	159	2007	1625	200	Sorghum (taghalit)	64	MRO	5	KG	11	2014	357.5
21306	159	2004	1626	64	Rice (imported)	64	MRO	5	KG	2	2016	300
21307	159	2004	1626	84	Wheat	64	MRO	5	KG	2	2016	200
21308	159	2004	1626	96	Oil (vegetable)	64	MRO	15	L	2	2016	500
21309	159	2004	1626	97	Sugar	64	MRO	5	KG	2	2016	267
21310	159	2004	1626	200	Sorghum (taghalit)	64	MRO	5	KG	10	2014	500
21311	159	2009	1627	64	Rice (imported)	64	MRO	5	KG	2	2016	280
21312	159	2009	1627	71	Rice (local)	64	MRO	5	KG	2	2016	240
21313	159	2009	1627	84	Wheat	64	MRO	5	KG	2	2016	150
21314	159	2009	1627	96	Oil (vegetable)	64	MRO	15	L	2	2016	350
21315	159	2009	1627	97	Sugar	64	MRO	5	KG	2	2016	200
21316	159	2009	1627	200	Sorghum (taghalit)	64	MRO	5	KG	2	2016	134
21317	159	2011	1635	64	Rice (imported)	64	MRO	5	KG	2	2016	333
21318	159	2011	1635	71	Rice (local)	64	MRO	5	KG	2	2016	210
21319	159	2011	1635	96	Oil (vegetable)	64	MRO	15	L	2	2016	500
21320	159	2011	1635	97	Sugar	64	MRO	5	KG	2	2016	205
21321	159	2010	1636	84	Wheat	64	MRO	5	KG	2	2016	145
21322	159	2010	1636	96	Oil (vegetable)	64	MRO	15	L	2	2016	416.666999999999973
21323	159	2010	1636	97	Sugar	64	MRO	5	KG	2	2016	223
21324	159	2009	1637	64	Rice (imported)	64	MRO	5	KG	11	2014	200
21325	159	2009	1637	71	Rice (local)	64	MRO	5	KG	11	2014	180
21326	159	2009	1637	96	Oil (vegetable)	64	MRO	15	L	11	2014	500
21327	159	2009	1637	97	Sugar	64	MRO	5	KG	11	2014	280
21328	159	2009	1637	200	Sorghum (taghalit)	64	MRO	5	KG	11	2014	187
21329	170	2120	316	64	Rice (imported)	51	MZN	5	KG	2	2016	37.5
21330	170	2120	316	67	Maize (white)	51	MZN	5	KG	2	2016	24.3810000000000002
21331	170	2120	316	71	Rice (local)	51	MZN	5	KG	2	2016	37.25
21332	170	2120	316	78	Beans (red)	51	MZN	5	KG	5	2015	38.75
21333	170	2120	316	179	Wheat flour (local)	51	MZN	5	KG	2	2016	58.3333000000000013
21334	170	2120	316	218	Cowpeas	51	MZN	5	KG	2	2016	60
21335	170	2120	316	221	Maize meal (white, first grade)	51	MZN	5	KG	2	2016	60
21336	170	2120	316	222	Oil (vegetable, local)	51	MZN	15	L	2	2016	78.3332999999999942
21337	170	2120	316	223	Sugar (brown, imported)	51	MZN	5	KG	12	2015	38.6666999999999987
21338	170	2120	316	224	Sugar (brown, local)	51	MZN	5	KG	2	2016	50
21339	170	2120	316	262	Beans (dry)	51	MZN	5	KG	5	2015	60
21340	170	2120	316	355	Groundnuts (Mix)	51	MZN	5	KG	10	2010	33.3299999999999983
21341	170	2120	316	418	Beans (butter)	51	MZN	5	KG	2	2016	70
21342	170	2120	316	419	Beans (magnum)	51	MZN	5	KG	7	2015	60
21343	170	2120	316	420	Groundnuts (large, shelled)	51	MZN	5	KG	2	2016	86.6667000000000058
21344	170	2120	316	421	Groundnuts (small, shelled)	51	MZN	5	KG	2	2016	86.6667000000000058
21345	170	2120	316	427	Beans (catarino)	51	MZN	5	KG	2	2016	70
21346	170	2120	316	431	Maize meal (white, without bran) 	51	MZN	5	KG	2	2016	43.3333000000000013
21347	170	2113	317	64	Rice (imported)	51	MZN	5	KG	2	2016	30
21348	170	2113	317	67	Maize (white)	51	MZN	5	KG	2	2016	32.0497000000000014
21349	170	2113	317	78	Beans (red)	51	MZN	5	KG	5	2015	50
21350	170	2113	317	179	Wheat flour (local)	51	MZN	5	KG	2	2016	50
21351	170	2113	317	218	Cowpeas	51	MZN	5	KG	2	2016	70
21352	170	2113	317	221	Maize meal (white, first grade)	51	MZN	5	KG	2	2016	40
21353	170	2113	317	222	Oil (vegetable, local)	51	MZN	15	L	2	2016	70
21354	170	2113	317	223	Sugar (brown, imported)	51	MZN	5	KG	10	2015	40
21355	170	2113	317	224	Sugar (brown, local)	51	MZN	5	KG	2	2016	50
21356	170	2113	317	262	Beans (dry)	51	MZN	5	KG	5	2015	50
21357	170	2113	317	355	Groundnuts (Mix)	51	MZN	5	KG	8	2010	16.1700000000000017
21358	170	2113	317	418	Beans (butter)	51	MZN	5	KG	2	2016	50
21359	170	2113	317	419	Beans (magnum)	51	MZN	5	KG	1	2016	50
21360	170	2113	317	420	Groundnuts (large, shelled)	51	MZN	5	KG	1	2014	70
21361	170	2113	317	421	Groundnuts (small, shelled)	51	MZN	5	KG	2	2016	70
21362	170	2113	317	427	Beans (catarino)	51	MZN	5	KG	2	2016	50
21363	170	2113	317	431	Maize meal (white, without bran) 	51	MZN	5	KG	2	2016	25
21364	170	2120	318	64	Rice (imported)	51	MZN	5	KG	2	2016	30
21366	170	2120	318	78	Beans (red)	51	MZN	5	KG	5	2015	49.4885999999999981
21367	170	2120	318	179	Wheat flour (local)	51	MZN	5	KG	2	2016	30
21368	170	2120	318	218	Cowpeas	51	MZN	5	KG	2	2016	112.721000000000004
21369	170	2120	318	221	Maize meal (white, first grade)	51	MZN	5	KG	2	2016	40
21370	170	2120	318	222	Oil (vegetable, local)	51	MZN	15	L	2	2016	60
21371	170	2120	318	223	Sugar (brown, imported)	51	MZN	5	KG	12	2015	40
21372	170	2120	318	224	Sugar (brown, local)	51	MZN	5	KG	2	2016	40
21373	170	2120	318	262	Beans (dry)	51	MZN	5	KG	5	2015	38.491100000000003
21374	170	2120	318	286	Maize meal (white, with bran)	51	MZN	5	KG	2	2016	26.4029999999999987
21375	170	2120	318	355	Groundnuts (Mix)	51	MZN	5	KG	4	2011	45.6599999999999966
21376	170	2120	318	418	Beans (butter)	51	MZN	5	KG	2	2016	88.0340999999999951
21377	170	2120	318	419	Beans (magnum)	51	MZN	5	KG	2	2016	92.3787999999999982
21378	170	2120	318	420	Groundnuts (large, shelled)	51	MZN	5	KG	2	2016	120.126000000000005
21379	170	2120	318	421	Groundnuts (small, shelled)	51	MZN	5	KG	2	2016	108.361999999999995
21380	170	2120	318	427	Beans (catarino)	51	MZN	5	KG	2	2016	88.0340999999999951
21381	170	2120	318	431	Maize meal (white, without bran) 	51	MZN	5	KG	2	2016	32
21382	170	2119	319	64	Rice (imported)	51	MZN	5	KG	5	2015	45
21383	170	2119	319	67	Maize (white)	51	MZN	5	KG	5	2015	8.42859999999999943
21384	170	2119	319	71	Rice (local)	51	MZN	5	KG	5	2015	40
21385	170	2119	319	78	Beans (red)	51	MZN	5	KG	5	2015	40
21386	170	2119	319	101	Oil (vegetable, imported)	51	MZN	15	L	5	2015	80
21387	170	2119	319	179	Wheat flour (local)	51	MZN	5	KG	5	2015	40
21388	170	2119	319	218	Cowpeas	51	MZN	5	KG	5	2015	25
21389	170	2119	319	221	Maize meal (white, first grade)	51	MZN	5	KG	5	2015	40
21390	170	2119	319	222	Oil (vegetable, local)	51	MZN	15	L	5	2015	50
21391	170	2119	319	224	Sugar (brown, local)	51	MZN	5	KG	5	2015	45
21392	170	2119	319	262	Beans (dry)	51	MZN	5	KG	5	2015	40
21393	170	2119	319	286	Maize meal (white, with bran)	51	MZN	5	KG	5	2015	25
21394	170	2119	319	355	Groundnuts (Mix)	51	MZN	5	KG	4	2011	66.7000000000000028
21395	170	2119	319	420	Groundnuts (large, shelled)	51	MZN	5	KG	5	2015	50
21396	170	2119	319	421	Groundnuts (small, shelled)	51	MZN	5	KG	5	2015	50
21397	170	2115	320	64	Rice (imported)	51	MZN	5	KG	2	2016	28
21398	170	2115	320	67	Maize (white)	51	MZN	5	KG	2	2016	21.6000000000000014
21399	170	2115	320	78	Beans (red)	51	MZN	5	KG	5	2015	50
21400	170	2115	320	101	Oil (vegetable, imported)	51	MZN	15	L	2	2016	97
21401	170	2115	320	179	Wheat flour (local)	51	MZN	5	KG	2	2016	33
21402	170	2115	320	218	Cowpeas	51	MZN	5	KG	11	2013	25.4258999999999986
21403	170	2115	320	221	Maize meal (white, first grade)	51	MZN	5	KG	2	2016	38
21404	170	2115	320	222	Oil (vegetable, local)	51	MZN	15	L	2	2016	78
21405	170	2115	320	223	Sugar (brown, imported)	51	MZN	5	KG	2	2016	35.7143000000000015
21406	170	2115	320	224	Sugar (brown, local)	51	MZN	5	KG	2	2016	43
21407	170	2115	320	262	Beans (dry)	51	MZN	5	KG	5	2015	50
21408	170	2115	320	286	Maize meal (white, with bran)	51	MZN	5	KG	2	2016	30
21409	170	2115	320	355	Groundnuts (Mix)	51	MZN	5	KG	4	2011	28.2399999999999984
21410	170	2115	320	418	Beans (butter)	51	MZN	5	KG	2	2016	50
21411	170	2115	320	419	Beans (magnum)	51	MZN	5	KG	2	2016	66.6667000000000058
21412	170	2115	320	420	Groundnuts (large, shelled)	51	MZN	5	KG	2	2016	70
21413	170	2115	320	421	Groundnuts (small, shelled)	51	MZN	5	KG	2	2016	62.5
21414	170	2115	320	427	Beans (catarino)	51	MZN	5	KG	2	2016	70
21415	170	2115	320	431	Maize meal (white, without bran) 	51	MZN	5	KG	2	2016	32
21416	170	2117	321	64	Rice (imported)	51	MZN	5	KG	2	2016	32
21417	170	2117	321	67	Maize (white)	51	MZN	5	KG	2	2016	37.3485000000000014
21418	170	2117	321	78	Beans (red)	51	MZN	5	KG	5	2015	47.0919000000000025
21419	170	2117	321	179	Wheat flour (local)	51	MZN	5	KG	2	2016	45.3333000000000013
21420	170	2117	321	218	Cowpeas	51	MZN	5	KG	2	2016	54.0277000000000029
21421	170	2117	321	221	Maize meal (white, first grade)	51	MZN	5	KG	2	2016	42.466700000000003
21422	170	2117	321	222	Oil (vegetable, local)	51	MZN	15	L	2	2016	60
21423	170	2117	321	223	Sugar (brown, imported)	51	MZN	5	KG	12	2015	35
21424	170	2117	321	224	Sugar (brown, local)	51	MZN	5	KG	2	2016	46
21425	170	2117	321	262	Beans (dry)	51	MZN	5	KG	5	2015	66.25
21426	170	2117	321	286	Maize meal (white, with bran)	51	MZN	5	KG	10	2015	22.1000000000000014
21427	170	2117	321	355	Groundnuts (Mix)	51	MZN	5	KG	4	2011	41.1799999999999997
21428	170	2117	321	418	Beans (butter)	51	MZN	5	KG	2	2016	90
21429	170	2117	321	420	Groundnuts (large, shelled)	51	MZN	5	KG	1	2016	62.1182999999999979
21430	170	2117	321	421	Groundnuts (small, shelled)	51	MZN	5	KG	1	2016	57.8402000000000029
21431	170	2117	321	427	Beans (catarino)	51	MZN	5	KG	2	2016	95.3332999999999942
21432	170	2117	321	431	Maize meal (white, without bran) 	51	MZN	5	KG	2	2016	29.1666999999999987
21433	170	2118	322	64	Rice (imported)	51	MZN	5	KG	12	2015	33.3333000000000013
21434	170	2118	322	67	Maize (white)	51	MZN	5	KG	12	2015	19.0475999999999992
21435	170	2118	322	74	Cassava flour	51	MZN	5	KG	12	2015	35
21436	170	2118	322	78	Beans (red)	51	MZN	5	KG	5	2015	50
21437	170	2118	322	179	Wheat flour (local)	51	MZN	5	KG	12	2015	29
21438	170	2118	322	218	Cowpeas	51	MZN	5	KG	12	2015	53.3333000000000013
21439	170	2118	322	221	Maize meal (white, first grade)	51	MZN	5	KG	12	2015	41.6666999999999987
21440	170	2118	322	222	Oil (vegetable, local)	51	MZN	15	L	12	2015	56.6666999999999987
21441	170	2118	322	223	Sugar (brown, imported)	51	MZN	5	KG	12	2015	40
21442	170	2118	322	224	Sugar (brown, local)	51	MZN	5	KG	5	2015	40
21443	170	2118	322	262	Beans (dry)	51	MZN	5	KG	5	2015	60
21444	170	2118	322	286	Maize meal (white, with bran)	51	MZN	5	KG	12	2015	29.5
21445	170	2118	322	355	Groundnuts (Mix)	51	MZN	5	KG	6	2010	19.1245000000000012
21446	170	2118	322	418	Beans (butter)	51	MZN	5	KG	12	2015	75
21447	170	2118	322	419	Beans (magnum)	51	MZN	5	KG	12	2015	76.6667000000000058
21448	170	2118	322	420	Groundnuts (large, shelled)	51	MZN	5	KG	12	2015	62
21449	170	2118	322	421	Groundnuts (small, shelled)	51	MZN	5	KG	12	2015	63.3333000000000013
21450	170	2118	322	427	Beans (catarino)	51	MZN	5	KG	12	2015	75
21451	170	2118	322	431	Maize meal (white, without bran) 	51	MZN	5	KG	12	2015	31.6666999999999987
21452	170	2112	323	64	Rice (imported)	51	MZN	5	KG	12	2015	40
21453	170	2112	323	67	Maize (white)	51	MZN	5	KG	12	2015	20.7791999999999994
21454	170	2112	323	71	Rice (local)	51	MZN	5	KG	12	2015	30
21455	170	2112	323	78	Beans (red)	51	MZN	5	KG	5	2015	40
21456	170	2112	323	101	Oil (vegetable, imported)	51	MZN	15	L	12	2015	80
21457	170	2112	323	179	Wheat flour (local)	51	MZN	5	KG	12	2015	30
21458	170	2112	323	218	Cowpeas	51	MZN	5	KG	12	2015	53.6769000000000034
21459	170	2112	323	221	Maize meal (white, first grade)	51	MZN	5	KG	5	2015	40
21460	170	2112	323	222	Oil (vegetable, local)	51	MZN	15	L	12	2015	70
21461	170	2112	323	223	Sugar (brown, imported)	51	MZN	5	KG	12	2015	40
21462	170	2112	323	224	Sugar (brown, local)	51	MZN	5	KG	5	2015	40
21463	170	2112	323	262	Beans (dry)	51	MZN	5	KG	5	2015	60
21464	170	2112	323	286	Maize meal (white, with bran)	51	MZN	5	KG	12	2015	68.4522999999999939
21465	170	2112	323	355	Groundnuts (Mix)	51	MZN	5	KG	4	2011	21.5599999999999987
21466	170	2112	323	420	Groundnuts (large, shelled)	51	MZN	5	KG	12	2015	57.4960000000000022
21467	170	2112	323	431	Maize meal (white, without bran) 	51	MZN	5	KG	5	2015	30
21468	170	2122	324	64	Rice (imported)	51	MZN	5	KG	5	2015	30
21469	170	2122	324	67	Maize (white)	51	MZN	5	KG	5	2015	7.25
21470	170	2122	324	71	Rice (local)	51	MZN	5	KG	5	2015	35
21471	170	2122	324	78	Beans (red)	51	MZN	5	KG	5	2015	45
21472	170	2122	324	218	Cowpeas	51	MZN	5	KG	5	2014	11
21473	170	2122	324	222	Oil (vegetable, local)	51	MZN	15	L	5	2015	80
21474	170	2122	324	224	Sugar (brown, local)	51	MZN	5	KG	5	2015	35
21475	170	2122	324	262	Beans (dry)	51	MZN	5	KG	5	2015	40
21476	170	2122	324	286	Maize meal (white, with bran)	51	MZN	5	KG	5	2015	10.25
21477	170	2122	324	355	Groundnuts (Mix)	51	MZN	5	KG	4	2011	40
21478	170	2122	324	420	Groundnuts (large, shelled)	51	MZN	5	KG	5	2015	40
21479	170	2122	325	64	Rice (imported)	51	MZN	5	KG	2	2016	32.3333000000000013
21480	170	2122	325	67	Maize (white)	51	MZN	5	KG	2	2016	20.5714000000000006
21481	170	2122	325	71	Rice (local)	51	MZN	5	KG	2	2016	33.3333000000000013
21482	170	2122	325	74	Cassava flour	51	MZN	5	KG	2	2016	11
21483	170	2122	325	78	Beans (red)	51	MZN	5	KG	5	2015	50
21484	170	2122	325	101	Oil (vegetable, imported)	51	MZN	15	L	1	2016	75
21485	170	2122	325	179	Wheat flour (local)	51	MZN	5	KG	2	2016	40.6666999999999987
21486	170	2122	325	218	Cowpeas	51	MZN	5	KG	2	2016	38.3333000000000013
21487	170	2122	325	221	Maize meal (white, first grade)	51	MZN	5	KG	2	2016	41.3333000000000013
21488	170	2122	325	222	Oil (vegetable, local)	51	MZN	15	L	2	2016	81.6667000000000058
21489	170	2122	325	223	Sugar (brown, imported)	51	MZN	5	KG	12	2015	45
21490	170	2122	325	224	Sugar (brown, local)	51	MZN	5	KG	2	2016	44
21491	170	2122	325	262	Beans (dry)	51	MZN	5	KG	5	2015	60
21492	170	2122	325	286	Maize meal (white, with bran)	51	MZN	5	KG	2	2016	21.6666999999999987
21493	170	2122	325	355	Groundnuts (Mix)	51	MZN	5	KG	4	2011	39.7999999999999972
21494	170	2122	325	418	Beans (butter)	51	MZN	5	KG	2	2016	70
21495	170	2122	325	419	Beans (magnum)	51	MZN	5	KG	1	2016	65
21496	170	2122	325	420	Groundnuts (large, shelled)	51	MZN	5	KG	2	2016	130
21497	170	2122	325	421	Groundnuts (small, shelled)	51	MZN	5	KG	2	2016	142.332999999999998
21498	170	2122	325	427	Beans (catarino)	51	MZN	5	KG	1	2016	60
21499	170	2122	325	431	Maize meal (white, without bran) 	51	MZN	5	KG	2	2016	32.3333000000000013
21500	170	2121	326	64	Rice (imported)	51	MZN	5	KG	2	2016	40
21501	170	2121	326	67	Maize (white)	51	MZN	5	KG	2	2016	17.2571000000000012
21502	170	2121	326	78	Beans (red)	51	MZN	5	KG	5	2015	25
21503	170	2121	326	101	Oil (vegetable, imported)	51	MZN	15	L	7	2015	75
21504	170	2121	326	179	Wheat flour (local)	51	MZN	5	KG	2	2016	44
21505	170	2121	326	218	Cowpeas	51	MZN	5	KG	9	2015	25
21506	170	2121	326	221	Maize meal (white, first grade)	51	MZN	5	KG	2	2016	40
21507	170	2121	326	222	Oil (vegetable, local)	51	MZN	15	L	2	2016	85
21508	170	2121	326	223	Sugar (brown, imported)	51	MZN	5	KG	12	2015	45
21509	170	2121	326	224	Sugar (brown, local)	51	MZN	5	KG	2	2016	45
21510	170	2121	326	262	Beans (dry)	51	MZN	5	KG	5	2015	28.75
21511	170	2121	326	286	Maize meal (white, with bran)	51	MZN	5	KG	2	2016	31
21512	170	2121	326	323	Onions (imported)	51	MZN	5	KG	12	2015	30
21513	170	2121	326	418	Beans (butter)	51	MZN	5	KG	2	2016	48
21514	170	2121	326	419	Beans (magnum)	51	MZN	5	KG	2	2016	48
21515	170	2121	326	420	Groundnuts (large, shelled)	51	MZN	5	KG	2	2016	50
21516	170	2121	326	427	Beans (catarino)	51	MZN	5	KG	2	2016	48
21517	170	2121	326	431	Maize meal (white, without bran) 	51	MZN	5	KG	2	2016	31
21518	170	2115	327	64	Rice (imported)	51	MZN	5	KG	2	2016	32.6666999999999987
21519	170	2115	327	67	Maize (white)	51	MZN	5	KG	2	2016	24.6857000000000006
21520	170	2115	327	78	Beans (red)	51	MZN	5	KG	5	2015	32.5
21521	170	2115	327	101	Oil (vegetable, imported)	51	MZN	15	L	9	2012	75
21522	170	2115	327	179	Wheat flour (local)	51	MZN	5	KG	2	2016	32
21523	170	2115	327	218	Cowpeas	51	MZN	5	KG	2	2016	40
21524	170	2115	327	221	Maize meal (white, first grade)	51	MZN	5	KG	2	2016	40
21525	170	2115	327	222	Oil (vegetable, local)	51	MZN	15	L	2	2016	54
21526	170	2115	327	223	Sugar (brown, imported)	51	MZN	5	KG	12	2015	35
21527	170	2115	327	224	Sugar (brown, local)	51	MZN	5	KG	2	2016	45
21528	170	2115	327	262	Beans (dry)	51	MZN	5	KG	5	2015	28.5
21529	170	2115	327	286	Maize meal (white, with bran)	51	MZN	5	KG	2	2016	26
21530	170	2115	327	355	Groundnuts (Mix)	51	MZN	5	KG	4	2011	42.0399999999999991
21531	170	2115	327	418	Beans (butter)	51	MZN	5	KG	2	2016	60
21532	170	2115	327	420	Groundnuts (large, shelled)	51	MZN	5	KG	2	2016	60
21533	170	2115	327	421	Groundnuts (small, shelled)	51	MZN	5	KG	2	2016	60
21534	170	2115	327	427	Beans (catarino)	51	MZN	5	KG	2	2016	58
21535	170	2115	327	431	Maize meal (white, without bran) 	51	MZN	5	KG	2	2016	27
21536	170	2119	328	64	Rice (imported)	51	MZN	5	KG	5	2015	35
21537	170	2119	328	67	Maize (white)	51	MZN	5	KG	5	2015	8.76190000000000069
21538	170	2119	328	71	Rice (local)	51	MZN	5	KG	5	2015	28.75
21539	170	2119	328	78	Beans (red)	51	MZN	5	KG	5	2015	48.75
21540	170	2119	328	101	Oil (vegetable, imported)	51	MZN	15	L	5	2015	67.5
21541	170	2119	328	179	Wheat flour (local)	51	MZN	5	KG	5	2015	31.25
21542	170	2119	328	218	Cowpeas	51	MZN	5	KG	5	2015	16.5
21543	170	2119	328	221	Maize meal (white, first grade)	51	MZN	5	KG	5	2015	37.5
21544	170	2119	328	222	Oil (vegetable, local)	51	MZN	15	L	5	2015	50
21545	170	2119	328	224	Sugar (brown, local)	51	MZN	5	KG	5	2015	34.75
21546	170	2119	328	262	Beans (dry)	51	MZN	5	KG	5	2015	60
21547	170	2119	328	286	Maize meal (white, with bran)	51	MZN	5	KG	5	2015	39.7295000000000016
21548	170	2119	328	420	Groundnuts (large, shelled)	51	MZN	5	KG	5	2015	55
21549	170	2119	328	431	Maize meal (white, without bran) 	51	MZN	5	KG	5	2015	25.5
21550	170	2114	329	64	Rice (imported)	51	MZN	5	KG	2	2016	32.75
21551	170	2114	329	67	Maize (white)	51	MZN	5	KG	10	2015	16.1038999999999994
21552	170	2114	329	78	Beans (red)	51	MZN	5	KG	5	2015	50
21553	170	2114	329	179	Wheat flour (local)	51	MZN	5	KG	2	2016	32.5
21554	170	2114	329	218	Cowpeas	51	MZN	5	KG	2	2016	170.502999999999986
21555	170	2114	329	221	Maize meal (white, first grade)	51	MZN	5	KG	2	2016	41.5
21556	170	2114	329	222	Oil (vegetable, local)	51	MZN	15	L	2	2016	81.25
21557	170	2114	329	223	Sugar (brown, imported)	51	MZN	5	KG	12	2015	35.6666999999999987
21558	170	2114	329	224	Sugar (brown, local)	51	MZN	5	KG	2	2016	46.6666999999999987
21559	170	2114	329	262	Beans (dry)	51	MZN	5	KG	5	2015	60
21560	170	2114	329	286	Maize meal (white, with bran)	51	MZN	5	KG	10	2015	54.3592000000000013
21561	170	2114	329	355	Groundnuts (Mix)	51	MZN	5	KG	4	2011	41.0900000000000034
21562	170	2114	329	418	Beans (butter)	51	MZN	5	KG	2	2016	98
21563	170	2114	329	419	Beans (magnum)	51	MZN	5	KG	9	2015	68.3332999999999942
21564	170	2114	329	420	Groundnuts (large, shelled)	51	MZN	5	KG	11	2015	55
21565	170	2114	329	421	Groundnuts (small, shelled)	51	MZN	5	KG	2	2016	99.5832999999999942
21566	170	2114	329	427	Beans (catarino)	51	MZN	5	KG	2	2016	111.25
21567	170	2114	329	431	Maize meal (white, without bran) 	51	MZN	5	KG	2	2016	27.75
21568	170	2114	330	64	Rice (imported)	51	MZN	5	KG	2	2016	35
21569	170	2114	330	67	Maize (white)	51	MZN	5	KG	2	2016	18.1817999999999991
21570	170	2114	330	78	Beans (red)	51	MZN	5	KG	5	2015	50
21571	170	2114	330	179	Wheat flour (local)	51	MZN	5	KG	2	2016	30
21572	170	2114	330	218	Cowpeas	51	MZN	5	KG	2	2016	80
21573	170	2114	330	221	Maize meal (white, first grade)	51	MZN	5	KG	2	2016	35
21574	170	2114	330	222	Oil (vegetable, local)	51	MZN	15	L	2	2016	90
21575	170	2114	330	223	Sugar (brown, imported)	51	MZN	5	KG	12	2015	35
21576	170	2114	330	224	Sugar (brown, local)	51	MZN	5	KG	2	2016	46.6666999999999987
21577	170	2114	330	262	Beans (dry)	51	MZN	5	KG	5	2015	50
21578	170	2114	330	355	Groundnuts (Mix)	51	MZN	5	KG	4	2011	51.75
21579	170	2114	330	418	Beans (butter)	51	MZN	5	KG	2	2016	60
21580	170	2114	330	421	Groundnuts (small, shelled)	51	MZN	5	KG	2	2016	82.7777999999999992
21581	170	2114	330	427	Beans (catarino)	51	MZN	5	KG	1	2016	60
21582	170	2114	330	431	Maize meal (white, without bran) 	51	MZN	5	KG	2	2016	30
21583	170	2114	331	64	Rice (imported)	51	MZN	5	KG	2	2016	36.2000000000000028
21584	170	2114	331	67	Maize (white)	51	MZN	5	KG	12	2015	28.5714000000000006
21585	170	2114	331	78	Beans (red)	51	MZN	5	KG	5	2015	42.5
21586	170	2114	331	179	Wheat flour (local)	51	MZN	5	KG	2	2016	32
21587	170	2114	331	218	Cowpeas	51	MZN	5	KG	2	2016	47.8900000000000006
21588	170	2114	331	221	Maize meal (white, first grade)	51	MZN	5	KG	2	2016	41.3333000000000013
21589	170	2114	331	222	Oil (vegetable, local)	51	MZN	15	L	2	2016	75.3332999999999942
21590	170	2114	331	223	Sugar (brown, imported)	51	MZN	5	KG	12	2015	35
21591	170	2114	331	224	Sugar (brown, local)	51	MZN	5	KG	2	2016	46.2667000000000002
21592	170	2114	331	262	Beans (dry)	51	MZN	5	KG	5	2015	52.5
21593	170	2114	331	355	Groundnuts (Mix)	51	MZN	5	KG	4	2011	34.5
21594	170	2114	331	418	Beans (butter)	51	MZN	5	KG	2	2016	86
21595	170	2114	331	419	Beans (magnum)	51	MZN	5	KG	2	2016	100.832999999999998
21596	170	2114	331	420	Groundnuts (large, shelled)	51	MZN	5	KG	10	2015	60
21597	170	2114	331	421	Groundnuts (small, shelled)	51	MZN	5	KG	2	2016	98
21598	170	2114	331	427	Beans (catarino)	51	MZN	5	KG	2	2016	86
21599	170	2114	331	431	Maize meal (white, without bran) 	51	MZN	5	KG	2	2016	32
21600	170	2122	332	64	Rice (imported)	51	MZN	5	KG	2	2016	40
21601	170	2122	332	67	Maize (white)	51	MZN	5	KG	2	2016	26.4285999999999994
21602	170	2122	332	71	Rice (local)	51	MZN	5	KG	2	2016	45
21603	170	2122	332	74	Cassava flour	51	MZN	5	KG	2	2016	27
21604	170	2122	332	78	Beans (red)	51	MZN	5	KG	5	2015	46.6666999999999987
21605	170	2122	332	179	Wheat flour (local)	51	MZN	5	KG	2	2016	45
21606	170	2122	332	218	Cowpeas	51	MZN	5	KG	2	2016	55
21607	170	2122	332	221	Maize meal (white, first grade)	51	MZN	5	KG	2	2016	40
21608	170	2122	332	222	Oil (vegetable, local)	51	MZN	15	L	2	2016	65
21609	170	2122	332	223	Sugar (brown, imported)	51	MZN	5	KG	12	2015	45
21610	170	2122	332	224	Sugar (brown, local)	51	MZN	5	KG	2	2016	46.25
21611	170	2122	332	262	Beans (dry)	51	MZN	5	KG	5	2015	46.6666999999999987
21612	170	2122	332	286	Maize meal (white, with bran)	51	MZN	5	KG	2	2016	29.25
21613	170	2122	332	355	Groundnuts (Mix)	51	MZN	5	KG	6	2010	27.0904999999999987
21614	170	2122	332	418	Beans (butter)	51	MZN	5	KG	2	2016	61.25
21615	170	2122	332	419	Beans (magnum)	51	MZN	5	KG	2	2016	63.75
21616	170	2122	332	420	Groundnuts (large, shelled)	51	MZN	5	KG	6	2015	20
21617	170	2122	332	421	Groundnuts (small, shelled)	51	MZN	5	KG	2	2016	56.25
21618	170	2122	332	427	Beans (catarino)	51	MZN	5	KG	2	2016	56.6666999999999987
21619	170	2122	332	431	Maize meal (white, without bran) 	51	MZN	5	KG	2	2016	30
21620	170	2112	333	64	Rice (imported)	51	MZN	5	KG	5	2015	30
21621	170	2112	333	67	Maize (white)	51	MZN	5	KG	5	2015	11.4285999999999994
21622	170	2112	333	71	Rice (local)	51	MZN	5	KG	2	2015	50
21623	170	2112	333	78	Beans (red)	51	MZN	5	KG	5	2015	40
21624	170	2112	333	179	Wheat flour (local)	51	MZN	5	KG	5	2015	25
21625	170	2112	333	218	Cowpeas	51	MZN	5	KG	5	2015	23.3333000000000013
21626	170	2112	333	221	Maize meal (white, first grade)	51	MZN	5	KG	5	2015	50
21627	170	2112	333	222	Oil (vegetable, local)	51	MZN	15	L	5	2015	45
21628	170	2112	333	224	Sugar (brown, local)	51	MZN	5	KG	5	2015	43.3333000000000013
21629	170	2112	333	262	Beans (dry)	51	MZN	5	KG	5	2015	45
21630	170	2112	333	286	Maize meal (white, with bran)	51	MZN	5	KG	2	2015	20
21631	170	2112	333	420	Groundnuts (large, shelled)	51	MZN	5	KG	5	2015	70
21632	170	2112	333	431	Maize meal (white, without bran) 	51	MZN	5	KG	5	2015	30
21633	170	2121	334	64	Rice (imported)	51	MZN	5	KG	2	2016	37
21634	170	2121	334	67	Maize (white)	51	MZN	5	KG	2	2016	27.4285999999999994
21635	170	2121	334	71	Rice (local)	51	MZN	5	KG	9	2015	23.0533000000000001
21636	170	2121	334	78	Beans (red)	51	MZN	5	KG	5	2015	48.0947000000000031
21637	170	2121	334	179	Wheat flour (local)	51	MZN	5	KG	2	2016	35
21638	170	2121	334	218	Cowpeas	51	MZN	5	KG	2	2016	120.772999999999996
21639	170	2121	334	221	Maize meal (white, first grade)	51	MZN	5	KG	2	2016	70
21640	170	2121	334	222	Oil (vegetable, local)	51	MZN	15	L	2	2016	60
21641	170	2121	334	223	Sugar (brown, imported)	51	MZN	5	KG	12	2015	40
21642	170	2121	334	224	Sugar (brown, local)	51	MZN	5	KG	2	2016	49.4444000000000017
21643	170	2121	334	262	Beans (dry)	51	MZN	5	KG	5	2015	51.963000000000001
21644	170	2121	334	286	Maize meal (white, with bran)	51	MZN	5	KG	2	2016	184.820999999999998
21645	170	2121	334	355	Groundnuts (Mix)	51	MZN	5	KG	6	2010	31.605599999999999
21646	170	2121	334	418	Beans (butter)	51	MZN	5	KG	12	2015	69.2840999999999951
21647	170	2121	334	419	Beans (magnum)	51	MZN	5	KG	6	2015	34.642000000000003
21648	170	2121	334	420	Groundnuts (large, shelled)	51	MZN	5	KG	9	2015	51.7464000000000013
21649	170	2121	334	421	Groundnuts (small, shelled)	51	MZN	5	KG	2	2016	151.706999999999994
21650	170	2121	334	427	Beans (catarino)	51	MZN	5	KG	2	2016	138.568000000000012
21651	170	2121	334	431	Maize meal (white, without bran) 	51	MZN	5	KG	2	2016	117.841999999999999
21652	170	2118	335	64	Rice (imported)	51	MZN	5	KG	5	2015	26
21653	170	2118	335	67	Maize (white)	51	MZN	5	KG	5	2015	11.4285999999999994
21654	170	2118	335	74	Cassava flour	51	MZN	5	KG	5	2015	10
21655	170	2118	335	78	Beans (red)	51	MZN	5	KG	5	2015	34
21656	170	2118	335	101	Oil (vegetable, imported)	51	MZN	15	L	5	2015	75
21657	170	2118	335	179	Wheat flour (local)	51	MZN	5	KG	5	2015	21
21658	170	2118	335	218	Cowpeas	51	MZN	5	KG	5	2015	23.5
21659	170	2118	335	221	Maize meal (white, first grade)	51	MZN	5	KG	5	2015	38.5
21660	170	2118	335	222	Oil (vegetable, local)	51	MZN	15	L	5	2015	47.5
21661	170	2118	335	224	Sugar (brown, local)	51	MZN	5	KG	5	2015	42.5
21662	170	2118	335	262	Beans (dry)	51	MZN	5	KG	5	2015	65
21663	170	2118	335	286	Maize meal (white, with bran)	51	MZN	5	KG	5	2015	15
21664	170	2118	335	355	Groundnuts (Mix)	51	MZN	5	KG	4	2011	50
21665	170	2118	335	420	Groundnuts (large, shelled)	51	MZN	5	KG	5	2015	30
21666	170	2118	335	421	Groundnuts (small, shelled)	51	MZN	5	KG	5	2015	30
21667	170	2118	335	431	Maize meal (white, without bran) 	51	MZN	5	KG	5	2015	26
21668	170	2120	336	64	Rice (imported)	51	MZN	5	KG	5	2015	25
21669	170	2120	336	67	Maize (white)	51	MZN	5	KG	5	2015	6.85709999999999997
21670	170	2120	336	78	Beans (red)	51	MZN	5	KG	5	2015	50
21671	170	2120	336	179	Wheat flour (local)	51	MZN	5	KG	5	2015	24
21672	170	2120	336	218	Cowpeas	51	MZN	5	KG	5	2015	30
21673	170	2120	336	221	Maize meal (white, first grade)	51	MZN	5	KG	5	2015	35
21674	170	2120	336	222	Oil (vegetable, local)	51	MZN	15	L	5	2015	45
21675	170	2120	336	224	Sugar (brown, local)	51	MZN	5	KG	5	2015	39.6666999999999987
21676	170	2120	336	262	Beans (dry)	51	MZN	5	KG	5	2015	50
21677	170	2120	336	355	Groundnuts (Mix)	51	MZN	5	KG	3	2011	51.75
21678	170	2120	336	420	Groundnuts (large, shelled)	51	MZN	5	KG	2	2015	50
21679	170	2120	336	421	Groundnuts (small, shelled)	51	MZN	5	KG	5	2015	60
21680	170	2120	336	431	Maize meal (white, without bran) 	51	MZN	5	KG	5	2015	24
21681	170	2122	337	64	Rice (imported)	51	MZN	5	KG	2	2016	42
21682	170	2122	337	67	Maize (white)	51	MZN	5	KG	2	2016	25.1429000000000009
21683	170	2122	337	71	Rice (local)	51	MZN	5	KG	2	2016	48
21684	170	2122	337	74	Cassava flour	51	MZN	5	KG	1	2016	61.7284000000000006
21685	170	2122	337	78	Beans (red)	51	MZN	5	KG	5	2015	40
21686	170	2122	337	101	Oil (vegetable, imported)	51	MZN	15	L	9	2012	50
21687	170	2122	337	179	Wheat flour (local)	51	MZN	5	KG	2	2016	50
21688	170	2122	337	218	Cowpeas	51	MZN	5	KG	2	2016	38.3333000000000013
21689	170	2122	337	221	Maize meal (white, first grade)	51	MZN	5	KG	2	2016	58
21690	170	2122	337	222	Oil (vegetable, local)	51	MZN	15	L	2	2016	62
21691	170	2122	337	223	Sugar (brown, imported)	51	MZN	5	KG	12	2015	40
21692	170	2122	337	224	Sugar (brown, local)	51	MZN	5	KG	2	2016	44
21693	170	2122	337	262	Beans (dry)	51	MZN	5	KG	5	2015	40
21694	170	2122	337	286	Maize meal (white, with bran)	51	MZN	5	KG	2	2016	71.8748999999999967
21695	170	2122	337	355	Groundnuts (Mix)	51	MZN	5	KG	2	2011	64.6800000000000068
21696	170	2122	337	418	Beans (butter)	51	MZN	5	KG	2	2016	70
21697	170	2122	337	421	Groundnuts (small, shelled)	51	MZN	5	KG	2	2016	96
21698	170	2122	337	427	Beans (catarino)	51	MZN	5	KG	2	2016	70
21699	170	2122	337	431	Maize meal (white, without bran) 	51	MZN	5	KG	2	2016	43
21700	170	2118	338	64	Rice (imported)	51	MZN	5	KG	12	2015	35
21701	170	2118	338	67	Maize (white)	51	MZN	5	KG	12	2015	17.1429000000000009
21702	170	2118	338	74	Cassava flour	51	MZN	5	KG	12	2015	20
21703	170	2118	338	78	Beans (red)	51	MZN	5	KG	5	2015	56.6666999999999987
21704	170	2118	338	101	Oil (vegetable, imported)	51	MZN	15	L	12	2015	90
21705	170	2118	338	179	Wheat flour (local)	51	MZN	5	KG	12	2015	30
21706	170	2118	338	218	Cowpeas	51	MZN	5	KG	12	2015	50
21707	170	2118	338	221	Maize meal (white, first grade)	51	MZN	5	KG	12	2015	50
21708	170	2118	338	222	Oil (vegetable, local)	51	MZN	15	L	12	2015	50
21709	170	2118	338	223	Sugar (brown, imported)	51	MZN	5	KG	12	2015	40
21710	170	2118	338	224	Sugar (brown, local)	51	MZN	5	KG	5	2015	45
21711	170	2118	338	262	Beans (dry)	51	MZN	5	KG	5	2015	63.3333000000000013
21712	170	2118	338	286	Maize meal (white, with bran)	51	MZN	5	KG	12	2015	30
21713	170	2118	338	355	Groundnuts (Mix)	51	MZN	5	KG	11	2010	30.4400000000000013
21714	170	2118	338	418	Beans (butter)	51	MZN	5	KG	12	2015	70
21715	170	2118	338	419	Beans (magnum)	51	MZN	5	KG	12	2015	70
21716	170	2118	338	421	Groundnuts (small, shelled)	51	MZN	5	KG	12	2015	60
21717	170	2118	338	431	Maize meal (white, without bran) 	51	MZN	5	KG	12	2015	43.3333000000000013
21718	170	2121	339	64	Rice (imported)	51	MZN	5	KG	2	2016	36.6666999999999987
21719	170	2121	339	67	Maize (white)	51	MZN	5	KG	2	2016	22.8570999999999991
21720	170	2121	339	71	Rice (local)	51	MZN	5	KG	2	2016	31.6666999999999987
21721	170	2121	339	78	Beans (red)	51	MZN	5	KG	5	2015	28.3333000000000013
21722	170	2121	339	179	Wheat flour (local)	51	MZN	5	KG	2	2016	40
21723	170	2121	339	218	Cowpeas	51	MZN	5	KG	2	2016	45
21724	170	2121	339	221	Maize meal (white, first grade)	51	MZN	5	KG	2	2016	53.3333000000000013
21725	170	2121	339	222	Oil (vegetable, local)	51	MZN	15	L	2	2016	60
21726	170	2121	339	223	Sugar (brown, imported)	51	MZN	5	KG	12	2015	45
21727	170	2121	339	224	Sugar (brown, local)	51	MZN	5	KG	2	2016	48.3333000000000013
21728	170	2121	339	262	Beans (dry)	51	MZN	5	KG	5	2015	27.5
21729	170	2121	339	286	Maize meal (white, with bran)	51	MZN	5	KG	2	2016	43.3333000000000013
21730	170	2121	339	355	Groundnuts (Mix)	51	MZN	5	KG	4	2011	47.4299999999999997
21731	170	2121	339	418	Beans (butter)	51	MZN	5	KG	2	2016	60
21732	170	2121	339	419	Beans (magnum)	51	MZN	5	KG	2	2016	60
21733	170	2121	339	420	Groundnuts (large, shelled)	51	MZN	5	KG	2	2016	60
21734	170	2121	339	421	Groundnuts (small, shelled)	51	MZN	5	KG	2	2016	70
21735	170	2121	339	427	Beans (catarino)	51	MZN	5	KG	2	2016	63.3333000000000013
21736	170	2121	339	431	Maize meal (white, without bran) 	51	MZN	5	KG	2	2016	48.3333000000000013
21737	170	2113	340	64	Rice (imported)	51	MZN	5	KG	2	2016	35
21738	170	2113	340	67	Maize (white)	51	MZN	5	KG	2	2016	22.8570999999999991
21739	170	2113	340	78	Beans (red)	51	MZN	5	KG	5	2015	56.6666999999999987
21740	170	2113	340	179	Wheat flour (local)	51	MZN	5	KG	2	2016	50
21741	170	2113	340	218	Cowpeas	51	MZN	5	KG	2	2016	63.3333000000000013
21742	170	2113	340	221	Maize meal (white, first grade)	51	MZN	5	KG	2	2016	40
21743	170	2113	340	222	Oil (vegetable, local)	51	MZN	15	L	2	2016	85
21744	170	2113	340	223	Sugar (brown, imported)	51	MZN	5	KG	10	2015	40
21745	170	2113	340	224	Sugar (brown, local)	51	MZN	5	KG	2	2016	40
21746	170	2113	340	262	Beans (dry)	51	MZN	5	KG	5	2015	48.3333000000000013
21747	170	2113	340	355	Groundnuts (Mix)	51	MZN	5	KG	4	2011	45
21748	170	2113	340	418	Beans (butter)	51	MZN	5	KG	2	2016	80
21749	170	2113	340	419	Beans (magnum)	51	MZN	5	KG	11	2015	62.5
21750	170	2113	340	420	Groundnuts (large, shelled)	51	MZN	5	KG	9	2015	50
21751	170	2113	340	421	Groundnuts (small, shelled)	51	MZN	5	KG	2	2016	70
21752	170	2113	340	427	Beans (catarino)	51	MZN	5	KG	2	2016	80
21753	170	2113	340	431	Maize meal (white, without bran) 	51	MZN	5	KG	2	2016	31.6666999999999987
21754	171	2123	977	62	Oil (palm)	74	MMK	15	L	12	2010	1600
21755	171	2123	977	145	Rice (low quality)	74	MMK	5	KG	1	2011	280
21756	171	2123	977	247	Rice (high quality)	74	MMK	5	KG	1	2011	300
21757	171	2123	977	394	Chickpeas (local)	74	MMK	5	KG	1	2011	1300
21758	171	2123	978	62	Oil (palm)	74	MMK	15	L	3	2016	1150
21759	171	2123	978	145	Rice (low quality)	74	MMK	5	KG	3	2016	350
21760	171	2123	978	163	Pulses	74	MMK	5	KG	3	2016	1240
21761	171	2123	978	185	Salt	74	MMK	5	KG	3	2016	183
21762	171	2123	978	247	Rice (high quality)	74	MMK	5	KG	6	2011	360
21763	171	2123	978	284	Fuel (diesel)	74	MMK	15	L	3	2016	733
21764	171	2123	978	394	Chickpeas (local)	74	MMK	5	KG	12	2015	1400
21765	171	2123	978	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	4333
21766	171	41774	979	145	Rice (low quality)	74	MMK	5	KG	1	2013	440
21767	171	41774	979	185	Salt	74	MMK	5	KG	1	2013	366.74799999999999
21768	171	2125	980	62	Oil (palm)	74	MMK	15	L	12	2015	2143
21769	171	2125	980	145	Rice (low quality)	74	MMK	5	KG	3	2016	500
21770	171	2125	980	163	Pulses	74	MMK	5	KG	3	2016	1837
21771	171	2125	980	185	Salt	74	MMK	5	KG	3	2016	153
21772	171	2125	980	284	Fuel (diesel)	74	MMK	15	L	3	2016	1058
21773	171	2125	980	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	7000
21774	171	2130	981	62	Oil (palm)	74	MMK	15	L	12	2015	1225
21775	171	2130	981	145	Rice (low quality)	74	MMK	5	KG	12	2015	460
21776	171	2130	981	163	Pulses	74	MMK	5	KG	12	2015	1837
21777	171	2130	981	173	Onions	74	MMK	5	KG	6	2011	1600
21778	171	2130	981	185	Salt	74	MMK	5	KG	12	2015	153
21779	171	2130	981	284	Fuel (diesel)	74	MMK	15	L	12	2015	794
21780	171	2130	981	394	Chickpeas (local)	74	MMK	5	KG	6	2011	960
21781	171	2130	981	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	12	2015	4000
21782	171	2127	982	105	Garlic	74	MMK	5	KG	6	2011	2121.21000000000004
21783	171	2127	982	145	Rice (low quality)	74	MMK	5	KG	6	2011	421.052999999999997
21784	171	2127	982	173	Onions	74	MMK	5	KG	6	2011	606.061000000000035
21785	171	2125	983	62	Oil (palm)	74	MMK	15	L	3	2016	2450
21786	171	2125	983	145	Rice (low quality)	74	MMK	5	KG	3	2016	580
21787	171	2125	983	163	Pulses	74	MMK	5	KG	3	2016	1530
21788	171	2125	983	185	Salt	74	MMK	5	KG	3	2016	184
21789	171	2125	983	284	Fuel (diesel)	74	MMK	15	L	3	2016	926
21790	171	2125	983	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	7000
21791	171	41775	985	51	Maize	74	MMK	5	KG	12	2011	363
21792	171	41775	985	145	Rice (low quality)	74	MMK	5	KG	5	2012	510
21793	171	41775	985	185	Salt	74	MMK	5	KG	5	2012	382.5
21794	171	41775	985	396	Oil (mixed, imported)	74	MMK	15	L	5	2012	1785
21795	171	41776	986	51	Maize	74	MMK	5	KG	12	2011	126
21796	171	41776	986	94	Meat (chicken)	74	MMK	5	KG	6	2011	3636.36000000000013
21797	171	41776	986	105	Garlic	74	MMK	5	KG	6	2011	1212.11999999999989
21798	171	41776	986	140	Meat (pork)	74	MMK	5	KG	6	2011	3636.36000000000013
21799	171	41776	986	141	Meat (beef)	74	MMK	5	KG	6	2011	2909.09000000000015
21800	171	41776	986	145	Rice (low quality)	74	MMK	5	KG	12	2014	423
21801	171	41776	986	185	Salt	74	MMK	5	KG	12	2014	184
21802	171	41776	986	245	Oil (groundnut)	74	MMK	15	L	12	2014	2670
21803	171	41776	986	284	Fuel (diesel)	74	MMK	15	L	12	2014	1109
21804	171	41776	986	394	Chickpeas (local)	74	MMK	5	KG	12	2014	813
21805	171	41776	986	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	12	2014	3500
21806	171	2136	987	62	Oil (palm)	74	MMK	15	L	1	2013	1200
21807	171	2136	987	145	Rice (low quality)	74	MMK	5	KG	1	2013	222
21808	171	2136	987	185	Salt	74	MMK	5	KG	1	2013	150
21809	171	2133	988	62	Oil (palm)	74	MMK	15	L	3	2016	2143
21810	171	2133	988	145	Rice (low quality)	74	MMK	5	KG	3	2016	660
21811	171	2133	988	163	Pulses	74	MMK	5	KG	3	2016	1715
21812	171	2133	988	185	Salt	74	MMK	5	KG	3	2016	153
21813	171	2133	988	284	Fuel (diesel)	74	MMK	15	L	3	2016	741
21814	171	2133	988	394	Chickpeas (local)	74	MMK	5	KG	6	2011	909.091000000000008
21815	171	2133	988	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	6000
21816	171	41775	989	145	Rice (low quality)	74	MMK	5	KG	3	2016	805
21817	171	41775	989	163	Pulses	74	MMK	5	KG	3	2016	732
21818	171	41775	989	173	Onions	74	MMK	5	KG	1	2011	1320
21819	171	41775	989	185	Salt	74	MMK	5	KG	3	2016	549
21820	171	41775	989	284	Fuel (diesel)	74	MMK	15	L	3	2016	1244
21821	171	41775	989	396	Oil (mixed, imported)	74	MMK	15	L	3	2016	1647
21822	171	41775	989	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	9150
21823	171	2123	990	62	Oil (palm)	74	MMK	15	L	1	2013	1200
21824	171	2123	990	145	Rice (low quality)	74	MMK	5	KG	1	2013	250
21825	171	2123	990	185	Salt	74	MMK	5	KG	1	2013	100
21826	171	2123	990	247	Rice (high quality)	74	MMK	5	KG	6	2011	250
21827	171	2123	990	394	Chickpeas (local)	74	MMK	5	KG	6	2011	500
21828	171	41775	991	145	Rice (low quality)	74	MMK	5	KG	1	2013	530.399999999999977
21829	171	41775	991	185	Salt	74	MMK	5	KG	1	2013	272
21830	171	41775	991	396	Oil (mixed, imported)	74	MMK	15	L	1	2013	1632
21831	171	41775	992	145	Rice (low quality)	74	MMK	5	KG	10	2014	630
21832	171	41775	992	163	Pulses	74	MMK	5	KG	10	2014	1782
21833	171	41775	992	185	Salt	74	MMK	5	KG	10	2014	486
21834	171	41775	992	396	Oil (mixed, imported)	74	MMK	15	L	10	2014	3110
21835	171	2123	993	62	Oil (palm)	74	MMK	15	L	1	2013	1000
21836	171	2123	993	145	Rice (low quality)	74	MMK	5	KG	1	2013	250
21837	171	2123	993	185	Salt	74	MMK	5	KG	1	2013	100
21838	171	2123	993	247	Rice (high quality)	74	MMK	5	KG	6	2011	335
21839	171	2123	993	394	Chickpeas (local)	74	MMK	5	KG	6	2011	400
21840	171	41775	995	145	Rice (low quality)	74	MMK	5	KG	12	2015	1010
21841	171	41775	995	163	Pulses	74	MMK	5	KG	12	2015	808
21842	171	41775	995	173	Onions	74	MMK	5	KG	3	2011	1848
21843	171	41775	995	185	Salt	74	MMK	5	KG	12	2015	808
21844	171	41775	995	284	Fuel (diesel)	74	MMK	15	L	12	2015	1616
21845	171	41775	995	396	Oil (mixed, imported)	74	MMK	15	L	12	2015	2222
21846	171	41775	995	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	12	2015	10100
21847	171	2125	996	62	Oil (palm)	74	MMK	15	L	12	2011	3062
21848	171	2125	996	145	Rice (low quality)	74	MMK	5	KG	12	2012	372
21849	171	2125	996	173	Onions	74	MMK	5	KG	6	2011	727.273000000000025
21850	171	2125	996	185	Salt	74	MMK	5	KG	12	2012	613
21851	171	2125	996	394	Chickpeas (local)	74	MMK	5	KG	6	2011	1600
21852	171	2130	997	83	Potatoes	74	MMK	5	KG	6	2011	363.636000000000024
21853	171	2130	997	114	Tomatoes	74	MMK	5	KG	6	2011	727.273000000000025
21854	171	2130	997	145	Rice (low quality)	74	MMK	5	KG	3	2016	802
21855	171	2130	997	185	Salt	74	MMK	5	KG	3	2016	184
21856	171	2130	997	245	Oil (groundnut)	74	MMK	15	L	3	2016	3497
21857	171	2130	997	284	Fuel (diesel)	74	MMK	15	L	3	2016	608
21858	171	2130	997	394	Chickpeas (local)	74	MMK	5	KG	3	2016	1415
21859	171	2130	997	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	4500
21860	171	41775	998	51	Maize	74	MMK	5	KG	12	2011	123
21861	171	41775	998	62	Oil (palm)	74	MMK	15	L	6	2011	2424.23999999999978
21862	171	41775	998	83	Potatoes	74	MMK	5	KG	6	2011	606.061000000000035
21863	171	41775	998	105	Garlic	74	MMK	5	KG	6	2011	2121.21000000000004
21864	171	41775	998	145	Rice (low quality)	74	MMK	5	KG	1	2013	469.925000000000011
21865	171	41775	998	173	Onions	74	MMK	5	KG	6	2011	1212.11999999999989
21866	171	41775	998	185	Salt	74	MMK	5	KG	1	2013	305.62299999999999
21867	171	41775	998	247	Rice (high quality)	74	MMK	5	KG	6	2011	600
21868	171	41775	998	248	Soybeans	74	MMK	5	KG	6	2011	1090.91000000000008
21869	171	41775	998	394	Chickpeas (local)	74	MMK	5	KG	1	2013	1021.45000000000005
21870	171	41775	999	51	Maize	74	MMK	5	KG	12	2011	194
21871	171	41775	999	145	Rice (low quality)	74	MMK	5	KG	1	2013	952
21872	171	41775	999	173	Onions	74	MMK	5	KG	6	2011	630.302999999999997
21873	171	41775	999	185	Salt	74	MMK	5	KG	1	2013	408
21874	171	41775	999	394	Chickpeas (local)	74	MMK	5	KG	6	2011	1024.24000000000001
21875	171	41775	999	396	Oil (mixed, imported)	74	MMK	15	L	1	2013	3128
21876	171	41775	1000	51	Maize	74	MMK	5	KG	12	2011	235
21877	171	41775	1000	62	Oil (palm)	74	MMK	15	L	6	2011	2000
21878	171	41775	1000	83	Potatoes	74	MMK	5	KG	6	2011	484.84899999999999
21879	171	41775	1000	105	Garlic	74	MMK	5	KG	6	2011	2424.23999999999978
21880	171	41775	1000	145	Rice (low quality)	74	MMK	5	KG	6	2015	474
21881	171	41775	1000	173	Onions	74	MMK	5	KG	6	2011	606.061000000000035
21882	171	41775	1000	185	Salt	74	MMK	5	KG	6	2015	469
21883	171	41775	1000	248	Soybeans	74	MMK	5	KG	6	2011	200
21884	171	41775	1000	284	Fuel (diesel)	74	MMK	15	L	5	2015	1146
21885	171	41775	1000	394	Chickpeas (local)	74	MMK	5	KG	6	2015	698
21886	171	41775	1000	396	Oil (mixed, imported)	74	MMK	15	L	6	2015	1324
21887	171	41775	1000	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	6	2015	3667
21888	171	2125	1001	62	Oil (palm)	74	MMK	15	L	12	2015	1225
21889	171	2125	1001	145	Rice (low quality)	74	MMK	5	KG	3	2016	640
21890	171	2125	1001	163	Pulses	74	MMK	5	KG	11	2015	367
21891	171	2125	1001	185	Salt	74	MMK	5	KG	3	2016	153
21892	171	2125	1001	284	Fuel (diesel)	74	MMK	15	L	3	2016	1058
21893	171	2125	1001	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	8000
21894	171	2123	1002	62	Oil (palm)	74	MMK	15	L	3	2016	1360
21895	171	2123	1002	145	Rice (low quality)	74	MMK	5	KG	3	2016	399
21896	171	2123	1002	163	Pulses	74	MMK	5	KG	3	2016	1440
21897	171	2123	1002	185	Salt	74	MMK	5	KG	3	2016	170
21898	171	2123	1002	247	Rice (high quality)	74	MMK	5	KG	6	2011	370
21899	171	2123	1002	284	Fuel (diesel)	74	MMK	15	L	3	2016	935
21900	171	2123	1002	394	Chickpeas (local)	74	MMK	5	KG	12	2015	1750
21901	171	2123	1002	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	4100
21902	171	2130	1003	145	Rice (low quality)	74	MMK	5	KG	1	2013	306.603999999999985
21903	171	2130	1003	185	Salt	74	MMK	5	KG	1	2013	122.698999999999998
21904	171	2130	1003	245	Oil (groundnut)	74	MMK	15	L	1	2013	1840.49000000000001
21905	171	2130	1003	394	Chickpeas (local)	74	MMK	5	KG	1	2013	943.395999999999958
21906	171	2135	1004	145	Rice (low quality)	74	MMK	5	KG	7	2011	320
21907	171	2135	1004	394	Chickpeas (local)	74	MMK	5	KG	6	2011	969.697000000000003
21908	171	41775	1005	62	Oil (palm)	74	MMK	15	L	3	2016	4000
21909	171	41775	1005	145	Rice (low quality)	74	MMK	5	KG	3	2016	1300
21910	171	41775	1005	163	Pulses	74	MMK	5	KG	3	2016	3000
21911	171	41775	1005	185	Salt	74	MMK	5	KG	3	2016	500
21912	171	41775	1005	284	Fuel (diesel)	74	MMK	15	L	3	2016	3000
21913	171	41775	1005	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	7046
21914	171	41775	1006	145	Rice (low quality)	74	MMK	5	KG	5	2012	510
21915	171	41775	1006	185	Salt	74	MMK	5	KG	5	2012	382.5
21916	171	41775	1006	396	Oil (mixed, imported)	74	MMK	15	L	5	2012	1912.5
21917	171	2123	1007	62	Oil (palm)	74	MMK	15	L	12	2010	1500
21918	171	2123	1007	145	Rice (low quality)	74	MMK	5	KG	1	2011	280
21919	171	2123	1007	247	Rice (high quality)	74	MMK	5	KG	1	2011	320
21920	171	2123	1007	394	Chickpeas (local)	74	MMK	5	KG	1	2011	600
21921	171	2127	1008	105	Garlic	74	MMK	5	KG	6	2011	2121.21000000000004
21922	171	2127	1008	145	Rice (low quality)	74	MMK	5	KG	6	2011	421.052999999999997
21923	171	2127	1008	173	Onions	74	MMK	5	KG	6	2011	606.061000000000035
21924	171	2123	1009	62	Oil (palm)	74	MMK	15	L	12	2010	1500
21925	171	2123	1009	145	Rice (low quality)	74	MMK	5	KG	1	2011	300
21926	171	2123	1009	247	Rice (high quality)	74	MMK	5	KG	1	2011	400
21927	171	2123	1009	394	Chickpeas (local)	74	MMK	5	KG	1	2011	800
21928	171	2123	1010	62	Oil (palm)	74	MMK	15	L	1	2013	1200
21929	171	2123	1010	145	Rice (low quality)	74	MMK	5	KG	1	2013	180
21930	171	2123	1010	185	Salt	74	MMK	5	KG	1	2013	200
21931	171	2123	1010	247	Rice (high quality)	74	MMK	5	KG	6	2011	320
21932	171	2123	1010	394	Chickpeas (local)	74	MMK	5	KG	6	2011	690
21933	171	2130	1011	83	Potatoes	74	MMK	5	KG	12	2010	606.061000000000035
21934	171	2130	1011	114	Tomatoes	74	MMK	5	KG	12	2010	606.061000000000035
21935	171	2130	1011	145	Rice (low quality)	74	MMK	5	KG	1	2011	404
21936	171	41775	1012	145	Rice (low quality)	74	MMK	5	KG	3	2016	732
21937	171	41775	1012	163	Pulses	74	MMK	5	KG	3	2016	2196
21938	171	41775	1012	173	Onions	74	MMK	5	KG	3	2011	2112
21939	171	41775	1012	185	Salt	74	MMK	5	KG	3	2016	732
21940	171	41775	1012	284	Fuel (diesel)	74	MMK	15	L	3	2016	1464
21941	171	41775	1012	396	Oil (mixed, imported)	74	MMK	15	L	3	2016	1647
21942	171	41775	1012	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	12810
21943	171	41775	1013	145	Rice (low quality)	74	MMK	5	KG	3	2016	732
21944	171	41775	1013	163	Pulses	74	MMK	5	KG	3	2016	732
21945	171	41775	1013	173	Onions	74	MMK	5	KG	3	2011	3168
21946	171	41775	1013	185	Salt	74	MMK	5	KG	3	2016	732
21947	171	41775	1013	284	Fuel (diesel)	74	MMK	15	L	3	2016	1574
21948	171	41775	1013	396	Oil (mixed, imported)	74	MMK	15	L	3	2016	1464
21949	171	41775	1013	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	9150
21950	171	2123	1014	62	Oil (palm)	74	MMK	15	L	3	2016	1033
21951	171	2123	1014	145	Rice (low quality)	74	MMK	5	KG	3	2016	437
21952	171	2123	1014	185	Salt	74	MMK	5	KG	3	2016	122
21953	171	2123	1014	247	Rice (high quality)	74	MMK	5	KG	6	2011	400
21954	171	2123	1014	284	Fuel (diesel)	74	MMK	15	L	3	2016	733
21955	171	2123	1014	394	Chickpeas (local)	74	MMK	5	KG	3	2016	1467
21956	171	2123	1014	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	4667
21957	171	2127	1015	83	Potatoes	74	MMK	5	KG	6	2011	606.061000000000035
21958	171	2127	1015	114	Tomatoes	74	MMK	5	KG	6	2011	606.061000000000035
21959	171	2127	1015	145	Rice (low quality)	74	MMK	5	KG	6	2011	463.158000000000015
21960	171	2127	1015	173	Onions	74	MMK	5	KG	6	2011	909.091000000000008
21961	171	2127	1016	83	Potatoes	74	MMK	5	KG	6	2011	606.061000000000035
21962	171	2127	1016	114	Tomatoes	74	MMK	5	KG	6	2011	606.061000000000035
21963	171	2127	1016	145	Rice (low quality)	74	MMK	5	KG	9	2011	470
21964	171	2127	1016	173	Onions	74	MMK	5	KG	6	2011	727.273000000000025
21965	171	2123	1017	62	Oil (palm)	74	MMK	15	L	1	2013	1200
21966	171	2123	1017	145	Rice (low quality)	74	MMK	5	KG	1	2013	200
21967	171	2123	1017	185	Salt	74	MMK	5	KG	1	2013	100
21968	171	2123	1017	247	Rice (high quality)	74	MMK	5	KG	6	2011	330
21969	171	2123	1017	394	Chickpeas (local)	74	MMK	5	KG	6	2011	856
21970	171	2123	1018	62	Oil (palm)	74	MMK	15	L	1	2013	1300
21971	171	2123	1018	145	Rice (low quality)	74	MMK	5	KG	1	2013	267
21972	171	2123	1018	185	Salt	74	MMK	5	KG	1	2013	150
21973	171	2123	1018	247	Rice (high quality)	74	MMK	5	KG	6	2011	410
21974	171	2123	1018	394	Chickpeas (local)	74	MMK	5	KG	6	2011	780
21975	171	41776	1019	94	Meat (chicken)	74	MMK	5	KG	6	2011	4848.47999999999956
21976	171	41776	1019	105	Garlic	74	MMK	5	KG	6	2011	909.091000000000008
21977	171	41776	1019	140	Meat (pork)	74	MMK	5	KG	6	2011	4848.47999999999956
21978	171	41776	1019	141	Meat (beef)	74	MMK	5	KG	6	2011	3030.30000000000018
21979	171	41776	1019	145	Rice (low quality)	74	MMK	5	KG	12	2014	446
21980	171	41776	1019	185	Salt	74	MMK	5	KG	12	2014	123
21981	171	41776	1019	245	Oil (groundnut)	74	MMK	15	L	12	2014	2454
21982	171	41776	1019	284	Fuel (diesel)	74	MMK	15	L	12	2014	770
21983	171	41776	1019	394	Chickpeas (local)	74	MMK	5	KG	12	2014	797
21984	171	41776	1019	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	12	2014	5000
21985	171	2125	1020	51	Maize	74	MMK	5	KG	12	2011	94
21986	171	2125	1020	62	Oil (palm)	74	MMK	15	L	3	2016	2755
21987	171	2125	1020	145	Rice (low quality)	74	MMK	5	KG	3	2016	540
21988	171	2125	1020	163	Pulses	74	MMK	5	KG	3	2016	1960
21989	171	2125	1020	185	Salt	74	MMK	5	KG	3	2016	184
21990	171	2125	1020	284	Fuel (diesel)	74	MMK	15	L	3	2016	1190
21991	171	2125	1020	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	5000
21992	171	41772	1021	62	Oil (palm)	74	MMK	15	L	3	2016	2500
21993	171	41772	1021	145	Rice (low quality)	74	MMK	5	KG	3	2016	1200
21994	171	41772	1021	163	Pulses	74	MMK	5	KG	3	2016	4000
21995	171	41772	1021	185	Salt	74	MMK	5	KG	3	2016	500
21996	171	41772	1021	284	Fuel (diesel)	74	MMK	15	L	3	2016	2500
21997	171	41772	1021	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	6000
21998	171	41775	1022	145	Rice (low quality)	74	MMK	5	KG	3	2011	528
21999	171	41775	1022	173	Onions	74	MMK	5	KG	3	2011	2112
22000	171	41775	1022	185	Salt	74	MMK	5	KG	2	2011	792
22001	171	2130	1023	83	Potatoes	74	MMK	5	KG	6	2011	484.84899999999999
22002	171	2130	1023	114	Tomatoes	74	MMK	5	KG	6	2011	606.061000000000035
22003	171	2130	1023	145	Rice (low quality)	74	MMK	5	KG	3	2016	755
22004	171	2130	1023	185	Salt	74	MMK	5	KG	3	2016	215
22005	171	2130	1023	245	Oil (groundnut)	74	MMK	15	L	3	2016	2822
22006	171	2130	1023	284	Fuel (diesel)	74	MMK	15	L	3	2016	608
22007	171	2130	1023	394	Chickpeas (local)	74	MMK	5	KG	3	2016	1274
22008	171	2130	1023	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	4000
22009	171	2123	1024	62	Oil (palm)	74	MMK	15	L	1	2013	1080
22010	171	2123	1024	145	Rice (low quality)	74	MMK	5	KG	1	2013	200
22011	171	2123	1024	185	Salt	74	MMK	5	KG	1	2013	150
22012	171	2123	1024	247	Rice (high quality)	74	MMK	5	KG	6	2011	350
22013	171	2123	1024	394	Chickpeas (local)	74	MMK	5	KG	5	2011	900
22014	171	2125	1370	62	Oil (palm)	74	MMK	15	L	3	2016	2449
22015	171	2125	1370	145	Rice (low quality)	74	MMK	5	KG	3	2016	700
22016	171	2125	1370	163	Pulses	74	MMK	5	KG	3	2016	1715
22017	171	2125	1370	185	Salt	74	MMK	5	KG	3	2016	184
22018	171	2125	1370	284	Fuel (diesel)	74	MMK	15	L	3	2016	741
22019	171	2125	1370	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	5000
22020	171	41775	1382	145	Rice (low quality)	74	MMK	5	KG	10	2014	989
22021	171	41775	1382	163	Pulses	74	MMK	5	KG	10	2014	2511
22022	171	41775	1382	185	Salt	74	MMK	5	KG	10	2014	567
22023	171	41775	1382	396	Oil (mixed, imported)	74	MMK	15	L	10	2014	2876
22024	171	2125	1482	62	Oil (palm)	74	MMK	15	L	3	2016	2450
22025	171	2125	1482	145	Rice (low quality)	74	MMK	5	KG	3	2016	600
22026	171	2125	1482	163	Pulses	74	MMK	5	KG	3	2016	1837
22027	171	2125	1482	185	Salt	74	MMK	5	KG	3	2016	245
22028	171	2125	1482	284	Fuel (diesel)	74	MMK	15	L	3	2016	1190
22029	171	2125	1482	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	8000
22030	171	2136	1654	62	Oil (palm)	74	MMK	15	L	12	2015	1225
22031	171	2136	1654	145	Rice (low quality)	74	MMK	5	KG	12	2015	500
22032	171	2136	1654	163	Pulses	74	MMK	5	KG	12	2015	1837
22033	171	2136	1654	185	Salt	74	MMK	5	KG	12	2015	153
22034	171	2136	1654	284	Fuel (diesel)	74	MMK	15	L	12	2015	926
22035	171	2136	1654	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	12	2015	4000
22036	171	2127	1655	62	Oil (palm)	74	MMK	15	L	3	2016	3000
22037	171	2127	1655	145	Rice (low quality)	74	MMK	5	KG	3	2016	1300
22038	171	2127	1655	163	Pulses	74	MMK	5	KG	3	2016	2200
22039	171	2127	1655	185	Salt	74	MMK	5	KG	3	2016	500
22040	171	2127	1655	284	Fuel (diesel)	74	MMK	15	L	3	2016	3000
22041	171	2127	1655	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	4000
22042	171	2127	1656	62	Oil (palm)	74	MMK	15	L	3	2016	2600
22043	171	2127	1656	145	Rice (low quality)	74	MMK	5	KG	3	2016	1000
22044	171	2127	1656	163	Pulses	74	MMK	5	KG	3	2016	1800
22045	171	2127	1656	185	Salt	74	MMK	5	KG	3	2016	400
22046	171	2127	1656	284	Fuel (diesel)	74	MMK	15	L	3	2016	3500
22047	171	2127	1656	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	4500
22048	171	2127	1657	62	Oil (palm)	74	MMK	15	L	3	2016	2500
22049	171	2127	1657	145	Rice (low quality)	74	MMK	5	KG	3	2016	1100
22050	171	2127	1657	163	Pulses	74	MMK	5	KG	3	2016	1500
22051	171	2127	1657	185	Salt	74	MMK	5	KG	3	2016	800
22052	171	2127	1657	284	Fuel (diesel)	74	MMK	15	L	3	2016	2600
22053	171	2127	1657	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	5000
22054	171	41775	1658	51	Maize	74	MMK	5	KG	12	2011	165
22055	171	41775	1658	83	Potatoes	74	MMK	5	KG	6	2011	727.273000000000025
22056	171	41775	1658	145	Rice (low quality)	74	MMK	5	KG	3	2016	458
22057	171	41775	1658	173	Onions	74	MMK	5	KG	6	2011	484.84899999999999
22058	171	41775	1658	185	Salt	74	MMK	5	KG	3	2016	275
22059	171	41775	1658	247	Rice (high quality)	74	MMK	5	KG	6	2011	680
22060	171	41775	1658	248	Soybeans	74	MMK	5	KG	6	2011	969.697000000000003
22061	171	41775	1658	284	Fuel (diesel)	74	MMK	15	L	3	2016	788
22062	171	41775	1658	394	Chickpeas (local)	74	MMK	5	KG	3	2016	1915
22063	171	41775	1658	396	Oil (mixed, imported)	74	MMK	15	L	3	2016	1834
22064	171	41775	1658	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	5500
22065	171	41775	1659	145	Rice (low quality)	74	MMK	5	KG	3	2016	573
22066	171	41775	1659	185	Salt	74	MMK	5	KG	3	2016	306
22067	171	41775	1659	284	Fuel (diesel)	74	MMK	15	L	3	2016	813
22068	171	41775	1659	394	Chickpeas (local)	74	MMK	5	KG	3	2016	1788
22069	171	41775	1659	396	Oil (mixed, imported)	74	MMK	15	L	3	2016	1834
22070	171	41775	1659	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	3250
22071	171	41775	1660	145	Rice (low quality)	74	MMK	5	KG	2	2016	848
22072	171	41775	1660	185	Salt	74	MMK	5	KG	2	2016	642
22073	171	41775	1660	284	Fuel (diesel)	74	MMK	15	L	2	2016	1175
22074	171	41775	1660	394	Chickpeas (local)	74	MMK	5	KG	2	2016	715
22075	171	41775	1660	396	Oil (mixed, imported)	74	MMK	15	L	2	2016	2903
22076	171	41775	1660	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	2	2016	8500
22077	171	41775	1661	145	Rice (low quality)	74	MMK	5	KG	3	2016	424
22078	171	41775	1661	185	Salt	74	MMK	5	KG	3	2016	413
22079	171	41775	1661	284	Fuel (diesel)	74	MMK	15	L	3	2016	706
22080	171	41775	1661	394	Chickpeas (local)	74	MMK	5	KG	3	2016	868
22081	171	41775	1661	396	Oil (mixed, imported)	74	MMK	15	L	3	2016	1421
22082	171	41775	1661	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	4250
22083	171	41775	1662	145	Rice (low quality)	74	MMK	5	KG	3	2016	458
22084	171	41775	1662	185	Salt	74	MMK	5	KG	3	2016	306
22085	171	41775	1662	284	Fuel (diesel)	74	MMK	15	L	3	2016	875
22086	171	41775	1662	394	Chickpeas (local)	74	MMK	5	KG	3	2016	1379
22087	171	41775	1662	396	Oil (mixed, imported)	74	MMK	15	L	3	2016	1834
22088	171	41775	1662	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	5000
22089	171	2130	1663	145	Rice (low quality)	74	MMK	5	KG	3	2016	542
22090	171	2130	1663	185	Salt	74	MMK	5	KG	3	2016	184
22091	171	2130	1663	245	Oil (groundnut)	74	MMK	15	L	3	2016	1840
22092	171	2130	1663	284	Fuel (diesel)	74	MMK	15	L	3	2016	608
22093	171	2130	1663	394	Chickpeas (local)	74	MMK	5	KG	3	2016	1415
22094	171	2130	1663	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	4000
22095	171	2130	1664	145	Rice (low quality)	74	MMK	5	KG	3	2016	755
22096	171	2130	1664	185	Salt	74	MMK	5	KG	3	2016	245
22097	171	2130	1664	245	Oil (groundnut)	74	MMK	15	L	3	2016	3313
22098	171	2130	1664	284	Fuel (diesel)	74	MMK	15	L	3	2016	582
22099	171	2130	1664	394	Chickpeas (local)	74	MMK	5	KG	3	2016	1509
22100	171	2130	1664	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	4000
22101	171	41776	1665	145	Rice (low quality)	74	MMK	5	KG	12	2014	438
22102	171	41776	1665	185	Salt	74	MMK	5	KG	12	2014	184
22103	171	41776	1665	245	Oil (groundnut)	74	MMK	15	L	12	2014	2352
22104	171	41776	1665	284	Fuel (diesel)	74	MMK	15	L	12	2014	1286
22105	171	41776	1665	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	12	2014	4500
22106	171	41776	1666	145	Rice (low quality)	74	MMK	5	KG	12	2014	423
22107	171	41776	1666	185	Salt	74	MMK	5	KG	12	2014	307
22108	171	41776	1666	245	Oil (groundnut)	74	MMK	15	L	12	2014	2147
22109	171	41776	1666	284	Fuel (diesel)	74	MMK	15	L	12	2014	1083
22110	171	41776	1666	394	Chickpeas (local)	74	MMK	5	KG	12	2014	491
22111	171	41776	1666	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	12	2014	3500
22112	171	41776	1667	145	Rice (low quality)	74	MMK	5	KG	3	2016	915
22113	171	41776	1667	163	Pulses	74	MMK	5	KG	3	2016	1098
22114	171	41776	1667	185	Salt	74	MMK	5	KG	3	2016	549
22115	171	41776	1667	284	Fuel (diesel)	74	MMK	15	L	3	2016	1373
22116	171	41776	1667	396	Oil (mixed, imported)	74	MMK	15	L	3	2016	1647
22117	171	41776	1667	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	5490
22118	171	41775	1668	145	Rice (low quality)	74	MMK	5	KG	3	2016	732
22119	171	41775	1668	163	Pulses	74	MMK	5	KG	3	2016	2745
22120	171	41775	1668	185	Salt	74	MMK	5	KG	3	2016	915
22121	171	41775	1668	284	Fuel (diesel)	74	MMK	15	L	3	2016	1464
22122	171	41775	1668	396	Oil (mixed, imported)	74	MMK	15	L	3	2016	1647
22123	171	41775	1668	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	14640
22124	171	41775	1669	145	Rice (low quality)	74	MMK	5	KG	12	2015	1010
22125	171	41775	1669	163	Pulses	74	MMK	5	KG	12	2015	808
22126	171	41775	1669	185	Salt	74	MMK	5	KG	12	2015	808
22127	171	41775	1669	284	Fuel (diesel)	74	MMK	15	L	12	2015	1616
22128	171	41775	1669	396	Oil (mixed, imported)	74	MMK	15	L	12	2015	2222
22129	171	41775	1669	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	12	2015	10100
22130	171	41775	1670	145	Rice (low quality)	74	MMK	5	KG	3	2016	732
22131	171	41775	1670	163	Pulses	74	MMK	5	KG	11	2015	3184
22132	171	41775	1670	185	Salt	74	MMK	5	KG	3	2016	732
22133	171	41775	1670	284	Fuel (diesel)	74	MMK	15	L	3	2016	1281
22134	171	41775	1670	396	Oil (mixed, imported)	74	MMK	15	L	3	2016	1830
22135	171	41775	1670	465	Wage (non-qualified labour, non-agricultural)	74	MMK	51	Day	3	2016	14640
22136	175	2154	645	52	Rice	62	NPR	5	KG	2	2016	40
22137	175	2154	645	84	Wheat	62	NPR	5	KG	2	2016	42
22138	175	2153	646	52	Rice	62	NPR	5	KG	7	2008	65
22139	175	2153	646	84	Wheat	62	NPR	5	KG	7	2008	55
22140	175	2153	647	52	Rice	62	NPR	5	KG	2	2016	43
22141	175	2153	647	84	Wheat	62	NPR	5	KG	2	2016	48
22142	175	2154	648	52	Rice	62	NPR	5	KG	7	2008	28
22143	175	2154	648	84	Wheat	62	NPR	5	KG	7	2008	40
22144	175	2153	649	52	Rice	62	NPR	5	KG	7	2008	38
22145	175	2153	649	84	Wheat	62	NPR	5	KG	7	2008	30
22146	175	2155	650	52	Rice	62	NPR	5	KG	2	2016	70
22147	175	2155	650	84	Wheat	62	NPR	5	KG	2	2016	90
22148	175	2156	651	52	Rice	62	NPR	5	KG	2	2016	50
22149	175	2156	651	84	Wheat	62	NPR	5	KG	2	2016	50
22150	175	2152	652	52	Rice	62	NPR	5	KG	2	2016	50
22151	175	2152	652	84	Wheat	62	NPR	5	KG	2	2016	53
22152	175	2156	653	52	Rice	62	NPR	5	KG	7	2008	28
22153	175	2156	653	84	Wheat	62	NPR	5	KG	7	2008	28
22154	175	2156	654	52	Rice	62	NPR	5	KG	7	2008	27.3000000000000007
22155	175	2156	654	84	Wheat	62	NPR	5	KG	11	2014	38
22156	175	2155	655	52	Rice	62	NPR	5	KG	2	2016	45
22157	175	2155	655	84	Wheat	62	NPR	5	KG	2	2016	45
22158	175	2152	656	52	Rice	62	NPR	5	KG	7	2008	30.8000000000000007
22159	175	2152	656	84	Wheat	62	NPR	5	KG	7	2008	30.3999999999999986
22160	175	2155	657	52	Rice	62	NPR	5	KG	7	2008	25.6666999999999987
22161	175	2155	657	84	Wheat	62	NPR	5	KG	7	2008	25.3333000000000013
22162	175	2155	658	52	Rice	62	NPR	5	KG	2	2016	34
22163	175	2155	658	84	Wheat	62	NPR	5	KG	2	2016	40
22164	175	2152	659	52	Rice	62	NPR	5	KG	7	2008	29.75
22165	175	2152	659	84	Wheat	62	NPR	5	KG	7	2008	26
22166	175	2152	660	52	Rice	62	NPR	5	KG	7	2008	27.5
22167	175	2152	660	84	Wheat	62	NPR	5	KG	7	2008	22
22168	175	2153	661	52	Rice	62	NPR	5	KG	7	2008	31
22169	175	2153	661	84	Wheat	62	NPR	5	KG	7	2008	27.5
22170	175	2154	662	52	Rice	62	NPR	5	KG	2	2016	43
22171	175	2154	662	84	Wheat	62	NPR	5	KG	2	2016	36.6000000000000014
22172	175	2153	663	52	Rice	62	NPR	5	KG	2	2016	40
22173	175	2153	663	84	Wheat	62	NPR	5	KG	2	2016	45
22174	175	2152	664	52	Rice	62	NPR	5	KG	2	2016	43
22175	175	2152	664	84	Wheat	62	NPR	5	KG	2	2016	36.6000000000000014
22176	175	2156	665	52	Rice	62	NPR	5	KG	2	2016	34
22177	175	2156	665	84	Wheat	62	NPR	5	KG	2	2016	45
22178	180	\N	\N	52	Rice	86	NIO	30	Pound	6	2013	10.6999999999999993
22179	180	\N	\N	86	Rice (milled 80-20)	86	NIO	30	Pound	8	2015	12.3699999999999992
22180	180	\N	\N	96	Oil (vegetable)	86	NIO	30	Pound	8	2015	33.259999999999998
22181	180	\N	\N	97	Sugar	86	NIO	30	Pound	8	2015	9.84999999999999964
22182	180	\N	\N	284	Fuel (diesel)	86	NIO	27	Gallon	8	2015	79.8900000000000006
22183	180	\N	\N	285	Fuel (petrol-gasoline)	86	NIO	27	Gallon	8	2015	104.409999999999997
22184	181	2208	543	51	Maize	26	XOF	5	KG	2	2016	200
22185	181	2208	543	64	Rice (imported)	26	XOF	5	KG	2	2016	450
22186	181	2208	543	65	Sorghum	26	XOF	5	KG	2	2016	224
22187	181	2208	543	73	Millet	26	XOF	5	KG	2	2016	200
22188	181	2208	543	120	Beans (niebe)	26	XOF	5	KG	2	2014	425.531999999999982
22189	181	2207	544	51	Maize	26	XOF	5	KG	2	2016	222
22190	181	2207	544	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22191	181	2207	544	65	Sorghum	26	XOF	5	KG	2	2016	206
22192	181	2207	544	73	Millet	26	XOF	5	KG	2	2016	212
22193	181	2207	544	120	Beans (niebe)	26	XOF	5	KG	12	2013	411.523000000000025
22194	181	2202	545	51	Maize	26	XOF	5	KG	2	2016	227
22195	181	2202	545	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22196	181	2202	545	65	Sorghum	26	XOF	5	KG	2	2016	175
22197	181	2202	545	73	Millet	26	XOF	5	KG	2	2016	167
22198	181	2202	545	120	Beans (niebe)	26	XOF	5	KG	2	2014	370.812000000000012
22199	181	2202	546	51	Maize	26	XOF	5	KG	2	2016	242
22200	181	2202	546	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22201	181	2202	546	65	Sorghum	26	XOF	5	KG	2	2016	220
22202	181	2202	546	73	Millet	26	XOF	5	KG	2	2016	213
22203	181	2202	546	120	Beans (niebe)	26	XOF	5	KG	2	2014	449.73599999999999
22204	181	2202	548	51	Maize	26	XOF	5	KG	2	2016	232
22205	181	2202	548	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22206	181	2202	548	65	Sorghum	26	XOF	5	KG	2	2016	229
22207	181	2202	548	73	Millet	26	XOF	5	KG	2	2016	229
22208	181	2202	548	120	Beans (niebe)	26	XOF	5	KG	2	2014	487.812999999999988
22209	181	2208	549	51	Maize	26	XOF	5	KG	2	2016	221
22210	181	2208	549	64	Rice (imported)	26	XOF	5	KG	2	2016	450
22211	181	2208	549	65	Sorghum	26	XOF	5	KG	2	2016	221
22212	181	2208	549	71	Rice (local)	26	XOF	5	KG	3	2013	349.5
22213	181	2208	549	73	Millet	26	XOF	5	KG	2	2016	217
22214	181	2208	549	120	Beans (niebe)	26	XOF	5	KG	2	2014	413.696000000000026
22215	181	2207	550	51	Maize	26	XOF	5	KG	2	2016	202
22216	181	2207	550	64	Rice (imported)	26	XOF	5	KG	2	2016	450
22217	181	2207	550	65	Sorghum	26	XOF	5	KG	2	2016	142
22218	181	2207	550	73	Millet	26	XOF	5	KG	2	2016	158
22219	181	2207	550	120	Beans (niebe)	26	XOF	5	KG	2	2014	354.408000000000015
22220	181	2209	551	51	Maize	26	XOF	5	KG	2	2016	206
22221	181	2209	551	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22222	181	2209	551	65	Sorghum	26	XOF	5	KG	2	2016	115
22223	181	2209	551	73	Millet	26	XOF	5	KG	2	2016	120
22224	181	2209	551	120	Beans (niebe)	26	XOF	5	KG	2	2014	310.84699999999998
22225	181	2208	553	51	Maize	26	XOF	5	KG	10	2015	187
22226	181	2208	553	64	Rice (imported)	26	XOF	5	KG	1	2016	411
22227	181	2208	553	65	Sorghum	26	XOF	5	KG	10	2015	217
22228	181	2208	553	73	Millet	26	XOF	5	KG	10	2015	207
22229	181	2208	553	120	Beans (niebe)	26	XOF	5	KG	10	2013	441.175999999999988
22230	181	2204	554	51	Maize	26	XOF	5	KG	2	2016	200
22231	181	2204	554	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22232	181	2204	554	65	Sorghum	26	XOF	5	KG	2	2016	200
22233	181	2204	554	73	Millet	26	XOF	5	KG	2	2016	200
22234	181	2204	554	120	Beans (niebe)	26	XOF	5	KG	2	2014	324.226999999999975
22235	181	2206	556	51	Maize	26	XOF	5	KG	2	2016	194
22236	181	2206	556	64	Rice (imported)	26	XOF	5	KG	2	2016	400
22237	181	2206	556	65	Sorghum	26	XOF	5	KG	2	2016	214
22238	181	2206	556	73	Millet	26	XOF	5	KG	2	2016	216
22239	181	2206	556	120	Beans (niebe)	26	XOF	5	KG	2	2014	439.430999999999983
22240	181	2207	557	51	Maize	26	XOF	5	KG	2	2016	221
22241	181	2207	557	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22242	181	2207	557	65	Sorghum	26	XOF	5	KG	2	2016	163
22243	181	2207	557	73	Millet	26	XOF	5	KG	2	2016	182
22244	181	2207	557	120	Beans (niebe)	26	XOF	5	KG	2	2014	326.923000000000002
22245	181	2205	558	51	Maize	26	XOF	5	KG	2	2010	188.332999999999998
22246	181	2205	558	64	Rice (imported)	26	XOF	5	KG	2	2010	450
22247	181	2205	558	73	Millet	26	XOF	5	KG	2	2010	146
22248	181	2205	560	51	Maize	26	XOF	5	KG	2	2016	160
22249	181	2205	560	64	Rice (imported)	26	XOF	5	KG	2	2016	409
22250	181	2205	560	65	Sorghum	26	XOF	5	KG	2	2016	123
22251	181	2205	560	73	Millet	26	XOF	5	KG	2	2016	139
22252	181	2205	560	120	Beans (niebe)	26	XOF	5	KG	2	2014	342.73599999999999
22253	181	2205	561	64	Rice (imported)	26	XOF	5	KG	2	2010	500
22254	181	2205	561	73	Millet	26	XOF	5	KG	2	2010	198
22255	181	2203	562	51	Maize	26	XOF	5	KG	2	2016	187
22256	181	2203	562	64	Rice (imported)	26	XOF	5	KG	2	2016	496
22257	181	2203	562	65	Sorghum	26	XOF	5	KG	2	2016	158
22258	181	2203	562	71	Rice (local)	26	XOF	5	KG	3	2013	478.5
22259	181	2203	562	73	Millet	26	XOF	5	KG	2	2016	175
22260	181	2203	562	120	Beans (niebe)	26	XOF	5	KG	2	2014	409.910000000000025
22261	181	2204	564	51	Maize	26	XOF	5	KG	10	2015	215
22262	181	2204	564	64	Rice (imported)	26	XOF	5	KG	12	2015	450
22263	181	2204	564	65	Sorghum	26	XOF	5	KG	10	2015	144
22264	181	2204	564	73	Millet	26	XOF	5	KG	12	2015	139
22265	181	2204	564	120	Beans (niebe)	26	XOF	5	KG	2	2014	238.094999999999999
22266	181	2204	565	51	Maize	26	XOF	5	KG	2	2016	208
22267	181	2204	565	64	Rice (imported)	26	XOF	5	KG	2	2016	450
22268	181	2204	565	65	Sorghum	26	XOF	5	KG	2	2016	170
22269	181	2204	565	73	Millet	26	XOF	5	KG	2	2016	164
22270	181	2204	565	120	Beans (niebe)	26	XOF	5	KG	2	2014	261.704999999999984
22271	181	2209	566	51	Maize	26	XOF	5	KG	2	2016	196
22272	181	2209	566	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22273	181	2209	566	65	Sorghum	26	XOF	5	KG	2	2016	146
22274	181	2209	566	73	Millet	26	XOF	5	KG	2	2016	143
22275	181	2209	566	120	Beans (niebe)	26	XOF	5	KG	2	2014	323.555999999999983
22276	181	2204	567	51	Maize	26	XOF	5	KG	2	2016	199
22277	181	2204	567	64	Rice (imported)	26	XOF	5	KG	2	2016	450
22278	181	2204	567	65	Sorghum	26	XOF	5	KG	2	2016	251
22279	181	2204	567	73	Millet	26	XOF	5	KG	2	2016	200
22280	181	2204	567	120	Beans (niebe)	26	XOF	5	KG	2	2014	310.601999999999975
22281	181	2209	568	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22282	181	2209	568	65	Sorghum	26	XOF	5	KG	2	2016	121
22283	181	2209	568	73	Millet	26	XOF	5	KG	2	2016	128
22284	181	2209	568	120	Beans (niebe)	26	XOF	5	KG	2	2014	260.437999999999988
22285	181	2208	573	51	Maize	26	XOF	5	KG	2	2016	200
22286	181	2208	573	64	Rice (imported)	26	XOF	5	KG	2	2016	450
22287	181	2208	573	65	Sorghum	26	XOF	5	KG	2	2016	208
22288	181	2208	573	73	Millet	26	XOF	5	KG	2	2016	200
22289	181	2208	573	120	Beans (niebe)	26	XOF	5	KG	2	2014	360.170000000000016
22290	181	2207	574	51	Maize	26	XOF	5	KG	2	2016	220
22291	181	2207	574	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22292	181	2207	574	65	Sorghum	26	XOF	5	KG	2	2016	160
22293	181	2207	574	73	Millet	26	XOF	5	KG	2	2016	154
22294	181	2207	574	120	Beans (niebe)	26	XOF	5	KG	2	2014	356.79000000000002
22295	181	2205	575	51	Maize	26	XOF	5	KG	10	2014	205.555000000000007
22296	181	2205	575	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22297	181	2205	575	65	Sorghum	26	XOF	5	KG	2	2016	102
22298	181	2205	575	73	Millet	26	XOF	5	KG	2	2016	128
22299	181	2205	575	120	Beans (niebe)	26	XOF	5	KG	2	2014	268.519000000000005
22300	181	2207	576	51	Maize	26	XOF	5	KG	2	2016	240
22301	181	2207	576	64	Rice (imported)	26	XOF	5	KG	2	2016	462
22302	181	2207	576	65	Sorghum	26	XOF	5	KG	2	2016	135
22303	181	2207	576	73	Millet	26	XOF	5	KG	2	2016	173
22304	181	2207	576	120	Beans (niebe)	26	XOF	5	KG	2	2014	314.814999999999998
22305	181	2204	577	51	Maize	26	XOF	5	KG	2	2016	148
22306	181	2204	577	64	Rice (imported)	26	XOF	5	KG	2	2016	450
22307	181	2204	577	65	Sorghum	26	XOF	5	KG	2	2016	125
22308	181	2204	577	71	Rice (local)	26	XOF	5	KG	3	2013	354
22309	181	2204	577	73	Millet	26	XOF	5	KG	2	2016	153
22310	181	2204	577	120	Beans (niebe)	26	XOF	5	KG	2	2014	528.272000000000048
22311	181	2208	578	51	Maize	26	XOF	5	KG	2	2016	200
22312	181	2208	578	64	Rice (imported)	26	XOF	5	KG	2	2016	440
22313	181	2208	578	65	Sorghum	26	XOF	5	KG	2	2016	200
22314	181	2208	578	71	Rice (local)	26	XOF	5	KG	3	2013	376.903999999999996
22315	181	2208	578	73	Millet	26	XOF	5	KG	2	2016	200
22316	181	2208	578	120	Beans (niebe)	26	XOF	5	KG	2	2014	357.142999999999972
22317	181	2203	579	64	Rice (imported)	26	XOF	5	KG	2	2016	402
22318	181	2203	579	65	Sorghum	26	XOF	5	KG	2	2016	189
22319	181	2203	579	73	Millet	26	XOF	5	KG	2	2016	192
22320	181	2203	579	120	Beans (niebe)	26	XOF	5	KG	2	2014	475.785000000000025
22321	181	2209	580	51	Maize	26	XOF	5	KG	2	2016	216
22322	181	2209	580	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22323	181	2209	580	65	Sorghum	26	XOF	5	KG	2	2016	200
22324	181	2209	580	73	Millet	26	XOF	5	KG	2	2016	196
22325	181	2209	580	120	Beans (niebe)	26	XOF	5	KG	2	2014	400
22326	181	2205	581	51	Maize	26	XOF	5	KG	2	2016	167
22327	181	2205	581	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22328	181	2205	581	65	Sorghum	26	XOF	5	KG	2	2016	135
22329	181	2205	581	73	Millet	26	XOF	5	KG	2	2016	148
22330	181	2205	581	120	Beans (niebe)	26	XOF	5	KG	2	2014	391.65300000000002
22331	181	2209	582	51	Maize	26	XOF	5	KG	2	2016	164
22332	181	2209	582	64	Rice (imported)	26	XOF	5	KG	2	2016	551
22333	181	2209	582	65	Sorghum	26	XOF	5	KG	2	2016	143
22334	181	2209	582	73	Millet	26	XOF	5	KG	2	2016	164
22335	181	2209	582	120	Beans (niebe)	26	XOF	5	KG	2	2014	325.178999999999974
22336	181	2209	583	64	Rice (imported)	26	XOF	5	KG	2	2010	510.75
22337	181	2209	583	65	Sorghum	26	XOF	5	KG	2	2010	162.667000000000002
22338	181	2209	583	73	Millet	26	XOF	5	KG	2	2010	176.667000000000002
22339	181	2206	584	51	Maize	26	XOF	5	KG	2	2016	192
22340	181	2206	584	64	Rice (imported)	26	XOF	5	KG	2	2016	400
22341	181	2206	584	65	Sorghum	26	XOF	5	KG	2	2016	216
22342	181	2206	584	71	Rice (local)	26	XOF	5	KG	12	2012	400
22343	181	2206	584	73	Millet	26	XOF	5	KG	2	2016	213
22344	181	2206	584	120	Beans (niebe)	26	XOF	5	KG	2	2014	429.180000000000007
22345	181	2202	585	51	Maize	26	XOF	5	KG	2	2016	235
22346	181	2202	585	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22347	181	2202	585	65	Sorghum	26	XOF	5	KG	2	2016	194
22348	181	2202	585	73	Millet	26	XOF	5	KG	2	2016	216
22349	181	2202	585	120	Beans (niebe)	26	XOF	5	KG	2	2014	416.144000000000005
22350	181	2205	587	64	Rice (imported)	26	XOF	5	KG	2	2010	450
22351	181	2205	587	65	Sorghum	26	XOF	5	KG	2	2010	166
22352	181	2205	587	73	Millet	26	XOF	5	KG	2	2010	193
22353	181	2207	588	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22354	181	2207	588	65	Sorghum	26	XOF	5	KG	2	2016	164
22355	181	2207	588	73	Millet	26	XOF	5	KG	2	2016	200
22356	181	2207	588	120	Beans (niebe)	26	XOF	5	KG	2	2014	406.504000000000019
22357	181	2207	589	51	Maize	26	XOF	5	KG	2	2016	247
22358	181	2207	589	64	Rice (imported)	26	XOF	5	KG	2	2016	400
22359	181	2207	589	65	Sorghum	26	XOF	5	KG	2	2016	214
22360	181	2207	589	73	Millet	26	XOF	5	KG	2	2016	229
22361	181	2207	589	120	Beans (niebe)	26	XOF	5	KG	2	2014	286.278999999999996
22362	181	2206	590	51	Maize	26	XOF	5	KG	2	2016	192
22363	181	2206	590	64	Rice (imported)	26	XOF	5	KG	2	2016	400
22364	181	2206	590	65	Sorghum	26	XOF	5	KG	2	2016	220
22365	181	2206	590	73	Millet	26	XOF	5	KG	2	2016	217
22366	181	2206	590	120	Beans (niebe)	26	XOF	5	KG	2	2014	457.408999999999992
22367	181	2209	591	51	Maize	26	XOF	5	KG	2	2016	219
22368	181	2209	591	64	Rice (imported)	26	XOF	5	KG	2	2016	515
22369	181	2209	591	65	Sorghum	26	XOF	5	KG	2	2016	130
22370	181	2209	591	73	Millet	26	XOF	5	KG	2	2016	162
22371	181	2209	591	120	Beans (niebe)	26	XOF	5	KG	2	2014	331.512999999999977
22372	181	2207	592	51	Maize	26	XOF	5	KG	2	2016	240
22373	181	2207	592	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22374	181	2207	592	65	Sorghum	26	XOF	5	KG	2	2016	245
22375	181	2207	592	73	Millet	26	XOF	5	KG	2	2016	200
22376	181	2207	592	120	Beans (niebe)	26	XOF	5	KG	2	2014	290.908999999999992
22377	181	2208	593	51	Maize	26	XOF	5	KG	2	2016	207
22378	181	2208	593	64	Rice (imported)	26	XOF	5	KG	2	2016	400
22379	181	2208	593	65	Sorghum	26	XOF	5	KG	2	2016	202
22380	181	2208	593	71	Rice (local)	26	XOF	5	KG	3	2013	333
22381	181	2208	593	73	Millet	26	XOF	5	KG	2	2016	204
22382	181	2208	593	120	Beans (niebe)	26	XOF	5	KG	2	2014	393.456000000000017
22383	181	2207	594	51	Maize	26	XOF	5	KG	2	2016	188
22384	181	2207	594	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22385	181	2207	594	65	Sorghum	26	XOF	5	KG	2	2016	159
22386	181	2207	594	73	Millet	26	XOF	5	KG	2	2016	158
22387	181	2207	594	120	Beans (niebe)	26	XOF	5	KG	2	2014	360
22388	181	2205	595	51	Maize	26	XOF	5	KG	7	2015	185
22389	181	2205	595	64	Rice (imported)	26	XOF	5	KG	7	2015	500
22390	181	2205	595	65	Sorghum	26	XOF	5	KG	2	2015	207.75
22391	181	2205	595	73	Millet	26	XOF	5	KG	7	2015	134
22392	181	2205	595	120	Beans (niebe)	26	XOF	5	KG	2	2014	291.666999999999973
22393	181	2209	596	51	Maize	26	XOF	5	KG	10	2015	177
22394	181	2209	596	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22395	181	2209	596	65	Sorghum	26	XOF	5	KG	2	2016	115
22396	181	2209	596	73	Millet	26	XOF	5	KG	2	2016	136
22397	181	2209	596	120	Beans (niebe)	26	XOF	5	KG	2	2014	330.579000000000008
22398	181	2204	597	51	Maize	26	XOF	5	KG	2	2016	189
22399	181	2204	597	64	Rice (imported)	26	XOF	5	KG	2	2016	450
22400	181	2204	597	65	Sorghum	26	XOF	5	KG	2	2016	200
22401	181	2204	597	73	Millet	26	XOF	5	KG	2	2016	198
22402	181	2204	597	120	Beans (niebe)	26	XOF	5	KG	2	2014	305.091999999999985
22403	181	2209	598	51	Maize	26	XOF	5	KG	2	2016	173
22404	181	2209	598	64	Rice (imported)	26	XOF	5	KG	2	2016	478
22405	181	2209	598	65	Sorghum	26	XOF	5	KG	2	2016	150
22406	181	2209	598	73	Millet	26	XOF	5	KG	2	2016	131
22407	181	2209	598	120	Beans (niebe)	26	XOF	5	KG	2	2014	322.591000000000008
22408	181	2205	599	64	Rice (imported)	26	XOF	5	KG	2	2010	458.333000000000027
22409	181	2205	599	73	Millet	26	XOF	5	KG	2	2010	193.667000000000002
22410	181	2203	600	51	Maize	26	XOF	5	KG	2	2016	248
22411	181	2203	600	64	Rice (imported)	26	XOF	5	KG	2	2016	450
22412	181	2203	600	65	Sorghum	26	XOF	5	KG	2	2016	158
22413	181	2203	600	71	Rice (local)	26	XOF	5	KG	3	2013	422.547000000000025
22414	181	2203	600	73	Millet	26	XOF	5	KG	2	2016	130
22415	181	2203	600	120	Beans (niebe)	26	XOF	5	KG	2	2014	452.517999999999972
22416	181	2208	601	51	Maize	26	XOF	5	KG	2	2016	265
22417	181	2208	601	64	Rice (imported)	26	XOF	5	KG	2	2016	448
22418	181	2208	601	65	Sorghum	26	XOF	5	KG	1	2016	230
22419	181	2208	601	71	Rice (local)	26	XOF	5	KG	3	2013	404
22420	181	2208	601	73	Millet	26	XOF	5	KG	2	2016	301
22421	181	2208	601	120	Beans (niebe)	26	XOF	5	KG	2	2014	524.683999999999969
22422	181	2205	602	51	Maize	26	XOF	5	KG	2	2016	180
22423	181	2205	602	64	Rice (imported)	26	XOF	5	KG	2	2016	450
22424	181	2205	602	65	Sorghum	26	XOF	5	KG	2	2016	154
22425	181	2205	602	73	Millet	26	XOF	5	KG	2	2016	164
22426	181	2205	602	120	Beans (niebe)	26	XOF	5	KG	2	2014	311.947999999999979
22427	181	2209	603	51	Maize	26	XOF	5	KG	2	2016	188
22428	181	2209	603	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22429	181	2209	603	65	Sorghum	26	XOF	5	KG	2	2016	145
22430	181	2209	603	73	Millet	26	XOF	5	KG	2	2016	136
22431	181	2209	603	120	Beans (niebe)	26	XOF	5	KG	2	2014	331.692000000000007
22432	181	2205	604	51	Maize	26	XOF	5	KG	2	2016	204
22433	181	2205	604	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22434	181	2205	604	65	Sorghum	26	XOF	5	KG	2	2016	167
22435	181	2205	604	73	Millet	26	XOF	5	KG	2	2016	143
22436	181	2205	604	120	Beans (niebe)	26	XOF	5	KG	2	2014	304.091000000000008
22437	181	2204	605	51	Maize	26	XOF	5	KG	2	2016	205
22438	181	2204	605	64	Rice (imported)	26	XOF	5	KG	2	2016	450
22439	181	2204	605	73	Millet	26	XOF	5	KG	2	2016	170
22440	181	2204	605	120	Beans (niebe)	26	XOF	5	KG	2	2014	355.262999999999977
22441	181	2203	606	51	Maize	26	XOF	5	KG	2	2016	233
22442	181	2203	606	64	Rice (imported)	26	XOF	5	KG	2	2016	622
22443	181	2203	606	65	Sorghum	26	XOF	5	KG	2	2016	190
22444	181	2203	606	73	Millet	26	XOF	5	KG	2	2016	224
22445	181	2203	606	120	Beans (niebe)	26	XOF	5	KG	2	2014	472.84899999999999
22446	181	2208	607	51	Maize	26	XOF	5	KG	2	2016	207
22447	181	2208	607	64	Rice (imported)	26	XOF	5	KG	2	2016	450
22448	181	2208	607	65	Sorghum	26	XOF	5	KG	2	2016	234
22449	181	2208	607	71	Rice (local)	26	XOF	5	KG	3	2013	417
22450	181	2208	607	73	Millet	26	XOF	5	KG	2	2016	229
22451	181	2208	607	120	Beans (niebe)	26	XOF	5	KG	2	2014	455.163000000000011
22452	181	2207	608	51	Maize	26	XOF	5	KG	12	2015	212
22453	181	2207	608	64	Rice (imported)	26	XOF	5	KG	12	2015	494
22454	181	2207	608	65	Sorghum	26	XOF	5	KG	12	2015	175
22455	181	2207	608	73	Millet	26	XOF	5	KG	12	2015	151
22456	181	2207	608	120	Beans (niebe)	26	XOF	5	KG	12	2013	252.707999999999998
22457	181	2206	609	51	Maize	26	XOF	5	KG	12	2011	237.153999999999996
22458	181	2206	609	64	Rice (imported)	26	XOF	5	KG	12	2011	450
22459	181	2206	609	65	Sorghum	26	XOF	5	KG	12	2011	242.289999999999992
22460	181	2206	609	73	Millet	26	XOF	5	KG	12	2011	265.333000000000027
22461	181	2206	609	120	Beans (niebe)	26	XOF	5	KG	8	2013	496.345000000000027
22462	181	2205	610	51	Maize	26	XOF	5	KG	2	2016	192
22463	181	2205	610	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22464	181	2205	610	65	Sorghum	26	XOF	5	KG	2	2016	120
22465	181	2205	610	73	Millet	26	XOF	5	KG	2	2016	150
22466	181	2205	610	120	Beans (niebe)	26	XOF	5	KG	2	2014	245.454000000000008
22467	181	2209	612	64	Rice (imported)	26	XOF	5	KG	2	2010	462.25
22468	181	2209	612	73	Millet	26	XOF	5	KG	2	2010	224.5
22469	181	2207	613	51	Maize	26	XOF	5	KG	2	2016	244
22470	181	2207	613	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22471	181	2207	613	65	Sorghum	26	XOF	5	KG	2	2016	203
22472	181	2207	613	73	Millet	26	XOF	5	KG	2	2016	239
22473	181	2207	613	120	Beans (niebe)	26	XOF	5	KG	2	2014	434.988
22474	181	2209	615	51	Maize	26	XOF	5	KG	2	2016	204
22475	181	2209	615	64	Rice (imported)	26	XOF	5	KG	2	2016	481
22476	181	2209	615	65	Sorghum	26	XOF	5	KG	2	2016	150
22477	181	2209	615	73	Millet	26	XOF	5	KG	2	2016	148
22478	181	2209	615	120	Beans (niebe)	26	XOF	5	KG	2	2014	318.427999999999997
22479	181	2205	616	51	Maize	26	XOF	5	KG	2	2016	171
22480	181	2205	616	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22481	181	2205	616	65	Sorghum	26	XOF	5	KG	2	2016	118
22482	181	2205	616	73	Millet	26	XOF	5	KG	2	2016	137
22483	181	2205	616	120	Beans (niebe)	26	XOF	5	KG	2	2014	285.394999999999982
22484	181	2207	617	51	Maize	26	XOF	5	KG	2	2016	200
22485	181	2207	617	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22486	181	2207	617	65	Sorghum	26	XOF	5	KG	2	2016	180
22487	181	2207	617	73	Millet	26	XOF	5	KG	2	2016	208
22488	181	2207	617	120	Beans (niebe)	26	XOF	5	KG	2	2014	414.877999999999986
22489	181	2208	618	51	Maize	26	XOF	5	KG	2	2016	187
22490	181	2208	618	64	Rice (imported)	26	XOF	5	KG	2	2016	405
22491	181	2208	618	65	Sorghum	26	XOF	5	KG	2	2016	183
22492	181	2208	618	71	Rice (local)	26	XOF	5	KG	3	2013	375
22493	181	2208	618	73	Millet	26	XOF	5	KG	2	2016	210
22494	181	2208	618	120	Beans (niebe)	26	XOF	5	KG	2	2014	437.5
22495	181	2205	619	51	Maize	26	XOF	5	KG	2	2016	154
22496	181	2205	619	64	Rice (imported)	26	XOF	5	KG	2	2016	450
22497	181	2205	619	65	Sorghum	26	XOF	5	KG	2	2016	132
22498	181	2205	619	73	Millet	26	XOF	5	KG	2	2016	136
22499	181	2205	619	120	Beans (niebe)	26	XOF	5	KG	2	2014	294.872000000000014
22500	181	2208	622	51	Maize	26	XOF	5	KG	2	2016	196
22501	181	2208	622	64	Rice (imported)	26	XOF	5	KG	2	2016	400
22502	181	2208	622	65	Sorghum	26	XOF	5	KG	2	2016	213
22503	181	2208	622	73	Millet	26	XOF	5	KG	2	2016	216
22504	181	2208	622	120	Beans (niebe)	26	XOF	5	KG	2	2014	425.206000000000017
22505	181	2207	623	51	Maize	26	XOF	5	KG	2	2016	192
22506	181	2207	623	64	Rice (imported)	26	XOF	5	KG	2	2016	425
22507	181	2207	623	65	Sorghum	26	XOF	5	KG	2	2016	137
22508	181	2207	623	71	Rice (local)	26	XOF	5	KG	3	2013	370.370000000000005
22509	181	2207	623	73	Millet	26	XOF	5	KG	2	2016	174
22510	181	2207	623	120	Beans (niebe)	26	XOF	5	KG	2	2014	314.817999999999984
22511	181	2206	624	51	Maize	26	XOF	5	KG	2	2016	195
22512	181	2206	624	64	Rice (imported)	26	XOF	5	KG	2	2016	400
22513	181	2206	624	65	Sorghum	26	XOF	5	KG	2	2016	220
22514	181	2206	624	73	Millet	26	XOF	5	KG	2	2016	218
22515	181	2206	624	120	Beans (niebe)	26	XOF	5	KG	2	2014	429.358000000000004
22516	181	2208	626	51	Maize	26	XOF	5	KG	2	2016	206
22517	181	2208	626	64	Rice (imported)	26	XOF	5	KG	2	2016	450
22518	181	2208	626	65	Sorghum	26	XOF	5	KG	2	2016	209
22519	181	2208	626	73	Millet	26	XOF	5	KG	2	2016	204
22520	181	2208	626	120	Beans (niebe)	26	XOF	5	KG	2	2014	336.134000000000015
22521	181	2208	627	51	Maize	26	XOF	5	KG	2	2016	202
22522	181	2208	627	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22523	181	2208	627	65	Sorghum	26	XOF	5	KG	2	2016	208
22524	181	2208	627	71	Rice (local)	26	XOF	5	KG	3	2013	357
22525	181	2208	627	73	Millet	26	XOF	5	KG	2	2016	221
22526	181	2208	627	120	Beans (niebe)	26	XOF	5	KG	2	2014	485.579999999999984
22527	181	2205	628	51	Maize	26	XOF	5	KG	2	2016	170
22528	181	2205	628	64	Rice (imported)	26	XOF	5	KG	2	2016	500
22529	181	2205	628	65	Sorghum	26	XOF	5	KG	2	2016	112
22530	181	2205	628	73	Millet	26	XOF	5	KG	2	2016	164
22531	181	2205	628	120	Beans (niebe)	26	XOF	5	KG	2	2014	314.151999999999987
22532	181	2207	629	51	Maize	26	XOF	5	KG	8	2015	252
22533	181	2207	629	64	Rice (imported)	26	XOF	5	KG	2	2016	454
22534	181	2207	629	65	Sorghum	26	XOF	5	KG	2	2016	172
22535	181	2207	629	73	Millet	26	XOF	5	KG	2	2016	188
22536	181	2207	629	120	Beans (niebe)	26	XOF	5	KG	2	2014	540.381999999999948
22537	181	2203	1281	64	Rice (imported)	26	XOF	5	KG	2	2010	582.33299999999997
22538	181	2203	1281	65	Sorghum	26	XOF	5	KG	2	2010	183
22539	181	2203	1281	73	Millet	26	XOF	5	KG	2	2010	180.496000000000009
22540	182	65709	1037	51	Maize	26	XOF	5	KG	2	2016	152
22541	182	65709	1037	64	Rice (imported)	26	XOF	5	KG	2	2016	236
22542	182	65709	1037	65	Sorghum	26	XOF	5	KG	2	2016	142
22543	182	65709	1037	73	Millet	26	XOF	5	KG	2	2016	143
22544	182	65709	1037	84	Wheat	26	XOF	5	KG	12	2005	189.045999999999992
22545	182	2226	1038	51	Maize	26	XOF	5	KG	2	2016	134
22546	182	2226	1038	64	Rice (imported)	26	XOF	5	KG	2	2016	285
22547	182	2226	1038	65	Sorghum	26	XOF	5	KG	2	2016	113
22548	182	2226	1038	73	Millet	26	XOF	5	KG	2	2016	123
22549	182	2226	1038	120	Beans (niebe)	26	XOF	5	KG	12	2002	169.649000000000001
22550	182	2226	1039	51	Maize	26	XOF	5	KG	2	2016	143
22551	182	2226	1039	64	Rice (imported)	26	XOF	5	KG	2	2016	303
22552	182	2226	1039	65	Sorghum	26	XOF	5	KG	2	2016	128
22553	182	2226	1039	73	Millet	26	XOF	5	KG	2	2016	130
22554	182	2226	1039	84	Wheat	26	XOF	5	KG	2	2006	187.318999999999988
22555	182	2216	1040	51	Maize	26	XOF	5	KG	6	2015	187
22556	182	2216	1040	64	Rice (imported)	26	XOF	5	KG	6	2015	440
22557	182	2216	1040	65	Sorghum	26	XOF	5	KG	6	2015	177
22558	182	2216	1040	73	Millet	26	XOF	5	KG	6	2015	196
22559	182	2223	1041	51	Maize	26	XOF	5	KG	10	2015	164
22560	182	2223	1041	64	Rice (imported)	26	XOF	5	KG	2	2016	275
22561	182	2223	1041	65	Sorghum	26	XOF	5	KG	12	2015	97
22562	182	2223	1041	73	Millet	26	XOF	5	KG	12	2015	111
22563	188	2276	291	58	Wheat flour	45	PKR	5	KG	11	2015	39
22564	188	2276	291	60	Rice (coarse)	45	PKR	5	KG	11	2015	47.5600000000000023
22565	188	2276	291	61	Lentils (masur)	45	PKR	5	KG	11	2015	161.960000000000008
22566	188	2276	291	81	Milk	45	PKR	15	L	11	2015	77.2099999999999937
22567	188	2276	291	82	Oil (cooking)	45	PKR	15	L	11	2015	182
22568	188	2276	291	84	Wheat	45	PKR	5	KG	11	2015	35.25
22569	188	2276	291	92	Eggs	45	PKR	35	Dozen	11	2015	94.7900000000000063
22570	188	2276	291	97	Sugar	45	PKR	5	KG	11	2015	61.6099999999999994
22571	188	2276	291	106	Ghee (artificial)	45	PKR	5	KG	11	2015	180
22572	188	2276	291	122	Rice (basmati, broken)	45	PKR	5	KG	11	2015	54.1799999999999997
22573	188	2276	291	138	Poultry	45	PKR	5	KG	11	2015	120.109999999999999
22574	188	2276	291	185	Salt	45	PKR	5	KG	11	2015	10
22575	188	2276	291	284	Fuel (diesel)	45	PKR	15	L	11	2015	84.1500000000000057
22576	188	2276	291	285	Fuel (petrol-gasoline)	45	PKR	15	L	11	2015	76.6099999999999994
22577	188	2276	291	325	Lentils (moong)	45	PKR	5	KG	11	2015	158.569999999999993
22578	188	2276	291	326	Beans(mash)	45	PKR	5	KG	11	2015	202.860000000000014
22579	188	2276	291	465	Wage (non-qualified labour, non-agricultural)	45	PKR	51	Day	11	2015	600
22580	188	2276	292	58	Wheat flour	45	PKR	5	KG	11	2015	39
22581	188	2276	292	60	Rice (coarse)	45	PKR	5	KG	11	2015	35.25
22582	188	2276	292	61	Lentils (masur)	45	PKR	5	KG	11	2015	137.5
22583	188	2276	292	81	Milk	45	PKR	15	L	11	2015	75
22584	188	2276	292	82	Oil (cooking)	45	PKR	15	L	11	2015	178
22585	188	2276	292	84	Wheat	45	PKR	5	KG	11	2015	33.375
22586	188	2276	292	92	Eggs	45	PKR	35	Dozen	11	2015	95.4599999999999937
22587	188	2276	292	97	Sugar	45	PKR	5	KG	11	2015	58.3800000000000026
22588	188	2276	292	106	Ghee (artificial)	45	PKR	5	KG	11	2015	176
22589	188	2276	292	122	Rice (basmati, broken)	45	PKR	5	KG	11	2015	65
22590	188	2276	292	138	Poultry	45	PKR	5	KG	11	2015	126.25
22591	188	2276	292	185	Salt	45	PKR	5	KG	11	2015	10
22592	188	2276	292	284	Fuel (diesel)	45	PKR	15	L	11	2015	84.75
22593	188	2276	292	285	Fuel (petrol-gasoline)	45	PKR	15	L	11	2015	76.9500000000000028
22594	188	2276	292	325	Lentils (moong)	45	PKR	5	KG	11	2015	147.5
22595	188	2276	292	326	Beans(mash)	45	PKR	5	KG	11	2015	248.330000000000013
22596	188	2276	292	465	Wage (non-qualified labour, non-agricultural)	45	PKR	51	Day	11	2015	475
22597	188	2277	293	58	Wheat flour	45	PKR	5	KG	11	2015	43.7139999999999986
22598	188	2277	293	60	Rice (coarse)	45	PKR	5	KG	11	2015	43.3800000000000026
22599	188	2277	293	61	Lentils (masur)	45	PKR	5	KG	11	2015	142.550000000000011
22600	188	2277	293	81	Milk	45	PKR	15	L	11	2015	84
22601	188	2277	293	82	Oil (cooking)	45	PKR	15	L	11	2015	183.300000000000011
22602	188	2277	293	84	Wheat	45	PKR	5	KG	11	2015	37
22603	188	2277	293	92	Eggs	45	PKR	35	Dozen	11	2015	95.9500000000000028
22604	188	2277	293	97	Sugar	45	PKR	5	KG	11	2015	58.4500000000000028
22605	188	2277	293	106	Ghee (artificial)	45	PKR	5	KG	11	2015	181.199999999999989
22606	188	2277	293	122	Rice (basmati, broken)	45	PKR	5	KG	11	2015	70
22607	188	2277	293	138	Poultry	45	PKR	5	KG	11	2015	137.550000000000011
22608	188	2277	293	185	Salt	45	PKR	5	KG	11	2015	12
22609	188	2277	293	284	Fuel (diesel)	45	PKR	15	L	11	2015	84.1299999999999955
22610	188	2277	293	285	Fuel (petrol-gasoline)	45	PKR	15	L	11	2015	76.5400000000000063
22611	188	2277	293	325	Lentils (moong)	45	PKR	5	KG	11	2015	161.72999999999999
22612	188	2277	293	326	Beans(mash)	45	PKR	5	KG	11	2015	256.629999999999995
22613	188	2277	293	465	Wage (non-qualified labour, non-agricultural)	45	PKR	51	Day	11	2015	630.769999999999982
22614	188	2275	294	58	Wheat flour	45	PKR	5	KG	11	2015	38.8340000000000032
22615	188	2275	294	60	Rice (coarse)	45	PKR	5	KG	11	2015	41.6700000000000017
22616	188	2275	294	61	Lentils (masur)	45	PKR	5	KG	11	2015	133.330000000000013
22617	188	2275	294	81	Milk	45	PKR	15	L	11	2015	82.5
22618	188	2275	294	82	Oil (cooking)	45	PKR	15	L	11	2015	182
22619	188	2275	294	84	Wheat	45	PKR	5	KG	11	2015	33.1670000000000016
22620	188	2275	294	92	Eggs	45	PKR	35	Dozen	11	2015	100.420000000000002
22621	188	2275	294	97	Sugar	45	PKR	5	KG	11	2015	60.4200000000000017
22622	188	2275	294	106	Ghee (artificial)	45	PKR	5	KG	11	2015	180
22623	188	2275	294	122	Rice (basmati, broken)	45	PKR	5	KG	11	2015	67.5
22624	188	2275	294	138	Poultry	45	PKR	5	KG	11	2015	141
22625	188	2275	294	185	Salt	45	PKR	5	KG	11	2015	10
22626	188	2275	294	284	Fuel (diesel)	45	PKR	15	L	11	2015	84.1400000000000006
22627	188	2275	294	285	Fuel (petrol-gasoline)	45	PKR	15	L	11	2015	76.5499999999999972
22628	188	2275	294	325	Lentils (moong)	45	PKR	5	KG	11	2015	147.919999999999987
22629	188	2275	294	326	Beans(mash)	45	PKR	5	KG	11	2015	232.5
22630	188	2275	294	465	Wage (non-qualified labour, non-agricultural)	45	PKR	51	Day	11	2015	483.329999999999984
22631	188	2272	295	58	Wheat flour	45	PKR	5	KG	11	2015	39
22632	188	2272	295	60	Rice (coarse)	45	PKR	5	KG	11	2015	50
22633	188	2272	295	61	Lentils (masur)	45	PKR	5	KG	11	2015	141.25
22634	188	2272	295	81	Milk	45	PKR	15	L	11	2015	90
22635	188	2272	295	82	Oil (cooking)	45	PKR	15	L	11	2015	182
22636	188	2272	295	84	Wheat	45	PKR	5	KG	11	2015	36
22637	188	2272	295	92	Eggs	45	PKR	35	Dozen	11	2015	102.5
22638	188	2272	295	97	Sugar	45	PKR	5	KG	11	2015	58.5
22639	188	2272	295	106	Ghee (artificial)	45	PKR	5	KG	11	2015	178
22640	188	2272	295	122	Rice (basmati, broken)	45	PKR	5	KG	11	2015	80
22641	188	2272	295	138	Poultry	45	PKR	5	KG	11	2015	157.5
22642	188	2272	295	185	Salt	45	PKR	5	KG	11	2015	10
22643	188	2272	295	284	Fuel (diesel)	45	PKR	15	L	11	2015	84.2000000000000028
22644	188	2272	295	285	Fuel (petrol-gasoline)	45	PKR	15	L	11	2015	76.5999999999999943
22645	188	2272	295	325	Lentils (moong)	45	PKR	5	KG	11	2015	166.25
22646	188	2272	295	326	Beans(mash)	45	PKR	5	KG	11	2015	253.75
22647	188	2272	295	465	Wage (non-qualified labour, non-agricultural)	45	PKR	51	Day	11	2015	550
22648	191	\N	\N	86	Rice (milled 80-20)	28	USD	18	MT	7	2015	837.610000000000014
22649	191	\N	\N	136	Maize (yellow)	28	USD	18	MT	7	2015	522.610000000000014
22650	195	2342	208	56	Maize (local)	33	PEN	5	KG	2	2016	4.59999999999999964
22651	195	2342	208	71	Rice (local)	33	PEN	5	KG	2	2016	2.56999999999999984
22652	195	2342	208	83	Potatoes	33	PEN	5	KG	2	2016	2.43999999999999995
22653	195	2342	208	94	Meat (chicken)	33	PEN	5	KG	2	2016	8.67999999999999972
22654	195	2342	208	96	Oil (vegetable)	33	PEN	15	L	2	2016	6.67999999999999972
22655	195	2342	208	97	Sugar	33	PEN	5	KG	2	2016	2.52000000000000002
22656	195	2342	208	366	Wheat flour (locally processed)	33	PEN	5	KG	2	2016	4.08999999999999986
22657	196	2355	167	80	Rice (regular, milled)	29	PHP	5	KG	8	2014	40.3299999999999983
22658	196	2355	167	87	Sweet potatoes	29	PHP	5	KG	7	2014	31.3900000000000006
22659	196	2355	167	92	Eggs	29	PHP	33	Unit	7	2014	4.91000000000000014
22660	196	2355	167	105	Garlic	29	PHP	5	KG	7	2014	269.939999999999998
22661	196	2355	167	110	Onions (red)	29	PHP	5	KG	7	2014	42.7899999999999991
22662	196	2355	167	111	Onions (white)	29	PHP	5	KG	7	2014	50.1199999999999974
22663	196	2355	167	114	Tomatoes	29	PHP	5	KG	7	2014	40.6899999999999977
22664	196	2355	167	118	Groundnuts (unshelled)	29	PHP	5	KG	4	2013	82.4000000000000057
22665	196	2355	167	123	Meat (beef, chops with bones)	29	PHP	5	KG	7	2014	209.310000000000002
22666	196	2355	167	125	Meat (chicken, whole)	29	PHP	5	KG	7	2014	139.409999999999997
22667	196	2355	167	140	Meat (pork)	29	PHP	5	KG	7	2014	195.759999999999991
22668	196	2355	167	148	Potatoes (Irish)	29	PHP	5	KG	7	2014	47.6199999999999974
22669	196	2355	167	166	Carrots	29	PHP	5	KG	7	2014	84.2900000000000063
22670	196	2355	167	181	Cabbage	29	PHP	5	KG	7	2014	56.8599999999999994
22671	196	2355	167	393	Beans (mung)	29	PHP	5	KG	4	2013	76.0999999999999943
22672	196	2355	167	401	Fish (fresh)	29	PHP	5	KG	7	2014	123.5
22673	196	2354	168	80	Rice (regular, milled)	29	PHP	5	KG	11	2015	39.3999999999999986
22674	196	2354	168	87	Sweet potatoes	29	PHP	5	KG	10	2015	56.8299999999999983
22675	196	2354	168	92	Eggs	29	PHP	33	Unit	9	2015	7.71999999999999975
22676	196	2354	168	105	Garlic	29	PHP	5	KG	10	2015	212
22677	196	2354	168	110	Onions (red)	29	PHP	5	KG	10	2015	83.5
22678	196	2354	168	111	Onions (white)	29	PHP	5	KG	10	2015	83.5
22679	196	2354	168	114	Tomatoes	29	PHP	5	KG	3	2015	46.0799999999999983
22680	196	2354	168	118	Groundnuts (unshelled)	29	PHP	5	KG	4	2013	144.460000000000008
22681	196	2354	168	123	Meat (beef, chops with bones)	29	PHP	5	KG	10	2015	236
22682	196	2354	168	125	Meat (chicken, whole)	29	PHP	5	KG	10	2015	168.830000000000013
22683	196	2354	168	139	Fish	29	PHP	5	KG	10	2015	116.670000000000002
22684	196	2354	168	140	Meat (pork)	29	PHP	5	KG	10	2015	200
22685	196	2354	168	148	Potatoes (Irish)	29	PHP	5	KG	10	2015	50.8299999999999983
22686	196	2354	168	166	Carrots	29	PHP	5	KG	7	2014	112.670000000000002
22687	196	2354	168	181	Cabbage	29	PHP	5	KG	7	2014	53
22688	196	2354	168	393	Beans (mung)	29	PHP	5	KG	4	2013	100.620000000000005
22689	196	2354	168	401	Fish (fresh)	29	PHP	5	KG	5	2015	118.5
22690	196	2356	169	80	Rice (regular, milled)	29	PHP	5	KG	11	2015	35.759999999999998
22691	196	2356	169	87	Sweet potatoes	29	PHP	5	KG	5	2015	25.5
22692	196	2356	169	92	Eggs	29	PHP	33	Unit	7	2014	5
22693	196	2356	169	105	Garlic	29	PHP	5	KG	2	2015	218
22694	196	2356	169	110	Onions (red)	29	PHP	5	KG	10	2015	71.1500000000000057
22695	196	2356	169	111	Onions (white)	29	PHP	5	KG	10	2015	56.9200000000000017
22696	196	2356	169	114	Tomatoes	29	PHP	5	KG	7	2014	31
22697	196	2356	169	118	Groundnuts (unshelled)	29	PHP	5	KG	4	2013	78.6500000000000057
22698	196	2356	169	123	Meat (beef, chops with bones)	29	PHP	5	KG	10	2015	197.310000000000002
22699	196	2356	169	125	Meat (chicken, whole)	29	PHP	5	KG	10	2015	138.849999999999994
22700	196	2356	169	139	Fish	29	PHP	5	KG	10	2015	91.0300000000000011
22701	196	2356	169	140	Meat (pork)	29	PHP	5	KG	10	2015	189.689999999999998
22702	196	2356	169	148	Potatoes (Irish)	29	PHP	5	KG	10	2015	59.9200000000000017
22703	196	2356	169	166	Carrots	29	PHP	5	KG	7	2014	57.5200000000000031
22704	196	2356	169	181	Cabbage	29	PHP	5	KG	7	2014	49.0700000000000003
22705	196	2356	169	203	Rice (paddy)	29	PHP	5	KG	3	2013	17.5399999999999991
22706	196	2356	169	393	Beans (mung)	29	PHP	5	KG	4	2013	65.6700000000000017
22707	196	2356	169	401	Fish (fresh)	29	PHP	5	KG	7	2014	111.480000000000004
22708	196	2357	170	80	Rice (regular, milled)	29	PHP	5	KG	11	2015	32.3100000000000023
22709	196	2357	170	87	Sweet potatoes	29	PHP	5	KG	5	2015	19.8599999999999994
22710	196	2357	170	92	Eggs	29	PHP	33	Unit	7	2013	4.62000000000000011
22711	196	2357	170	105	Garlic	29	PHP	5	KG	10	2015	143.689999999999998
22712	196	2357	170	110	Onions (red)	29	PHP	5	KG	10	2015	72.6200000000000045
22713	196	2357	170	111	Onions (white)	29	PHP	5	KG	10	2015	57.2299999999999969
22714	196	2357	170	114	Tomatoes	29	PHP	5	KG	7	2014	22.0199999999999996
22715	196	2357	170	118	Groundnuts (unshelled)	29	PHP	5	KG	4	2013	103.310000000000002
22716	196	2357	170	123	Meat (beef, chops with bones)	29	PHP	5	KG	10	2015	178.310000000000002
22717	196	2357	170	125	Meat (chicken, whole)	29	PHP	5	KG	10	2015	132.75
22718	196	2357	170	139	Fish	29	PHP	5	KG	10	2015	124.310000000000002
22719	196	2357	170	140	Meat (pork)	29	PHP	5	KG	10	2015	197.460000000000008
22720	196	2357	170	148	Potatoes (Irish)	29	PHP	5	KG	10	2015	42.3800000000000026
22721	196	2357	170	166	Carrots	29	PHP	5	KG	7	2014	81.1500000000000057
22722	196	2357	170	181	Cabbage	29	PHP	5	KG	7	2014	43.4600000000000009
22723	196	2357	170	203	Rice (paddy)	29	PHP	5	KG	3	2013	16.0399999999999991
22724	196	2357	170	393	Beans (mung)	29	PHP	5	KG	4	2013	71.4599999999999937
22725	196	2357	170	401	Fish (fresh)	29	PHP	5	KG	7	2014	121.849999999999994
22726	196	67165	171	80	Rice (regular, milled)	29	PHP	5	KG	9	2015	37.4500000000000028
22727	196	67165	171	87	Sweet potatoes	29	PHP	5	KG	9	2015	46.1000000000000014
22728	196	67165	171	92	Eggs	29	PHP	33	Unit	7	2013	4.41999999999999993
22729	196	67165	171	110	Onions (red)	29	PHP	5	KG	9	2015	65.4300000000000068
22730	196	67165	171	111	Onions (white)	29	PHP	5	KG	9	2015	66.9500000000000028
22731	196	67165	171	114	Tomatoes	29	PHP	5	KG	9	2015	42.5700000000000003
22732	196	67165	171	123	Meat (beef, chops with bones)	29	PHP	5	KG	9	2015	238.5
22733	196	67165	171	125	Meat (chicken, whole)	29	PHP	5	KG	9	2015	134.710000000000008
22734	196	67165	171	139	Fish	29	PHP	5	KG	9	2015	141.710000000000008
22735	196	67165	171	140	Meat (pork)	29	PHP	5	KG	9	2015	188.47999999999999
22736	196	67165	171	148	Potatoes (Irish)	29	PHP	5	KG	9	2015	45.7100000000000009
22737	196	67165	171	166	Carrots	29	PHP	5	KG	5	2015	45.7700000000000031
22738	196	67165	171	181	Cabbage	29	PHP	5	KG	5	2015	42.2299999999999969
22739	196	67165	171	203	Rice (paddy)	29	PHP	5	KG	3	2013	17.2600000000000016
22740	196	67165	171	401	Fish (fresh)	29	PHP	5	KG	5	2015	149.819999999999993
22741	196	67166	172	80	Rice (regular, milled)	29	PHP	5	KG	11	2015	34
22742	196	67166	172	87	Sweet potatoes	29	PHP	5	KG	10	2015	44.7199999999999989
22743	196	67166	172	92	Eggs	29	PHP	33	Unit	9	2015	6.5
22744	196	67166	172	105	Garlic	29	PHP	5	KG	10	2015	188.090000000000003
22745	196	67166	172	110	Onions (red)	29	PHP	5	KG	10	2015	75.1099999999999994
22746	196	67166	172	111	Onions (white)	29	PHP	5	KG	10	2015	68.4399999999999977
22747	196	67166	172	114	Tomatoes	29	PHP	5	KG	7	2014	41.2199999999999989
22748	196	67166	172	118	Groundnuts (unshelled)	29	PHP	5	KG	4	2013	93.3299999999999983
22749	196	67166	172	123	Meat (beef, chops with bones)	29	PHP	5	KG	10	2015	200.370000000000005
22750	196	67166	172	125	Meat (chicken, whole)	29	PHP	5	KG	10	2015	130.439999999999998
22751	196	67166	172	139	Fish	29	PHP	5	KG	10	2015	140.219999999999999
22752	196	67166	172	140	Meat (pork)	29	PHP	5	KG	10	2015	195.669999999999987
22753	196	67166	172	148	Potatoes (Irish)	29	PHP	5	KG	10	2015	50.8299999999999983
22754	196	67166	172	166	Carrots	29	PHP	5	KG	10	2015	92.5600000000000023
22755	196	67166	172	181	Cabbage	29	PHP	5	KG	10	2015	94.0600000000000023
22756	196	67166	172	203	Rice (paddy)	29	PHP	5	KG	3	2013	14.4199999999999999
22757	196	67166	172	393	Beans (mung)	29	PHP	5	KG	4	2013	78
22758	196	67166	172	401	Fish (fresh)	29	PHP	5	KG	5	2015	139.409999999999997
22759	196	67167	173	80	Rice (regular, milled)	29	PHP	5	KG	11	2015	34.0799999999999983
22760	196	67167	173	87	Sweet potatoes	29	PHP	5	KG	10	2015	27.6900000000000013
22761	196	67167	173	92	Eggs	29	PHP	33	Unit	7	2013	5
22762	196	67167	173	110	Onions (red)	29	PHP	5	KG	10	2015	56.6199999999999974
22763	196	67167	173	111	Onions (white)	29	PHP	5	KG	10	2015	75.5400000000000063
22764	196	67167	173	114	Tomatoes	29	PHP	5	KG	10	2015	58.1499999999999986
22765	196	67167	173	118	Groundnuts (unshelled)	29	PHP	5	KG	4	2013	97.9200000000000017
22766	196	67167	173	123	Meat (beef, chops with bones)	29	PHP	5	KG	10	2015	200
22767	196	67167	173	125	Meat (chicken, whole)	29	PHP	5	KG	10	2015	150
22768	196	67167	173	139	Fish	29	PHP	5	KG	10	2015	150
22769	196	67167	173	140	Meat (pork)	29	PHP	5	KG	10	2015	200
22770	196	67167	173	148	Potatoes (Irish)	29	PHP	5	KG	10	2015	64.4599999999999937
22771	196	67167	173	166	Carrots	29	PHP	5	KG	10	2015	123.849999999999994
22772	196	67167	173	181	Cabbage	29	PHP	5	KG	10	2015	131.849999999999994
22773	196	67167	173	203	Rice (paddy)	29	PHP	5	KG	3	2013	15.75
22774	196	67167	173	401	Fish (fresh)	29	PHP	5	KG	5	2015	145.379999999999995
22775	196	2361	174	80	Rice (regular, milled)	29	PHP	5	KG	11	2015	34
22776	196	2361	174	87	Sweet potatoes	29	PHP	5	KG	10	2015	28.4400000000000013
22777	196	2361	174	92	Eggs	29	PHP	33	Unit	7	2013	5.25999999999999979
22778	196	2361	174	105	Garlic	29	PHP	5	KG	10	2015	140
22779	196	2361	174	110	Onions (red)	29	PHP	5	KG	10	2015	81.5600000000000023
22780	196	2361	174	111	Onions (white)	29	PHP	5	KG	10	2015	78
22781	196	2361	174	114	Tomatoes	29	PHP	5	KG	7	2014	37.5799999999999983
22782	196	2361	174	118	Groundnuts (unshelled)	29	PHP	5	KG	4	2013	87.3299999999999983
22783	196	2361	174	123	Meat (beef, chops with bones)	29	PHP	5	KG	10	2015	220
22784	196	2361	174	125	Meat (chicken, whole)	29	PHP	5	KG	10	2015	127.890000000000001
22785	196	2361	174	139	Fish	29	PHP	5	KG	10	2015	95.1099999999999994
22786	196	2361	174	140	Meat (pork)	29	PHP	5	KG	10	2015	197.889999999999986
22787	196	2361	174	148	Potatoes (Irish)	29	PHP	5	KG	10	2015	58
22788	196	2361	174	166	Carrots	29	PHP	5	KG	7	2014	108
22789	196	2361	174	181	Cabbage	29	PHP	5	KG	7	2014	58
22790	196	2361	174	203	Rice (paddy)	29	PHP	5	KG	3	2013	14.7699999999999996
22791	196	2361	174	393	Beans (mung)	29	PHP	5	KG	4	2013	84
22792	196	2361	174	401	Fish (fresh)	29	PHP	5	KG	5	2015	109.109999999999999
22793	196	2362	175	80	Rice (regular, milled)	29	PHP	5	KG	11	2015	40.6499999999999986
22794	196	2362	175	87	Sweet potatoes	29	PHP	5	KG	5	2015	35
22795	196	2362	175	92	Eggs	29	PHP	33	Unit	7	2015	8
22796	196	2362	175	105	Garlic	29	PHP	5	KG	10	2015	173.75
22797	196	2362	175	110	Onions (red)	29	PHP	5	KG	10	2015	92
22798	196	2362	175	111	Onions (white)	29	PHP	5	KG	10	2015	82.2900000000000063
22799	196	2362	175	114	Tomatoes	29	PHP	5	KG	10	2015	56.8200000000000003
22800	196	2362	175	118	Groundnuts (unshelled)	29	PHP	5	KG	4	2013	67.8499999999999943
22801	196	2362	175	123	Meat (beef, chops with bones)	29	PHP	5	KG	10	2015	192.319999999999993
22802	196	2362	175	125	Meat (chicken, whole)	29	PHP	5	KG	10	2015	139.669999999999987
22803	196	2362	175	139	Fish	29	PHP	5	KG	10	2015	106.969999999999999
22804	196	2362	175	140	Meat (pork)	29	PHP	5	KG	10	2015	191.539999999999992
22805	196	2362	175	148	Potatoes (Irish)	29	PHP	5	KG	10	2015	69.230000000000004
22806	196	2362	175	166	Carrots	29	PHP	5	KG	7	2014	127.379999999999995
22807	196	2362	175	181	Cabbage	29	PHP	5	KG	7	2014	74
22808	196	2362	175	203	Rice (paddy)	29	PHP	5	KG	3	2013	14.3900000000000006
22809	196	2362	175	393	Beans (mung)	29	PHP	5	KG	4	2013	58.7100000000000009
22810	196	2362	175	401	Fish (fresh)	29	PHP	5	KG	7	2014	124.760000000000005
22811	196	2363	176	80	Rice (regular, milled)	29	PHP	5	KG	11	2015	34.9200000000000017
22812	196	2363	176	87	Sweet potatoes	29	PHP	5	KG	5	2015	27.9499999999999993
22813	196	2363	176	92	Eggs	29	PHP	33	Unit	7	2013	5
22814	196	2363	176	105	Garlic	29	PHP	5	KG	10	2015	125
22815	196	2363	176	110	Onions (red)	29	PHP	5	KG	10	2015	78.6200000000000045
22816	196	2363	176	111	Onions (white)	29	PHP	5	KG	10	2015	61.4600000000000009
22817	196	2363	176	114	Tomatoes	29	PHP	5	KG	7	2014	38.9600000000000009
22818	196	2363	176	123	Meat (beef, chops with bones)	29	PHP	5	KG	10	2015	172.340000000000003
22819	196	2363	176	125	Meat (chicken, whole)	29	PHP	5	KG	10	2015	136.120000000000005
22820	196	2363	176	139	Fish	29	PHP	5	KG	10	2015	107.379999999999995
22821	196	2363	176	140	Meat (pork)	29	PHP	5	KG	10	2015	202.080000000000013
22822	196	2363	176	148	Potatoes (Irish)	29	PHP	5	KG	10	2015	57.2199999999999989
22823	196	2363	176	166	Carrots	29	PHP	5	KG	7	2014	70.8700000000000045
22824	196	2363	176	181	Cabbage	29	PHP	5	KG	7	2014	49.8200000000000003
22825	196	2363	176	393	Beans (mung)	29	PHP	5	KG	4	2013	59.3500000000000014
22826	196	2363	176	401	Fish (fresh)	29	PHP	5	KG	7	2014	104.780000000000001
22827	196	2364	177	80	Rice (regular, milled)	29	PHP	5	KG	10	2015	32.3100000000000023
22828	196	2364	177	87	Sweet potatoes	29	PHP	5	KG	10	2015	32.6799999999999997
22829	196	2364	177	92	Eggs	29	PHP	33	Unit	7	2013	5.54999999999999982
22830	196	2364	177	110	Onions (red)	29	PHP	5	KG	10	2015	74.4300000000000068
22831	196	2364	177	111	Onions (white)	29	PHP	5	KG	10	2015	72.2900000000000063
22832	196	2364	177	114	Tomatoes	29	PHP	5	KG	10	2015	68.75
22833	196	2364	177	123	Meat (beef, chops with bones)	29	PHP	5	KG	10	2015	200
22834	196	2364	177	125	Meat (chicken, whole)	29	PHP	5	KG	10	2015	140
22835	196	2364	177	139	Fish	29	PHP	5	KG	10	2015	137.039999999999992
22836	196	2364	177	140	Meat (pork)	29	PHP	5	KG	10	2015	207.379999999999995
22837	196	2364	177	148	Potatoes (Irish)	29	PHP	5	KG	10	2015	85.519999999999996
22838	196	2364	177	166	Carrots	29	PHP	5	KG	10	2015	93.1700000000000017
22839	196	2364	177	181	Cabbage	29	PHP	5	KG	10	2015	88.6200000000000045
22840	196	2364	177	203	Rice (paddy)	29	PHP	5	KG	3	2013	13.9900000000000002
22841	196	2364	177	401	Fish (fresh)	29	PHP	5	KG	5	2015	128.639999999999986
22842	196	67159	178	80	Rice (regular, milled)	29	PHP	5	KG	5	2015	40.5300000000000011
22843	196	67159	178	87	Sweet potatoes	29	PHP	5	KG	10	2015	28.0799999999999983
22844	196	67159	178	92	Eggs	29	PHP	33	Unit	7	2013	5.16999999999999993
22845	196	67159	178	110	Onions (red)	29	PHP	5	KG	10	2015	74.1299999999999955
22846	196	67159	178	111	Onions (white)	29	PHP	5	KG	7	2014	66.4200000000000017
22847	196	67159	178	114	Tomatoes	29	PHP	5	KG	10	2015	40
22848	196	67159	178	123	Meat (beef, chops with bones)	29	PHP	5	KG	10	2015	150.150000000000006
22849	196	67159	178	125	Meat (chicken, whole)	29	PHP	5	KG	10	2015	135.25
22850	196	67159	178	139	Fish	29	PHP	5	KG	10	2015	107.079999999999998
22851	196	67159	178	140	Meat (pork)	29	PHP	5	KG	10	2015	180
22852	196	67159	178	148	Potatoes (Irish)	29	PHP	5	KG	10	2015	75.5
22853	196	67159	178	166	Carrots	29	PHP	5	KG	10	2015	71.0799999999999983
22854	196	67159	178	181	Cabbage	29	PHP	5	KG	7	2015	50
22855	196	67159	178	203	Rice (paddy)	29	PHP	5	KG	3	2013	15.2200000000000006
22856	196	67159	178	393	Beans (mung)	29	PHP	5	KG	4	2013	72.480000000000004
22857	196	67159	178	401	Fish (fresh)	29	PHP	5	KG	5	2015	126.670000000000002
22858	196	67160	179	80	Rice (regular, milled)	29	PHP	5	KG	11	2015	40.4399999999999977
22859	196	67160	179	87	Sweet potatoes	29	PHP	5	KG	5	2015	19.75
22860	196	67160	179	92	Eggs	29	PHP	33	Unit	7	2013	4.83000000000000007
22861	196	67160	179	105	Garlic	29	PHP	5	KG	10	2015	400
22862	196	67160	179	110	Onions (red)	29	PHP	5	KG	10	2015	79.8299999999999983
22863	196	67160	179	111	Onions (white)	29	PHP	5	KG	10	2015	82.2000000000000028
22864	196	67160	179	114	Tomatoes	29	PHP	5	KG	7	2014	40.9799999999999969
22865	196	67160	179	123	Meat (beef, chops with bones)	29	PHP	5	KG	10	2015	180.25
22866	196	67160	179	125	Meat (chicken, whole)	29	PHP	5	KG	10	2015	137.5
22867	196	67160	179	139	Fish	29	PHP	5	KG	10	2015	116.799999999999997
22868	196	67160	179	140	Meat (pork)	29	PHP	5	KG	10	2015	187.419999999999987
22869	196	67160	179	148	Potatoes (Irish)	29	PHP	5	KG	10	2015	56.1300000000000026
22870	196	67160	179	166	Carrots	29	PHP	5	KG	10	2015	54
22871	196	67160	179	181	Cabbage	29	PHP	5	KG	7	2014	46.3500000000000014
22872	196	67160	179	203	Rice (paddy)	29	PHP	5	KG	3	2013	17.9100000000000001
22873	196	67160	179	393	Beans (mung)	29	PHP	5	KG	4	2013	63.4299999999999997
22874	196	67160	179	401	Fish (fresh)	29	PHP	5	KG	5	2015	114.670000000000002
22875	196	67161	180	80	Rice (regular, milled)	29	PHP	5	KG	10	2015	39.0300000000000011
22876	196	67161	180	87	Sweet potatoes	29	PHP	5	KG	10	2015	19.8500000000000014
22877	196	67161	180	92	Eggs	29	PHP	33	Unit	7	2013	4.62000000000000011
22878	196	67161	180	105	Garlic	29	PHP	5	KG	7	2014	274.180000000000007
22879	196	67161	180	110	Onions (red)	29	PHP	5	KG	10	2015	90.230000000000004
22880	196	67161	180	111	Onions (white)	29	PHP	5	KG	7	2014	66.1299999999999955
22881	196	67161	180	114	Tomatoes	29	PHP	5	KG	7	2014	35.990000000000002
22882	196	67161	180	118	Groundnuts (unshelled)	29	PHP	5	KG	4	2013	86.25
22883	196	67161	180	123	Meat (beef, chops with bones)	29	PHP	5	KG	10	2015	170
23047	205	21973	1047	81	Milk	77	RWF	15	L	12	2015	383.333000000000027
22884	196	67161	180	125	Meat (chicken, whole)	29	PHP	5	KG	10	2015	127.920000000000002
22885	196	67161	180	139	Fish	29	PHP	5	KG	10	2015	102.689999999999998
22886	196	67161	180	140	Meat (pork)	29	PHP	5	KG	10	2015	180
22887	196	67161	180	148	Potatoes (Irish)	29	PHP	5	KG	10	2015	51.3800000000000026
22888	196	67161	180	166	Carrots	29	PHP	5	KG	7	2014	57.8599999999999994
22889	196	67161	180	181	Cabbage	29	PHP	5	KG	7	2014	44.509999999999998
22890	196	67161	180	203	Rice (paddy)	29	PHP	5	KG	3	2013	14.2100000000000009
22891	196	67161	180	393	Beans (mung)	29	PHP	5	KG	4	2013	78.9599999999999937
22892	196	67161	180	401	Fish (fresh)	29	PHP	5	KG	7	2014	116.609999999999999
22893	196	67162	181	80	Rice (regular, milled)	29	PHP	5	KG	11	2015	37
22894	196	67162	181	87	Sweet potatoes	29	PHP	5	KG	10	2015	29.2899999999999991
22895	196	67162	181	92	Eggs	29	PHP	33	Unit	9	2015	6
22896	196	67162	181	105	Garlic	29	PHP	5	KG	7	2013	250
22897	196	67162	181	110	Onions (red)	29	PHP	5	KG	10	2015	86.5
22898	196	67162	181	111	Onions (white)	29	PHP	5	KG	7	2013	67.269999999999996
22899	196	67162	181	114	Tomatoes	29	PHP	5	KG	10	2015	25.4499999999999993
22900	196	67162	181	123	Meat (beef, chops with bones)	29	PHP	5	KG	10	2015	160
22901	196	67162	181	125	Meat (chicken, whole)	29	PHP	5	KG	10	2015	130
22902	196	67162	181	139	Fish	29	PHP	5	KG	10	2015	120
22903	196	67162	181	140	Meat (pork)	29	PHP	5	KG	10	2015	160
22904	196	67162	181	148	Potatoes (Irish)	29	PHP	5	KG	10	2015	52.0600000000000023
22905	196	67162	181	166	Carrots	29	PHP	5	KG	10	2015	48.5
22906	196	67162	181	181	Cabbage	29	PHP	5	KG	10	2015	42.490000000000002
22907	196	67162	181	203	Rice (paddy)	29	PHP	5	KG	3	2013	17.1900000000000013
22908	196	67162	181	401	Fish (fresh)	29	PHP	5	KG	5	2015	120
22909	196	2368	182	80	Rice (regular, milled)	29	PHP	5	KG	11	2015	37.4799999999999969
22910	196	2368	182	87	Sweet potatoes	29	PHP	5	KG	10	2015	20
22911	196	2368	182	92	Eggs	29	PHP	33	Unit	7	2013	4.83000000000000007
22912	196	2368	182	105	Garlic	29	PHP	5	KG	10	2015	150
22913	196	2368	182	110	Onions (red)	29	PHP	5	KG	10	2015	87.3100000000000023
22914	196	2368	182	114	Tomatoes	29	PHP	5	KG	10	2015	45.2299999999999969
22915	196	2368	182	118	Groundnuts (unshelled)	29	PHP	5	KG	4	2013	112.739999999999995
22916	196	2368	182	123	Meat (beef, chops with bones)	29	PHP	5	KG	10	2015	180
22917	196	2368	182	125	Meat (chicken, whole)	29	PHP	5	KG	10	2015	144.310000000000002
22918	196	2368	182	139	Fish	29	PHP	5	KG	10	2015	135.689999999999998
22919	196	2368	182	140	Meat (pork)	29	PHP	5	KG	10	2015	190
22920	196	2368	182	148	Potatoes (Irish)	29	PHP	5	KG	10	2015	80.3100000000000023
22921	196	2368	182	166	Carrots	29	PHP	5	KG	10	2015	78
22922	196	2368	182	181	Cabbage	29	PHP	5	KG	10	2015	55.5399999999999991
22923	196	2368	182	203	Rice (paddy)	29	PHP	5	KG	3	2013	14.1999999999999993
22924	196	2368	182	393	Beans (mung)	29	PHP	5	KG	4	2013	75.2000000000000028
22925	196	2368	182	401	Fish (fresh)	29	PHP	5	KG	5	2015	135.330000000000013
22926	196	67156	183	80	Rice (regular, milled)	29	PHP	5	KG	11	2015	36.6000000000000014
22927	196	67156	183	87	Sweet potatoes	29	PHP	5	KG	10	2015	33
22928	196	67156	183	92	Eggs	29	PHP	33	Unit	9	2015	8.09999999999999964
22929	196	67156	183	105	Garlic	29	PHP	5	KG	10	2015	96.7999999999999972
22930	196	67156	183	110	Onions (red)	29	PHP	5	KG	10	2015	82.2900000000000063
22931	196	67156	183	114	Tomatoes	29	PHP	5	KG	7	2014	29.0799999999999983
22932	196	67156	183	123	Meat (beef, chops with bones)	29	PHP	5	KG	10	2015	143
22933	196	67156	183	125	Meat (chicken, whole)	29	PHP	5	KG	10	2015	133
22934	196	67156	183	139	Fish	29	PHP	5	KG	10	2015	124
22935	196	67156	183	140	Meat (pork)	29	PHP	5	KG	10	2015	168
22936	196	67156	183	148	Potatoes (Irish)	29	PHP	5	KG	10	2015	52
22937	196	67156	183	166	Carrots	29	PHP	5	KG	7	2014	68.1500000000000057
22938	196	67156	183	181	Cabbage	29	PHP	5	KG	7	2014	36.0200000000000031
22939	196	67156	183	203	Rice (paddy)	29	PHP	5	KG	3	2013	13.6600000000000001
22940	196	67156	183	393	Beans (mung)	29	PHP	5	KG	4	2013	67.2000000000000028
22941	196	67156	183	401	Fish (fresh)	29	PHP	5	KG	5	2015	124
22942	205	21973	1045	51	Maize	77	RWF	5	KG	12	2015	244.332999999999998
22943	205	21973	1045	52	Rice	77	RWF	5	KG	12	2015	725
22944	205	21973	1045	58	Wheat flour	77	RWF	5	KG	11	2015	500
22945	205	21973	1045	65	Sorghum	77	RWF	5	KG	12	2015	445
22946	205	21973	1045	68	Cassava	77	RWF	5	KG	12	2015	200
22947	205	21973	1045	71	Rice (local)	77	RWF	5	KG	10	2012	650
22948	205	21973	1045	74	Cassava flour	77	RWF	5	KG	12	2015	283.5
22949	205	21973	1045	76	Maize flour	77	RWF	5	KG	12	2015	300
22950	205	21973	1045	77	Maize flour (imported)	77	RWF	5	KG	12	2015	480
22951	205	21973	1045	81	Milk	77	RWF	15	L	12	2015	240
22952	205	21973	1045	84	Wheat	77	RWF	5	KG	12	2015	500
22953	205	21973	1045	87	Sweet potatoes	77	RWF	5	KG	12	2015	78.3332999999999942
22954	205	21973	1045	91	Chili (red)	77	RWF	5	KG	12	2015	600
22955	205	21973	1045	92	Eggs	77	RWF	33	Unit	12	2015	80.6667000000000058
22956	205	21973	1045	105	Garlic	77	RWF	5	KG	12	2015	2900
22957	205	21973	1045	110	Onions (red)	77	RWF	5	KG	12	2015	378
22958	205	21973	1045	111	Onions (white)	77	RWF	5	KG	11	2015	600
22959	205	21973	1045	114	Tomatoes	77	RWF	5	KG	12	2015	287.666999999999973
22960	205	21973	1045	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1200
22961	205	21973	1045	141	Meat (beef)	77	RWF	5	KG	12	2015	1700
22962	205	21973	1045	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	163.332999999999998
22963	205	21973	1045	166	Carrots	77	RWF	5	KG	12	2015	231.332999999999998
22964	205	21973	1045	181	Cabbage	77	RWF	5	KG	12	2015	86
22965	205	21973	1045	241	Oranges (big size)	77	RWF	5	KG	10	2015	633.33299999999997
22966	205	21973	1045	248	Soybeans	77	RWF	5	KG	12	2015	500
22967	205	21973	1045	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	810
22968	205	21973	1045	253	Sorghum flour	77	RWF	5	KG	12	2015	475.666999999999973
22969	205	21973	1045	254	Bananas	77	RWF	5	KG	12	2015	145
22970	205	21973	1045	262	Beans (dry)	77	RWF	5	KG	12	2015	437.666999999999973
22971	205	21973	1045	292	Peppers (green)	77	RWF	5	KG	12	2015	366.666999999999973
22972	205	21973	1045	381	Rice (imported, Tanzanian)	77	RWF	5	KG	1	2015	900
22973	205	21973	1045	383	Livestock (Goat)	77	RWF	33	Unit	2	2015	16000
22974	205	21973	1045	404	Spinach	77	RWF	5	KG	4	2015	100
22975	205	21973	1045	407	Guava	77	RWF	5	KG	11	2015	56.3333000000000013
22976	205	21973	1045	408	Papaya	77	RWF	5	KG	11	2015	210.75
22977	205	21973	1045	411	Mangoes	77	RWF	5	KG	12	2015	400
22978	205	21973	1045	434	Eggplants	77	RWF	5	KG	12	2015	206.667000000000002
22979	205	21973	1045	446	Charcoal	77	RWF	31	Sack	12	2015	4566.67000000000007
22980	205	21973	1045	447	Passion fruit	77	RWF	5	KG	12	2015	550.33299999999997
22981	205	21973	1045	450	Zucchini	77	RWF	5	KG	12	2015	95
22982	205	21973	1045	453	Livestock (hen)	77	RWF	33	Unit	12	2015	3750
22983	205	21973	1045	454	Avocados	77	RWF	33	Unit	12	2015	186.667000000000002
22984	205	21973	1045	455	Cassava leaves	77	RWF	5	KG	12	2015	400
22985	205	21973	1045	456	Peas (fresh)	77	RWF	5	KG	12	2015	1000
22986	205	21973	1045	457	Peas (dry)	77	RWF	5	KG	11	2015	733.33299999999997
22987	205	21973	1045	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	300
22988	205	21971	1046	51	Maize	77	RWF	5	KG	12	2015	300
22989	205	21971	1046	52	Rice	77	RWF	5	KG	12	2015	608.25
22990	205	21971	1046	58	Wheat flour	77	RWF	5	KG	12	2015	600
22991	205	21971	1046	65	Sorghum	77	RWF	5	KG	12	2015	300
22992	205	21971	1046	68	Cassava	77	RWF	5	KG	9	2015	300
22993	205	21971	1046	71	Rice (local)	77	RWF	5	KG	10	2012	650
22994	205	21971	1046	74	Cassava flour	77	RWF	5	KG	12	2015	366.666999999999973
22995	205	21971	1046	76	Maize flour	77	RWF	5	KG	12	2015	470.75
22996	205	21971	1046	81	Milk	77	RWF	15	L	12	2015	300
22997	205	21971	1046	84	Wheat	77	RWF	5	KG	12	2015	383.25
22998	205	21971	1046	87	Sweet potatoes	77	RWF	5	KG	12	2015	156.75
22999	205	21971	1046	91	Chili (red)	77	RWF	5	KG	12	2015	500
23000	205	21971	1046	92	Eggs	77	RWF	33	Unit	12	2015	105
23001	205	21971	1046	105	Garlic	77	RWF	5	KG	12	2015	2666.75
23002	205	21971	1046	110	Onions (red)	77	RWF	5	KG	12	2015	600
23003	205	21971	1046	111	Onions (white)	77	RWF	5	KG	12	2015	741.75
23004	205	21971	1046	114	Tomatoes	77	RWF	5	KG	12	2015	500
23005	205	21971	1046	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1000
23006	205	21971	1046	140	Meat (pork)	77	RWF	5	KG	12	2015	1500
23007	205	21971	1046	141	Meat (beef)	77	RWF	5	KG	12	2015	1700
23008	205	21971	1046	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	165.332999999999998
23009	205	21971	1046	166	Carrots	77	RWF	5	KG	12	2015	262.5
23010	205	21971	1046	181	Cabbage	77	RWF	5	KG	12	2015	110
23011	205	21971	1046	183	Meat (mutton)	77	RWF	5	KG	12	2015	1600
23012	205	21971	1046	229	Apples (red)	77	RWF	5	KG	11	2015	2833
23013	205	21971	1046	241	Oranges (big size)	77	RWF	5	KG	12	2015	800
23014	205	21971	1046	248	Soybeans	77	RWF	5	KG	12	2015	500
23015	205	21971	1046	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	712.5
23016	205	21971	1046	253	Sorghum flour	77	RWF	5	KG	12	2015	429.25
23017	205	21971	1046	254	Bananas	77	RWF	5	KG	12	2015	261.75
23018	205	21971	1046	262	Beans (dry)	77	RWF	5	KG	12	2015	466.75
23019	205	21971	1046	263	Beans (fresh)	77	RWF	5	KG	6	2015	400
23020	205	21971	1046	287	Livestock (cattle)	77	RWF	33	Unit	12	2015	221111
23021	205	21971	1046	292	Peppers (green)	77	RWF	5	KG	12	2015	675
23022	205	21971	1046	381	Rice (imported, Tanzanian)	77	RWF	5	KG	9	2013	1500
23023	205	21971	1046	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	25555.2999999999993
23024	205	21971	1046	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	23000
23025	205	21971	1046	404	Spinach	77	RWF	5	KG	7	2015	300
23026	205	21971	1046	407	Guava	77	RWF	5	KG	12	2015	300
23027	205	21971	1046	408	Papaya	77	RWF	5	KG	11	2015	433
23028	205	21971	1046	411	Mangoes	77	RWF	5	KG	12	2015	633.25
23029	205	21971	1046	422	Livestock (pig)	77	RWF	33	Unit	12	2015	64444.3000000000029
23030	205	21971	1046	434	Eggplants	77	RWF	5	KG	12	2015	308.5
23031	205	21971	1046	446	Charcoal	77	RWF	31	Sack	12	2015	6000
23032	205	21971	1046	447	Passion fruit	77	RWF	5	KG	12	2015	987.5
23033	205	21971	1046	450	Zucchini	77	RWF	5	KG	12	2015	190
23034	205	21971	1046	451	Meat (goat)	77	RWF	5	KG	12	2015	2625
23035	205	21971	1046	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4500
23036	205	21971	1046	454	Avocados	77	RWF	33	Unit	12	2015	187.5
23037	205	21971	1046	456	Peas (fresh)	77	RWF	5	KG	12	2015	800
23038	205	21971	1046	457	Peas (dry)	77	RWF	5	KG	12	2015	1200
23039	205	21971	1046	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	300
23040	205	21973	1047	51	Maize	77	RWF	5	KG	12	2015	221.5
23041	205	21973	1047	52	Rice	77	RWF	5	KG	12	2015	634.33299999999997
23042	205	21973	1047	65	Sorghum	77	RWF	5	KG	12	2015	287.333000000000027
23043	205	21973	1047	68	Cassava	77	RWF	5	KG	12	2015	188.332999999999998
23044	205	21973	1047	71	Rice (local)	77	RWF	5	KG	10	2012	610
23045	205	21973	1047	74	Cassava flour	77	RWF	5	KG	12	2015	209
23046	205	21973	1047	76	Maize flour	77	RWF	5	KG	12	2015	550
23048	205	21973	1047	84	Wheat	77	RWF	5	KG	7	2015	850
23049	205	21973	1047	87	Sweet potatoes	77	RWF	5	KG	12	2015	117.667000000000002
23050	205	21973	1047	91	Chili (red)	77	RWF	5	KG	12	2015	428.333000000000027
23051	205	21973	1047	92	Eggs	77	RWF	33	Unit	12	2015	96
23052	205	21973	1047	105	Garlic	77	RWF	5	KG	12	2015	2866.67000000000007
23053	205	21973	1047	110	Onions (red)	77	RWF	5	KG	12	2015	242.332999999999998
23054	205	21973	1047	111	Onions (white)	77	RWF	5	KG	12	2015	550
23055	205	21973	1047	114	Tomatoes	77	RWF	5	KG	12	2015	131.332999999999998
23056	205	21973	1047	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	900
23057	205	21973	1047	141	Meat (beef)	77	RWF	5	KG	12	2015	2066.67000000000007
23058	205	21973	1047	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	214.667000000000002
23059	205	21973	1047	166	Carrots	77	RWF	5	KG	12	2015	249
23060	205	21973	1047	181	Cabbage	77	RWF	5	KG	12	2015	45.6666999999999987
23061	205	21973	1047	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	203.332999999999998
23062	205	21973	1047	241	Oranges (big size)	77	RWF	5	KG	12	2015	161.667000000000002
23063	205	21973	1047	248	Soybeans	77	RWF	5	KG	12	2015	533.33299999999997
23064	205	21973	1047	253	Sorghum flour	77	RWF	5	KG	12	2015	400.666999999999973
23065	205	21973	1047	254	Bananas	77	RWF	5	KG	12	2015	130.667000000000002
23066	205	21973	1047	262	Beans (dry)	77	RWF	5	KG	12	2015	423.333000000000027
23067	205	21973	1047	263	Beans (fresh)	77	RWF	5	KG	12	2015	254.667000000000002
23068	205	21973	1047	292	Peppers (green)	77	RWF	5	KG	12	2015	222.332999999999998
23069	205	21973	1047	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	30000
23070	205	21973	1047	408	Papaya	77	RWF	5	KG	11	2015	110
23071	205	21973	1047	411	Mangoes	77	RWF	5	KG	12	2015	186.332999999999998
23072	205	21973	1047	434	Eggplants	77	RWF	5	KG	12	2015	70
23073	205	21973	1047	446	Charcoal	77	RWF	31	Sack	12	2015	5250
23074	205	21973	1047	447	Passion fruit	77	RWF	5	KG	3	2015	700
23075	205	21973	1047	450	Zucchini	77	RWF	5	KG	7	2015	125
23076	205	21973	1047	453	Livestock (hen)	77	RWF	33	Unit	12	2015	5083.32999999999993
23077	205	21973	1047	454	Avocados	77	RWF	33	Unit	12	2015	210
23078	205	21973	1047	455	Cassava leaves	77	RWF	5	KG	12	2015	212.332999999999998
23079	205	21973	1047	456	Peas (fresh)	77	RWF	5	KG	12	2015	700
23080	205	21973	1047	457	Peas (dry)	77	RWF	5	KG	11	2015	550
23081	205	21973	1047	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	173.332999999999998
23082	205	21973	1049	51	Maize	77	RWF	5	KG	12	2015	254
23083	205	21973	1049	52	Rice	77	RWF	5	KG	12	2015	650
23084	205	21973	1049	65	Sorghum	77	RWF	5	KG	12	2015	298.399999999999977
23085	205	21973	1049	68	Cassava	77	RWF	5	KG	12	2015	184.400000000000006
23086	205	21973	1049	71	Rice (local)	77	RWF	5	KG	10	2012	610
23087	205	21973	1049	74	Cassava flour	77	RWF	5	KG	12	2015	215.400000000000006
23088	205	21973	1049	76	Maize flour	77	RWF	5	KG	12	2015	550
23089	205	21973	1049	87	Sweet potatoes	77	RWF	5	KG	12	2015	87.5999999999999943
23090	205	21973	1049	91	Chili (red)	77	RWF	5	KG	12	2015	410
23091	205	21973	1049	92	Eggs	77	RWF	33	Unit	12	2015	94.4000000000000057
23092	205	21973	1049	105	Garlic	77	RWF	5	KG	12	2015	3112.5
23093	205	21973	1049	110	Onions (red)	77	RWF	5	KG	12	2015	264.399999999999977
23094	205	21973	1049	114	Tomatoes	77	RWF	5	KG	12	2015	141.199999999999989
23095	205	21973	1049	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	890
23096	205	21973	1049	140	Meat (pork)	77	RWF	5	KG	12	2015	1990
23097	205	21973	1049	141	Meat (beef)	77	RWF	5	KG	12	2015	1925
23098	205	21973	1049	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	212.199999999999989
23099	205	21973	1049	166	Carrots	77	RWF	5	KG	12	2015	375
23100	205	21973	1049	181	Cabbage	77	RWF	5	KG	12	2015	46.7999999999999972
23101	205	21973	1049	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	250
23102	205	21973	1049	241	Oranges (big size)	77	RWF	5	KG	12	2015	154.400000000000006
23103	205	21973	1049	248	Soybeans	77	RWF	5	KG	12	2015	552
23104	205	21973	1049	253	Sorghum flour	77	RWF	5	KG	12	2015	450
23105	205	21973	1049	254	Bananas	77	RWF	5	KG	12	2015	130.400000000000006
23106	205	21973	1049	262	Beans (dry)	77	RWF	5	KG	12	2015	438.399999999999977
23107	205	21973	1049	292	Peppers (green)	77	RWF	5	KG	12	2015	350
23108	205	21973	1049	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	27000
23109	205	21973	1049	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	20500
23110	205	21973	1049	408	Papaya	77	RWF	5	KG	12	2015	125
23111	205	21973	1049	411	Mangoes	77	RWF	5	KG	12	2015	132.800000000000011
23112	205	21973	1049	422	Livestock (pig)	77	RWF	33	Unit	12	2015	78000
23113	205	21973	1049	434	Eggplants	77	RWF	5	KG	12	2015	81
23114	205	21973	1049	447	Passion fruit	77	RWF	5	KG	11	2015	500
23115	205	21973	1049	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4850
23116	205	21973	1049	454	Avocados	77	RWF	33	Unit	12	2015	218.400000000000006
23117	205	21973	1049	456	Peas (fresh)	77	RWF	5	KG	12	2015	740
23118	205	21973	1049	457	Peas (dry)	77	RWF	5	KG	12	2015	608.25
23119	205	21972	1050	51	Maize	77	RWF	5	KG	12	2015	331.25
23120	205	21972	1050	52	Rice	77	RWF	5	KG	12	2015	614.375
23121	205	21972	1050	58	Wheat flour	77	RWF	5	KG	12	2015	600
23122	205	21972	1050	65	Sorghum	77	RWF	5	KG	12	2015	310
23123	205	21972	1050	68	Cassava	77	RWF	5	KG	8	2015	200
23124	205	21972	1050	71	Rice (local)	77	RWF	5	KG	10	2012	683
23125	205	21972	1050	74	Cassava flour	77	RWF	5	KG	12	2015	400
23126	205	21972	1050	76	Maize flour	77	RWF	5	KG	12	2015	523
23127	205	21972	1050	81	Milk	77	RWF	15	L	12	2015	400
23128	205	21972	1050	84	Wheat	77	RWF	5	KG	12	2015	497.875
23129	205	21972	1050	87	Sweet potatoes	77	RWF	5	KG	12	2015	212.5
23130	205	21972	1050	91	Chili (red)	77	RWF	5	KG	12	2015	1154.11999999999989
23131	205	21972	1050	92	Eggs	77	RWF	33	Unit	12	2015	110
23132	205	21972	1050	105	Garlic	77	RWF	5	KG	12	2015	2662.5
23133	205	21972	1050	110	Onions (red)	77	RWF	5	KG	12	2015	741.75
23134	205	21972	1050	111	Onions (white)	77	RWF	5	KG	12	2015	1679.11999999999989
23135	205	21972	1050	114	Tomatoes	77	RWF	5	KG	12	2015	420.875
23136	205	21972	1050	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1000
23137	205	21972	1050	140	Meat (pork)	77	RWF	5	KG	5	2015	1467
23138	205	21972	1050	141	Meat (beef)	77	RWF	5	KG	12	2015	1733
23139	205	21972	1050	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	206.25
23140	205	21972	1050	166	Carrots	77	RWF	5	KG	12	2015	516.625
23141	205	21972	1050	181	Cabbage	77	RWF	5	KG	12	2015	181.25
23142	205	21972	1050	183	Meat (mutton)	77	RWF	5	KG	6	2015	1733
23143	205	21972	1050	229	Apples (red)	77	RWF	5	KG	12	2015	2979.11999999999989
23144	205	21972	1050	231	Cauliflower	77	RWF	5	KG	12	2015	500
23145	205	21972	1050	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	302
23146	205	21972	1050	241	Oranges (big size)	77	RWF	5	KG	12	2015	771.125
23147	205	21972	1050	248	Soybeans	77	RWF	5	KG	12	2015	400
23148	205	21972	1050	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	828.875
23149	205	21972	1050	253	Sorghum flour	77	RWF	5	KG	12	2015	500
23150	205	21972	1050	254	Bananas	77	RWF	5	KG	12	2015	289.375
23151	205	21972	1050	262	Beans (dry)	77	RWF	5	KG	12	2015	545.875
23152	205	21972	1050	263	Beans (fresh)	77	RWF	5	KG	12	2015	500
23153	205	21972	1050	292	Peppers (green)	77	RWF	5	KG	12	2015	395.875
23154	205	21972	1050	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2015	1200
23155	205	21972	1050	404	Spinach	77	RWF	5	KG	12	2015	216.625
23156	205	21972	1050	407	Guava	77	RWF	5	KG	6	2015	450
23157	205	21972	1050	408	Papaya	77	RWF	5	KG	12	2015	304.125
23158	205	21972	1050	411	Mangoes	77	RWF	5	KG	12	2015	771.125
23159	205	21972	1050	434	Eggplants	77	RWF	5	KG	12	2015	375
23160	205	21972	1050	446	Charcoal	77	RWF	31	Sack	12	2015	5062.5
23161	205	21972	1050	447	Passion fruit	77	RWF	5	KG	12	2015	1404.25
23162	205	21972	1050	450	Zucchini	77	RWF	5	KG	12	2015	425
23163	205	21972	1050	451	Meat (goat)	77	RWF	5	KG	5	2015	2667
23164	205	21972	1050	453	Livestock (hen)	77	RWF	33	Unit	5	2015	3000
23165	205	21972	1050	454	Avocados	77	RWF	33	Unit	12	2015	395.875
23166	205	21972	1050	455	Cassava leaves	77	RWF	5	KG	12	2015	377
23167	205	21972	1050	456	Peas (fresh)	77	RWF	5	KG	12	2015	783.5
23168	205	21972	1050	457	Peas (dry)	77	RWF	5	KG	12	2015	900
23169	205	21972	1050	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	306.125
23170	205	21971	1051	51	Maize	77	RWF	5	KG	12	2015	300
23171	205	21971	1051	52	Rice	77	RWF	5	KG	12	2015	650
23172	205	21971	1051	58	Wheat flour	77	RWF	5	KG	12	2015	600
23173	205	21971	1051	65	Sorghum	77	RWF	5	KG	12	2015	333
23174	205	21971	1051	68	Cassava	77	RWF	5	KG	2	2014	258.333000000000027
23175	205	21971	1051	74	Cassava flour	77	RWF	5	KG	12	2015	300
23176	205	21971	1051	76	Maize flour	77	RWF	5	KG	12	2015	450
23177	205	21971	1051	81	Milk	77	RWF	15	L	12	2015	400
23178	205	21971	1051	84	Wheat	77	RWF	5	KG	12	2015	450
23179	205	21971	1051	87	Sweet potatoes	77	RWF	5	KG	12	2015	130
23180	205	21971	1051	91	Chili (red)	77	RWF	5	KG	12	2015	800
23181	205	21971	1051	92	Eggs	77	RWF	33	Unit	12	2015	100
23182	205	21971	1051	105	Garlic	77	RWF	5	KG	10	2015	3000
23183	205	21971	1051	110	Onions (red)	77	RWF	5	KG	12	2015	700
23184	205	21971	1051	111	Onions (white)	77	RWF	5	KG	11	2015	3000
23185	205	21971	1051	114	Tomatoes	77	RWF	5	KG	12	2015	400
23186	205	21971	1051	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1000
23187	205	21971	1051	141	Meat (beef)	77	RWF	5	KG	12	2015	1700
23188	205	21971	1051	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	140
23189	205	21971	1051	166	Carrots	77	RWF	5	KG	12	2015	150
23190	205	21971	1051	181	Cabbage	77	RWF	5	KG	12	2015	33
23191	205	21971	1051	229	Apples (red)	77	RWF	5	KG	12	2015	2400
23192	205	21971	1051	241	Oranges (big size)	77	RWF	5	KG	12	2015	500
23193	205	21971	1051	248	Soybeans	77	RWF	5	KG	12	2015	600
23194	205	21971	1051	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
23195	205	21971	1051	253	Sorghum flour	77	RWF	5	KG	12	2015	350
23196	205	21971	1051	254	Bananas	77	RWF	5	KG	12	2015	200
23197	205	21971	1051	262	Beans (dry)	77	RWF	5	KG	12	2015	500
23198	205	21971	1051	263	Beans (fresh)	77	RWF	5	KG	12	2015	500
23199	205	21971	1051	292	Peppers (green)	77	RWF	5	KG	12	2015	633
23200	205	21971	1051	404	Spinach	77	RWF	5	KG	12	2015	100
23201	205	21971	1051	411	Mangoes	77	RWF	5	KG	6	2015	250
23202	205	21971	1051	434	Eggplants	77	RWF	5	KG	12	2015	250
23203	205	21971	1051	446	Charcoal	77	RWF	31	Sack	12	2015	7000
23204	205	21971	1051	447	Passion fruit	77	RWF	5	KG	9	2015	1200
23205	205	21971	1051	451	Meat (goat)	77	RWF	5	KG	12	2015	2000
23206	205	21971	1051	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4333
23207	205	21971	1051	454	Avocados	77	RWF	33	Unit	12	2015	250
23208	205	21971	1051	455	Cassava leaves	77	RWF	5	KG	12	2015	333
23209	205	21971	1051	456	Peas (fresh)	77	RWF	5	KG	12	2015	700
23210	205	21971	1051	457	Peas (dry)	77	RWF	5	KG	12	2015	1000
23211	205	21971	1051	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	200
23212	205	21971	1052	51	Maize	77	RWF	5	KG	12	2015	280
23213	205	21971	1052	52	Rice	77	RWF	5	KG	12	2015	650
23214	205	21971	1052	58	Wheat flour	77	RWF	5	KG	12	2015	600
23215	205	21971	1052	65	Sorghum	77	RWF	5	KG	12	2015	315
23216	205	21971	1052	71	Rice (local)	77	RWF	5	KG	10	2012	633
23217	205	21971	1052	74	Cassava flour	77	RWF	5	KG	12	2015	350
23218	205	21971	1052	76	Maize flour	77	RWF	5	KG	12	2015	400
23219	205	21971	1052	81	Milk	77	RWF	15	L	12	2015	250
23220	205	21971	1052	84	Wheat	77	RWF	5	KG	12	2015	425
23221	205	21971	1052	87	Sweet potatoes	77	RWF	5	KG	12	2015	150
23222	205	21971	1052	91	Chili (red)	77	RWF	5	KG	12	2015	650
23223	205	21971	1052	92	Eggs	77	RWF	33	Unit	12	2015	110
23224	205	21971	1052	105	Garlic	77	RWF	5	KG	12	2015	3000
23225	205	21971	1052	110	Onions (red)	77	RWF	5	KG	12	2015	675
23226	205	21971	1052	111	Onions (white)	77	RWF	5	KG	12	2015	900
23227	205	21971	1052	114	Tomatoes	77	RWF	5	KG	12	2015	350
23228	205	21971	1052	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1000
23229	205	21971	1052	141	Meat (beef)	77	RWF	5	KG	12	2015	1800
23230	205	21971	1052	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	170
23231	205	21971	1052	166	Carrots	77	RWF	5	KG	12	2015	200
23232	205	21971	1052	181	Cabbage	77	RWF	5	KG	12	2015	160
23233	205	21971	1052	229	Apples (red)	77	RWF	5	KG	12	2015	2500
23234	205	21971	1052	231	Cauliflower	77	RWF	5	KG	12	2015	325
23235	205	21971	1052	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	650
23236	205	21971	1052	241	Oranges (big size)	77	RWF	5	KG	12	2015	630
23237	205	21971	1052	248	Soybeans	77	RWF	5	KG	12	2015	500
23238	205	21971	1052	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	700
23239	205	21971	1052	253	Sorghum flour	77	RWF	5	KG	12	2015	400
23240	205	21971	1052	254	Bananas	77	RWF	5	KG	12	2015	220
23241	205	21971	1052	262	Beans (dry)	77	RWF	5	KG	12	2015	413
23242	205	21971	1052	263	Beans (fresh)	77	RWF	5	KG	12	2015	500
23243	205	21971	1052	287	Livestock (cattle)	77	RWF	33	Unit	12	2015	173000
23244	205	21971	1052	292	Peppers (green)	77	RWF	5	KG	12	2015	700
23245	205	21971	1052	381	Rice (imported, Tanzanian)	77	RWF	5	KG	4	2013	666
23246	205	21971	1052	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	25000
23247	205	21971	1052	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	22000
23248	205	21971	1052	404	Spinach	77	RWF	5	KG	12	2015	75
23249	205	21971	1052	407	Guava	77	RWF	5	KG	3	2015	307.142999999999972
23250	205	21971	1052	408	Papaya	77	RWF	5	KG	11	2015	600
23251	205	21971	1052	411	Mangoes	77	RWF	5	KG	12	2015	550
23252	205	21971	1052	434	Eggplants	77	RWF	5	KG	12	2015	325
23253	205	21971	1052	446	Charcoal	77	RWF	31	Sack	12	2015	7000
23254	205	21971	1052	447	Passion fruit	77	RWF	5	KG	12	2015	1200
23255	205	21971	1052	450	Zucchini	77	RWF	5	KG	12	2015	300
23256	205	21971	1052	451	Meat (goat)	77	RWF	5	KG	12	2015	2000
23257	205	21971	1052	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4100
23258	205	21971	1052	454	Avocados	77	RWF	33	Unit	12	2015	275
23259	205	21971	1052	455	Cassava leaves	77	RWF	5	KG	12	2015	266
23260	205	21971	1052	456	Peas (fresh)	77	RWF	5	KG	12	2015	900
23261	205	21971	1052	457	Peas (dry)	77	RWF	5	KG	10	2015	715
23262	205	21971	1052	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	350
23263	205	21973	1053	51	Maize	77	RWF	5	KG	12	2015	215
23264	205	21973	1053	52	Rice	77	RWF	5	KG	12	2015	750
23265	205	21973	1053	58	Wheat flour	77	RWF	5	KG	11	2015	483.333000000000027
23266	205	21973	1053	65	Sorghum	77	RWF	5	KG	12	2015	429.5
23267	205	21973	1053	68	Cassava	77	RWF	5	KG	9	2015	200
23268	205	21973	1053	71	Rice (local)	77	RWF	5	KG	10	2012	667
23269	205	21973	1053	74	Cassava flour	77	RWF	5	KG	12	2015	295
23270	205	21973	1053	76	Maize flour	77	RWF	5	KG	12	2015	260
23271	205	21973	1053	77	Maize flour (imported)	77	RWF	5	KG	12	2015	459
23272	205	21973	1053	81	Milk	77	RWF	15	L	12	2015	151.332999999999998
23273	205	21973	1053	84	Wheat	77	RWF	5	KG	12	2015	350
23274	205	21973	1053	87	Sweet potatoes	77	RWF	5	KG	12	2015	110
23275	205	21973	1053	91	Chili (red)	77	RWF	5	KG	12	2015	400
23276	205	21973	1053	92	Eggs	77	RWF	33	Unit	12	2015	93.3332999999999942
23277	205	21973	1053	105	Garlic	77	RWF	5	KG	12	2015	2725
23278	205	21973	1053	110	Onions (red)	77	RWF	5	KG	12	2015	270.25
23279	205	21973	1053	111	Onions (white)	77	RWF	5	KG	11	2015	600
23280	205	21973	1053	114	Tomatoes	77	RWF	5	KG	12	2015	260
23281	205	21973	1053	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1145
23282	205	21973	1053	140	Meat (pork)	77	RWF	5	KG	10	2015	1400
23283	205	21973	1053	141	Meat (beef)	77	RWF	5	KG	12	2015	1400
23284	205	21973	1053	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	143.5
23285	205	21973	1053	166	Carrots	77	RWF	5	KG	12	2015	168.5
23286	205	21973	1053	181	Cabbage	77	RWF	5	KG	12	2015	44.5
23287	205	21973	1053	233	Cucumbers (greenhouse)	77	RWF	5	KG	10	2015	234
23288	205	21973	1053	241	Oranges (big size)	77	RWF	5	KG	12	2015	400
23289	205	21973	1053	248	Soybeans	77	RWF	5	KG	12	2015	486.75
23290	205	21973	1053	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	824
23291	205	21973	1053	253	Sorghum flour	77	RWF	5	KG	12	2015	430
23292	205	21973	1053	254	Bananas	77	RWF	5	KG	12	2015	178.75
23293	205	21973	1053	262	Beans (dry)	77	RWF	5	KG	12	2015	427.5
23294	205	21973	1053	292	Peppers (green)	77	RWF	5	KG	12	2015	337.5
23295	205	21973	1053	381	Rice (imported, Tanzanian)	77	RWF	5	KG	10	2014	927.5
23296	205	21973	1053	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	17733.2999999999993
23297	205	21973	1053	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	13000
23298	205	21973	1053	404	Spinach	77	RWF	5	KG	12	2015	74
23299	205	21973	1053	407	Guava	77	RWF	5	KG	11	2015	60
23300	205	21973	1053	408	Papaya	77	RWF	5	KG	12	2015	136.667000000000002
23301	205	21973	1053	411	Mangoes	77	RWF	5	KG	12	2015	287
23302	205	21973	1053	434	Eggplants	77	RWF	5	KG	12	2015	163.5
23303	205	21973	1053	446	Charcoal	77	RWF	31	Sack	12	2015	4166.67000000000007
23304	205	21973	1053	447	Passion fruit	77	RWF	5	KG	12	2015	436.75
23305	205	21973	1053	450	Zucchini	77	RWF	5	KG	12	2015	89
23306	205	21973	1053	451	Meat (goat)	77	RWF	5	KG	10	2015	1900
23307	205	21973	1053	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4064
23308	205	21973	1053	454	Avocados	77	RWF	33	Unit	12	2015	121.25
23309	205	21973	1053	455	Cassava leaves	77	RWF	5	KG	12	2015	125.667000000000002
23310	205	21973	1053	456	Peas (fresh)	77	RWF	5	KG	12	2015	783.33299999999997
23311	205	21973	1053	457	Peas (dry)	77	RWF	5	KG	12	2015	728.33299999999997
23312	205	21973	1053	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	183.332999999999998
23313	205	2587	1054	51	Maize	77	RWF	5	KG	9	2015	262.5
23314	205	2587	1054	52	Rice	77	RWF	5	KG	9	2015	616.66700000000003
23315	205	2587	1054	58	Wheat flour	77	RWF	5	KG	9	2015	600
23316	205	2587	1054	65	Sorghum	77	RWF	5	KG	9	2015	337.5
23317	205	2587	1054	68	Cassava	77	RWF	5	KG	11	2014	220
23318	205	2587	1054	71	Rice (local)	77	RWF	5	KG	10	2012	633
23319	205	2587	1054	74	Cassava flour	77	RWF	5	KG	9	2015	295.75
23320	205	2587	1054	76	Maize flour	77	RWF	5	KG	9	2015	450
23321	205	2587	1054	77	Maize flour (imported)	77	RWF	5	KG	9	2015	617
23322	205	2587	1054	81	Milk	77	RWF	15	L	9	2015	400
23323	205	2587	1054	87	Sweet potatoes	77	RWF	5	KG	9	2015	200
23324	205	2587	1054	91	Chili (red)	77	RWF	5	KG	9	2015	1108.5
23325	205	2587	1054	92	Eggs	77	RWF	33	Unit	9	2015	100
23326	205	2587	1054	105	Garlic	77	RWF	5	KG	9	2015	2500
23327	205	2587	1054	110	Onions (red)	77	RWF	5	KG	9	2015	516.5
23328	205	2587	1054	111	Onions (white)	77	RWF	5	KG	6	2015	700
23329	205	2587	1054	114	Tomatoes	77	RWF	5	KG	9	2015	445.75
23330	205	2587	1054	119	Groundnuts (shelled)	77	RWF	5	KG	9	2015	1000
23331	205	2587	1054	141	Meat (beef)	77	RWF	5	KG	9	2015	1800
23332	205	2587	1054	148	Potatoes (Irish)	77	RWF	5	KG	9	2015	202.5
23333	205	2587	1054	166	Carrots	77	RWF	5	KG	9	2015	404.25
23334	205	2587	1054	181	Cabbage	77	RWF	5	KG	9	2015	191.75
23335	205	2587	1054	233	Cucumbers (greenhouse)	77	RWF	5	KG	9	2015	500
23336	205	2587	1054	241	Oranges (big size)	77	RWF	5	KG	9	2015	650
23337	205	2587	1054	248	Soybeans	77	RWF	5	KG	9	2015	450
23338	205	2587	1054	251	Rice (imported, Indian)	77	RWF	5	KG	9	2015	750
23339	205	2587	1054	253	Sorghum flour	77	RWF	5	KG	9	2015	500
23340	205	2587	1054	254	Bananas	77	RWF	5	KG	9	2015	175
23341	205	2587	1054	262	Beans (dry)	77	RWF	5	KG	9	2015	450
23342	205	2587	1054	263	Beans (fresh)	77	RWF	5	KG	6	2015	650
23343	205	2587	1054	292	Peppers (green)	77	RWF	5	KG	9	2015	583.25
23344	205	2587	1054	381	Rice (imported, Tanzanian)	77	RWF	5	KG	9	2015	1000
23345	205	2587	1054	383	Livestock (Goat)	77	RWF	33	Unit	9	2015	22500
23346	205	2587	1054	404	Spinach	77	RWF	5	KG	5	2015	200
23347	205	2587	1054	408	Papaya	77	RWF	5	KG	9	2015	408.25
23348	205	2587	1054	411	Mangoes	77	RWF	5	KG	9	2015	762.5
23349	205	2587	1054	434	Eggplants	77	RWF	5	KG	9	2015	383.5
23350	205	2587	1054	446	Charcoal	77	RWF	31	Sack	9	2015	7000
23351	205	2587	1054	447	Passion fruit	77	RWF	5	KG	9	2015	1175
23352	205	2587	1054	450	Zucchini	77	RWF	5	KG	11	2014	400
23353	205	2587	1054	451	Meat (goat)	77	RWF	5	KG	9	2015	1800
23354	205	2587	1054	453	Livestock (hen)	77	RWF	33	Unit	9	2015	3541.75
23355	205	2587	1054	454	Avocados	77	RWF	33	Unit	9	2015	491.75
23356	205	2587	1054	455	Cassava leaves	77	RWF	5	KG	9	2015	500
23357	205	2587	1054	456	Peas (fresh)	77	RWF	5	KG	8	2015	800
23358	205	2587	1054	458	Beans (green, fresh)	77	RWF	5	KG	9	2015	466.5
23359	205	21971	1056	51	Maize	77	RWF	5	KG	12	2015	300
23360	205	21971	1056	52	Rice	77	RWF	5	KG	12	2015	600
23361	205	21971	1056	58	Wheat flour	77	RWF	5	KG	12	2015	550
23362	205	21971	1056	65	Sorghum	77	RWF	5	KG	12	2015	350
23363	205	21971	1056	68	Cassava	77	RWF	5	KG	7	2015	250
23364	205	21971	1056	71	Rice (local)	77	RWF	5	KG	10	2012	600
23365	205	21971	1056	74	Cassava flour	77	RWF	5	KG	12	2015	350
23366	205	21971	1056	76	Maize flour	77	RWF	5	KG	12	2015	500
23367	205	21971	1056	81	Milk	77	RWF	15	L	12	2015	300
23368	205	21971	1056	84	Wheat	77	RWF	5	KG	12	2015	400
23369	205	21971	1056	87	Sweet potatoes	77	RWF	5	KG	12	2015	133
23370	205	21971	1056	91	Chili (red)	77	RWF	5	KG	12	2015	500
23371	205	21971	1056	92	Eggs	77	RWF	33	Unit	12	2015	100
23372	205	21971	1056	105	Garlic	77	RWF	5	KG	12	2015	2833
23373	205	21971	1056	110	Onions (red)	77	RWF	5	KG	12	2015	600
23374	205	21971	1056	111	Onions (white)	77	RWF	5	KG	12	2015	800
23375	205	21971	1056	114	Tomatoes	77	RWF	5	KG	12	2015	500
23376	205	21971	1056	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1000
23377	205	21971	1056	141	Meat (beef)	77	RWF	5	KG	12	2015	1700
23378	205	21971	1056	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	147
23379	205	21971	1056	166	Carrots	77	RWF	5	KG	12	2015	250
23380	205	21971	1056	181	Cabbage	77	RWF	5	KG	12	2015	150
23381	205	21971	1056	183	Meat (mutton)	77	RWF	5	KG	5	2015	1600
23382	205	21971	1056	229	Apples (red)	77	RWF	5	KG	12	2015	3000
23383	205	21971	1056	241	Oranges (big size)	77	RWF	5	KG	12	2015	800
23384	205	21971	1056	248	Soybeans	77	RWF	5	KG	12	2015	500
23385	205	21971	1056	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	700
23386	205	21971	1056	253	Sorghum flour	77	RWF	5	KG	12	2015	400
23387	205	21971	1056	254	Bananas	77	RWF	5	KG	12	2015	180
23388	205	21971	1056	262	Beans (dry)	77	RWF	5	KG	12	2015	493
23389	205	21971	1056	287	Livestock (cattle)	77	RWF	33	Unit	12	2015	176667
23390	205	21971	1056	292	Peppers (green)	77	RWF	5	KG	12	2015	700
23391	205	21971	1056	381	Rice (imported, Tanzanian)	77	RWF	5	KG	10	2015	900
23392	205	21971	1056	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	25667
23393	205	21971	1056	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	21667
23394	205	21971	1056	404	Spinach	77	RWF	5	KG	12	2015	300
23395	205	21971	1056	407	Guava	77	RWF	5	KG	8	2015	300
23396	205	21971	1056	408	Papaya	77	RWF	5	KG	12	2015	600
23397	205	21971	1056	411	Mangoes	77	RWF	5	KG	7	2015	800
23398	205	21971	1056	422	Livestock (pig)	77	RWF	33	Unit	10	2015	61667
23399	205	21971	1056	434	Eggplants	77	RWF	5	KG	12	2015	300
23400	205	21971	1056	446	Charcoal	77	RWF	31	Sack	12	2015	6000
23401	205	21971	1056	447	Passion fruit	77	RWF	5	KG	12	2015	1000
23402	205	21971	1056	450	Zucchini	77	RWF	5	KG	12	2015	300
23403	205	21971	1056	451	Meat (goat)	77	RWF	5	KG	12	2015	2833
23404	205	21971	1056	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4167
23405	205	21971	1056	454	Avocados	77	RWF	33	Unit	12	2015	200
23406	205	21971	1056	455	Cassava leaves	77	RWF	5	KG	12	2015	500
23407	205	21971	1056	456	Peas (fresh)	77	RWF	5	KG	12	2015	800
23408	205	21971	1056	457	Peas (dry)	77	RWF	5	KG	12	2015	1333
23409	205	21971	1056	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	400
23410	205	21972	1057	51	Maize	77	RWF	5	KG	12	2015	308
23411	205	21972	1057	52	Rice	77	RWF	5	KG	12	2015	600
23412	205	21972	1057	65	Sorghum	77	RWF	5	KG	12	2015	297
23413	205	21972	1057	68	Cassava	77	RWF	5	KG	3	2015	290
23414	205	21972	1057	71	Rice (local)	77	RWF	5	KG	10	2012	600
23415	205	21972	1057	74	Cassava flour	77	RWF	5	KG	12	2015	466.5
23416	205	21972	1057	76	Maize flour	77	RWF	5	KG	12	2015	483
23417	205	21972	1057	81	Milk	77	RWF	15	L	12	2015	300
23418	205	21972	1057	84	Wheat	77	RWF	5	KG	12	2015	391.5
23419	205	21972	1057	87	Sweet potatoes	77	RWF	5	KG	12	2015	100
23420	205	21972	1057	91	Chili (red)	77	RWF	5	KG	12	2015	1200
23421	205	21972	1057	92	Eggs	77	RWF	33	Unit	12	2015	100
23422	205	21972	1057	105	Garlic	77	RWF	5	KG	10	2015	2733
23423	205	21972	1057	110	Onions (red)	77	RWF	5	KG	12	2015	733.5
23424	205	21972	1057	114	Tomatoes	77	RWF	5	KG	12	2015	391.5
23425	205	21972	1057	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	991.5
23426	205	21972	1057	140	Meat (pork)	77	RWF	5	KG	12	2015	1600
23427	205	21972	1057	141	Meat (beef)	77	RWF	5	KG	12	2015	1683.5
23428	205	21972	1057	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	208.5
23429	205	21972	1057	166	Carrots	77	RWF	5	KG	12	2015	267
23430	205	21972	1057	181	Cabbage	77	RWF	5	KG	12	2015	90
23431	205	21972	1057	241	Oranges (big size)	77	RWF	5	KG	12	2015	408
23432	205	21972	1057	248	Soybeans	77	RWF	5	KG	12	2015	500
23433	205	21972	1057	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	800
23434	205	21972	1057	253	Sorghum flour	77	RWF	5	KG	12	2015	400
23435	205	21972	1057	254	Bananas	77	RWF	5	KG	12	2015	216.5
23436	205	21972	1057	262	Beans (dry)	77	RWF	5	KG	12	2015	478.5
23437	205	21972	1057	292	Peppers (green)	77	RWF	5	KG	12	2015	400
23438	205	21972	1057	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2014	900
23439	205	21972	1057	407	Guava	77	RWF	5	KG	7	2015	250
23440	205	21972	1057	408	Papaya	77	RWF	5	KG	11	2015	367
23441	205	21972	1057	411	Mangoes	77	RWF	5	KG	12	2015	316.5
23442	205	21972	1057	434	Eggplants	77	RWF	5	KG	12	2015	250
23443	205	21972	1057	446	Charcoal	77	RWF	31	Sack	3	2015	5000
23444	205	21972	1057	447	Passion fruit	77	RWF	5	KG	12	2015	908
23445	205	21972	1057	450	Zucchini	77	RWF	5	KG	12	2015	140
23446	205	21972	1057	451	Meat (goat)	77	RWF	5	KG	12	2015	3250
23447	205	21972	1057	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4333
23448	205	21972	1057	454	Avocados	77	RWF	33	Unit	12	2015	198.5
23449	205	21972	1057	455	Cassava leaves	77	RWF	5	KG	12	2015	250
23450	205	21972	1057	456	Peas (fresh)	77	RWF	5	KG	12	2015	708
23451	205	21972	1057	457	Peas (dry)	77	RWF	5	KG	12	2015	716.5
23452	205	21972	1057	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	283
23453	205	21971	1058	51	Maize	77	RWF	5	KG	7	2015	266
23454	205	21971	1058	52	Rice	77	RWF	5	KG	12	2015	675
23455	205	21971	1058	58	Wheat flour	77	RWF	5	KG	12	2015	600
23456	205	21971	1058	65	Sorghum	77	RWF	5	KG	12	2015	320
23457	205	21971	1058	68	Cassava	77	RWF	5	KG	12	2015	250
23458	205	21971	1058	71	Rice (local)	77	RWF	5	KG	10	2012	616
23459	205	21971	1058	74	Cassava flour	77	RWF	5	KG	12	2015	325
23460	205	21971	1058	76	Maize flour	77	RWF	5	KG	12	2015	366
23461	205	21971	1058	81	Milk	77	RWF	15	L	12	2015	200
23462	205	21971	1058	87	Sweet potatoes	77	RWF	5	KG	12	2015	110
23463	205	21971	1058	91	Chili (red)	77	RWF	5	KG	12	2015	700
23464	205	21971	1058	92	Eggs	77	RWF	33	Unit	12	2015	110
23465	205	21971	1058	105	Garlic	77	RWF	5	KG	12	2015	3200
23466	205	21971	1058	110	Onions (red)	77	RWF	5	KG	12	2015	700
23467	205	21971	1058	114	Tomatoes	77	RWF	5	KG	12	2015	300
23468	205	21971	1058	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1000
23469	205	21971	1058	141	Meat (beef)	77	RWF	5	KG	12	2015	1800
23470	205	21971	1058	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	170
23471	205	21971	1058	166	Carrots	77	RWF	5	KG	12	2015	210
23472	205	21971	1058	181	Cabbage	77	RWF	5	KG	12	2015	166
23473	205	21971	1058	183	Meat (mutton)	77	RWF	5	KG	7	2015	2200
23474	205	21971	1058	241	Oranges (big size)	77	RWF	5	KG	12	2015	500
23475	205	21971	1058	248	Soybeans	77	RWF	5	KG	12	2015	450
23476	205	21971	1058	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	700
23477	205	21971	1058	253	Sorghum flour	77	RWF	5	KG	12	2015	400
23478	205	21971	1058	254	Bananas	77	RWF	5	KG	12	2015	200
23479	205	21971	1058	262	Beans (dry)	77	RWF	5	KG	12	2015	500
23480	205	21971	1058	263	Beans (fresh)	77	RWF	5	KG	12	2015	500
23481	205	21971	1058	287	Livestock (cattle)	77	RWF	33	Unit	12	2015	180000
23482	205	21971	1058	292	Peppers (green)	77	RWF	5	KG	12	2015	650
23483	205	21971	1058	381	Rice (imported, Tanzanian)	77	RWF	5	KG	4	2013	700
23484	205	21971	1058	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	25000
23485	205	21971	1058	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	23000
23486	205	21971	1058	407	Guava	77	RWF	5	KG	3	2015	275
23487	205	21971	1058	408	Papaya	77	RWF	5	KG	8	2015	600
23488	205	21971	1058	411	Mangoes	77	RWF	5	KG	11	2015	500
23489	205	21971	1058	434	Eggplants	77	RWF	5	KG	12	2015	300
23490	205	21971	1058	447	Passion fruit	77	RWF	5	KG	12	2015	800
23491	205	21971	1058	450	Zucchini	77	RWF	5	KG	7	2015	300
23492	205	21971	1058	451	Meat (goat)	77	RWF	5	KG	12	2015	1700
23493	205	21971	1058	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4100
23494	205	21971	1058	454	Avocados	77	RWF	33	Unit	12	2015	180
23495	205	21971	1058	456	Peas (fresh)	77	RWF	5	KG	12	2015	800
23496	205	21971	1058	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	300
23497	205	21972	1059	51	Maize	77	RWF	5	KG	12	2015	416.666999999999973
23498	205	21972	1059	52	Rice	77	RWF	5	KG	12	2015	616.66700000000003
23499	205	21972	1059	58	Wheat flour	77	RWF	5	KG	4	2013	800
23500	205	21972	1059	65	Sorghum	77	RWF	5	KG	12	2015	360
23501	205	21972	1059	68	Cassava	77	RWF	5	KG	12	2015	220
23502	205	21972	1059	71	Rice (local)	77	RWF	5	KG	10	2012	600
23503	205	21972	1059	74	Cassava flour	77	RWF	5	KG	12	2015	266.666999999999973
23504	205	21972	1059	76	Maize flour	77	RWF	5	KG	12	2015	433.333000000000027
23505	205	21972	1059	81	Milk	77	RWF	15	L	10	2015	400
23506	205	21972	1059	87	Sweet potatoes	77	RWF	5	KG	12	2015	150
23507	205	21972	1059	91	Chili (red)	77	RWF	5	KG	12	2015	933.33299999999997
23508	205	21972	1059	92	Eggs	77	RWF	33	Unit	12	2015	101.667000000000002
23509	205	21972	1059	110	Onions (red)	77	RWF	5	KG	12	2015	516.66700000000003
23510	205	21972	1059	114	Tomatoes	77	RWF	5	KG	12	2015	490
23511	205	21972	1059	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1233.32999999999993
23512	205	21972	1059	141	Meat (beef)	77	RWF	5	KG	12	2015	2000
23513	205	21972	1059	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	168.332999999999998
23514	205	21972	1059	166	Carrots	77	RWF	5	KG	12	2015	266.666999999999973
23515	205	21972	1059	181	Cabbage	77	RWF	5	KG	12	2015	126.667000000000002
23516	205	21972	1059	229	Apples (red)	77	RWF	5	KG	12	2015	2000
23517	205	21972	1059	233	Cucumbers (greenhouse)	77	RWF	5	KG	8	2015	300
23518	205	21972	1059	241	Oranges (big size)	77	RWF	5	KG	12	2015	500
23519	205	21972	1059	248	Soybeans	77	RWF	5	KG	12	2015	500
23520	205	21972	1059	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
23521	205	21972	1059	253	Sorghum flour	77	RWF	5	KG	10	2015	400
23522	205	21972	1059	254	Bananas	77	RWF	5	KG	12	2015	206.667000000000002
23523	205	21972	1059	262	Beans (dry)	77	RWF	5	KG	12	2015	566.66700000000003
23524	205	21972	1059	292	Peppers (green)	77	RWF	5	KG	12	2015	600
23525	205	21972	1059	381	Rice (imported, Tanzanian)	77	RWF	5	KG	4	2013	700
23526	205	21972	1059	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	21666.7000000000007
23527	205	21972	1059	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	15001
23528	205	21972	1059	407	Guava	77	RWF	5	KG	6	2015	300
23529	205	21972	1059	408	Papaya	77	RWF	5	KG	12	2015	216.667000000000002
23530	205	21972	1059	411	Mangoes	77	RWF	5	KG	12	2015	500
23531	205	21972	1059	422	Livestock (pig)	77	RWF	33	Unit	12	2015	22890
23532	205	21972	1059	434	Eggplants	77	RWF	5	KG	12	2015	233.332999999999998
23533	205	21972	1059	447	Passion fruit	77	RWF	5	KG	12	2015	866.66700000000003
23534	205	21972	1059	453	Livestock (hen)	77	RWF	33	Unit	12	2015	3556.67000000000007
23535	205	21972	1059	454	Avocados	77	RWF	33	Unit	12	2015	107.667000000000002
23536	205	21972	1059	456	Peas (fresh)	77	RWF	5	KG	12	2015	1200
23537	205	21972	1059	457	Peas (dry)	77	RWF	5	KG	12	2015	2000
23538	205	21972	1059	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	283.333000000000027
23539	205	21969	1060	51	Maize	77	RWF	5	KG	12	2015	341.5
23540	205	21969	1060	52	Rice	77	RWF	5	KG	12	2015	650
23541	205	21969	1060	65	Sorghum	77	RWF	5	KG	12	2015	300
23542	205	21969	1060	68	Cassava	77	RWF	5	KG	12	2015	195
23543	205	21969	1060	74	Cassava flour	77	RWF	5	KG	12	2015	300
23544	205	21969	1060	76	Maize flour	77	RWF	5	KG	12	2015	500
23545	205	21969	1060	81	Milk	77	RWF	15	L	12	2015	300
23546	205	21969	1060	87	Sweet potatoes	77	RWF	5	KG	12	2015	150
23547	205	21969	1060	91	Chili (red)	77	RWF	5	KG	12	2015	850
23548	205	21969	1060	92	Eggs	77	RWF	33	Unit	12	2015	115
23549	205	21969	1060	105	Garlic	77	RWF	5	KG	12	2015	2500
23550	205	21969	1060	110	Onions (red)	77	RWF	5	KG	12	2015	600
23551	205	21969	1060	114	Tomatoes	77	RWF	5	KG	12	2015	208.5
23552	205	21969	1060	119	Groundnuts (shelled)	77	RWF	5	KG	10	2015	1150
23553	205	21969	1060	141	Meat (beef)	77	RWF	5	KG	12	2015	1800
23554	205	21969	1060	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	190
23555	205	21969	1060	166	Carrots	77	RWF	5	KG	12	2015	400
23556	205	21969	1060	181	Cabbage	77	RWF	5	KG	12	2015	125
23557	205	21969	1060	183	Meat (mutton)	77	RWF	5	KG	12	2015	1800
23558	205	21969	1060	241	Oranges (big size)	77	RWF	5	KG	12	2015	450
23559	205	21969	1060	248	Soybeans	77	RWF	5	KG	12	2015	600
23560	205	21969	1060	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
23561	205	21969	1060	253	Sorghum flour	77	RWF	5	KG	12	2015	500
23562	205	21969	1060	254	Bananas	77	RWF	5	KG	12	2015	150
23563	205	21969	1060	262	Beans (dry)	77	RWF	5	KG	12	2015	500
23564	205	21969	1060	292	Peppers (green)	77	RWF	5	KG	12	2015	450
23565	205	21969	1060	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2015	750
23566	205	21969	1060	383	Livestock (Goat)	77	RWF	33	Unit	10	2015	3000
23567	205	21969	1060	408	Papaya	77	RWF	5	KG	7	2015	200
23568	205	21969	1060	411	Mangoes	77	RWF	5	KG	12	2015	183.5
23569	205	21969	1060	434	Eggplants	77	RWF	5	KG	12	2015	183.5
23570	205	21969	1060	447	Passion fruit	77	RWF	5	KG	12	2015	1300
23571	205	21969	1060	450	Zucchini	77	RWF	5	KG	8	2015	500
23572	205	21969	1060	451	Meat (goat)	77	RWF	5	KG	12	2015	2000
23573	205	21969	1060	453	Livestock (hen)	77	RWF	33	Unit	12	2015	3500
23574	205	21969	1060	454	Avocados	77	RWF	33	Unit	12	2015	200
23575	205	21969	1060	456	Peas (fresh)	77	RWF	5	KG	12	2015	1000
23576	205	21969	1060	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	300
23577	205	21972	1062	51	Maize	77	RWF	5	KG	12	2015	310.5
23578	205	21972	1062	52	Rice	77	RWF	5	KG	12	2015	629.125
23579	205	21972	1062	58	Wheat flour	77	RWF	5	KG	12	2015	574.875
23580	205	21972	1062	65	Sorghum	77	RWF	5	KG	12	2015	300
23581	205	21972	1062	68	Cassava	77	RWF	5	KG	12	2015	353.5
23582	205	21972	1062	71	Rice (local)	77	RWF	5	KG	10	2012	567
23583	205	21972	1062	74	Cassava flour	77	RWF	5	KG	12	2015	472.75
23584	205	21972	1062	76	Maize flour	77	RWF	5	KG	12	2015	504.125
23585	205	21972	1062	77	Maize flour (imported)	77	RWF	5	KG	12	2015	1200
23586	205	21972	1062	81	Milk	77	RWF	15	L	12	2015	400
23587	205	21972	1062	84	Wheat	77	RWF	5	KG	10	2015	386
23588	205	21972	1062	87	Sweet potatoes	77	RWF	5	KG	12	2015	150
23589	205	21972	1062	91	Chili (red)	77	RWF	5	KG	12	2015	1083.25
23590	205	21972	1062	92	Eggs	77	RWF	33	Unit	12	2015	109.25
23591	205	21972	1062	105	Garlic	77	RWF	5	KG	12	2015	2016.75
23592	205	21972	1062	110	Onions (red)	77	RWF	5	KG	12	2015	883.375
23593	205	21972	1062	111	Onions (white)	77	RWF	5	KG	12	2015	1041.61999999999989
23594	205	21972	1062	114	Tomatoes	77	RWF	5	KG	12	2015	402.125
23595	205	21972	1062	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	995.875
23596	205	21972	1062	140	Meat (pork)	77	RWF	5	KG	12	2015	1720.61999999999989
23597	205	21972	1062	141	Meat (beef)	77	RWF	5	KG	12	2015	1675.25
23598	205	21972	1062	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	207.5
23599	205	21972	1062	166	Carrots	77	RWF	5	KG	12	2015	359.125
23600	205	21972	1062	181	Cabbage	77	RWF	5	KG	12	2015	111.125
23601	205	21972	1062	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	400
23602	205	21972	1062	241	Oranges (big size)	77	RWF	5	KG	12	2015	462.375
23603	205	21972	1062	248	Soybeans	77	RWF	5	KG	12	2015	490.75
23604	205	21972	1062	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	833
23605	205	21972	1062	253	Sorghum flour	77	RWF	5	KG	12	2015	500
23606	205	21972	1062	254	Bananas	77	RWF	5	KG	12	2015	265.75
23607	205	21972	1062	262	Beans (dry)	77	RWF	5	KG	12	2015	457.375
23608	205	21972	1062	263	Beans (fresh)	77	RWF	5	KG	6	2015	358.5
23609	205	21972	1062	292	Peppers (green)	77	RWF	5	KG	12	2015	394.5
23610	205	21972	1062	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2015	1183.38000000000011
23611	205	21972	1062	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	19749.9000000000015
23612	205	21972	1062	404	Spinach	77	RWF	5	KG	11	2014	339.800000000000011
23613	205	21972	1062	407	Guava	77	RWF	5	KG	9	2015	400
23614	205	21972	1062	408	Papaya	77	RWF	5	KG	12	2015	497.875
23615	205	21972	1062	411	Mangoes	77	RWF	5	KG	12	2015	437.625
23616	205	21972	1062	434	Eggplants	77	RWF	5	KG	12	2015	289.625
23617	205	21972	1062	446	Charcoal	77	RWF	31	Sack	12	2015	4608.38000000000011
23618	205	21972	1062	447	Passion fruit	77	RWF	5	KG	12	2015	1208.25
23619	205	21972	1062	450	Zucchini	77	RWF	5	KG	12	2015	387.5
23620	205	21972	1062	451	Meat (goat)	77	RWF	5	KG	12	2015	4854
23621	205	21972	1062	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4604.11999999999989
23622	205	21972	1062	454	Avocados	77	RWF	33	Unit	12	2015	194.875
23623	205	21972	1062	455	Cassava leaves	77	RWF	5	KG	12	2015	258.25
23624	205	21972	1062	456	Peas (fresh)	77	RWF	5	KG	12	2015	671.25
23625	205	21972	1062	457	Peas (dry)	77	RWF	5	KG	12	2015	1066.71000000000004
23626	205	21972	1062	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	281.125
23627	205	21973	1063	51	Maize	77	RWF	5	KG	6	2014	400
23628	205	21973	1063	52	Rice	77	RWF	5	KG	12	2015	700
23629	205	21973	1063	58	Wheat flour	77	RWF	5	KG	12	2015	700
23630	205	21973	1063	65	Sorghum	77	RWF	5	KG	12	2011	500
23631	205	21973	1063	68	Cassava	77	RWF	5	KG	4	2012	170
23632	205	21973	1063	71	Rice (local)	77	RWF	5	KG	10	2012	650
23633	205	21973	1063	74	Cassava flour	77	RWF	5	KG	12	2015	289.800000000000011
23634	205	21973	1063	76	Maize flour	77	RWF	5	KG	12	2015	600
23635	205	21973	1063	81	Milk	77	RWF	15	L	12	2015	400
23636	205	21973	1063	87	Sweet potatoes	77	RWF	5	KG	12	2015	176.800000000000011
23637	205	21973	1063	91	Chili (red)	77	RWF	5	KG	12	2015	900
23638	205	21973	1063	92	Eggs	77	RWF	33	Unit	12	2015	100
23639	205	21973	1063	105	Garlic	77	RWF	5	KG	12	2015	2566.80000000000018
23640	205	21973	1063	110	Onions (red)	77	RWF	5	KG	12	2015	623.200000000000045
23641	205	21973	1063	111	Onions (white)	77	RWF	5	KG	12	2015	653.399999999999977
23642	205	21973	1063	114	Tomatoes	77	RWF	5	KG	12	2015	800
23643	205	21973	1063	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1000
23644	205	21973	1063	141	Meat (beef)	77	RWF	5	KG	12	2015	1813.40000000000009
23645	205	21973	1063	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	157.800000000000011
23646	205	21973	1063	166	Carrots	77	RWF	5	KG	12	2015	286.600000000000023
23647	205	21973	1063	181	Cabbage	77	RWF	5	KG	12	2015	94.7999999999999972
23648	205	21973	1063	229	Apples (red)	77	RWF	5	KG	12	2015	2080
23649	205	21973	1063	231	Cauliflower	77	RWF	5	KG	12	2015	300
23650	205	21973	1063	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	733.33299999999997
23651	205	21973	1063	241	Oranges (big size)	77	RWF	5	KG	12	2015	620
23652	205	21973	1063	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	800
23653	205	21973	1063	253	Sorghum flour	77	RWF	5	KG	12	2015	500
23654	205	21973	1063	254	Bananas	77	RWF	5	KG	12	2015	200
23655	205	21973	1063	262	Beans (dry)	77	RWF	5	KG	12	2015	586.600000000000023
23656	205	21973	1063	263	Beans (fresh)	77	RWF	5	KG	12	2015	706.600000000000023
23657	205	21973	1063	292	Peppers (green)	77	RWF	5	KG	12	2015	610
23658	205	21973	1063	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2014	1200
23659	205	21973	1063	404	Spinach	77	RWF	5	KG	12	2015	300
23660	205	21973	1063	407	Guava	77	RWF	5	KG	12	2015	367
23661	205	21973	1063	408	Papaya	77	RWF	5	KG	12	2015	470
23662	205	21973	1063	411	Mangoes	77	RWF	5	KG	12	2015	526.600000000000023
23663	205	21973	1063	434	Eggplants	77	RWF	5	KG	12	2015	380
23664	205	21973	1063	446	Charcoal	77	RWF	31	Sack	12	2015	9666.60000000000036
23665	205	21973	1063	447	Passion fruit	77	RWF	5	KG	12	2015	940.399999999999977
23666	205	21973	1063	451	Meat (goat)	77	RWF	5	KG	12	2015	3000
23667	205	21973	1063	454	Avocados	77	RWF	33	Unit	12	2015	300
23668	205	21973	1063	455	Cassava leaves	77	RWF	5	KG	12	2015	500
23669	205	21973	1063	456	Peas (fresh)	77	RWF	5	KG	12	2015	860
23670	205	21973	1063	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	400
23671	205	21972	1065	51	Maize	77	RWF	5	KG	4	2013	250
23672	205	21972	1065	65	Sorghum	77	RWF	5	KG	4	2013	290
23673	205	21972	1065	68	Cassava	77	RWF	5	KG	4	2013	354.333000000000027
23674	205	21972	1065	74	Cassava flour	77	RWF	5	KG	4	2013	438.666999999999973
23675	205	21972	1065	76	Maize flour	77	RWF	5	KG	4	2013	433
23676	205	21972	1065	87	Sweet potatoes	77	RWF	5	KG	4	2013	145.332999999999998
23677	205	21972	1065	148	Potatoes (Irish)	77	RWF	5	KG	4	2013	192.332999999999998
23678	205	21972	1065	262	Beans (dry)	77	RWF	5	KG	4	2013	359
23679	205	21969	1066	51	Maize	77	RWF	5	KG	12	2015	298.333000000000027
23680	205	21969	1066	52	Rice	77	RWF	5	KG	12	2015	600
23681	205	21969	1066	58	Wheat flour	77	RWF	5	KG	12	2015	700
23682	205	21969	1066	65	Sorghum	77	RWF	5	KG	12	2015	288.333000000000027
23683	205	21969	1066	68	Cassava	77	RWF	5	KG	12	2015	218.332999999999998
23684	205	21969	1066	71	Rice (local)	77	RWF	5	KG	10	2012	600
23685	205	21969	1066	74	Cassava flour	77	RWF	5	KG	12	2015	300
23686	205	21969	1066	76	Maize flour	77	RWF	5	KG	12	2015	458.333000000000027
23687	205	21969	1066	87	Sweet potatoes	77	RWF	5	KG	12	2015	156.667000000000002
23688	205	21969	1066	91	Chili (red)	77	RWF	5	KG	12	2015	916.66700000000003
23689	205	21969	1066	92	Eggs	77	RWF	33	Unit	12	2015	106.667000000000002
23690	205	21969	1066	105	Garlic	77	RWF	5	KG	12	2015	2316.67000000000007
23691	205	21969	1066	110	Onions (red)	77	RWF	5	KG	12	2015	750
23692	205	21969	1066	111	Onions (white)	77	RWF	5	KG	11	2015	850
23693	205	21969	1066	114	Tomatoes	77	RWF	5	KG	12	2015	400
23694	205	21969	1066	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	900
23695	205	21969	1066	141	Meat (beef)	77	RWF	5	KG	12	2015	1800
23696	205	21969	1066	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	200
23697	205	21969	1066	166	Carrots	77	RWF	5	KG	12	2015	366.666999999999973
23698	205	21969	1066	181	Cabbage	77	RWF	5	KG	12	2015	175
23699	205	21969	1066	183	Meat (mutton)	77	RWF	5	KG	11	2015	1800
23700	205	21969	1066	229	Apples (red)	77	RWF	5	KG	12	2015	2700
23701	205	21969	1066	233	Cucumbers (greenhouse)	77	RWF	5	KG	1	2015	300
23702	205	21969	1066	241	Oranges (big size)	77	RWF	5	KG	12	2015	583.33299999999997
23703	205	21969	1066	248	Soybeans	77	RWF	5	KG	12	2015	487.5
23704	205	21969	1066	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
23705	205	21969	1066	253	Sorghum flour	77	RWF	5	KG	12	2015	616.66700000000003
23706	205	21969	1066	254	Bananas	77	RWF	5	KG	12	2015	130
23707	205	21969	1066	262	Beans (dry)	77	RWF	5	KG	12	2015	350
23708	205	21969	1066	292	Peppers (green)	77	RWF	5	KG	12	2015	666.66700000000003
23709	205	21969	1066	381	Rice (imported, Tanzanian)	77	RWF	5	KG	2	2015	600
23710	205	21969	1066	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	22555.2999999999993
23711	205	21969	1066	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	21166.7000000000007
23712	205	21969	1066	404	Spinach	77	RWF	5	KG	12	2014	375
23713	205	21969	1066	408	Papaya	77	RWF	5	KG	12	2015	550
23714	205	21969	1066	411	Mangoes	77	RWF	5	KG	12	2015	783.33299999999997
23715	205	21969	1066	434	Eggplants	77	RWF	5	KG	12	2015	300
23716	205	21969	1066	446	Charcoal	77	RWF	31	Sack	12	2015	5750
23717	205	21969	1066	447	Passion fruit	77	RWF	5	KG	12	2015	1200
23718	205	21969	1066	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4000
23719	205	21969	1066	454	Avocados	77	RWF	33	Unit	12	2014	225
23720	205	21969	1066	455	Cassava leaves	77	RWF	5	KG	12	2015	500
23721	205	21969	1066	456	Peas (fresh)	77	RWF	5	KG	12	2015	875
23722	205	21969	1066	457	Peas (dry)	77	RWF	5	KG	5	2015	850
23723	205	21969	1066	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	450
23724	205	21973	1067	51	Maize	77	RWF	5	KG	12	2015	242
23725	205	21973	1067	52	Rice	77	RWF	5	KG	12	2015	700
23726	205	21973	1067	58	Wheat flour	77	RWF	5	KG	12	2015	600
23727	205	21973	1067	65	Sorghum	77	RWF	5	KG	12	2015	388.333000000000027
23728	205	21973	1067	68	Cassava	77	RWF	5	KG	12	2015	200
23729	205	21973	1067	71	Rice (local)	77	RWF	5	KG	10	2012	600
23730	205	21973	1067	74	Cassava flour	77	RWF	5	KG	12	2015	377.333000000000027
23731	205	21973	1067	76	Maize flour	77	RWF	5	KG	12	2015	427.333000000000027
23732	205	21973	1067	81	Milk	77	RWF	15	L	12	2015	233.332999999999998
23733	205	21973	1067	84	Wheat	77	RWF	5	KG	12	2015	438.666999999999973
23734	205	21973	1067	87	Sweet potatoes	77	RWF	5	KG	12	2015	117.332999999999998
23735	205	21973	1067	91	Chili (red)	77	RWF	5	KG	12	2015	1200
23736	205	21973	1067	92	Eggs	77	RWF	33	Unit	12	2015	73
23737	205	21973	1067	105	Garlic	77	RWF	5	KG	12	2015	1999.67000000000007
23738	205	21973	1067	110	Onions (red)	77	RWF	5	KG	12	2015	466.333000000000027
23739	205	21973	1067	111	Onions (white)	77	RWF	5	KG	12	2015	666
23740	205	21973	1067	114	Tomatoes	77	RWF	5	KG	12	2015	600
23741	205	21973	1067	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1000
23742	205	21973	1067	140	Meat (pork)	77	RWF	5	KG	10	2015	1266
23743	205	21973	1067	141	Meat (beef)	77	RWF	5	KG	12	2015	1600
23744	205	21973	1067	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	165.332999999999998
23745	205	21973	1067	166	Carrots	77	RWF	5	KG	12	2015	277.666999999999973
23746	205	21973	1067	181	Cabbage	77	RWF	5	KG	12	2015	106.667000000000002
23747	205	21973	1067	183	Meat (mutton)	77	RWF	5	KG	12	2015	1400
23748	205	21973	1067	229	Apples (red)	77	RWF	5	KG	9	2015	2466
23749	205	21973	1067	231	Cauliflower	77	RWF	5	KG	10	2015	350
23750	205	21973	1067	241	Oranges (big size)	77	RWF	5	KG	12	2015	766
23751	205	21973	1067	248	Soybeans	77	RWF	5	KG	12	2015	600
23752	205	21973	1067	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	777.66700000000003
23753	205	21973	1067	253	Sorghum flour	77	RWF	5	KG	12	2015	500
23754	205	21973	1067	254	Bananas	77	RWF	5	KG	12	2015	200
23755	205	21973	1067	262	Beans (dry)	77	RWF	5	KG	12	2015	415.333000000000027
23756	205	21973	1067	263	Beans (fresh)	77	RWF	5	KG	12	2015	488.666999999999973
23757	205	21973	1067	292	Peppers (green)	77	RWF	5	KG	12	2015	533.33299999999997
23758	205	21973	1067	381	Rice (imported, Tanzanian)	77	RWF	5	KG	8	2014	933
23759	205	21973	1067	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	26888.7000000000007
23760	205	21973	1067	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	18444.2999999999993
23761	205	21973	1067	404	Spinach	77	RWF	5	KG	12	2015	250
23762	205	21973	1067	407	Guava	77	RWF	5	KG	6	2015	350
23763	205	21973	1067	408	Papaya	77	RWF	5	KG	12	2015	500
23764	205	21973	1067	411	Mangoes	77	RWF	5	KG	12	2015	383
23765	205	21973	1067	434	Eggplants	77	RWF	5	KG	12	2015	400
23766	205	21973	1067	446	Charcoal	77	RWF	31	Sack	12	2015	6750
23767	205	21973	1067	447	Passion fruit	77	RWF	5	KG	12	2015	800
23768	205	21973	1067	450	Zucchini	77	RWF	5	KG	12	2015	300
23769	205	21973	1067	451	Meat (goat)	77	RWF	5	KG	5	2015	2400
23770	205	21973	1067	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4555.32999999999993
23771	205	21973	1067	454	Avocados	77	RWF	33	Unit	12	2015	316.666999999999973
23772	205	21973	1067	455	Cassava leaves	77	RWF	5	KG	12	2015	300
23773	205	21973	1067	456	Peas (fresh)	77	RWF	5	KG	12	2015	711
23774	205	21973	1067	457	Peas (dry)	77	RWF	5	KG	12	2015	955.33299999999997
23775	205	21973	1067	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	327.666999999999973
23776	205	21973	1070	51	Maize	77	RWF	5	KG	9	2014	220
23777	205	21973	1070	52	Rice	77	RWF	5	KG	12	2015	672
23778	205	21973	1070	58	Wheat flour	77	RWF	5	KG	12	2015	800
23779	205	21973	1070	65	Sorghum	77	RWF	5	KG	12	2015	318.857000000000028
23780	205	21973	1070	68	Cassava	77	RWF	5	KG	8	2015	200
23781	205	21973	1070	71	Rice (local)	77	RWF	5	KG	11	2011	619.75
23782	205	21973	1070	74	Cassava flour	77	RWF	5	KG	12	2015	251.143000000000001
23783	205	21973	1070	76	Maize flour	77	RWF	5	KG	12	2015	560.714000000000055
23784	205	21973	1070	81	Milk	77	RWF	15	L	12	2015	450
23785	205	21973	1070	84	Wheat	77	RWF	5	KG	6	2015	450
23786	205	21973	1070	87	Sweet potatoes	77	RWF	5	KG	12	2015	121.143000000000001
23787	205	21973	1070	91	Chili (red)	77	RWF	5	KG	12	2015	421.428999999999974
23788	205	21973	1070	92	Eggs	77	RWF	33	Unit	12	2015	100
23789	205	21973	1070	105	Garlic	77	RWF	5	KG	12	2015	3050
23790	205	21973	1070	110	Onions (red)	77	RWF	5	KG	12	2015	305.857000000000028
23791	205	21973	1070	111	Onions (white)	77	RWF	5	KG	12	2015	600
23792	205	21973	1070	114	Tomatoes	77	RWF	5	KG	12	2015	160
23793	205	21973	1070	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	992.856999999999971
23794	205	21973	1070	141	Meat (beef)	77	RWF	5	KG	12	2015	2066.67000000000007
23795	205	21973	1070	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	232.429000000000002
23796	205	21973	1070	166	Carrots	77	RWF	5	KG	12	2015	270.713999999999999
23797	205	21973	1070	181	Cabbage	77	RWF	5	KG	12	2015	68.7142999999999944
23798	205	21973	1070	231	Cauliflower	77	RWF	5	KG	9	2015	5000
23799	205	21973	1070	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	220
23800	205	21973	1070	241	Oranges (big size)	77	RWF	5	KG	12	2015	186.856999999999999
23801	205	21973	1070	248	Soybeans	77	RWF	5	KG	11	2015	625
23802	205	21973	1070	251	Rice (imported, Indian)	77	RWF	5	KG	6	2015	660
23803	205	21973	1070	253	Sorghum flour	77	RWF	5	KG	12	2015	459.571000000000026
23804	205	21973	1070	254	Bananas	77	RWF	5	KG	12	2015	143.286000000000001
23805	205	21973	1070	262	Beans (dry)	77	RWF	5	KG	12	2015	466
23806	205	21973	1070	292	Peppers (green)	77	RWF	5	KG	12	2015	251.429000000000002
23807	205	21973	1070	381	Rice (imported, Tanzanian)	77	RWF	5	KG	5	2013	607
23808	205	21973	1070	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	36250
23809	205	21973	1070	404	Spinach	77	RWF	5	KG	11	2015	95
23810	205	21973	1070	408	Papaya	77	RWF	5	KG	7	2015	250
23811	205	21973	1070	411	Mangoes	77	RWF	5	KG	12	2015	213
23812	205	21973	1070	434	Eggplants	77	RWF	5	KG	12	2015	96.1428999999999974
23813	205	21973	1070	446	Charcoal	77	RWF	31	Sack	12	2015	5642.85999999999967
23814	205	21973	1070	447	Passion fruit	77	RWF	5	KG	12	2015	564.285999999999945
23815	205	21973	1070	450	Zucchini	77	RWF	5	KG	9	2015	143.75
23816	205	21973	1070	451	Meat (goat)	77	RWF	5	KG	12	2015	2750
23817	205	21973	1070	453	Livestock (hen)	77	RWF	33	Unit	12	2015	5119
23818	205	21973	1070	454	Avocados	77	RWF	33	Unit	12	2015	366.571000000000026
23819	205	21973	1070	455	Cassava leaves	77	RWF	5	KG	12	2015	291.286000000000001
23820	205	21973	1070	456	Peas (fresh)	77	RWF	5	KG	12	2015	921.428999999999974
23821	205	21973	1070	457	Peas (dry)	77	RWF	5	KG	12	2015	800
23822	205	21973	1070	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	227.143000000000001
23823	205	21972	1072	51	Maize	77	RWF	5	KG	12	2015	400
23824	205	21972	1072	52	Rice	77	RWF	5	KG	12	2015	6000
23825	205	21972	1072	58	Wheat flour	77	RWF	5	KG	5	2015	250
23826	205	21972	1072	65	Sorghum	77	RWF	5	KG	12	2015	400
23827	205	21972	1072	68	Cassava	77	RWF	5	KG	12	2015	240
23828	205	21972	1072	71	Rice (local)	77	RWF	5	KG	12	2011	623.399999999999977
23829	205	21972	1072	74	Cassava flour	77	RWF	5	KG	12	2015	280
23830	205	21972	1072	76	Maize flour	77	RWF	5	KG	12	2015	450
23831	205	21972	1072	81	Milk	77	RWF	15	L	12	2015	400
23832	205	21972	1072	87	Sweet potatoes	77	RWF	5	KG	12	2015	150
23833	205	21972	1072	91	Chili (red)	77	RWF	5	KG	10	2015	1500
23834	205	21972	1072	92	Eggs	77	RWF	33	Unit	12	2015	100
23835	205	21972	1072	110	Onions (red)	77	RWF	5	KG	12	2015	600
23836	205	21972	1072	114	Tomatoes	77	RWF	5	KG	12	2015	400
23837	205	21972	1072	119	Groundnuts (shelled)	77	RWF	5	KG	11	2015	1200
23838	205	21972	1072	141	Meat (beef)	77	RWF	5	KG	12	2015	1700
23839	205	21972	1072	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	200
23840	205	21972	1072	166	Carrots	77	RWF	5	KG	12	2015	300
23841	205	21972	1072	181	Cabbage	77	RWF	5	KG	12	2015	130
23842	205	21972	1072	241	Oranges (big size)	77	RWF	5	KG	12	2015	500
23843	205	21972	1072	248	Soybeans	77	RWF	5	KG	12	2015	550
23844	205	21972	1072	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
23845	205	21972	1072	253	Sorghum flour	77	RWF	5	KG	12	2015	500
23846	205	21972	1072	254	Bananas	77	RWF	5	KG	12	2015	200
23847	205	21972	1072	262	Beans (dry)	77	RWF	5	KG	12	2015	600
23848	205	21972	1072	292	Peppers (green)	77	RWF	5	KG	12	2015	500
23849	205	21972	1072	381	Rice (imported, Tanzanian)	77	RWF	5	KG	5	2015	650
23850	205	21972	1072	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	22670
23851	205	21972	1072	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	17000
23852	205	21972	1072	408	Papaya	77	RWF	5	KG	12	2015	250
23853	205	21972	1072	411	Mangoes	77	RWF	5	KG	12	2015	500
23854	205	21972	1072	434	Eggplants	77	RWF	5	KG	12	2015	200
23855	205	21972	1072	447	Passion fruit	77	RWF	5	KG	12	2015	1000
23856	205	21972	1072	450	Zucchini	77	RWF	5	KG	5	2015	70
23857	205	21972	1072	453	Livestock (hen)	77	RWF	33	Unit	12	2015	3500
23858	205	21972	1072	454	Avocados	77	RWF	33	Unit	12	2015	150
23859	205	21972	1072	455	Cassava leaves	77	RWF	5	KG	11	2015	633
23860	205	21972	1072	457	Peas (dry)	77	RWF	5	KG	11	2015	1625
23861	205	21972	1072	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	300
23862	205	21972	1073	51	Maize	77	RWF	5	KG	12	2015	238
23863	205	21972	1073	52	Rice	77	RWF	5	KG	12	2015	743
23864	205	21972	1073	58	Wheat flour	77	RWF	5	KG	12	2015	500
23865	205	21972	1073	65	Sorghum	77	RWF	5	KG	12	2015	436.75
23866	205	21972	1073	68	Cassava	77	RWF	5	KG	11	2015	235
23867	205	21972	1073	71	Rice (local)	77	RWF	5	KG	12	2011	655.66700000000003
23868	205	21972	1073	74	Cassava flour	77	RWF	5	KG	12	2015	350
23869	205	21972	1073	76	Maize flour	77	RWF	5	KG	12	2015	277.5
23870	205	21972	1073	77	Maize flour (imported)	77	RWF	5	KG	12	2015	481.75
23871	205	21972	1073	81	Milk	77	RWF	15	L	12	2015	246
23872	205	21972	1073	84	Wheat	77	RWF	5	KG	12	2015	500
23873	205	21972	1073	87	Sweet potatoes	77	RWF	5	KG	12	2015	109.5
23874	205	21972	1073	91	Chili (red)	77	RWF	5	KG	12	2015	700
23875	205	21972	1073	92	Eggs	77	RWF	33	Unit	12	2015	105.25
23876	205	21972	1073	105	Garlic	77	RWF	5	KG	12	2015	3500
23877	205	21972	1073	110	Onions (red)	77	RWF	5	KG	12	2015	364.5
23878	205	21972	1073	111	Onions (white)	77	RWF	5	KG	12	2015	711.33299999999997
23879	205	21972	1073	114	Tomatoes	77	RWF	5	KG	12	2015	247.5
23880	205	21972	1073	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1125
23881	205	21972	1073	141	Meat (beef)	77	RWF	5	KG	12	2015	1550
23882	205	21972	1073	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	156
23883	205	21972	1073	166	Carrots	77	RWF	5	KG	12	2015	224.5
23884	205	21972	1073	181	Cabbage	77	RWF	5	KG	12	2015	83.75
23885	205	21972	1073	231	Cauliflower	77	RWF	5	KG	11	2015	394
23886	205	21972	1073	233	Cucumbers (greenhouse)	77	RWF	5	KG	11	2015	200
23887	205	21972	1073	241	Oranges (big size)	77	RWF	5	KG	12	2015	550
23888	205	21972	1073	248	Soybeans	77	RWF	5	KG	12	2015	496.75
23889	205	21972	1073	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	822.5
23890	205	21972	1073	253	Sorghum flour	77	RWF	5	KG	12	2015	490
23891	205	21972	1073	254	Bananas	77	RWF	5	KG	12	2015	198.5
23892	205	21972	1073	262	Beans (dry)	77	RWF	5	KG	12	2015	447.5
23893	205	21972	1073	287	Livestock (cattle)	77	RWF	33	Unit	12	2015	201667
23894	205	21972	1073	292	Peppers (green)	77	RWF	5	KG	12	2015	391.75
23895	205	21972	1073	381	Rice (imported, Tanzanian)	77	RWF	5	KG	6	2013	900
23896	205	21972	1073	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	21750
23897	205	21972	1073	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	16750
23898	205	21972	1073	404	Spinach	77	RWF	5	KG	12	2015	160
23899	205	21972	1073	407	Guava	77	RWF	5	KG	10	2015	85
23900	205	21972	1073	408	Papaya	77	RWF	5	KG	12	2015	194.5
23901	205	21972	1073	411	Mangoes	77	RWF	5	KG	12	2015	500
23902	205	21972	1073	434	Eggplants	77	RWF	5	KG	12	2015	179.25
23903	205	21972	1073	446	Charcoal	77	RWF	31	Sack	12	2015	5450
23904	205	21972	1073	447	Passion fruit	77	RWF	5	KG	12	2015	641.75
23905	205	21972	1073	450	Zucchini	77	RWF	5	KG	12	2015	131.75
23906	205	21972	1073	451	Meat (goat)	77	RWF	5	KG	11	2015	2500
23907	205	21972	1073	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4521.75
23908	205	21972	1073	454	Avocados	77	RWF	33	Unit	12	2015	172.75
23909	205	21972	1073	455	Cassava leaves	77	RWF	5	KG	12	2015	391.75
23910	205	21972	1073	456	Peas (fresh)	77	RWF	5	KG	12	2015	804.25
23911	205	21972	1073	457	Peas (dry)	77	RWF	5	KG	12	2015	800
23912	205	21972	1073	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	236.75
23913	205	21969	1074	51	Maize	77	RWF	5	KG	12	2015	350
23914	205	21969	1074	52	Rice	77	RWF	5	KG	12	2015	650
23915	205	21969	1074	58	Wheat flour	77	RWF	5	KG	12	2015	700
23916	205	21969	1074	65	Sorghum	77	RWF	5	KG	12	2015	390
23917	205	21969	1074	68	Cassava	77	RWF	5	KG	12	2015	244.599999999999994
23918	205	21969	1074	71	Rice (local)	77	RWF	5	KG	12	2011	600
23919	205	21969	1074	74	Cassava flour	77	RWF	5	KG	12	2015	300
23920	205	21969	1074	76	Maize flour	77	RWF	5	KG	12	2015	500
23921	205	21969	1074	81	Milk	77	RWF	15	L	12	2015	400
23922	205	21969	1074	87	Sweet potatoes	77	RWF	5	KG	12	2015	200
23923	205	21969	1074	91	Chili (red)	77	RWF	5	KG	12	2015	806.600000000000023
23924	205	21969	1074	92	Eggs	77	RWF	33	Unit	12	2015	120
23925	205	21969	1074	105	Garlic	77	RWF	5	KG	12	2015	2800
23926	205	21969	1074	110	Onions (red)	77	RWF	5	KG	12	2015	680
23927	205	21969	1074	111	Onions (white)	77	RWF	5	KG	12	2015	1113.20000000000005
23928	205	21969	1074	114	Tomatoes	77	RWF	5	KG	12	2015	283.399999999999977
23929	205	21969	1074	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1093.40000000000009
23930	205	21969	1074	141	Meat (beef)	77	RWF	5	KG	12	2015	1880.20000000000005
23931	205	21969	1074	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	213.400000000000006
23932	205	21969	1074	166	Carrots	77	RWF	5	KG	12	2015	440
23933	205	21969	1074	181	Cabbage	77	RWF	5	KG	12	2015	240
23934	205	21969	1074	229	Apples (red)	77	RWF	5	KG	12	2015	2500
23935	205	21969	1074	231	Cauliflower	77	RWF	5	KG	12	2015	500
23936	205	21969	1074	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	600
23937	205	21969	1074	241	Oranges (big size)	77	RWF	5	KG	12	2015	423.399999999999977
23938	205	21969	1074	248	Soybeans	77	RWF	5	KG	12	2015	530
23939	205	21969	1074	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	753.399999999999977
23940	205	21969	1074	253	Sorghum flour	77	RWF	5	KG	12	2015	500
23941	205	21969	1074	254	Bananas	77	RWF	5	KG	12	2015	165.400000000000006
23942	205	21969	1074	262	Beans (dry)	77	RWF	5	KG	12	2015	493.399999999999977
23943	205	21969	1074	263	Beans (fresh)	77	RWF	5	KG	12	2015	400
23944	205	21969	1074	292	Peppers (green)	77	RWF	5	KG	12	2015	426.800000000000011
23945	205	21969	1074	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2015	1000
23946	205	21969	1074	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	28400
23947	205	21969	1074	404	Spinach	77	RWF	5	KG	12	2015	300
23948	205	21969	1074	408	Papaya	77	RWF	5	KG	12	2015	500
23949	205	21969	1074	411	Mangoes	77	RWF	5	KG	12	2015	490
23950	205	21969	1074	434	Eggplants	77	RWF	5	KG	12	2015	195.75
23951	205	21969	1074	447	Passion fruit	77	RWF	5	KG	12	2015	1320
23952	205	21969	1074	450	Zucchini	77	RWF	5	KG	12	2015	520
23953	205	21969	1074	451	Meat (goat)	77	RWF	5	KG	12	2015	2500
23954	205	21969	1074	453	Livestock (hen)	77	RWF	33	Unit	12	2015	3733.40000000000009
23955	205	21969	1074	454	Avocados	77	RWF	33	Unit	12	2015	266.600000000000023
23956	205	21969	1074	455	Cassava leaves	77	RWF	5	KG	12	2015	500
23957	205	21969	1074	456	Peas (fresh)	77	RWF	5	KG	12	2015	1000
23958	205	21969	1074	457	Peas (dry)	77	RWF	5	KG	10	2015	1400
23959	205	21969	1074	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	320.75
23960	205	2587	1075	51	Maize	77	RWF	5	KG	10	2015	300
23961	205	2587	1075	52	Rice	77	RWF	5	KG	11	2015	650
23962	205	2587	1075	58	Wheat flour	77	RWF	5	KG	11	2015	600
23963	205	2587	1075	65	Sorghum	77	RWF	5	KG	6	2015	400
23964	205	2587	1075	68	Cassava	77	RWF	5	KG	8	2015	250
23965	205	2587	1075	71	Rice (local)	77	RWF	5	KG	11	2011	575.25
23966	205	2587	1075	74	Cassava flour	77	RWF	5	KG	11	2015	300
23967	205	2587	1075	76	Maize flour	77	RWF	5	KG	11	2015	533
23968	205	2587	1075	81	Milk	77	RWF	15	L	11	2015	350
23969	205	2587	1075	84	Wheat	77	RWF	5	KG	2	2014	575
23970	205	2587	1075	87	Sweet potatoes	77	RWF	5	KG	11	2015	250
23971	205	2587	1075	91	Chili (red)	77	RWF	5	KG	11	2015	1867
23972	205	2587	1075	92	Eggs	77	RWF	33	Unit	11	2015	97
23973	205	2587	1075	105	Garlic	77	RWF	5	KG	11	2015	2700
23974	205	2587	1075	110	Onions (red)	77	RWF	5	KG	11	2015	733
23975	205	2587	1075	111	Onions (white)	77	RWF	5	KG	11	2015	1000
23976	205	2587	1075	114	Tomatoes	77	RWF	5	KG	11	2015	500
23977	205	2587	1075	119	Groundnuts (shelled)	77	RWF	5	KG	11	2015	1200
23978	205	2587	1075	141	Meat (beef)	77	RWF	5	KG	7	2015	2133
23979	205	2587	1075	148	Potatoes (Irish)	77	RWF	5	KG	11	2015	230
23980	205	2587	1075	166	Carrots	77	RWF	5	KG	11	2015	400
23981	205	2587	1075	181	Cabbage	77	RWF	5	KG	11	2015	130
23982	205	2587	1075	183	Meat (mutton)	77	RWF	5	KG	11	2015	2167
23983	205	2587	1075	229	Apples (red)	77	RWF	5	KG	11	2015	2500
23984	205	2587	1075	231	Cauliflower	77	RWF	5	KG	11	2015	400
23985	205	2587	1075	233	Cucumbers (greenhouse)	77	RWF	5	KG	10	2015	583.5
23986	205	2587	1075	241	Oranges (big size)	77	RWF	5	KG	11	2015	633
23987	205	2587	1075	248	Soybeans	77	RWF	5	KG	8	2014	500
23988	205	2587	1075	251	Rice (imported, Indian)	77	RWF	5	KG	11	2015	750
23989	205	2587	1075	253	Sorghum flour	77	RWF	5	KG	11	2015	600
23990	205	2587	1075	254	Bananas	77	RWF	5	KG	11	2015	230
23991	205	2587	1075	262	Beans (dry)	77	RWF	5	KG	11	2015	467
23992	205	2587	1075	263	Beans (fresh)	77	RWF	5	KG	11	2015	733
23993	205	2587	1075	292	Peppers (green)	77	RWF	5	KG	11	2015	600
23994	205	2587	1075	381	Rice (imported, Tanzanian)	77	RWF	5	KG	11	2015	1000
23995	205	2587	1075	404	Spinach	77	RWF	5	KG	11	2015	200
23996	205	2587	1075	407	Guava	77	RWF	5	KG	8	2015	700
23997	205	2587	1075	408	Papaya	77	RWF	5	KG	11	2015	700
23998	205	2587	1075	411	Mangoes	77	RWF	5	KG	11	2015	900
23999	205	2587	1075	434	Eggplants	77	RWF	5	KG	11	2015	400
24000	205	2587	1075	446	Charcoal	77	RWF	31	Sack	11	2015	7000
24001	205	2587	1075	447	Passion fruit	77	RWF	5	KG	11	2015	1167
24002	205	2587	1075	450	Zucchini	77	RWF	5	KG	11	2015	400
24003	205	2587	1075	451	Meat (goat)	77	RWF	5	KG	11	2015	2500
24004	205	2587	1075	453	Livestock (hen)	77	RWF	33	Unit	11	2015	4833
24005	205	2587	1075	454	Avocados	77	RWF	33	Unit	11	2015	350
24006	205	2587	1075	455	Cassava leaves	77	RWF	5	KG	11	2015	567
24007	205	2587	1075	456	Peas (fresh)	77	RWF	5	KG	11	2015	1600
24008	205	2587	1075	457	Peas (dry)	77	RWF	5	KG	10	2015	1400
24009	205	2587	1075	458	Beans (green, fresh)	77	RWF	5	KG	11	2015	500
24010	205	2587	1077	51	Maize	77	RWF	5	KG	3	2015	300
24011	205	2587	1077	52	Rice	77	RWF	5	KG	12	2015	606.25
24012	205	2587	1077	58	Wheat flour	77	RWF	5	KG	12	2015	712.5
24013	205	2587	1077	74	Cassava flour	77	RWF	5	KG	12	2015	400
24014	205	2587	1077	76	Maize flour	77	RWF	5	KG	12	2015	500
24015	205	2587	1077	87	Sweet potatoes	77	RWF	5	KG	12	2015	253.75
24016	205	2587	1077	91	Chili (red)	77	RWF	5	KG	12	2015	1362.5
24017	205	2587	1077	92	Eggs	77	RWF	33	Unit	12	2015	146.25
24018	205	2587	1077	105	Garlic	77	RWF	5	KG	12	2015	2062.5
24019	205	2587	1077	110	Onions (red)	77	RWF	5	KG	12	2015	637.5
24020	205	2587	1077	111	Onions (white)	77	RWF	5	KG	12	2015	1225
24021	205	2587	1077	114	Tomatoes	77	RWF	5	KG	12	2015	537.5
24022	205	2587	1077	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1175
24023	205	2587	1077	141	Meat (beef)	77	RWF	5	KG	12	2015	1975
24024	205	2587	1077	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	193.75
24025	205	2587	1077	166	Carrots	77	RWF	5	KG	12	2015	375
24026	205	2587	1077	181	Cabbage	77	RWF	5	KG	12	2015	306.25
24027	205	2587	1077	183	Meat (mutton)	77	RWF	5	KG	9	2015	2000
24028	205	2587	1077	229	Apples (red)	77	RWF	5	KG	12	2015	2550
24029	205	2587	1077	231	Cauliflower	77	RWF	5	KG	12	2015	487.5
24030	205	2587	1077	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	300
24031	205	2587	1077	241	Oranges (big size)	77	RWF	5	KG	12	2015	750
24032	205	2587	1077	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
24033	205	2587	1077	253	Sorghum flour	77	RWF	5	KG	12	2015	687.5
24034	205	2587	1077	254	Bananas	77	RWF	5	KG	12	2015	221.25
24035	205	2587	1077	262	Beans (dry)	77	RWF	5	KG	12	2015	556.25
24036	205	2587	1077	263	Beans (fresh)	77	RWF	5	KG	12	2015	637.5
24037	205	2587	1077	292	Peppers (green)	77	RWF	5	KG	12	2015	825
24038	205	2587	1077	381	Rice (imported, Tanzanian)	77	RWF	5	KG	3	2015	900
24039	205	2587	1077	404	Spinach	77	RWF	5	KG	12	2015	312.5
24040	205	2587	1077	408	Papaya	77	RWF	5	KG	12	2015	662.5
24041	205	2587	1077	411	Mangoes	77	RWF	5	KG	12	2015	937.5
24042	205	2587	1077	434	Eggplants	77	RWF	5	KG	12	2015	350
24043	205	2587	1077	446	Charcoal	77	RWF	31	Sack	10	2015	7000
24044	205	2587	1077	447	Passion fruit	77	RWF	5	KG	12	2015	1187.5
24045	205	2587	1077	450	Zucchini	77	RWF	5	KG	12	2015	400
24046	205	2587	1077	451	Meat (goat)	77	RWF	5	KG	10	2015	3000
24047	205	2587	1077	453	Livestock (hen)	77	RWF	33	Unit	12	2015	5750
24048	205	2587	1077	454	Avocados	77	RWF	33	Unit	10	2015	300
24049	205	2587	1077	455	Cassava leaves	77	RWF	5	KG	12	2015	500
24050	205	2587	1077	456	Peas (fresh)	77	RWF	5	KG	12	2015	862.5
24051	205	2587	1077	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	450
24052	205	21973	1078	51	Maize	77	RWF	5	KG	12	2015	300
24053	205	21973	1078	52	Rice	77	RWF	5	KG	12	2015	689
24054	205	21973	1078	58	Wheat flour	77	RWF	5	KG	12	2015	600
24055	205	21973	1078	65	Sorghum	77	RWF	5	KG	12	2015	300
24056	205	21973	1078	68	Cassava	77	RWF	5	KG	7	2015	100
24057	205	21973	1078	71	Rice (local)	77	RWF	5	KG	12	2011	691.5
24058	205	21973	1078	74	Cassava flour	77	RWF	5	KG	12	2015	389
24059	205	21973	1078	76	Maize flour	77	RWF	5	KG	12	2015	477.666999999999973
24060	205	21973	1078	77	Maize flour (imported)	77	RWF	5	KG	12	2015	533.33299999999997
24061	205	21973	1078	81	Milk	77	RWF	15	L	12	2015	300
24062	205	21973	1078	84	Wheat	77	RWF	5	KG	12	2015	394.333000000000027
24063	205	21973	1078	87	Sweet potatoes	77	RWF	5	KG	12	2015	130
24064	205	21973	1078	91	Chili (red)	77	RWF	5	KG	12	2015	566.66700000000003
24065	205	21973	1078	92	Eggs	77	RWF	33	Unit	12	2015	101
24066	205	21973	1078	105	Garlic	77	RWF	5	KG	12	2015	2833.32999999999993
24067	205	21973	1078	110	Onions (red)	77	RWF	5	KG	12	2015	700
24068	205	21973	1078	111	Onions (white)	77	RWF	5	KG	10	2015	600
24069	205	21973	1078	114	Tomatoes	77	RWF	5	KG	12	2015	500
24070	205	21973	1078	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1000
24071	205	21973	1078	141	Meat (beef)	77	RWF	5	KG	12	2015	1500
24072	205	21973	1078	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	148
24073	205	21973	1078	166	Carrots	77	RWF	5	KG	12	2015	333.333000000000027
24074	205	21973	1078	181	Cabbage	77	RWF	5	KG	12	2015	64.3332999999999942
24075	205	21973	1078	183	Meat (mutton)	77	RWF	5	KG	12	2015	1600
24076	205	21973	1078	241	Oranges (big size)	77	RWF	5	KG	12	2015	800
24077	205	21973	1078	248	Soybeans	77	RWF	5	KG	12	2015	666.66700000000003
24078	205	21973	1078	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
24079	205	21973	1078	253	Sorghum flour	77	RWF	5	KG	12	2015	405.666999999999973
24080	205	21973	1078	254	Bananas	77	RWF	5	KG	12	2015	180
24081	205	21973	1078	262	Beans (dry)	77	RWF	5	KG	12	2015	411
24082	205	21973	1078	287	Livestock (cattle)	77	RWF	33	Unit	12	2015	154445
24083	205	21973	1078	292	Peppers (green)	77	RWF	5	KG	12	2015	800
24084	205	21973	1078	381	Rice (imported, Tanzanian)	77	RWF	5	KG	10	2015	1000
24085	205	21973	1078	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	23444.2999999999993
24086	205	21973	1078	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	19333
24087	205	21973	1078	404	Spinach	77	RWF	5	KG	10	2015	200
24088	205	21973	1078	407	Guava	77	RWF	5	KG	10	2015	300
24089	205	21973	1078	408	Papaya	77	RWF	5	KG	12	2015	80
24090	205	21973	1078	411	Mangoes	77	RWF	5	KG	6	2015	650
24091	205	21973	1078	434	Eggplants	77	RWF	5	KG	12	2015	355.666999999999973
24092	205	21973	1078	446	Charcoal	77	RWF	31	Sack	12	2015	6111
24093	205	21973	1078	447	Passion fruit	77	RWF	5	KG	12	2015	977.66700000000003
24094	205	21973	1078	450	Zucchini	77	RWF	5	KG	12	2015	267
24095	205	21973	1078	451	Meat (goat)	77	RWF	5	KG	12	2015	2555.67000000000007
24096	205	21973	1078	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4389
24097	205	21973	1078	454	Avocados	77	RWF	33	Unit	12	2015	80
24098	205	21973	1078	455	Cassava leaves	77	RWF	5	KG	12	2015	500
24099	205	21973	1078	456	Peas (fresh)	77	RWF	5	KG	12	2015	600
24100	205	21973	1078	457	Peas (dry)	77	RWF	5	KG	12	2015	800
24101	205	21973	1078	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	400
24102	205	21973	1081	51	Maize	77	RWF	5	KG	12	2015	300
24103	205	21973	1081	52	Rice	77	RWF	5	KG	12	2015	650
24104	205	21973	1081	58	Wheat flour	77	RWF	5	KG	12	2015	566.66700000000003
24105	205	21973	1081	65	Sorghum	77	RWF	5	KG	12	2015	325
24106	205	21973	1081	68	Cassava	77	RWF	5	KG	12	2015	211.75
24107	205	21973	1081	71	Rice (local)	77	RWF	5	KG	10	2012	617
24108	205	21973	1081	74	Cassava flour	77	RWF	5	KG	12	2015	250
24109	205	21973	1081	76	Maize flour	77	RWF	5	KG	12	2015	450
24110	205	21973	1081	81	Milk	77	RWF	15	L	12	2015	400
24111	205	21973	1081	84	Wheat	77	RWF	5	KG	12	2015	433.25
24112	205	21973	1081	87	Sweet potatoes	77	RWF	5	KG	12	2015	151.75
24113	205	21973	1081	91	Chili (red)	77	RWF	5	KG	12	2015	716.75
24114	205	21973	1081	92	Eggs	77	RWF	33	Unit	12	2015	100
24115	205	21973	1081	105	Garlic	77	RWF	5	KG	12	2015	1583.5
24116	205	21973	1081	110	Onions (red)	77	RWF	5	KG	12	2015	508.25
24117	205	21973	1081	111	Onions (white)	77	RWF	5	KG	12	2015	575
24118	205	21973	1081	114	Tomatoes	77	RWF	5	KG	12	2015	400
24119	205	21973	1081	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	925
24120	205	21973	1081	141	Meat (beef)	77	RWF	5	KG	12	2015	1700
24121	205	21973	1081	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	147.25
24122	205	21973	1081	166	Carrots	77	RWF	5	KG	12	2015	140.75
24123	205	21973	1081	181	Cabbage	77	RWF	5	KG	12	2015	48.75
24124	205	21973	1081	229	Apples (red)	77	RWF	5	KG	12	2015	2400
24125	205	21973	1081	231	Cauliflower	77	RWF	5	KG	12	2015	140
24126	205	21973	1081	241	Oranges (big size)	77	RWF	5	KG	12	2015	400
24127	205	21973	1081	248	Soybeans	77	RWF	5	KG	12	2015	554.25
24128	205	21973	1081	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	800
24129	205	21973	1081	253	Sorghum flour	77	RWF	5	KG	12	2015	350
24130	205	21973	1081	254	Bananas	77	RWF	5	KG	12	2015	200
24131	205	21973	1081	262	Beans (dry)	77	RWF	5	KG	12	2015	491.75
24132	205	21973	1081	263	Beans (fresh)	77	RWF	5	KG	12	2015	450
24133	205	21973	1081	292	Peppers (green)	77	RWF	5	KG	12	2015	579.25
24134	205	21973	1081	381	Rice (imported, Tanzanian)	77	RWF	5	KG	3	2015	844.66700000000003
24135	205	21973	1081	383	Livestock (Goat)	77	RWF	33	Unit	7	2015	26667
24136	205	21973	1081	390	Livestock (Sheep)	77	RWF	33	Unit	7	2015	22667
24137	205	21973	1081	411	Mangoes	77	RWF	5	KG	12	2015	375
24138	205	21973	1081	434	Eggplants	77	RWF	5	KG	12	2015	200
24139	205	21973	1081	446	Charcoal	77	RWF	31	Sack	12	2015	8416.75
24140	205	21973	1081	447	Passion fruit	77	RWF	5	KG	12	2015	800
24141	205	21973	1081	451	Meat (goat)	77	RWF	5	KG	12	2015	2500
24142	205	21973	1081	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4583.25
24143	205	21973	1081	454	Avocados	77	RWF	33	Unit	12	2015	216.75
24144	205	21973	1081	455	Cassava leaves	77	RWF	5	KG	12	2015	300
24145	205	21973	1081	456	Peas (fresh)	77	RWF	5	KG	12	2015	691.75
24146	205	21973	1081	457	Peas (dry)	77	RWF	5	KG	12	2015	1041.75
24147	205	21973	1081	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	200
24148	205	21973	1084	51	Maize	77	RWF	5	KG	12	2015	300
24149	205	21973	1084	52	Rice	77	RWF	5	KG	12	2015	650
24150	205	21973	1084	58	Wheat flour	77	RWF	5	KG	11	2015	600
24151	205	21973	1084	65	Sorghum	77	RWF	5	KG	12	2015	300
24152	205	21973	1084	71	Rice (local)	77	RWF	5	KG	10	2012	600
24153	205	21973	1084	74	Cassava flour	77	RWF	5	KG	12	2015	262.75
24154	205	21973	1084	76	Maize flour	77	RWF	5	KG	12	2015	408.5
24155	205	21973	1084	81	Milk	77	RWF	15	L	12	2015	400
24156	205	21973	1084	84	Wheat	77	RWF	5	KG	12	2015	450
24157	205	21973	1084	87	Sweet potatoes	77	RWF	5	KG	12	2015	121.75
24158	205	21973	1084	91	Chili (red)	77	RWF	5	KG	9	2015	2000
24159	205	21973	1084	92	Eggs	77	RWF	33	Unit	12	2015	100
24160	205	21973	1084	105	Garlic	77	RWF	5	KG	9	2015	3000
24161	205	21973	1084	110	Onions (red)	77	RWF	5	KG	12	2015	691.75
24162	205	21973	1084	111	Onions (white)	77	RWF	5	KG	10	2015	500
24163	205	21973	1084	114	Tomatoes	77	RWF	5	KG	12	2015	400
24164	205	21973	1084	119	Groundnuts (shelled)	77	RWF	5	KG	7	2015	900
24165	205	21973	1084	141	Meat (beef)	77	RWF	5	KG	12	2015	1700
24166	205	21973	1084	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	127.25
24167	205	21973	1084	166	Carrots	77	RWF	5	KG	12	2015	100
24168	205	21973	1084	181	Cabbage	77	RWF	5	KG	12	2015	42.75
24169	205	21973	1084	229	Apples (red)	77	RWF	5	KG	12	2015	2400
24170	205	21973	1084	241	Oranges (big size)	77	RWF	5	KG	12	2015	400
24171	205	21973	1084	248	Soybeans	77	RWF	5	KG	12	2015	600
24172	205	21973	1084	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
24173	205	21973	1084	253	Sorghum flour	77	RWF	5	KG	12	2015	350
24174	205	21973	1084	254	Bananas	77	RWF	5	KG	12	2015	200
24175	205	21973	1084	262	Beans (dry)	77	RWF	5	KG	12	2015	483.25
24176	205	21973	1084	263	Beans (fresh)	77	RWF	5	KG	12	2015	400
24177	205	21973	1084	292	Peppers (green)	77	RWF	5	KG	12	2015	650
24178	205	21973	1084	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2014	800
24179	205	21973	1084	383	Livestock (Goat)	77	RWF	33	Unit	8	2015	23166.5
24180	205	21973	1084	390	Livestock (Sheep)	77	RWF	33	Unit	8	2015	17833
24181	205	21973	1084	411	Mangoes	77	RWF	5	KG	7	2015	400
24182	205	21973	1084	434	Eggplants	77	RWF	5	KG	12	2015	262.5
24183	205	21973	1084	446	Charcoal	77	RWF	31	Sack	12	2015	7000
24184	205	21973	1084	451	Meat (goat)	77	RWF	5	KG	12	2015	2000
24185	205	21973	1084	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4250
24186	205	21973	1084	454	Avocados	77	RWF	33	Unit	12	2015	221
24187	205	21973	1084	455	Cassava leaves	77	RWF	5	KG	12	2015	400
24188	205	21973	1084	456	Peas (fresh)	77	RWF	5	KG	12	2015	600
24189	205	21973	1084	457	Peas (dry)	77	RWF	5	KG	12	2015	1000
24190	205	21973	1084	458	Beans (green, fresh)	77	RWF	5	KG	6	2015	200
24191	205	21971	1085	51	Maize	77	RWF	5	KG	12	2015	291
24192	205	21971	1085	52	Rice	77	RWF	5	KG	12	2015	600
24193	205	21971	1085	58	Wheat flour	77	RWF	5	KG	12	2015	690
24194	205	21971	1085	65	Sorghum	77	RWF	5	KG	12	2015	282
24195	205	21971	1085	68	Cassava	77	RWF	5	KG	12	2015	220
24196	205	21971	1085	71	Rice (local)	77	RWF	5	KG	10	2012	600
24197	205	21971	1085	74	Cassava flour	77	RWF	5	KG	12	2015	300
24198	205	21971	1085	76	Maize flour	77	RWF	5	KG	12	2015	450
24199	205	21971	1085	81	Milk	77	RWF	15	L	12	2015	300
24200	205	21971	1085	87	Sweet potatoes	77	RWF	5	KG	12	2015	164
24201	205	21971	1085	91	Chili (red)	77	RWF	5	KG	12	2015	970
24202	205	21971	1085	92	Eggs	77	RWF	33	Unit	12	2015	108
24203	205	21971	1085	105	Garlic	77	RWF	5	KG	12	2015	2310
24204	205	21971	1085	110	Onions (red)	77	RWF	5	KG	12	2015	720
24205	205	21971	1085	111	Onions (white)	77	RWF	5	KG	11	2015	787.5
24206	205	21971	1085	114	Tomatoes	77	RWF	5	KG	12	2015	380
24207	205	21971	1085	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	900
24208	205	21971	1085	141	Meat (beef)	77	RWF	5	KG	12	2015	1800
24209	205	21971	1085	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	199
24210	205	21971	1085	166	Carrots	77	RWF	5	KG	12	2015	360
24211	205	21971	1085	181	Cabbage	77	RWF	5	KG	12	2015	145
24212	205	21971	1085	183	Meat (mutton)	77	RWF	5	KG	7	2015	1800
24213	205	21971	1085	229	Apples (red)	77	RWF	5	KG	12	2015	2700
24214	205	21971	1085	241	Oranges (big size)	77	RWF	5	KG	12	2015	640
24215	205	21971	1085	248	Soybeans	77	RWF	5	KG	12	2015	493.75
24216	205	21971	1085	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
24217	205	21971	1085	253	Sorghum flour	77	RWF	5	KG	12	2015	600
24218	205	21971	1085	254	Bananas	77	RWF	5	KG	12	2015	134
24219	205	21971	1085	262	Beans (dry)	77	RWF	5	KG	12	2015	352
24220	205	21971	1085	292	Peppers (green)	77	RWF	5	KG	12	2015	660
24221	205	21971	1085	381	Rice (imported, Tanzanian)	77	RWF	5	KG	10	2014	700
24222	205	21971	1085	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	22066.5999999999985
24223	205	21971	1085	408	Papaya	77	RWF	5	KG	12	2015	510
24224	205	21971	1085	411	Mangoes	77	RWF	5	KG	12	2015	810
24225	205	21971	1085	434	Eggplants	77	RWF	5	KG	12	2015	300
24226	205	21971	1085	446	Charcoal	77	RWF	31	Sack	12	2015	5800
24227	205	21971	1085	447	Passion fruit	77	RWF	5	KG	12	2015	1180
24228	205	21971	1085	451	Meat (goat)	77	RWF	5	KG	8	2015	1800
24229	205	21971	1085	453	Livestock (hen)	77	RWF	33	Unit	12	2015	9966.79999999999927
24230	205	21971	1085	454	Avocados	77	RWF	33	Unit	11	2014	200
24231	205	21971	1085	455	Cassava leaves	77	RWF	5	KG	12	2015	500
24232	205	21971	1085	456	Peas (fresh)	77	RWF	5	KG	12	2015	933.33299999999997
24233	205	21971	1085	457	Peas (dry)	77	RWF	5	KG	4	2015	900
24234	205	21971	1085	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	430
24235	205	2587	1086	51	Maize	77	RWF	5	KG	9	2015	261.857000000000028
24236	205	2587	1086	52	Rice	77	RWF	5	KG	9	2015	628.714000000000055
24237	205	2587	1086	58	Wheat flour	77	RWF	5	KG	9	2015	600
24238	205	2587	1086	65	Sorghum	77	RWF	5	KG	9	2015	364.286000000000001
24239	205	2587	1086	71	Rice (local)	77	RWF	5	KG	10	2012	633
24240	205	2587	1086	74	Cassava flour	77	RWF	5	KG	9	2015	300
24241	205	2587	1086	76	Maize flour	77	RWF	5	KG	9	2015	445.286000000000001
24242	205	2587	1086	77	Maize flour (imported)	77	RWF	5	KG	7	2015	433.5
24243	205	2587	1086	81	Milk	77	RWF	15	L	9	2015	392.857000000000028
24244	205	2587	1086	87	Sweet potatoes	77	RWF	5	KG	9	2015	202.429000000000002
24245	205	2587	1086	91	Chili (red)	77	RWF	5	KG	9	2015	1045.28999999999996
24246	205	2587	1086	92	Eggs	77	RWF	33	Unit	9	2015	90
24247	205	2587	1086	105	Garlic	77	RWF	5	KG	9	2015	2109.57000000000016
24248	205	2587	1086	110	Onions (red)	77	RWF	5	KG	9	2015	500
24249	205	2587	1086	111	Onions (white)	77	RWF	5	KG	9	2015	671.428999999999974
24250	205	2587	1086	114	Tomatoes	77	RWF	5	KG	9	2015	400
24251	205	2587	1086	119	Groundnuts (shelled)	77	RWF	5	KG	9	2015	992.856999999999971
24252	205	2587	1086	141	Meat (beef)	77	RWF	5	KG	9	2015	1900
24253	205	2587	1086	148	Potatoes (Irish)	77	RWF	5	KG	9	2015	204.286000000000001
24254	205	2587	1086	166	Carrots	77	RWF	5	KG	9	2015	421.428999999999974
24255	205	2587	1086	181	Cabbage	77	RWF	5	KG	9	2015	185.713999999999999
24256	205	2587	1086	183	Meat (mutton)	77	RWF	5	KG	7	2015	1900
24257	205	2587	1086	229	Apples (red)	77	RWF	5	KG	9	2015	2500
24258	205	2587	1086	231	Cauliflower	77	RWF	5	KG	9	2015	485.713999999999999
24259	205	2587	1086	233	Cucumbers (greenhouse)	77	RWF	5	KG	9	2015	442.857000000000028
24260	205	2587	1086	241	Oranges (big size)	77	RWF	5	KG	9	2015	561.856999999999971
24261	205	2587	1086	248	Soybeans	77	RWF	5	KG	9	2015	400
24262	205	2587	1086	251	Rice (imported, Indian)	77	RWF	5	KG	9	2015	745.285999999999945
24263	205	2587	1086	253	Sorghum flour	77	RWF	5	KG	9	2015	500
24264	205	2587	1086	254	Bananas	77	RWF	5	KG	9	2015	175.570999999999998
24265	205	2587	1086	262	Beans (dry)	77	RWF	5	KG	9	2015	445.286000000000001
24266	205	2587	1086	263	Beans (fresh)	77	RWF	5	KG	9	2015	678.571000000000026
24267	205	2587	1086	292	Peppers (green)	77	RWF	5	KG	9	2015	590.571000000000026
24268	205	2587	1086	381	Rice (imported, Tanzanian)	77	RWF	5	KG	9	2015	1000
24269	205	2587	1086	383	Livestock (Goat)	77	RWF	33	Unit	9	2015	23389
24270	205	2587	1086	404	Spinach	77	RWF	5	KG	9	2015	200
24271	205	2587	1086	408	Papaya	77	RWF	5	KG	9	2015	419
24272	205	2587	1086	411	Mangoes	77	RWF	5	KG	9	2015	700
24273	205	2587	1086	434	Eggplants	77	RWF	5	KG	9	2015	373.857000000000028
24274	205	2587	1086	447	Passion fruit	77	RWF	5	KG	9	2015	1028.56999999999994
24275	205	2587	1086	450	Zucchini	77	RWF	5	KG	12	2014	400
24276	205	2587	1086	453	Livestock (hen)	77	RWF	33	Unit	9	2015	3722.17000000000007
24277	205	2587	1086	454	Avocados	77	RWF	33	Unit	9	2015	476.142999999999972
24278	205	2587	1086	455	Cassava leaves	77	RWF	5	KG	9	2015	404.713999999999999
24279	205	2587	1086	456	Peas (fresh)	77	RWF	5	KG	9	2015	800
24280	205	2587	1086	458	Beans (green, fresh)	77	RWF	5	KG	9	2015	485.713999999999999
24281	205	21971	1087	51	Maize	77	RWF	5	KG	12	2015	244.143000000000001
24282	205	21971	1087	52	Rice	77	RWF	5	KG	12	2015	726.143000000000029
24283	205	21971	1087	58	Wheat flour	77	RWF	5	KG	12	2015	600
24284	205	21971	1087	65	Sorghum	77	RWF	5	KG	12	2015	400
24285	205	21971	1087	71	Rice (local)	77	RWF	5	KG	10	2012	600
24286	205	21971	1087	74	Cassava flour	77	RWF	5	KG	12	2015	383
24287	205	21971	1087	76	Maize flour	77	RWF	5	KG	12	2015	409.428999999999974
24288	205	21971	1087	77	Maize flour (imported)	77	RWF	5	KG	10	2015	800
24289	205	21971	1087	81	Milk	77	RWF	15	L	12	2015	400
24290	205	21971	1087	84	Wheat	77	RWF	5	KG	12	2015	490.286000000000001
24291	205	21971	1087	87	Sweet potatoes	77	RWF	5	KG	12	2015	141.286000000000001
24292	205	21971	1087	91	Chili (red)	77	RWF	5	KG	12	2015	1419
24293	205	21971	1087	92	Eggs	77	RWF	33	Unit	12	2015	80.8571000000000026
24294	205	21971	1087	105	Garlic	77	RWF	5	KG	12	2015	2566.57000000000016
24295	205	21971	1087	110	Onions (red)	77	RWF	5	KG	12	2015	528.571000000000026
24296	205	21971	1087	111	Onions (white)	77	RWF	5	KG	12	2015	776.143000000000029
24297	205	21971	1087	114	Tomatoes	77	RWF	5	KG	12	2015	516.571000000000026
24298	205	21971	1087	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	995.143000000000029
24299	205	21971	1087	141	Meat (beef)	77	RWF	5	KG	12	2015	1685.71000000000004
24300	205	21971	1087	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	188.856999999999999
24301	205	21971	1087	166	Carrots	77	RWF	5	KG	12	2015	250
24302	205	21971	1087	181	Cabbage	77	RWF	5	KG	12	2015	101.856999999999999
24303	205	21971	1087	183	Meat (mutton)	77	RWF	5	KG	10	2015	1700
24304	205	21971	1087	229	Apples (red)	77	RWF	5	KG	12	2015	2409.42999999999984
24305	205	21971	1087	231	Cauliflower	77	RWF	5	KG	12	2015	447.428999999999974
24306	205	21971	1087	233	Cucumbers (greenhouse)	77	RWF	5	KG	11	2015	483
24307	205	21971	1087	241	Oranges (big size)	77	RWF	5	KG	12	2015	720
24308	205	21971	1087	248	Soybeans	77	RWF	5	KG	12	2015	600
24309	205	21971	1087	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	800
24310	205	21971	1087	253	Sorghum flour	77	RWF	5	KG	12	2015	538
24311	205	21971	1087	254	Bananas	77	RWF	5	KG	12	2015	219.429000000000002
24312	205	21971	1087	262	Beans (dry)	77	RWF	5	KG	12	2015	442
24313	205	21971	1087	263	Beans (fresh)	77	RWF	5	KG	12	2015	471.428999999999974
24314	205	21971	1087	292	Peppers (green)	77	RWF	5	KG	12	2015	530.856999999999971
24315	205	21971	1087	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2015	986.399999999999977
24316	205	21971	1087	404	Spinach	77	RWF	5	KG	12	2015	283.166999999999973
24317	205	21971	1087	407	Guava	77	RWF	5	KG	7	2015	400
24318	205	21971	1087	408	Papaya	77	RWF	5	KG	12	2015	611
24319	205	21971	1087	411	Mangoes	77	RWF	5	KG	12	2015	456.399999999999977
24320	205	21971	1087	434	Eggplants	77	RWF	5	KG	12	2015	442.857000000000028
24321	205	21971	1087	446	Charcoal	77	RWF	31	Sack	12	2015	7214.14000000000033
24322	205	21971	1087	447	Passion fruit	77	RWF	5	KG	12	2015	800
24323	205	21971	1087	450	Zucchini	77	RWF	5	KG	12	2015	292.713999999999999
24324	205	21971	1087	453	Livestock (hen)	77	RWF	33	Unit	12	2015	5095
24325	205	21971	1087	454	Avocados	77	RWF	33	Unit	12	2015	310.833000000000027
24326	205	21971	1087	455	Cassava leaves	77	RWF	5	KG	12	2015	390.142999999999972
24327	205	21971	1087	456	Peas (fresh)	77	RWF	5	KG	12	2015	804.714000000000055
24328	205	21971	1087	457	Peas (dry)	77	RWF	5	KG	12	2015	952
24329	205	21971	1087	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	383.333000000000027
24330	205	21969	1088	51	Maize	77	RWF	5	KG	12	2015	300
24331	205	21969	1088	52	Rice	77	RWF	5	KG	12	2015	658
24332	205	21969	1088	58	Wheat flour	77	RWF	5	KG	12	2015	600
24333	205	21969	1088	65	Sorghum	77	RWF	5	KG	12	2015	300
24334	205	21969	1088	68	Cassava	77	RWF	5	KG	9	2015	251
24335	205	21969	1088	71	Rice (local)	77	RWF	5	KG	10	2012	617
24336	205	21969	1088	74	Cassava flour	77	RWF	5	KG	12	2015	1544.5
24337	205	21969	1088	76	Maize flour	77	RWF	5	KG	12	2015	475
24338	205	21969	1088	81	Milk	77	RWF	15	L	12	2015	400
24339	205	21969	1088	87	Sweet potatoes	77	RWF	5	KG	12	2015	150
24340	205	21969	1088	92	Eggs	77	RWF	33	Unit	12	2015	100
24341	205	21969	1088	105	Garlic	77	RWF	5	KG	9	2015	3000
24342	205	21969	1088	110	Onions (red)	77	RWF	5	KG	12	2015	800
24343	205	21969	1088	111	Onions (white)	77	RWF	5	KG	9	2015	900
24344	205	21969	1088	114	Tomatoes	77	RWF	5	KG	12	2015	200
24345	205	21969	1088	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	850
24346	205	21969	1088	141	Meat (beef)	77	RWF	5	KG	12	2015	1933
24347	205	21969	1088	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	205
24348	205	21969	1088	166	Carrots	77	RWF	5	KG	12	2015	400
24349	205	21969	1088	181	Cabbage	77	RWF	5	KG	12	2015	150
24350	205	21969	1088	233	Cucumbers (greenhouse)	77	RWF	5	KG	7	2015	100
24351	205	21969	1088	241	Oranges (big size)	77	RWF	5	KG	5	2015	325
24352	205	21969	1088	248	Soybeans	77	RWF	5	KG	11	2015	325
24353	205	21969	1088	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	800
24354	205	21969	1088	253	Sorghum flour	77	RWF	5	KG	12	2015	400
24355	205	21969	1088	254	Bananas	77	RWF	5	KG	10	2015	150
24356	205	21969	1088	262	Beans (dry)	77	RWF	5	KG	12	2015	445
24357	205	21969	1088	292	Peppers (green)	77	RWF	5	KG	12	2015	300
24358	205	21969	1088	381	Rice (imported, Tanzanian)	77	RWF	5	KG	4	2013	700
24359	205	21969	1088	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	20666.5
24360	205	21969	1088	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	16000
24361	205	21969	1088	404	Spinach	77	RWF	5	KG	9	2015	200
24362	205	21969	1088	407	Guava	77	RWF	5	KG	5	2015	300
24363	205	21969	1088	422	Livestock (pig)	77	RWF	33	Unit	12	2015	35000
24364	205	21969	1088	434	Eggplants	77	RWF	5	KG	12	2015	250
24365	205	21969	1088	453	Livestock (hen)	77	RWF	33	Unit	12	2015	3666.5
24366	205	21969	1088	454	Avocados	77	RWF	33	Unit	12	2015	200
24367	205	21969	1088	455	Cassava leaves	77	RWF	5	KG	5	2015	400
24368	205	21969	1088	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	291.5
24369	205	21972	1089	51	Maize	77	RWF	5	KG	12	2015	302
24370	205	21972	1089	52	Rice	77	RWF	5	KG	12	2015	633
24371	205	21972	1089	58	Wheat flour	77	RWF	5	KG	9	2015	550
24372	205	21972	1089	65	Sorghum	77	RWF	5	KG	12	2015	299.399999999999977
24373	205	21972	1089	68	Cassava	77	RWF	5	KG	9	2015	200
24374	205	21972	1089	71	Rice (local)	77	RWF	5	KG	10	2012	650
24375	205	21972	1089	74	Cassava flour	77	RWF	5	KG	12	2015	320
24376	205	21972	1089	76	Maize flour	77	RWF	5	KG	12	2015	433.199999999999989
24377	205	21972	1089	81	Milk	77	RWF	15	L	12	2015	400
24378	205	21972	1089	87	Sweet potatoes	77	RWF	5	KG	12	2015	104
24379	205	21972	1089	92	Eggs	77	RWF	33	Unit	12	2015	100
24380	205	21972	1089	110	Onions (red)	77	RWF	5	KG	12	2015	866.75
24381	205	21972	1089	114	Tomatoes	77	RWF	5	KG	12	2015	396.600000000000023
24382	205	21972	1089	141	Meat (beef)	77	RWF	5	KG	12	2015	1733
24383	205	21972	1089	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	212
24384	205	21972	1089	166	Carrots	77	RWF	5	KG	12	2015	360
24385	205	21972	1089	181	Cabbage	77	RWF	5	KG	12	2015	118
24386	205	21972	1089	231	Cauliflower	77	RWF	5	KG	12	2015	450
24387	205	21972	1089	233	Cucumbers (greenhouse)	77	RWF	5	KG	10	2015	300
24388	205	21972	1089	241	Oranges (big size)	77	RWF	5	KG	7	2015	333
24389	205	21972	1089	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	800
24390	205	21972	1089	253	Sorghum flour	77	RWF	5	KG	12	2015	400
24391	205	21972	1089	254	Bananas	77	RWF	5	KG	12	2015	240
24392	205	21972	1089	262	Beans (dry)	77	RWF	5	KG	12	2015	443.399999999999977
24393	205	21972	1089	287	Livestock (cattle)	77	RWF	33	Unit	12	2015	184667
24394	205	21972	1089	292	Peppers (green)	77	RWF	5	KG	12	2015	395.75
24395	205	21972	1089	381	Rice (imported, Tanzanian)	77	RWF	5	KG	1	2015	700
24396	205	21972	1089	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	19111.2999999999993
24397	205	21972	1089	390	Livestock (Sheep)	77	RWF	33	Unit	11	2015	18667
24398	205	21972	1089	407	Guava	77	RWF	5	KG	6	2015	200
24399	205	21972	1089	434	Eggplants	77	RWF	5	KG	12	2015	373.399999999999977
24400	205	21972	1089	446	Charcoal	77	RWF	31	Sack	12	2015	4500
24401	205	21972	1089	447	Passion fruit	77	RWF	5	KG	3	2015	500
24402	205	21972	1089	451	Meat (goat)	77	RWF	5	KG	12	2015	2000
24403	205	21972	1089	454	Avocados	77	RWF	33	Unit	12	2015	280
24404	205	21972	1089	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	300
24405	205	2587	1091	51	Maize	77	RWF	5	KG	12	2015	300
24406	205	2587	1091	52	Rice	77	RWF	5	KG	12	2015	650
24407	205	2587	1091	58	Wheat flour	77	RWF	5	KG	12	2015	608.25
24408	205	2587	1091	65	Sorghum	77	RWF	5	KG	12	2015	358.375
24409	205	2587	1091	68	Cassava	77	RWF	5	KG	6	2015	200
24410	205	2587	1091	71	Rice (local)	77	RWF	5	KG	10	2012	600
24411	205	2587	1091	74	Cassava flour	77	RWF	5	KG	12	2015	331.25
24412	205	2587	1091	76	Maize flour	77	RWF	5	KG	12	2015	527
24413	205	2587	1091	81	Milk	77	RWF	15	L	12	2015	333.375
24414	205	2587	1091	84	Wheat	77	RWF	5	KG	12	2015	487.5
24415	205	2587	1091	87	Sweet potatoes	77	RWF	5	KG	12	2015	239.625
24416	205	2587	1091	91	Chili (red)	77	RWF	5	KG	12	2015	699.875
24417	205	2587	1091	92	Eggs	77	RWF	33	Unit	12	2015	97.375
24418	205	2587	1091	105	Garlic	77	RWF	5	KG	12	2015	2129.11999999999989
24419	205	2587	1091	110	Onions (red)	77	RWF	5	KG	12	2015	681.25
24420	205	2587	1091	111	Onions (white)	77	RWF	5	KG	12	2015	1262.5
24421	205	2587	1091	114	Tomatoes	77	RWF	5	KG	12	2015	418.5
24422	205	2587	1091	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1166.61999999999989
24423	205	2587	1091	140	Meat (pork)	77	RWF	5	KG	12	2015	3067
24424	205	2587	1091	141	Meat (beef)	77	RWF	5	KG	12	2015	2300
24425	205	2587	1091	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	208.375
24426	205	2587	1091	166	Carrots	77	RWF	5	KG	12	2015	362.5
24427	205	2587	1091	181	Cabbage	77	RWF	5	KG	12	2015	134.125
24428	205	2587	1091	183	Meat (mutton)	77	RWF	5	KG	12	2015	2144.67000000000007
24429	205	2587	1091	229	Apples (red)	77	RWF	5	KG	12	2015	2079.25
24430	205	2587	1091	231	Cauliflower	77	RWF	5	KG	12	2015	404.125
24431	205	2587	1091	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	320.875
24432	205	2587	1091	241	Oranges (big size)	77	RWF	5	KG	12	2015	658.25
24433	205	2587	1091	248	Soybeans	77	RWF	5	KG	12	2015	450
24434	205	2587	1091	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
24435	205	2587	1091	253	Sorghum flour	77	RWF	5	KG	12	2015	554.25
24436	205	2587	1091	254	Bananas	77	RWF	5	KG	12	2015	236.625
24437	205	2587	1091	262	Beans (dry)	77	RWF	5	KG	12	2015	416
24438	205	2587	1091	263	Beans (fresh)	77	RWF	5	KG	12	2015	695.875
24439	205	2587	1091	292	Peppers (green)	77	RWF	5	KG	12	2015	381.25
24440	205	2587	1091	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2015	1008.25
24441	205	2587	1091	404	Spinach	77	RWF	5	KG	12	2015	193.75
24442	205	2587	1091	408	Papaya	77	RWF	5	KG	12	2015	787.5
24443	205	2587	1091	411	Mangoes	77	RWF	5	KG	12	2015	791.5
24444	205	2587	1091	434	Eggplants	77	RWF	5	KG	12	2015	295.875
24445	205	2587	1091	446	Charcoal	77	RWF	31	Sack	12	2015	6604.11999999999989
24446	205	2587	1091	447	Passion fruit	77	RWF	5	KG	12	2015	1304.11999999999989
24447	205	2587	1091	450	Zucchini	77	RWF	5	KG	12	2015	350
24448	205	2587	1091	451	Meat (goat)	77	RWF	5	KG	12	2015	2971.11999999999989
24449	205	2587	1091	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4190.56999999999971
24450	205	2587	1091	454	Avocados	77	RWF	33	Unit	12	2015	387.5
24451	205	2587	1091	455	Cassava leaves	77	RWF	5	KG	12	2015	352.125
24452	205	2587	1091	456	Peas (fresh)	77	RWF	5	KG	12	2015	866.75
24453	205	2587	1091	457	Peas (dry)	77	RWF	5	KG	12	2015	1233.25
24454	205	2587	1091	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	389.625
24455	205	21973	1092	51	Maize	77	RWF	5	KG	7	2012	210
24456	205	21973	1092	65	Sorghum	77	RWF	5	KG	7	2012	385
24457	205	21973	1092	68	Cassava	77	RWF	5	KG	4	2012	225
24458	205	21973	1092	71	Rice (local)	77	RWF	5	KG	12	2011	651.5
24459	205	21973	1092	74	Cassava flour	77	RWF	5	KG	7	2012	225
24460	205	21973	1092	76	Maize flour	77	RWF	5	KG	7	2012	250
24461	205	21973	1092	87	Sweet potatoes	77	RWF	5	KG	7	2012	157.5
24462	205	21973	1092	148	Potatoes (Irish)	77	RWF	5	KG	7	2012	150
24463	205	21973	1092	253	Sorghum flour	77	RWF	5	KG	7	2012	465
24464	205	21973	1092	254	Bananas	77	RWF	5	KG	7	2012	150
24465	205	21973	1092	262	Beans (dry)	77	RWF	5	KG	7	2012	307.5
24466	205	21973	1092	381	Rice (imported, Tanzanian)	77	RWF	5	KG	7	2012	725
24467	205	21973	1092	446	Charcoal	77	RWF	31	Sack	7	2012	3550
24468	205	21969	1093	51	Maize	77	RWF	5	KG	12	2015	300
24469	205	21969	1093	52	Rice	77	RWF	5	KG	12	2015	645.75
24470	205	21969	1093	58	Wheat flour	77	RWF	5	KG	11	2015	800
24471	205	21969	1093	65	Sorghum	77	RWF	5	KG	1	2015	250
24472	205	21969	1093	68	Cassava	77	RWF	5	KG	11	2015	250
24473	205	21969	1093	71	Rice (local)	77	RWF	5	KG	10	2012	600
24474	205	21969	1093	74	Cassava flour	77	RWF	5	KG	12	2015	295.75
24475	205	21969	1093	76	Maize flour	77	RWF	5	KG	12	2015	350
24476	205	21969	1093	77	Maize flour (imported)	77	RWF	5	KG	9	2015	400
24477	205	21969	1093	81	Milk	77	RWF	15	L	12	2015	200
24478	205	21969	1093	84	Wheat	77	RWF	5	KG	12	2014	700
24479	205	21969	1093	87	Sweet potatoes	77	RWF	5	KG	12	2015	200
24480	205	21969	1093	91	Chili (red)	77	RWF	5	KG	12	2015	2000
24481	205	21969	1093	92	Eggs	77	RWF	33	Unit	12	2015	100
24482	205	21969	1093	105	Garlic	77	RWF	5	KG	12	2015	3000
24483	205	21969	1093	110	Onions (red)	77	RWF	5	KG	12	2015	450
24484	205	21969	1093	111	Onions (white)	77	RWF	5	KG	10	2015	1300
24485	205	21969	1093	114	Tomatoes	77	RWF	5	KG	12	2015	183
24486	205	21969	1093	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	912.5
24487	205	21969	1093	141	Meat (beef)	77	RWF	5	KG	12	2015	2133
24488	205	21969	1093	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	195.25
24489	205	21969	1093	166	Carrots	77	RWF	5	KG	12	2015	208.25
24490	205	21969	1093	181	Cabbage	77	RWF	5	KG	12	2015	136.25
24491	205	21969	1093	229	Apples (red)	77	RWF	5	KG	5	2015	2000
24492	205	21969	1093	241	Oranges (big size)	77	RWF	5	KG	12	2015	600
24493	205	21969	1093	248	Soybeans	77	RWF	5	KG	12	2015	450
24494	205	21969	1093	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	800
24495	205	21969	1093	253	Sorghum flour	77	RWF	5	KG	12	2015	700
24496	205	21969	1093	254	Bananas	77	RWF	5	KG	12	2015	139
24497	205	21969	1093	262	Beans (dry)	77	RWF	5	KG	12	2015	391.5
24498	205	21969	1093	263	Beans (fresh)	77	RWF	5	KG	11	2015	600
24499	205	21969	1093	292	Peppers (green)	77	RWF	5	KG	12	2015	475
24500	205	21969	1093	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2015	1000
24501	205	21969	1093	407	Guava	77	RWF	5	KG	6	2015	366
24502	205	21969	1093	408	Papaya	77	RWF	5	KG	11	2015	200
24503	205	21969	1093	411	Mangoes	77	RWF	5	KG	12	2015	991.5
24504	205	21969	1093	434	Eggplants	77	RWF	5	KG	12	2015	162
24505	205	21969	1093	446	Charcoal	77	RWF	31	Sack	12	2015	7000
24506	205	21969	1093	447	Passion fruit	77	RWF	5	KG	12	2015	1200
24507	205	21969	1093	450	Zucchini	77	RWF	5	KG	6	2015	143
24508	205	21969	1093	451	Meat (goat)	77	RWF	5	KG	6	2015	2133
24509	205	21969	1093	453	Livestock (hen)	77	RWF	33	Unit	12	2015	5500
24510	205	21969	1093	454	Avocados	77	RWF	33	Unit	12	2015	173
24511	205	21969	1093	455	Cassava leaves	77	RWF	5	KG	12	2015	500
24512	205	21969	1093	456	Peas (fresh)	77	RWF	5	KG	6	2015	833
24513	205	21969	1093	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	224.75
24514	205	21973	1095	51	Maize	77	RWF	5	KG	12	2015	350
24515	205	21973	1095	52	Rice	77	RWF	5	KG	12	2015	650
24516	205	21973	1095	65	Sorghum	77	RWF	5	KG	12	2015	300
24517	205	21973	1095	68	Cassava	77	RWF	5	KG	12	2015	189
24518	205	21973	1095	71	Rice (local)	77	RWF	5	KG	10	2012	600
24519	205	21973	1095	74	Cassava flour	77	RWF	5	KG	12	2015	300
24520	205	21973	1095	76	Maize flour	77	RWF	5	KG	12	2015	500
24521	205	21973	1095	81	Milk	77	RWF	15	L	12	2015	400
24522	205	21973	1095	87	Sweet potatoes	77	RWF	5	KG	12	2015	152.5
24523	205	21973	1095	91	Chili (red)	77	RWF	5	KG	12	2015	708.25
24524	205	21973	1095	92	Eggs	77	RWF	33	Unit	12	2015	117.5
24525	205	21973	1095	105	Garlic	77	RWF	5	KG	12	2015	2541.75
24526	205	21973	1095	110	Onions (red)	77	RWF	5	KG	12	2015	608.25
24527	205	21973	1095	111	Onions (white)	77	RWF	5	KG	11	2015	850
24528	205	21973	1095	114	Tomatoes	77	RWF	5	KG	12	2015	221
24529	205	21973	1095	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1137.5
24530	205	21973	1095	141	Meat (beef)	77	RWF	5	KG	12	2015	1800
24531	205	21973	1095	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	190.75
24532	205	21973	1095	166	Carrots	77	RWF	5	KG	12	2015	475
24533	205	21973	1095	181	Cabbage	77	RWF	5	KG	12	2015	216.75
24534	205	21973	1095	229	Apples (red)	77	RWF	5	KG	10	2015	3000
24535	205	21973	1095	241	Oranges (big size)	77	RWF	5	KG	12	2015	425
24536	205	21973	1095	248	Soybeans	77	RWF	5	KG	12	2015	537.5
24537	205	21973	1095	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	737.5
24538	205	21973	1095	253	Sorghum flour	77	RWF	5	KG	12	2015	475
24539	205	21973	1095	254	Bananas	77	RWF	5	KG	12	2015	157.5
24540	205	21973	1095	262	Beans (dry)	77	RWF	5	KG	12	2015	500
24541	205	21973	1095	292	Peppers (green)	77	RWF	5	KG	12	2015	437.5
24542	205	21973	1095	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2015	750
24543	205	21973	1095	383	Livestock (Goat)	77	RWF	33	Unit	9	2013	20583.2000000000007
24544	205	21973	1095	390	Livestock (Sheep)	77	RWF	33	Unit	9	2013	15833.5
24545	205	21973	1095	408	Papaya	77	RWF	5	KG	12	2015	425
24546	205	21973	1095	411	Mangoes	77	RWF	5	KG	12	2015	175
24547	205	21973	1095	434	Eggplants	77	RWF	5	KG	12	2015	204.25
24548	205	21973	1095	447	Passion fruit	77	RWF	5	KG	12	2015	1225
24549	205	21973	1095	451	Meat (goat)	77	RWF	5	KG	12	2015	3000
24550	205	21973	1095	453	Livestock (hen)	77	RWF	33	Unit	5	2014	6133
24551	205	21973	1095	454	Avocados	77	RWF	33	Unit	12	2015	270.75
24552	205	21973	1095	455	Cassava leaves	77	RWF	5	KG	12	2015	441.75
24553	205	21973	1095	456	Peas (fresh)	77	RWF	5	KG	12	2015	1041.75
24554	205	21973	1095	457	Peas (dry)	77	RWF	5	KG	10	2015	1200
24555	205	21973	1095	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	300
24556	205	21969	1096	51	Maize	77	RWF	5	KG	12	2015	316.666999999999973
24557	205	21969	1096	52	Rice	77	RWF	5	KG	12	2015	650
24558	205	21969	1096	58	Wheat flour	77	RWF	5	KG	12	2015	800
24559	205	21969	1096	65	Sorghum	77	RWF	5	KG	12	2015	300
24560	205	21969	1096	68	Cassava	77	RWF	5	KG	10	2015	198
24561	205	21969	1096	71	Rice (local)	77	RWF	5	KG	10	2012	700
24562	205	21969	1096	74	Cassava flour	77	RWF	5	KG	12	2015	322
24563	205	21969	1096	76	Maize flour	77	RWF	5	KG	12	2015	500
24564	205	21969	1096	81	Milk	77	RWF	15	L	12	2015	389
24565	205	21969	1096	87	Sweet potatoes	77	RWF	5	KG	12	2015	200
24566	205	21969	1096	91	Chili (red)	77	RWF	5	KG	12	2015	566.66700000000003
24567	205	21969	1096	92	Eggs	77	RWF	33	Unit	12	2015	120
24568	205	21969	1096	105	Garlic	77	RWF	5	KG	12	2015	2722.32999999999993
24569	205	21969	1096	110	Onions (red)	77	RWF	5	KG	12	2015	600
24570	205	21969	1096	111	Onions (white)	77	RWF	5	KG	12	2015	1322
24571	205	21969	1096	114	Tomatoes	77	RWF	5	KG	12	2015	222
24572	205	21969	1096	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1000
24573	205	21969	1096	141	Meat (beef)	77	RWF	5	KG	12	2015	1933.32999999999993
24574	205	21969	1096	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	194.332999999999998
24575	205	21969	1096	166	Carrots	77	RWF	5	KG	12	2015	400
24576	205	21969	1096	181	Cabbage	77	RWF	5	KG	12	2015	205.667000000000002
24577	205	21969	1096	229	Apples (red)	77	RWF	5	KG	12	2015	2500
24578	205	21969	1096	233	Cucumbers (greenhouse)	77	RWF	5	KG	8	2015	400
24579	205	21969	1096	241	Oranges (big size)	77	RWF	5	KG	12	2015	411
24580	205	21969	1096	248	Soybeans	77	RWF	5	KG	12	2015	500
24581	205	21969	1096	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
24582	205	21969	1096	253	Sorghum flour	77	RWF	5	KG	12	2015	500
24583	205	21969	1096	254	Bananas	77	RWF	5	KG	12	2015	200
24584	205	21969	1096	262	Beans (dry)	77	RWF	5	KG	12	2015	500
24585	205	21969	1096	263	Beans (fresh)	77	RWF	5	KG	12	2015	500
24586	205	21969	1096	292	Peppers (green)	77	RWF	5	KG	12	2015	327.666999999999973
24587	205	21969	1096	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2015	1000
24588	205	21969	1096	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	28666.7000000000007
24589	205	21969	1096	404	Spinach	77	RWF	5	KG	12	2015	200
24590	205	21969	1096	408	Papaya	77	RWF	5	KG	12	2015	500
24591	205	21969	1096	411	Mangoes	77	RWF	5	KG	12	2015	333.333000000000027
24592	205	21969	1096	434	Eggplants	77	RWF	5	KG	12	2015	133.332999999999998
24593	205	21969	1096	446	Charcoal	77	RWF	31	Sack	12	2015	6500
24594	205	21969	1096	447	Passion fruit	77	RWF	5	KG	12	2015	1266.67000000000007
24595	205	21969	1096	450	Zucchini	77	RWF	5	KG	7	2015	400
24596	205	21969	1096	451	Meat (goat)	77	RWF	5	KG	12	2015	2833.32999999999993
24597	205	21969	1096	453	Livestock (hen)	77	RWF	33	Unit	12	2015	3611.32999999999993
24598	205	21969	1096	454	Avocados	77	RWF	33	Unit	12	2015	333.333000000000027
24599	205	21969	1096	455	Cassava leaves	77	RWF	5	KG	12	2015	344.333000000000027
24600	205	21969	1096	456	Peas (fresh)	77	RWF	5	KG	12	2015	966.66700000000003
24601	205	21969	1096	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	300
24602	205	2587	1097	51	Maize	77	RWF	5	KG	9	2015	517
24603	205	2587	1097	52	Rice	77	RWF	5	KG	12	2015	603.125
24604	205	2587	1097	58	Wheat flour	77	RWF	5	KG	12	2015	718.75
24605	205	2587	1097	71	Rice (local)	77	RWF	5	KG	10	2012	600
24606	205	2587	1097	74	Cassava flour	77	RWF	5	KG	12	2015	400
24607	205	2587	1097	76	Maize flour	77	RWF	5	KG	12	2015	500
24608	205	2587	1097	87	Sweet potatoes	77	RWF	5	KG	12	2015	274.375
24609	205	2587	1097	91	Chili (red)	77	RWF	5	KG	12	2015	1412.5
24610	205	2587	1097	92	Eggs	77	RWF	33	Unit	12	2015	150
24611	205	2587	1097	105	Garlic	77	RWF	5	KG	12	2015	2212.5
24612	205	2587	1097	110	Onions (red)	77	RWF	5	KG	12	2015	762.5
24613	205	2587	1097	111	Onions (white)	77	RWF	5	KG	12	2015	1350
24614	205	2587	1097	114	Tomatoes	77	RWF	5	KG	12	2015	900
24615	205	2587	1097	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1150
24616	205	2587	1097	140	Meat (pork)	77	RWF	5	KG	6	2015	2750
24617	205	2587	1097	141	Meat (beef)	77	RWF	5	KG	12	2015	2100
24618	205	2587	1097	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	197.875
24619	205	2587	1097	166	Carrots	77	RWF	5	KG	12	2015	462.5
24620	205	2587	1097	181	Cabbage	77	RWF	5	KG	12	2015	325
24621	205	2587	1097	183	Meat (mutton)	77	RWF	5	KG	11	2015	3000
24622	205	2587	1097	229	Apples (red)	77	RWF	5	KG	12	2015	2500
24623	205	2587	1097	231	Cauliflower	77	RWF	5	KG	12	2015	568.75
24624	205	2587	1097	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	300
24625	205	2587	1097	241	Oranges (big size)	77	RWF	5	KG	12	2015	712.5
24626	205	2587	1097	248	Soybeans	77	RWF	5	KG	12	2015	1200
24627	205	2587	1097	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
24628	205	2587	1097	253	Sorghum flour	77	RWF	5	KG	12	2015	693.75
24629	205	2587	1097	254	Bananas	77	RWF	5	KG	12	2015	220.375
24630	205	2587	1097	262	Beans (dry)	77	RWF	5	KG	12	2015	543.75
24631	205	2587	1097	263	Beans (fresh)	77	RWF	5	KG	12	2015	718.75
24632	205	2587	1097	292	Peppers (green)	77	RWF	5	KG	12	2015	962.5
24633	205	2587	1097	381	Rice (imported, Tanzanian)	77	RWF	5	KG	2	2014	650
24634	205	2587	1097	404	Spinach	77	RWF	5	KG	12	2015	393.75
24635	205	2587	1097	407	Guava	77	RWF	5	KG	6	2015	300
24636	205	2587	1097	408	Papaya	77	RWF	5	KG	12	2015	692.856999999999971
24637	205	2587	1097	411	Mangoes	77	RWF	5	KG	12	2015	859.375
24638	205	2587	1097	434	Eggplants	77	RWF	5	KG	12	2015	393.75
24639	205	2587	1097	446	Charcoal	77	RWF	31	Sack	12	2015	7312.5
24640	205	2587	1097	447	Passion fruit	77	RWF	5	KG	12	2015	1181.25
24641	205	2587	1097	450	Zucchini	77	RWF	5	KG	12	2015	456.25
24642	205	2587	1097	451	Meat (goat)	77	RWF	5	KG	12	2015	2821.42999999999984
24643	205	2587	1097	453	Livestock (hen)	77	RWF	33	Unit	12	2015	5750
24644	205	2587	1097	454	Avocados	77	RWF	33	Unit	10	2015	350
24645	205	2587	1097	455	Cassava leaves	77	RWF	5	KG	12	2015	500
24646	205	2587	1097	456	Peas (fresh)	77	RWF	5	KG	12	2015	856.25
24647	205	2587	1097	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	500
24648	205	21972	1098	51	Maize	77	RWF	5	KG	12	2015	300
24649	205	21972	1098	52	Rice	77	RWF	5	KG	12	2015	600
24650	205	21972	1098	58	Wheat flour	77	RWF	5	KG	12	2015	600
24651	205	21972	1098	65	Sorghum	77	RWF	5	KG	12	2015	300
24652	205	21972	1098	68	Cassava	77	RWF	5	KG	12	2010	150
24653	205	21972	1098	71	Rice (local)	77	RWF	5	KG	10	2012	600
24654	205	21972	1098	74	Cassava flour	77	RWF	5	KG	12	2015	343.375
24655	205	21972	1098	76	Maize flour	77	RWF	5	KG	12	2015	400
24656	205	21972	1098	81	Milk	77	RWF	15	L	12	2015	300
24657	205	21972	1098	87	Sweet potatoes	77	RWF	5	KG	12	2015	150
24658	205	21972	1098	91	Chili (red)	77	RWF	5	KG	12	2015	980
24659	205	21972	1098	92	Eggs	77	RWF	33	Unit	12	2015	100
24660	205	21972	1098	105	Garlic	77	RWF	5	KG	12	2015	2762.5
24661	205	21972	1098	110	Onions (red)	77	RWF	5	KG	12	2015	643.75
24662	205	21972	1098	114	Tomatoes	77	RWF	5	KG	12	2015	500
24663	205	21972	1098	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1000
24664	205	21972	1098	141	Meat (beef)	77	RWF	5	KG	12	2015	2000
24665	205	21972	1098	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	190
24666	205	21972	1098	166	Carrots	77	RWF	5	KG	12	2015	385.713999999999999
24667	205	21972	1098	181	Cabbage	77	RWF	5	KG	12	2015	162.5
24668	205	21972	1098	229	Apples (red)	77	RWF	5	KG	12	2015	2493.75
24669	205	21972	1098	231	Cauliflower	77	RWF	5	KG	12	2015	300
24670	205	21972	1098	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	350
24671	205	21972	1098	241	Oranges (big size)	77	RWF	5	KG	12	2015	537.5
24672	205	21972	1098	248	Soybeans	77	RWF	5	KG	12	2015	412.5
24673	205	21972	1098	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
24674	205	21972	1098	253	Sorghum flour	77	RWF	5	KG	12	2015	400
24675	205	21972	1098	254	Bananas	77	RWF	5	KG	12	2015	225
24676	205	21972	1098	262	Beans (dry)	77	RWF	5	KG	12	2015	481.25
24677	205	21972	1098	263	Beans (fresh)	77	RWF	5	KG	9	2015	500
24678	205	21972	1098	292	Peppers (green)	77	RWF	5	KG	12	2015	493.75
24679	205	21972	1098	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2015	1037.5
24680	205	21972	1098	404	Spinach	77	RWF	5	KG	12	2015	392.857000000000028
24681	205	21972	1098	408	Papaya	77	RWF	5	KG	12	2015	350
24682	205	21972	1098	411	Mangoes	77	RWF	5	KG	12	2015	525
24683	205	21972	1098	434	Eggplants	77	RWF	5	KG	12	2015	250
24684	205	21972	1098	446	Charcoal	77	RWF	31	Sack	11	2015	6500
24685	205	21972	1098	447	Passion fruit	77	RWF	5	KG	12	2015	912.5
24686	205	21972	1098	450	Zucchini	77	RWF	5	KG	12	2015	300
24687	205	21972	1098	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4812.5
24688	205	21972	1098	454	Avocados	77	RWF	33	Unit	12	2015	237.5
24689	205	21972	1098	455	Cassava leaves	77	RWF	5	KG	12	2015	481.25
24690	205	21972	1098	456	Peas (fresh)	77	RWF	5	KG	12	2015	771.428999999999974
24691	205	21972	1098	457	Peas (dry)	77	RWF	5	KG	12	2015	1800
24692	205	21972	1098	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	400
24693	205	21971	1102	51	Maize	77	RWF	5	KG	12	2015	236.25
24694	205	21971	1102	52	Rice	77	RWF	5	KG	12	2015	712.5
24695	205	21971	1102	58	Wheat flour	77	RWF	5	KG	12	2015	600
24696	205	21971	1102	65	Sorghum	77	RWF	5	KG	12	2015	362.5
24697	205	21971	1102	68	Cassava	77	RWF	5	KG	5	2015	180
24698	205	21971	1102	71	Rice (local)	77	RWF	5	KG	10	2012	600
24699	205	21971	1102	74	Cassava flour	77	RWF	5	KG	12	2015	378.75
24700	205	21971	1102	76	Maize flour	77	RWF	5	KG	12	2015	412.25
24701	205	21971	1102	81	Milk	77	RWF	15	L	12	2015	237.5
24702	205	21971	1102	84	Wheat	77	RWF	5	KG	12	2015	438
24703	205	21971	1102	87	Sweet potatoes	77	RWF	5	KG	12	2015	123.75
24704	205	21971	1102	91	Chili (red)	77	RWF	5	KG	12	2015	1291.5
24705	205	21971	1102	92	Eggs	77	RWF	33	Unit	12	2015	82.75
24706	205	21971	1102	105	Garlic	77	RWF	5	KG	12	2015	1816.5
24707	205	21971	1102	110	Onions (red)	77	RWF	5	KG	12	2015	412.25
24708	205	21971	1102	114	Tomatoes	77	RWF	5	KG	12	2015	400
24709	205	21971	1102	119	Groundnuts (shelled)	77	RWF	5	KG	7	2015	1000
24710	205	21971	1102	140	Meat (pork)	77	RWF	5	KG	12	2015	1216.5
24711	205	21971	1102	141	Meat (beef)	77	RWF	5	KG	12	2015	1600
24712	205	21971	1102	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	174.5
24713	205	21971	1102	166	Carrots	77	RWF	5	KG	12	2015	245.75
24714	205	21971	1102	181	Cabbage	77	RWF	5	KG	12	2015	87.5
24715	205	21971	1102	183	Meat (mutton)	77	RWF	5	KG	6	2015	1533.32999999999993
24716	205	21971	1102	231	Cauliflower	77	RWF	5	KG	12	2015	500
24717	205	21971	1102	233	Cucumbers (greenhouse)	77	RWF	5	KG	5	2015	330
24718	205	21971	1102	241	Oranges (big size)	77	RWF	5	KG	12	2015	644.33299999999997
24719	205	21971	1102	248	Soybeans	77	RWF	5	KG	12	2015	600
24720	205	21971	1102	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	795.75
24721	205	21971	1102	253	Sorghum flour	77	RWF	5	KG	12	2015	500
24722	205	21971	1102	254	Bananas	77	RWF	5	KG	12	2015	200
24723	205	21971	1102	262	Beans (dry)	77	RWF	5	KG	12	2015	421.5
24724	205	21971	1102	292	Peppers (green)	77	RWF	5	KG	12	2015	522
24725	205	21971	1102	381	Rice (imported, Tanzanian)	77	RWF	5	KG	9	2014	933
24726	205	21971	1102	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	24166.2000000000007
24727	205	21971	1102	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	20999.5
24728	205	21971	1102	407	Guava	77	RWF	5	KG	6	2015	391.5
24729	205	21971	1102	408	Papaya	77	RWF	5	KG	6	2015	633
24730	205	21971	1102	411	Mangoes	77	RWF	5	KG	5	2015	450
24731	205	21971	1102	434	Eggplants	77	RWF	5	KG	12	2015	400
24732	205	21971	1102	446	Charcoal	77	RWF	31	Sack	12	2015	7125
24733	205	21971	1102	447	Passion fruit	77	RWF	5	KG	12	2015	783.25
24734	205	21971	1102	450	Zucchini	77	RWF	5	KG	12	2015	295.75
24735	205	21971	1102	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4566.25
24736	205	21971	1102	454	Avocados	77	RWF	33	Unit	12	2015	304
24737	205	21971	1102	455	Cassava leaves	77	RWF	5	KG	12	2015	300
24738	205	21971	1102	456	Peas (fresh)	77	RWF	5	KG	8	2015	800
24739	205	21971	1102	457	Peas (dry)	77	RWF	5	KG	12	2015	933.25
24740	205	21971	1102	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	300
24741	205	21969	1105	51	Maize	77	RWF	5	KG	12	2015	314
24742	205	21969	1105	52	Rice	77	RWF	5	KG	12	2015	586.600000000000023
24743	205	21969	1105	65	Sorghum	77	RWF	5	KG	12	2015	300
24744	205	21969	1105	68	Cassava	77	RWF	5	KG	12	2015	300
24745	205	21969	1105	71	Rice (local)	77	RWF	5	KG	10	2012	650
24746	205	21969	1105	74	Cassava flour	77	RWF	5	KG	12	2015	324
24747	205	21969	1105	76	Maize flour	77	RWF	5	KG	12	2015	500
24748	205	21969	1105	81	Milk	77	RWF	15	L	12	2015	400
24749	205	21969	1105	87	Sweet potatoes	77	RWF	5	KG	12	2015	183.400000000000006
24750	205	21969	1105	91	Chili (red)	77	RWF	5	KG	12	2015	716.600000000000023
24751	205	21969	1105	92	Eggs	77	RWF	33	Unit	12	2015	108.599999999999994
24752	205	21969	1105	105	Garlic	77	RWF	5	KG	12	2015	2633.40000000000009
24753	205	21969	1105	110	Onions (red)	77	RWF	5	KG	12	2015	600
24754	205	21969	1105	114	Tomatoes	77	RWF	5	KG	12	2015	253.400000000000006
24755	205	21969	1105	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1020
24756	205	21969	1105	141	Meat (beef)	77	RWF	5	KG	12	2015	2000
24757	205	21969	1105	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	195.400000000000006
24758	205	21969	1105	166	Carrots	77	RWF	5	KG	12	2015	480
24759	205	21969	1105	181	Cabbage	77	RWF	5	KG	12	2015	188
24760	205	21969	1105	241	Oranges (big size)	77	RWF	5	KG	12	2015	316.75
24761	205	21969	1105	248	Soybeans	77	RWF	5	KG	12	2015	503.399999999999977
24762	205	21969	1105	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
24763	205	21969	1105	253	Sorghum flour	77	RWF	5	KG	12	2015	400
24764	205	21969	1105	254	Bananas	77	RWF	5	KG	12	2015	164
24765	205	21969	1105	262	Beans (dry)	77	RWF	5	KG	12	2015	491.399999999999977
24766	205	21969	1105	292	Peppers (green)	77	RWF	5	KG	12	2015	410
24767	205	21969	1105	381	Rice (imported, Tanzanian)	77	RWF	5	KG	5	2014	933
24768	205	21969	1105	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	23766.5999999999985
24769	205	21969	1105	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	8667
24770	205	21969	1105	408	Papaya	77	RWF	5	KG	12	2015	496.600000000000023
24771	205	21969	1105	411	Mangoes	77	RWF	5	KG	12	2015	183.400000000000006
24772	205	21969	1105	434	Eggplants	77	RWF	5	KG	12	2015	139.400000000000006
24773	205	21969	1105	447	Passion fruit	77	RWF	5	KG	12	2015	1160
24774	205	21969	1105	451	Meat (goat)	77	RWF	5	KG	12	2015	2160
24775	205	21969	1105	453	Livestock (hen)	77	RWF	33	Unit	12	2015	3233.40000000000009
24776	205	21969	1105	454	Avocados	77	RWF	33	Unit	12	2015	283.399999999999977
24777	205	21969	1105	455	Cassava leaves	77	RWF	5	KG	12	2015	400
24778	205	21969	1105	456	Peas (fresh)	77	RWF	5	KG	12	2015	1250
24779	205	21969	1105	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	313.399999999999977
24780	205	21969	1106	51	Maize	77	RWF	5	KG	12	2015	300
24781	205	21969	1106	52	Rice	77	RWF	5	KG	12	2015	600
24782	205	21969	1106	58	Wheat flour	77	RWF	5	KG	11	2015	700
24783	205	21969	1106	65	Sorghum	77	RWF	5	KG	11	2015	350
24784	205	21969	1106	68	Cassava	77	RWF	5	KG	11	2015	200
24785	205	21969	1106	71	Rice (local)	77	RWF	5	KG	10	2012	550
24786	205	21969	1106	74	Cassava flour	77	RWF	5	KG	12	2015	300
24787	205	21969	1106	76	Maize flour	77	RWF	5	KG	12	2015	350
24788	205	21969	1106	81	Milk	77	RWF	15	L	12	2015	200
24789	205	21969	1106	87	Sweet potatoes	77	RWF	5	KG	12	2015	170
24790	205	21969	1106	91	Chili (red)	77	RWF	5	KG	12	2015	1666
24791	205	21969	1106	92	Eggs	77	RWF	33	Unit	12	2015	100
24792	205	21969	1106	105	Garlic	77	RWF	5	KG	12	2015	3000
24793	205	21969	1106	110	Onions (red)	77	RWF	5	KG	12	2015	450
24794	205	21969	1106	111	Onions (white)	77	RWF	5	KG	8	2015	1300
24795	205	21969	1106	114	Tomatoes	77	RWF	5	KG	12	2015	150
24796	205	21969	1106	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	850
24797	205	21969	1106	141	Meat (beef)	77	RWF	5	KG	12	2015	1666
24798	205	21969	1106	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	196
24799	205	21969	1106	166	Carrots	77	RWF	5	KG	12	2015	233
24800	205	21969	1106	181	Cabbage	77	RWF	5	KG	12	2015	150
24801	205	21969	1106	233	Cucumbers (greenhouse)	77	RWF	5	KG	9	2015	200
24802	205	21969	1106	241	Oranges (big size)	77	RWF	5	KG	12	2015	600
24803	205	21969	1106	248	Soybeans	77	RWF	5	KG	11	2015	450
24804	205	21969	1106	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	800
24805	205	21969	1106	253	Sorghum flour	77	RWF	5	KG	12	2015	700
24806	205	21969	1106	254	Bananas	77	RWF	5	KG	12	2015	130
24807	205	21969	1106	262	Beans (dry)	77	RWF	5	KG	12	2015	400
24808	205	21969	1106	263	Beans (fresh)	77	RWF	5	KG	11	2015	500
24809	205	21969	1106	292	Peppers (green)	77	RWF	5	KG	12	2015	450
24810	205	21969	1106	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2015	1000
24811	205	21969	1106	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	24000
24812	205	21969	1106	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	18000
24813	205	21969	1106	408	Papaya	77	RWF	5	KG	11	2015	233
24814	205	21969	1106	411	Mangoes	77	RWF	5	KG	12	2015	900
24815	205	21969	1106	434	Eggplants	77	RWF	5	KG	12	2015	150
24816	205	21969	1106	446	Charcoal	77	RWF	31	Sack	12	2015	6000
24817	205	21969	1106	447	Passion fruit	77	RWF	5	KG	12	2015	1063
24818	205	21969	1106	451	Meat (goat)	77	RWF	5	KG	4	2014	2166.5
24819	205	21969	1106	453	Livestock (hen)	77	RWF	33	Unit	12	2015	5000
24820	205	21969	1106	454	Avocados	77	RWF	33	Unit	12	2015	160
24821	205	21969	1106	455	Cassava leaves	77	RWF	5	KG	12	2015	500
24822	205	21969	1106	456	Peas (fresh)	77	RWF	5	KG	6	2015	750
24823	205	21969	1106	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	250
24824	205	21971	1107	51	Maize	77	RWF	5	KG	12	2015	300
24825	205	21971	1107	52	Rice	77	RWF	5	KG	12	2015	633.33299999999997
24826	205	21971	1107	65	Sorghum	77	RWF	5	KG	12	2015	300
24827	205	21971	1107	68	Cassava	77	RWF	5	KG	12	2015	300
24828	205	21971	1107	71	Rice (local)	77	RWF	5	KG	10	2012	600
24829	205	21971	1107	74	Cassava flour	77	RWF	5	KG	12	2015	366.666999999999973
24830	205	21971	1107	76	Maize flour	77	RWF	5	KG	12	2015	500
24831	205	21971	1107	77	Maize flour (imported)	77	RWF	5	KG	7	2015	500
24832	205	21971	1107	81	Milk	77	RWF	15	L	12	2015	288.666999999999973
24833	205	21971	1107	84	Wheat	77	RWF	5	KG	5	2014	550
24834	205	21971	1107	87	Sweet potatoes	77	RWF	5	KG	12	2015	152.332999999999998
24835	205	21971	1107	91	Chili (red)	77	RWF	5	KG	12	2015	489
24836	205	21971	1107	92	Eggs	77	RWF	33	Unit	12	2015	100
24837	205	21971	1107	105	Garlic	77	RWF	5	KG	12	2015	2889
24838	205	21971	1107	110	Onions (red)	77	RWF	5	KG	12	2015	689
24839	205	21971	1107	111	Onions (white)	77	RWF	5	KG	12	2015	800
24840	205	21971	1107	114	Tomatoes	77	RWF	5	KG	12	2015	500
24841	205	21971	1107	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1000
24842	205	21971	1107	141	Meat (beef)	77	RWF	5	KG	12	2015	1700
24843	205	21971	1107	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	174.667000000000002
24844	205	21971	1107	166	Carrots	77	RWF	5	KG	12	2015	294.333000000000027
24845	205	21971	1107	181	Cabbage	77	RWF	5	KG	12	2015	125.332999999999998
24846	205	21971	1107	241	Oranges (big size)	77	RWF	5	KG	12	2015	800
24847	205	21971	1107	248	Soybeans	77	RWF	5	KG	12	2015	533.33299999999997
24848	205	21971	1107	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	733.33299999999997
24849	205	21971	1107	253	Sorghum flour	77	RWF	5	KG	12	2015	400
24850	205	21971	1107	254	Bananas	77	RWF	5	KG	12	2015	182.332999999999998
24851	205	21971	1107	262	Beans (dry)	77	RWF	5	KG	12	2015	500
24852	205	21971	1107	287	Livestock (cattle)	77	RWF	33	Unit	12	2015	215000
24853	205	21971	1107	292	Peppers (green)	77	RWF	5	KG	12	2015	616.66700000000003
24854	205	21971	1107	381	Rice (imported, Tanzanian)	77	RWF	5	KG	7	2013	900
24855	205	21971	1107	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	23333.5
24856	205	21971	1107	390	Livestock (Sheep)	77	RWF	33	Unit	5	2015	18667
24857	205	21971	1107	404	Spinach	77	RWF	5	KG	5	2015	300
24858	205	21971	1107	407	Guava	77	RWF	5	KG	12	2015	300
24859	205	21971	1107	408	Papaya	77	RWF	5	KG	8	2015	550
24860	205	21971	1107	411	Mangoes	77	RWF	5	KG	12	2015	589
24861	205	21971	1107	434	Eggplants	77	RWF	5	KG	12	2015	283.333000000000027
24862	205	21971	1107	446	Charcoal	77	RWF	31	Sack	12	2015	6000
24863	205	21971	1107	447	Passion fruit	77	RWF	5	KG	12	2015	1000
24864	205	21971	1107	450	Zucchini	77	RWF	5	KG	2	2015	200
24865	205	21971	1107	451	Meat (goat)	77	RWF	5	KG	12	2015	2722.32999999999993
24866	205	21971	1107	453	Livestock (hen)	77	RWF	33	Unit	10	2015	3833
24867	205	21971	1107	454	Avocados	77	RWF	33	Unit	12	2015	155.667000000000002
24868	205	21971	1107	456	Peas (fresh)	77	RWF	5	KG	12	2015	800
24869	205	21971	1107	457	Peas (dry)	77	RWF	5	KG	11	2015	1350
24870	205	21971	1107	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	300
24871	205	21969	1109	51	Maize	77	RWF	5	KG	12	2015	300
24872	205	21969	1109	52	Rice	77	RWF	5	KG	12	2015	650
24873	205	21969	1109	58	Wheat flour	77	RWF	5	KG	12	2015	700
24874	205	21969	1109	65	Sorghum	77	RWF	5	KG	12	2015	360
24875	205	21969	1109	68	Cassava	77	RWF	5	KG	12	2015	225
24876	205	21969	1109	71	Rice (local)	77	RWF	5	KG	10	2012	600
24877	205	21969	1109	74	Cassava flour	77	RWF	5	KG	12	2015	300
24878	205	21969	1109	76	Maize flour	77	RWF	5	KG	12	2015	350
24879	205	21969	1109	81	Milk	77	RWF	15	L	12	2015	200
24880	205	21969	1109	87	Sweet potatoes	77	RWF	5	KG	12	2015	179.5
24881	205	21969	1109	91	Chili (red)	77	RWF	5	KG	12	2015	2000
24882	205	21969	1109	92	Eggs	77	RWF	33	Unit	12	2015	76.5
24883	205	21969	1109	105	Garlic	77	RWF	5	KG	12	2015	3000
24884	205	21969	1109	110	Onions (red)	77	RWF	5	KG	12	2015	458
24885	205	21969	1109	111	Onions (white)	77	RWF	5	KG	9	2015	1300
24886	205	21969	1109	114	Tomatoes	77	RWF	5	KG	12	2015	174.5
24887	205	21969	1109	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	900
24888	205	21969	1109	141	Meat (beef)	77	RWF	5	KG	12	2015	1733
24889	205	21969	1109	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	199.5
24890	205	21969	1109	166	Carrots	77	RWF	5	KG	12	2015	200
24891	205	21969	1109	181	Cabbage	77	RWF	5	KG	12	2015	135
24892	205	21969	1109	183	Meat (mutton)	77	RWF	5	KG	7	2015	1733
24893	205	21969	1109	241	Oranges (big size)	77	RWF	5	KG	12	2015	600
24894	205	21969	1109	248	Soybeans	77	RWF	5	KG	12	2015	450
24895	205	21969	1109	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	800
24896	205	21969	1109	253	Sorghum flour	77	RWF	5	KG	12	2015	700
24897	205	21969	1109	254	Bananas	77	RWF	5	KG	12	2015	125
24898	205	21969	1109	262	Beans (dry)	77	RWF	5	KG	12	2015	350
24899	205	21969	1109	263	Beans (fresh)	77	RWF	5	KG	12	2015	700
24900	205	21969	1109	292	Peppers (green)	77	RWF	5	KG	12	2015	450
24901	205	21969	1109	381	Rice (imported, Tanzanian)	77	RWF	5	KG	11	2015	1000
24902	205	21969	1109	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	24333
24903	205	21969	1109	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	18500
24904	205	21969	1109	404	Spinach	77	RWF	5	KG	10	2015	400
24905	205	21969	1109	408	Papaya	77	RWF	5	KG	11	2015	183
24906	205	21969	1109	411	Mangoes	77	RWF	5	KG	12	2015	950
24907	205	21969	1109	434	Eggplants	77	RWF	5	KG	12	2015	166
24908	205	21969	1109	446	Charcoal	77	RWF	31	Sack	12	2015	6000
24909	205	21969	1109	447	Passion fruit	77	RWF	5	KG	12	2015	1133
24910	205	21969	1109	450	Zucchini	77	RWF	5	KG	1	2015	110
24911	205	21969	1109	451	Meat (goat)	77	RWF	5	KG	6	2014	2000
24912	205	21969	1109	453	Livestock (hen)	77	RWF	33	Unit	12	2015	5000
24913	205	21969	1109	454	Avocados	77	RWF	33	Unit	12	2015	168
24914	205	21969	1109	455	Cassava leaves	77	RWF	5	KG	12	2015	500
24915	205	21969	1109	456	Peas (fresh)	77	RWF	5	KG	6	2015	866.66700000000003
24916	205	21969	1109	457	Peas (dry)	77	RWF	5	KG	6	2015	156
24917	205	21969	1109	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	233
24918	205	21969	1110	51	Maize	77	RWF	5	KG	9	2015	250
24919	205	21969	1110	52	Rice	77	RWF	5	KG	9	2015	617
24920	205	21969	1110	58	Wheat flour	77	RWF	5	KG	9	2015	600
24921	205	21969	1110	65	Sorghum	77	RWF	5	KG	9	2015	346.600000000000023
24922	205	21969	1110	68	Cassava	77	RWF	5	KG	11	2014	210
24923	205	21969	1110	71	Rice (local)	77	RWF	5	KG	10	2012	650
24924	205	21969	1110	74	Cassava flour	77	RWF	5	KG	9	2015	303.399999999999977
24925	205	21969	1110	76	Maize flour	77	RWF	5	KG	9	2015	450
24926	205	21969	1110	77	Maize flour (imported)	77	RWF	5	KG	6	2015	450
24927	205	21969	1110	81	Milk	77	RWF	15	L	9	2015	400
24928	205	21969	1110	87	Sweet potatoes	77	RWF	5	KG	9	2015	203.400000000000006
24929	205	21969	1110	91	Chili (red)	77	RWF	5	KG	9	2015	1100
24930	205	21969	1110	92	Eggs	77	RWF	33	Unit	9	2015	100
24931	205	21969	1110	105	Garlic	77	RWF	5	KG	9	2015	2500
24932	205	21969	1110	110	Onions (red)	77	RWF	5	KG	9	2015	500
24933	205	21969	1110	111	Onions (white)	77	RWF	5	KG	9	2015	666.600000000000023
24934	205	21969	1110	114	Tomatoes	77	RWF	5	KG	9	2015	410
24935	205	21969	1110	119	Groundnuts (shelled)	77	RWF	5	KG	9	2015	1000
24936	205	21969	1110	141	Meat (beef)	77	RWF	5	KG	9	2015	1800
24937	205	21969	1110	148	Potatoes (Irish)	77	RWF	5	KG	9	2015	254
24938	205	21969	1110	166	Carrots	77	RWF	5	KG	9	2015	459.800000000000011
24939	205	21969	1110	181	Cabbage	77	RWF	5	KG	9	2015	193.400000000000006
24940	205	21969	1110	229	Apples (red)	77	RWF	5	KG	9	2015	2500
24941	205	21969	1110	231	Cauliflower	77	RWF	5	KG	9	2015	500
24942	205	21969	1110	233	Cucumbers (greenhouse)	77	RWF	5	KG	9	2015	490
24943	205	21969	1110	241	Oranges (big size)	77	RWF	5	KG	9	2015	553.399999999999977
24944	205	21969	1110	248	Soybeans	77	RWF	5	KG	9	2015	440
24945	205	21969	1110	251	Rice (imported, Indian)	77	RWF	5	KG	9	2015	743.399999999999977
24946	205	21969	1110	253	Sorghum flour	77	RWF	5	KG	9	2015	500
24947	205	21969	1110	254	Bananas	77	RWF	5	KG	9	2015	148
24948	205	21969	1110	262	Beans (dry)	77	RWF	5	KG	9	2015	500
24949	205	21969	1110	263	Beans (fresh)	77	RWF	5	KG	9	2015	662.5
24950	205	21969	1110	292	Peppers (green)	77	RWF	5	KG	9	2015	580
24951	205	21969	1110	381	Rice (imported, Tanzanian)	77	RWF	5	KG	9	2015	1000
24952	205	21969	1110	383	Livestock (Goat)	77	RWF	33	Unit	7	2015	22000
24953	205	21969	1110	404	Spinach	77	RWF	5	KG	9	2015	203.400000000000006
24954	205	21969	1110	408	Papaya	77	RWF	5	KG	9	2015	470.199999999999989
24955	205	21969	1110	411	Mangoes	77	RWF	5	KG	9	2015	700
24956	205	21969	1110	434	Eggplants	77	RWF	5	KG	9	2015	396.600000000000023
24957	205	21969	1110	446	Charcoal	77	RWF	31	Sack	9	2015	7000
24958	205	21969	1110	447	Passion fruit	77	RWF	5	KG	9	2015	1020
24959	205	21969	1110	450	Zucchini	77	RWF	5	KG	10	2013	207.5
24960	205	21969	1110	453	Livestock (hen)	77	RWF	33	Unit	9	2015	3600
24961	205	21969	1110	454	Avocados	77	RWF	33	Unit	9	2015	493.399999999999977
24962	205	21969	1110	455	Cassava leaves	77	RWF	5	KG	9	2015	500
24963	205	21969	1110	456	Peas (fresh)	77	RWF	5	KG	9	2015	800
24964	205	21969	1110	457	Peas (dry)	77	RWF	5	KG	7	2015	250
24965	205	21969	1110	458	Beans (green, fresh)	77	RWF	5	KG	9	2015	503.399999999999977
24966	205	21972	1400	51	Maize	77	RWF	5	KG	12	2015	300
24967	205	21972	1400	52	Rice	77	RWF	5	KG	12	2015	600
24968	205	21972	1400	58	Wheat flour	77	RWF	5	KG	11	2015	500
24969	205	21972	1400	65	Sorghum	77	RWF	5	KG	12	2015	380
24970	205	21972	1400	68	Cassava	77	RWF	5	KG	12	2015	337
24971	205	21972	1400	74	Cassava flour	77	RWF	5	KG	12	2015	400
24972	205	21972	1400	76	Maize flour	77	RWF	5	KG	12	2015	400
24973	205	21972	1400	81	Milk	77	RWF	15	L	12	2015	300
24974	205	21972	1400	87	Sweet potatoes	77	RWF	5	KG	12	2015	150
24975	205	21972	1400	91	Chili (red)	77	RWF	5	KG	12	2015	1080
24976	205	21972	1400	92	Eggs	77	RWF	33	Unit	12	2015	100
24977	205	21972	1400	105	Garlic	77	RWF	5	KG	12	2015	2500
24978	205	21972	1400	110	Onions (red)	77	RWF	5	KG	12	2015	720
24979	205	21972	1400	114	Tomatoes	77	RWF	5	KG	12	2015	490
24980	205	21972	1400	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	990
24981	205	21972	1400	141	Meat (beef)	77	RWF	5	KG	12	2015	2000
24982	205	21972	1400	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	188
24983	205	21972	1400	166	Carrots	77	RWF	5	KG	12	2015	390
24984	205	21972	1400	181	Cabbage	77	RWF	5	KG	12	2015	150
24985	205	21972	1400	229	Apples (red)	77	RWF	5	KG	12	2015	2700
24986	205	21972	1400	231	Cauliflower	77	RWF	5	KG	12	2015	275
24987	205	21972	1400	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	304.25
24988	205	21972	1400	241	Oranges (big size)	77	RWF	5	KG	12	2015	520
24989	205	21972	1400	248	Soybeans	77	RWF	5	KG	12	2015	414
24990	205	21972	1400	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	755
24991	205	21972	1400	253	Sorghum flour	77	RWF	5	KG	12	2015	400
24992	205	21972	1400	254	Bananas	77	RWF	5	KG	12	2015	212.5
24993	205	21972	1400	262	Beans (dry)	77	RWF	5	KG	12	2015	488.600000000000023
24994	205	21972	1400	263	Beans (fresh)	77	RWF	5	KG	12	2015	500
24995	205	21972	1400	287	Livestock (cattle)	77	RWF	33	Unit	9	2015	242500
24996	205	21972	1400	292	Peppers (green)	77	RWF	5	KG	12	2015	490
24997	205	21972	1400	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2015	1020
24998	205	21972	1400	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	25625
24999	205	21972	1400	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	21333.2999999999993
25000	205	21972	1400	404	Spinach	77	RWF	5	KG	12	2015	400
25001	205	21972	1400	408	Papaya	77	RWF	5	KG	12	2015	380
25002	205	21972	1400	411	Mangoes	77	RWF	5	KG	12	2015	362.5
25003	205	21972	1400	434	Eggplants	77	RWF	5	KG	12	2015	250
25004	205	21972	1400	446	Charcoal	77	RWF	31	Sack	12	2015	7000
25005	205	21972	1400	447	Passion fruit	77	RWF	5	KG	12	2015	930
25006	205	21972	1400	450	Zucchini	77	RWF	5	KG	12	2015	300
25007	205	21972	1400	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4500
25008	205	21972	1400	454	Avocados	77	RWF	33	Unit	12	2015	250
25009	205	21972	1400	455	Cassava leaves	77	RWF	5	KG	12	2015	480
25010	205	21972	1400	456	Peas (fresh)	77	RWF	5	KG	12	2015	720
25011	205	21972	1400	457	Peas (dry)	77	RWF	5	KG	12	2015	1450
25012	205	21972	1400	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	400
25013	205	21971	1402	51	Maize	77	RWF	5	KG	12	2015	312.333000000000027
25014	205	21971	1402	52	Rice	77	RWF	5	KG	12	2015	658.33299999999997
25015	205	21971	1402	58	Wheat flour	77	RWF	5	KG	5	2015	800
25016	205	21971	1402	65	Sorghum	77	RWF	5	KG	12	2015	300
25017	205	21971	1402	68	Cassava	77	RWF	5	KG	12	2015	290
25018	205	21971	1402	74	Cassava flour	77	RWF	5	KG	12	2015	336.666999999999973
25019	205	21971	1402	76	Maize flour	77	RWF	5	KG	12	2015	466.666999999999973
25020	205	21971	1402	81	Milk	77	RWF	15	L	12	2015	266.666999999999973
25021	205	21971	1402	84	Wheat	77	RWF	5	KG	10	2013	600
25022	205	21971	1402	87	Sweet potatoes	77	RWF	5	KG	12	2015	175
25023	205	21971	1402	91	Chili (red)	77	RWF	5	KG	12	2015	677.66700000000003
25024	205	21971	1402	92	Eggs	77	RWF	33	Unit	12	2015	100
25025	205	21971	1402	105	Garlic	77	RWF	5	KG	12	2015	2789
25026	205	21971	1402	110	Onions (red)	77	RWF	5	KG	12	2015	516.66700000000003
25027	205	21971	1402	114	Tomatoes	77	RWF	5	KG	12	2015	175
25028	205	21971	1402	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1000
25029	205	21971	1402	140	Meat (pork)	77	RWF	5	KG	12	2015	1500
25030	205	21971	1402	141	Meat (beef)	77	RWF	5	KG	12	2015	1933.32999999999993
25031	205	21971	1402	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	191
25032	205	21971	1402	166	Carrots	77	RWF	5	KG	12	2015	400
25033	205	21971	1402	181	Cabbage	77	RWF	5	KG	12	2015	120
25034	205	21971	1402	241	Oranges (big size)	77	RWF	5	KG	12	2015	500
25035	205	21971	1402	248	Soybeans	77	RWF	5	KG	12	2015	466.666999999999973
25036	205	21971	1402	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	733.33299999999997
25037	205	21971	1402	253	Sorghum flour	77	RWF	5	KG	12	2015	400
25038	205	21971	1402	254	Bananas	77	RWF	5	KG	12	2015	173.332999999999998
25039	205	21971	1402	262	Beans (dry)	77	RWF	5	KG	12	2015	500
25040	205	21971	1402	287	Livestock (cattle)	77	RWF	33	Unit	12	2015	180000
25041	205	21971	1402	292	Peppers (green)	77	RWF	5	KG	12	2015	310
25042	205	21971	1402	381	Rice (imported, Tanzanian)	77	RWF	5	KG	4	2013	700
25043	205	21971	1402	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	23888.7000000000007
25044	205	21971	1402	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	13416.5
25045	205	21971	1402	407	Guava	77	RWF	5	KG	3	2015	316.666999999999973
25046	205	21971	1402	408	Papaya	77	RWF	5	KG	12	2015	483.5
25047	205	21971	1402	411	Mangoes	77	RWF	5	KG	12	2015	197.332999999999998
25048	205	21971	1402	422	Livestock (pig)	77	RWF	33	Unit	12	2015	40000
25049	205	21971	1402	434	Eggplants	77	RWF	5	KG	12	2015	144
25050	205	21971	1402	446	Charcoal	77	RWF	31	Sack	12	2015	7222.32999999999993
25051	205	21971	1402	447	Passion fruit	77	RWF	5	KG	12	2015	1389
25052	205	21971	1402	451	Meat (goat)	77	RWF	5	KG	12	2015	2233.32999999999993
25053	205	21971	1402	453	Livestock (hen)	77	RWF	33	Unit	12	2015	2922
25054	205	21971	1402	454	Avocados	77	RWF	33	Unit	12	2015	180
25055	205	21971	1402	455	Cassava leaves	77	RWF	5	KG	12	2015	400
25056	205	21971	1402	456	Peas (fresh)	77	RWF	5	KG	12	2015	1250
25057	205	21971	1402	457	Peas (dry)	77	RWF	5	KG	8	2015	1300
25058	205	21971	1402	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	216.667000000000002
25059	205	21969	1403	51	Maize	77	RWF	5	KG	12	2015	358.5
25060	205	21969	1403	52	Rice	77	RWF	5	KG	12	2015	675
25061	205	21969	1403	58	Wheat flour	77	RWF	5	KG	12	2015	711.16700000000003
25062	205	21969	1403	65	Sorghum	77	RWF	5	KG	12	2015	394.5
25063	205	21969	1403	68	Cassava	77	RWF	5	KG	5	2015	200
25064	205	21969	1403	74	Cassava flour	77	RWF	5	KG	12	2015	322.333000000000027
25065	205	21969	1403	76	Maize flour	77	RWF	5	KG	12	2015	539
25066	205	21969	1403	81	Milk	77	RWF	15	L	12	2015	327.833000000000027
25067	205	21969	1403	84	Wheat	77	RWF	5	KG	12	2015	552.83299999999997
25068	205	21969	1403	87	Sweet potatoes	77	RWF	5	KG	12	2015	236.167000000000002
25069	205	21969	1403	91	Chili (red)	77	RWF	5	KG	12	2015	1227.82999999999993
25070	205	21969	1403	92	Eggs	77	RWF	33	Unit	12	2015	101
25071	205	21969	1403	105	Garlic	77	RWF	5	KG	12	2015	2733.32999999999993
25072	205	21969	1403	110	Onions (red)	77	RWF	5	KG	12	2015	744.5
25073	205	21969	1403	111	Onions (white)	77	RWF	5	KG	12	2015	1455.67000000000007
25074	205	21969	1403	114	Tomatoes	77	RWF	5	KG	12	2015	450
25075	205	21969	1403	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1233.32999999999993
25076	205	21969	1403	141	Meat (beef)	77	RWF	5	KG	4	2015	2167
25077	205	21969	1403	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	221.332999999999998
25078	205	21969	1403	166	Carrots	77	RWF	5	KG	12	2015	427.833000000000027
25079	205	21969	1403	181	Cabbage	77	RWF	5	KG	12	2015	139
25080	205	21969	1403	183	Meat (mutton)	77	RWF	5	KG	12	2015	2244.67000000000007
25081	205	21969	1403	229	Apples (red)	77	RWF	5	KG	12	2015	2261.17000000000007
25082	205	21969	1403	231	Cauliflower	77	RWF	5	KG	12	2015	472.333000000000027
25083	205	21969	1403	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	483.333000000000027
25084	205	21969	1403	241	Oranges (big size)	77	RWF	5	KG	12	2015	833.5
25085	205	21969	1403	248	Soybeans	77	RWF	5	KG	12	2015	572.33299999999997
25250	205	21971	1409	84	Wheat	77	RWF	5	KG	9	2015	430
25086	205	21969	1403	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	794.33299999999997
25087	205	21969	1403	253	Sorghum flour	77	RWF	5	KG	12	2015	700
25088	205	21969	1403	254	Bananas	77	RWF	5	KG	12	2015	250
25089	205	21969	1403	262	Beans (dry)	77	RWF	5	KG	12	2015	522
25090	205	21969	1403	263	Beans (fresh)	77	RWF	5	KG	12	2015	716.5
25091	205	21969	1403	292	Peppers (green)	77	RWF	5	KG	12	2015	461.166999999999973
25092	205	21969	1403	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2015	1044.5
25093	205	21969	1403	404	Spinach	77	RWF	5	KG	12	2015	208.332999999999998
25094	205	21969	1403	408	Papaya	77	RWF	5	KG	12	2015	900.200000000000045
25095	205	21969	1403	411	Mangoes	77	RWF	5	KG	12	2015	999.83299999999997
25096	205	21969	1403	434	Eggplants	77	RWF	5	KG	12	2015	366.666999999999973
25097	205	21969	1403	446	Charcoal	77	RWF	31	Sack	12	2015	7350
25098	205	21969	1403	447	Passion fruit	77	RWF	5	KG	12	2015	1338.82999999999993
25099	205	21969	1403	450	Zucchini	77	RWF	5	KG	12	2015	466.666999999999973
25100	205	21969	1403	451	Meat (goat)	77	RWF	5	KG	12	2015	2383.5
25101	205	21969	1403	453	Livestock (hen)	77	RWF	33	Unit	12	2015	3694.67000000000007
25102	205	21969	1403	454	Avocados	77	RWF	33	Unit	12	2015	440
25103	205	21969	1403	455	Cassava leaves	77	RWF	5	KG	12	2015	425
25104	205	21969	1403	456	Peas (fresh)	77	RWF	5	KG	12	2015	883.33299999999997
25105	205	21969	1403	457	Peas (dry)	77	RWF	5	KG	12	2015	1422.17000000000007
25106	205	21969	1403	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	483.5
25107	205	21972	1405	51	Maize	77	RWF	5	KG	12	2015	375
25108	205	21972	1405	52	Rice	77	RWF	5	KG	12	2015	612.5
25109	205	21972	1405	65	Sorghum	77	RWF	5	KG	12	2015	357.5
25110	205	21972	1405	68	Cassava	77	RWF	5	KG	12	2015	230
25111	205	21972	1405	74	Cassava flour	77	RWF	5	KG	12	2015	256.666999999999973
25112	205	21972	1405	76	Maize flour	77	RWF	5	KG	12	2015	365
25113	205	21972	1405	81	Milk	77	RWF	15	L	12	2015	400
25114	205	21972	1405	87	Sweet potatoes	77	RWF	5	KG	12	2015	152.5
25115	205	21972	1405	91	Chili (red)	77	RWF	5	KG	12	2015	850
25116	205	21972	1405	92	Eggs	77	RWF	33	Unit	12	2015	95
25117	205	21972	1405	110	Onions (red)	77	RWF	5	KG	12	2015	512.5
25118	205	21972	1405	114	Tomatoes	77	RWF	5	KG	12	2015	475.75
25119	205	21972	1405	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1225
25120	205	21972	1405	141	Meat (beef)	77	RWF	5	KG	12	2015	1825
25121	205	21972	1405	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	182.5
25122	205	21972	1405	166	Carrots	77	RWF	5	KG	12	2015	250
25123	205	21972	1405	181	Cabbage	77	RWF	5	KG	12	2015	125
25124	205	21972	1405	241	Oranges (big size)	77	RWF	5	KG	12	2015	500
25125	205	21972	1405	248	Soybeans	77	RWF	5	KG	12	2015	500
25126	205	21972	1405	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
25127	205	21972	1405	253	Sorghum flour	77	RWF	5	KG	10	2015	400
25128	205	21972	1405	254	Bananas	77	RWF	5	KG	12	2015	257.5
25129	205	21972	1405	262	Beans (dry)	77	RWF	5	KG	12	2015	537.5
25130	205	21972	1405	292	Peppers (green)	77	RWF	5	KG	12	2015	575
25131	205	21972	1405	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	20083.2000000000007
25132	205	21972	1405	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	15000
25133	205	21972	1405	408	Papaya	77	RWF	5	KG	12	2015	250
25134	205	21972	1405	411	Mangoes	77	RWF	5	KG	12	2015	500
25135	205	21972	1405	434	Eggplants	77	RWF	5	KG	12	2015	225
25136	205	21972	1405	447	Passion fruit	77	RWF	5	KG	12	2015	850
25137	205	21972	1405	450	Zucchini	77	RWF	5	KG	12	2015	200
25138	205	21972	1405	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4084
25139	205	21972	1405	454	Avocados	77	RWF	33	Unit	12	2015	125
25140	205	21972	1405	456	Peas (fresh)	77	RWF	5	KG	7	2015	800
25141	205	21972	1405	457	Peas (dry)	77	RWF	5	KG	12	2015	1800
25142	205	21972	1405	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	237.5
25143	205	21972	1406	51	Maize	77	RWF	5	KG	12	2015	375
25144	205	21972	1406	52	Rice	77	RWF	5	KG	12	2015	612.5
25145	205	21972	1406	58	Wheat flour	77	RWF	5	KG	12	2015	607.5
25146	205	21972	1406	65	Sorghum	77	RWF	5	KG	12	2015	400
25147	205	21972	1406	68	Cassava	77	RWF	5	KG	7	2014	300
25148	205	21972	1406	74	Cassava flour	77	RWF	5	KG	12	2015	400
25149	205	21972	1406	76	Maize flour	77	RWF	5	KG	12	2015	443.75
25150	205	21972	1406	77	Maize flour (imported)	77	RWF	5	KG	5	2015	600
25151	205	21972	1406	81	Milk	77	RWF	15	L	12	2015	400
25152	205	21972	1406	84	Wheat	77	RWF	5	KG	12	2015	430
25153	205	21972	1406	87	Sweet potatoes	77	RWF	5	KG	12	2015	187.5
25154	205	21972	1406	91	Chili (red)	77	RWF	5	KG	12	2015	1212.5
25155	205	21972	1406	92	Eggs	77	RWF	33	Unit	12	2015	125
25156	205	21972	1406	105	Garlic	77	RWF	5	KG	12	2015	2350
25157	205	21972	1406	110	Onions (red)	77	RWF	5	KG	12	2015	612.5
25158	205	21972	1406	111	Onions (white)	77	RWF	5	KG	12	2015	1200
25159	205	21972	1406	114	Tomatoes	77	RWF	5	KG	12	2015	516.625
25160	205	21972	1406	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1212.5
25161	205	21972	1406	141	Meat (beef)	77	RWF	5	KG	12	2015	1800
25162	205	21972	1406	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	168.75
25163	205	21972	1406	166	Carrots	77	RWF	5	KG	12	2015	300
25164	205	21972	1406	181	Cabbage	77	RWF	5	KG	12	2015	200
25165	205	21972	1406	229	Apples (red)	77	RWF	5	KG	12	2015	2000
25166	205	21972	1406	231	Cauliflower	77	RWF	5	KG	12	2015	500
25167	205	21972	1406	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	462.5
25168	205	21972	1406	241	Oranges (big size)	77	RWF	5	KG	12	2015	500
25169	205	21972	1406	248	Soybeans	77	RWF	5	KG	12	2015	512.5
25170	205	21972	1406	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
25171	205	21972	1406	253	Sorghum flour	77	RWF	5	KG	12	2015	500
25172	205	21972	1406	254	Bananas	77	RWF	5	KG	12	2015	208.75
25173	205	21972	1406	262	Beans (dry)	77	RWF	5	KG	12	2015	550
25174	205	21972	1406	263	Beans (fresh)	77	RWF	5	KG	12	2015	600
25175	205	21972	1406	292	Peppers (green)	77	RWF	5	KG	12	2015	462.5
25176	205	21972	1406	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2015	975
25177	205	21972	1406	383	Livestock (Goat)	77	RWF	33	Unit	8	2015	20000
25178	205	21972	1406	390	Livestock (Sheep)	77	RWF	33	Unit	8	2015	15670
25179	205	21972	1406	404	Spinach	77	RWF	5	KG	12	2015	200
25180	205	21972	1406	407	Guava	77	RWF	5	KG	4	2015	300
25181	205	21972	1406	408	Papaya	77	RWF	5	KG	12	2015	404.125
25182	205	21972	1406	411	Mangoes	77	RWF	5	KG	12	2015	500
25183	205	21972	1406	434	Eggplants	77	RWF	5	KG	12	2015	300
25184	205	21972	1406	446	Charcoal	77	RWF	31	Sack	12	2015	7000
25185	205	21972	1406	447	Passion fruit	77	RWF	5	KG	12	2015	1100
25186	205	21972	1406	450	Zucchini	77	RWF	5	KG	12	2015	292.857000000000028
25187	205	21972	1406	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4397.5
25188	205	21972	1406	454	Avocados	77	RWF	33	Unit	12	2015	201.25
25189	205	21972	1406	455	Cassava leaves	77	RWF	5	KG	12	2015	591.625
25190	205	21972	1406	456	Peas (fresh)	77	RWF	5	KG	12	2015	975
25191	205	21972	1406	457	Peas (dry)	77	RWF	5	KG	12	2015	2000
25192	205	21972	1406	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	300
25193	205	21973	1407	51	Maize	77	RWF	5	KG	12	2015	245.332999999999998
25194	205	21973	1407	52	Rice	77	RWF	5	KG	12	2015	716.5
25195	205	21973	1407	58	Wheat flour	77	RWF	5	KG	12	2015	600
25196	205	21973	1407	65	Sorghum	77	RWF	5	KG	12	2015	400
25197	205	21973	1407	68	Cassava	77	RWF	5	KG	12	2015	209.667000000000002
25198	205	21973	1407	74	Cassava flour	77	RWF	5	KG	12	2015	377.333000000000027
25199	205	21973	1407	76	Maize flour	77	RWF	5	KG	12	2015	422
25200	205	21973	1407	77	Maize flour (imported)	77	RWF	5	KG	12	2015	783
25201	205	21973	1407	81	Milk	77	RWF	15	L	12	2015	233.332999999999998
25202	205	21973	1407	84	Wheat	77	RWF	5	KG	12	2015	500
25203	205	21973	1407	87	Sweet potatoes	77	RWF	5	KG	12	2015	127.332999999999998
25204	205	21973	1407	91	Chili (red)	77	RWF	5	KG	12	2015	1400
25205	205	21973	1407	92	Eggs	77	RWF	33	Unit	12	2015	77.3332999999999942
25206	205	21973	1407	105	Garlic	77	RWF	5	KG	12	2015	1977.67000000000007
25207	205	21973	1407	110	Onions (red)	77	RWF	5	KG	12	2015	455.333000000000027
25208	205	21973	1407	111	Onions (white)	77	RWF	5	KG	9	2015	500
25209	205	21973	1407	114	Tomatoes	77	RWF	5	KG	12	2015	400
25210	205	21973	1407	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	983
25211	205	21973	1407	140	Meat (pork)	77	RWF	5	KG	11	2015	1233
25212	205	21973	1407	141	Meat (beef)	77	RWF	5	KG	12	2015	1600
25213	205	21973	1407	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	178.332999999999998
25214	205	21973	1407	166	Carrots	77	RWF	5	KG	12	2015	261
25215	205	21973	1407	181	Cabbage	77	RWF	5	KG	12	2015	100
25216	205	21973	1407	183	Meat (mutton)	77	RWF	5	KG	8	2015	1500
25217	205	21973	1407	231	Cauliflower	77	RWF	5	KG	10	2015	500
25218	205	21973	1407	241	Oranges (big size)	77	RWF	5	KG	12	2015	800
25219	205	21973	1407	248	Soybeans	77	RWF	5	KG	12	2015	600
25220	205	21973	1407	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	766.66700000000003
25221	205	21973	1407	253	Sorghum flour	77	RWF	5	KG	12	2015	541.5
25222	205	21973	1407	254	Bananas	77	RWF	5	KG	12	2015	200
25223	205	21973	1407	262	Beans (dry)	77	RWF	5	KG	12	2015	436
25224	205	21973	1407	263	Beans (fresh)	77	RWF	5	KG	12	2015	416.5
25225	205	21973	1407	292	Peppers (green)	77	RWF	5	KG	12	2015	555.33299999999997
25226	205	21973	1407	381	Rice (imported, Tanzanian)	77	RWF	5	KG	4	2014	933
25227	205	21973	1407	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	28833
25228	205	21973	1407	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	22166.5
25229	205	21973	1407	404	Spinach	77	RWF	5	KG	6	2015	283
25230	205	21973	1407	407	Guava	77	RWF	5	KG	6	2015	300
25231	205	21973	1407	408	Papaya	77	RWF	5	KG	8	2015	600
25232	205	21973	1407	411	Mangoes	77	RWF	5	KG	12	2015	300
25233	205	21973	1407	434	Eggplants	77	RWF	5	KG	12	2015	450
25234	205	21973	1407	446	Charcoal	77	RWF	31	Sack	12	2015	7000
25235	205	21973	1407	447	Passion fruit	77	RWF	5	KG	12	2015	788.66700000000003
25236	205	21973	1407	450	Zucchini	77	RWF	5	KG	12	2015	300
25237	205	21973	1407	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4133
25238	205	21973	1407	454	Avocados	77	RWF	33	Unit	12	2015	327.666999999999973
25239	205	21973	1407	455	Cassava leaves	77	RWF	5	KG	12	2015	300
25240	205	21973	1407	456	Peas (fresh)	77	RWF	5	KG	12	2015	700
25241	205	21973	1407	457	Peas (dry)	77	RWF	5	KG	12	2015	1000
25242	205	21973	1407	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	375
25243	205	21971	1409	51	Maize	77	RWF	5	KG	12	2015	300
25244	205	21971	1409	52	Rice	77	RWF	5	KG	12	2015	600
25245	205	21971	1409	58	Wheat flour	77	RWF	5	KG	12	2015	500
25246	205	21971	1409	65	Sorghum	77	RWF	5	KG	12	2015	300
25247	205	21971	1409	74	Cassava flour	77	RWF	5	KG	12	2015	350
25248	205	21971	1409	76	Maize flour	77	RWF	5	KG	12	2015	400
25249	205	21971	1409	81	Milk	77	RWF	15	L	12	2015	400
25251	205	21971	1409	87	Sweet potatoes	77	RWF	5	KG	12	2015	150
25252	205	21971	1409	91	Chili (red)	77	RWF	5	KG	12	2015	1000
25253	205	21971	1409	92	Eggs	77	RWF	33	Unit	12	2015	100
25254	205	21971	1409	105	Garlic	77	RWF	5	KG	12	2015	2333.32999999999993
25255	205	21971	1409	110	Onions (red)	77	RWF	5	KG	12	2015	666.66700000000003
25256	205	21971	1409	111	Onions (white)	77	RWF	5	KG	9	2015	800
25257	205	21971	1409	114	Tomatoes	77	RWF	5	KG	12	2015	483.333000000000027
25258	205	21971	1409	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1000
25259	205	21971	1409	141	Meat (beef)	77	RWF	5	KG	12	2015	2000
25260	205	21971	1409	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	183.332999999999998
25261	205	21971	1409	166	Carrots	77	RWF	5	KG	12	2015	383.333000000000027
25262	205	21971	1409	181	Cabbage	77	RWF	5	KG	12	2015	150
25263	205	21971	1409	229	Apples (red)	77	RWF	5	KG	12	2015	2500
25264	205	21971	1409	231	Cauliflower	77	RWF	5	KG	12	2015	300
25265	205	21971	1409	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	300
25266	205	21971	1409	241	Oranges (big size)	77	RWF	5	KG	12	2015	533.33299999999997
25267	205	21971	1409	248	Soybeans	77	RWF	5	KG	12	2015	400
25268	205	21971	1409	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
25269	205	21971	1409	253	Sorghum flour	77	RWF	5	KG	12	2015	400
25270	205	21971	1409	254	Bananas	77	RWF	5	KG	12	2015	200
25271	205	21971	1409	262	Beans (dry)	77	RWF	5	KG	12	2015	416.666999999999973
25272	205	21971	1409	263	Beans (fresh)	77	RWF	5	KG	9	2015	600
25273	205	21971	1409	287	Livestock (cattle)	77	RWF	33	Unit	12	2015	248333
25274	205	21971	1409	292	Peppers (green)	77	RWF	5	KG	12	2015	500
25275	205	21971	1409	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2015	1000
25276	205	21971	1409	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	26000
25277	205	21971	1409	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	21500
25278	205	21971	1409	404	Spinach	77	RWF	5	KG	12	2015	400
25279	205	21971	1409	408	Papaya	77	RWF	5	KG	12	2015	333.333000000000027
25280	205	21971	1409	411	Mangoes	77	RWF	5	KG	12	2015	516.66700000000003
25281	205	21971	1409	434	Eggplants	77	RWF	5	KG	12	2015	250
25282	205	21971	1409	446	Charcoal	77	RWF	31	Sack	9	2015	7000
25283	205	21971	1409	447	Passion fruit	77	RWF	5	KG	12	2015	966.66700000000003
25284	205	21971	1409	450	Zucchini	77	RWF	5	KG	12	2015	300
25285	205	21971	1409	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4666.67000000000007
25286	205	21971	1409	454	Avocados	77	RWF	33	Unit	12	2015	250
25287	205	21971	1409	455	Cassava leaves	77	RWF	5	KG	12	2015	500
25288	205	21971	1409	456	Peas (fresh)	77	RWF	5	KG	12	2015	733.33299999999997
25289	205	21971	1409	457	Peas (dry)	77	RWF	5	KG	12	2015	1400
25290	205	21971	1409	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	400
25291	205	21972	1484	51	Maize	77	RWF	5	KG	12	2015	300
25292	205	21972	1484	52	Rice	77	RWF	5	KG	12	2015	550
25293	205	21972	1484	58	Wheat flour	77	RWF	5	KG	8	2015	300
25294	205	21972	1484	65	Sorghum	77	RWF	5	KG	12	2015	278.666999999999973
25295	205	21972	1484	68	Cassava	77	RWF	5	KG	12	2015	238
25296	205	21972	1484	74	Cassava flour	77	RWF	5	KG	12	2015	345.75
25297	205	21972	1484	76	Maize flour	77	RWF	5	KG	12	2015	391.5
25298	205	21972	1484	81	Milk	77	RWF	15	L	12	2015	300
25299	205	21972	1484	87	Sweet potatoes	77	RWF	5	KG	12	2015	100
25300	205	21972	1484	91	Chili (red)	77	RWF	5	KG	12	2015	766.75
25301	205	21972	1484	92	Eggs	77	RWF	33	Unit	9	2015	83
25302	205	21972	1484	105	Garlic	77	RWF	5	KG	9	2014	2000
25303	205	21972	1484	110	Onions (red)	77	RWF	5	KG	12	2015	421
25304	205	21972	1484	114	Tomatoes	77	RWF	5	KG	12	2015	279
25305	205	21972	1484	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	933.25
25306	205	21972	1484	140	Meat (pork)	77	RWF	5	KG	9	2015	1667
25307	205	21972	1484	141	Meat (beef)	77	RWF	5	KG	12	2015	1883.5
25308	205	21972	1484	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	206.75
25309	205	21972	1484	166	Carrots	77	RWF	5	KG	12	2015	233.25
25310	205	21972	1484	181	Cabbage	77	RWF	5	KG	12	2015	69.25
25311	205	21972	1484	241	Oranges (big size)	77	RWF	5	KG	12	2015	367
25312	205	21972	1484	248	Soybeans	77	RWF	5	KG	12	2015	425.75
25313	205	21972	1484	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	754.25
25314	205	21972	1484	253	Sorghum flour	77	RWF	5	KG	12	2015	329.25
25315	205	21972	1484	254	Bananas	77	RWF	5	KG	12	2015	201.75
25316	205	21972	1484	262	Beans (dry)	77	RWF	5	KG	12	2015	440
25317	205	21972	1484	292	Peppers (green)	77	RWF	5	KG	12	2015	237.5
25318	205	21972	1484	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	23166.7999999999993
25319	205	21972	1484	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	18750.2000000000007
25320	205	21972	1484	407	Guava	77	RWF	5	KG	7	2015	126.5
25321	205	21972	1484	408	Papaya	77	RWF	5	KG	11	2015	333
25322	205	21972	1484	411	Mangoes	77	RWF	5	KG	12	2015	300
25323	205	21972	1484	422	Livestock (pig)	77	RWF	33	Unit	12	2015	47417
25324	205	21972	1484	434	Eggplants	77	RWF	5	KG	12	2015	194
25325	205	21972	1484	447	Passion fruit	77	RWF	5	KG	6	2015	700
25326	205	21972	1484	450	Zucchini	77	RWF	5	KG	8	2015	193
25327	205	21972	1484	451	Meat (goat)	77	RWF	5	KG	12	2015	2816.75
25328	205	21972	1484	454	Avocados	77	RWF	33	Unit	12	2015	151
25329	205	21972	1484	455	Cassava leaves	77	RWF	5	KG	12	2015	236
25330	205	21972	1484	457	Peas (dry)	77	RWF	5	KG	12	2015	622.33299999999997
25331	205	21972	1484	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	194
25332	205	21972	1485	51	Maize	77	RWF	5	KG	11	2015	275
25333	205	21972	1485	52	Rice	77	RWF	5	KG	12	2015	550
25334	205	21972	1485	58	Wheat flour	77	RWF	5	KG	9	2015	600
25335	205	21972	1485	65	Sorghum	77	RWF	5	KG	12	2015	261.5
25336	205	21972	1485	74	Cassava flour	77	RWF	5	KG	12	2015	425
25337	205	21972	1485	76	Maize flour	77	RWF	5	KG	12	2015	391.5
25338	205	21972	1485	81	Milk	77	RWF	15	L	12	2015	400
25339	205	21972	1485	87	Sweet potatoes	77	RWF	5	KG	12	2015	100
25340	205	21972	1485	91	Chili (red)	77	RWF	5	KG	12	2015	800
25341	205	21972	1485	92	Eggs	77	RWF	33	Unit	12	2015	100
25342	205	21972	1485	110	Onions (red)	77	RWF	5	KG	12	2015	408.5
25343	205	21972	1485	114	Tomatoes	77	RWF	5	KG	12	2015	258
25344	205	21972	1485	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	941.5
25345	205	21972	1485	140	Meat (pork)	77	RWF	5	KG	12	2015	1516.5
25346	205	21972	1485	141	Meat (beef)	77	RWF	5	KG	12	2015	1817
25347	205	21972	1485	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	190
25348	205	21972	1485	166	Carrots	77	RWF	5	KG	12	2015	208.5
25349	205	21972	1485	181	Cabbage	77	RWF	5	KG	12	2015	83
25350	205	21972	1485	241	Oranges (big size)	77	RWF	5	KG	12	2015	400
25351	205	21972	1485	248	Soybeans	77	RWF	5	KG	12	2015	441.5
25352	205	21972	1485	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
25353	205	21972	1485	253	Sorghum flour	77	RWF	5	KG	12	2015	325
25354	205	21972	1485	254	Bananas	77	RWF	5	KG	12	2015	200
25355	205	21972	1485	262	Beans (dry)	77	RWF	5	KG	12	2015	453
25356	205	21972	1485	263	Beans (fresh)	77	RWF	5	KG	10	2015	800
25357	205	21972	1485	292	Peppers (green)	77	RWF	5	KG	12	2015	208
25358	205	21972	1485	407	Guava	77	RWF	5	KG	7	2015	133
25359	205	21972	1485	408	Papaya	77	RWF	5	KG	12	2015	333
25360	205	21972	1485	411	Mangoes	77	RWF	5	KG	12	2015	350
25361	205	21972	1485	434	Eggplants	77	RWF	5	KG	12	2015	188.5
25362	205	21972	1485	447	Passion fruit	77	RWF	5	KG	12	2015	950
25363	205	21972	1485	450	Zucchini	77	RWF	5	KG	12	2015	150
25364	205	21972	1485	451	Meat (goat)	77	RWF	5	KG	12	2015	2700
25365	205	21972	1485	453	Livestock (hen)	77	RWF	33	Unit	12	2015	3483
25366	205	21972	1485	454	Avocados	77	RWF	33	Unit	12	2015	148
25367	205	21972	1485	457	Peas (dry)	77	RWF	5	KG	12	2015	641.5
25368	205	21972	1485	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	191.5
25369	205	21973	1487	51	Maize	77	RWF	5	KG	12	2015	262.75
25370	205	21973	1487	52	Rice	77	RWF	5	KG	12	2015	716.66700000000003
25371	205	21973	1487	58	Wheat flour	77	RWF	5	KG	12	2015	500
25372	205	21973	1487	65	Sorghum	77	RWF	5	KG	12	2015	444.25
25373	205	21973	1487	68	Cassava	77	RWF	5	KG	11	2015	300
25374	205	21973	1487	74	Cassava flour	77	RWF	5	KG	12	2015	353.5
25375	205	21973	1487	76	Maize flour	77	RWF	5	KG	12	2015	300
25376	205	21973	1487	77	Maize flour (imported)	77	RWF	5	KG	12	2015	495
25377	205	21973	1487	81	Milk	77	RWF	15	L	12	2015	400
25378	205	21973	1487	84	Wheat	77	RWF	5	KG	12	2015	550
25379	205	21973	1487	87	Sweet potatoes	77	RWF	5	KG	12	2015	122.5
25380	205	21973	1487	91	Chili (red)	77	RWF	5	KG	12	2015	850
25381	205	21973	1487	92	Eggs	77	RWF	33	Unit	12	2015	110.75
25382	205	21973	1487	105	Garlic	77	RWF	5	KG	12	2015	4000
25383	205	21973	1487	110	Onions (red)	77	RWF	5	KG	12	2015	426.25
25384	205	21973	1487	111	Onions (white)	77	RWF	5	KG	12	2015	766.66700000000003
25385	205	21973	1487	114	Tomatoes	77	RWF	5	KG	12	2015	297.75
25386	205	21973	1487	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1212.5
25387	205	21973	1487	141	Meat (beef)	77	RWF	5	KG	12	2015	1975
25388	205	21973	1487	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	163.75
25389	205	21973	1487	166	Carrots	77	RWF	5	KG	12	2015	266.75
25390	205	21973	1487	181	Cabbage	77	RWF	5	KG	12	2015	122.75
25391	205	21973	1487	229	Apples (red)	77	RWF	5	KG	12	2015	2500
25392	205	21973	1487	231	Cauliflower	77	RWF	5	KG	12	2015	408.333000000000027
25393	205	21973	1487	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	312
25394	205	21973	1487	241	Oranges (big size)	77	RWF	5	KG	12	2015	700
25395	205	21973	1487	248	Soybeans	77	RWF	5	KG	12	2015	500
25396	205	21973	1487	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	805.75
25397	205	21973	1487	253	Sorghum flour	77	RWF	5	KG	12	2015	493.75
25398	205	21973	1487	254	Bananas	77	RWF	5	KG	12	2015	182.75
25399	205	21973	1487	262	Beans (dry)	77	RWF	5	KG	12	2015	455
25400	205	21973	1487	292	Peppers (green)	77	RWF	5	KG	12	2015	471
25401	205	21973	1487	381	Rice (imported, Tanzanian)	77	RWF	5	KG	11	2015	1066.67000000000007
25402	205	21973	1487	404	Spinach	77	RWF	5	KG	12	2015	180
25403	205	21973	1487	407	Guava	77	RWF	5	KG	11	2015	152.5
25404	205	21973	1487	408	Papaya	77	RWF	5	KG	12	2015	285
25405	205	21973	1487	411	Mangoes	77	RWF	5	KG	12	2015	537.5
25406	205	21973	1487	434	Eggplants	77	RWF	5	KG	12	2015	242
25407	205	21973	1487	446	Charcoal	77	RWF	31	Sack	12	2015	6958.5
25408	205	21973	1487	447	Passion fruit	77	RWF	5	KG	12	2015	892
25409	205	21973	1487	450	Zucchini	77	RWF	5	KG	12	2015	157.75
25410	205	21973	1487	451	Meat (goat)	77	RWF	5	KG	12	2015	2500
25411	205	21973	1487	453	Livestock (hen)	77	RWF	33	Unit	12	2015	6750
25412	205	21973	1487	454	Avocados	77	RWF	33	Unit	12	2015	212.75
25413	205	21973	1487	455	Cassava leaves	77	RWF	5	KG	12	2015	475
25414	205	21973	1487	456	Peas (fresh)	77	RWF	5	KG	12	2015	1016.66999999999996
25415	205	21973	1487	457	Peas (dry)	77	RWF	5	KG	12	2015	925
25416	205	21973	1487	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	254.25
25417	205	21971	1488	51	Maize	77	RWF	5	KG	12	2015	212
25418	205	21971	1488	52	Rice	77	RWF	5	KG	12	2015	750
25419	205	21971	1488	58	Wheat flour	77	RWF	5	KG	11	2015	350
25420	205	21971	1488	65	Sorghum	77	RWF	5	KG	12	2015	426
25421	205	21971	1488	68	Cassava	77	RWF	5	KG	11	2015	223.332999999999998
25422	205	21971	1488	74	Cassava flour	77	RWF	5	KG	12	2015	295
25423	205	21971	1488	76	Maize flour	77	RWF	5	KG	12	2015	240
25424	205	21971	1488	77	Maize flour (imported)	77	RWF	5	KG	12	2015	500
25425	205	21971	1488	81	Milk	77	RWF	15	L	12	2015	250
25426	205	21971	1488	84	Wheat	77	RWF	5	KG	12	2015	400
25427	205	21971	1488	87	Sweet potatoes	77	RWF	5	KG	12	2015	84
25428	205	21971	1488	91	Chili (red)	77	RWF	5	KG	12	2015	400
25429	205	21971	1488	92	Eggs	77	RWF	33	Unit	12	2015	98
25430	205	21971	1488	105	Garlic	77	RWF	5	KG	12	2015	2650
25431	205	21971	1488	110	Onions (red)	77	RWF	5	KG	12	2015	294
25432	205	21971	1488	111	Onions (white)	77	RWF	5	KG	11	2015	600
25433	205	21971	1488	114	Tomatoes	77	RWF	5	KG	12	2015	187
25434	205	21971	1488	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1050
25435	205	21971	1488	140	Meat (pork)	77	RWF	5	KG	11	2015	1475
25436	205	21971	1488	141	Meat (beef)	77	RWF	5	KG	12	2015	1500
25437	205	21971	1488	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	140
25438	205	21971	1488	166	Carrots	77	RWF	5	KG	12	2015	150
25439	205	21971	1488	181	Cabbage	77	RWF	5	KG	12	2015	40
25440	205	21971	1488	229	Apples (red)	77	RWF	5	KG	12	2015	180
25441	205	21971	1488	231	Cauliflower	77	RWF	5	KG	11	2015	333.333000000000027
25442	205	21971	1488	233	Cucumbers (greenhouse)	77	RWF	5	KG	11	2015	193.75
25443	205	21971	1488	241	Oranges (big size)	77	RWF	5	KG	12	2015	400
25444	205	21971	1488	248	Soybeans	77	RWF	5	KG	12	2015	460
25445	205	21971	1488	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	850
25446	205	21971	1488	253	Sorghum flour	77	RWF	5	KG	12	2015	450
25447	205	21971	1488	254	Bananas	77	RWF	5	KG	12	2015	120
25448	205	21971	1488	262	Beans (dry)	77	RWF	5	KG	12	2015	410
25449	205	21971	1488	287	Livestock (cattle)	77	RWF	33	Unit	12	2015	208000
25450	205	21971	1488	292	Peppers (green)	77	RWF	5	KG	12	2015	250
25451	205	21971	1488	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	22000
25452	205	21971	1488	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	20000
25453	205	21971	1488	404	Spinach	77	RWF	5	KG	11	2015	100.5
25454	205	21971	1488	407	Guava	77	RWF	5	KG	12	2015	40
25455	205	21971	1488	408	Papaya	77	RWF	5	KG	11	2015	173.332999999999998
25456	205	21971	1488	411	Mangoes	77	RWF	5	KG	12	2015	400
25457	205	21971	1488	422	Livestock (pig)	77	RWF	33	Unit	11	2015	39000
25458	205	21971	1488	434	Eggplants	77	RWF	5	KG	12	2015	180
25459	205	21971	1488	446	Charcoal	77	RWF	31	Sack	11	2015	4882.5
25460	205	21971	1488	447	Passion fruit	77	RWF	5	KG	12	2015	400
25461	205	21971	1488	450	Zucchini	77	RWF	5	KG	12	2015	70
25462	205	21971	1488	451	Meat (goat)	77	RWF	5	KG	11	2015	2000
25463	205	21971	1488	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4000
25464	205	21971	1488	454	Avocados	77	RWF	33	Unit	12	2015	120
25465	205	21971	1488	455	Cassava leaves	77	RWF	5	KG	12	2015	200
25466	205	21971	1488	456	Peas (fresh)	77	RWF	5	KG	11	2015	734
25467	205	21971	1488	457	Peas (dry)	77	RWF	5	KG	12	2015	700
25468	205	21971	1488	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	170
25469	205	21971	1489	51	Maize	77	RWF	5	KG	12	2015	300
25470	205	21971	1489	52	Rice	77	RWF	5	KG	12	2015	600
25471	205	21971	1489	58	Wheat flour	77	RWF	5	KG	8	2015	350
25472	205	21971	1489	65	Sorghum	77	RWF	5	KG	12	2015	306.666999999999973
25473	205	21971	1489	68	Cassava	77	RWF	5	KG	12	2015	300
25474	205	21971	1489	74	Cassava flour	77	RWF	5	KG	12	2015	366.666999999999973
25475	205	21971	1489	76	Maize flour	77	RWF	5	KG	12	2015	483.333000000000027
25476	205	21971	1489	81	Milk	77	RWF	15	L	12	2015	300
25477	205	21971	1489	87	Sweet potatoes	77	RWF	5	KG	12	2015	150
25478	205	21971	1489	91	Chili (red)	77	RWF	5	KG	12	2015	544.33299999999997
25479	205	21971	1489	92	Eggs	77	RWF	33	Unit	12	2015	100
25480	205	21971	1489	105	Garlic	77	RWF	5	KG	12	2015	2889
25481	205	21971	1489	110	Onions (red)	77	RWF	5	KG	12	2015	700
25482	205	21971	1489	111	Onions (white)	77	RWF	5	KG	11	2015	800
25483	205	21971	1489	114	Tomatoes	77	RWF	5	KG	12	2015	466.666999999999973
25484	205	21971	1489	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1000
25485	205	21971	1489	141	Meat (beef)	77	RWF	5	KG	12	2015	1700
25486	205	21971	1489	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	181
25487	205	21971	1489	166	Carrots	77	RWF	5	KG	12	2015	316.666999999999973
25488	205	21971	1489	181	Cabbage	77	RWF	5	KG	12	2015	156.667000000000002
25489	205	21971	1489	241	Oranges (big size)	77	RWF	5	KG	12	2015	800
25490	205	21971	1489	248	Soybeans	77	RWF	5	KG	12	2015	500
25491	205	21971	1489	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	716.66700000000003
25492	205	21971	1489	253	Sorghum flour	77	RWF	5	KG	12	2015	427.666999999999973
25493	205	21971	1489	254	Bananas	77	RWF	5	KG	12	2015	189
25494	205	21971	1489	262	Beans (dry)	77	RWF	5	KG	12	2015	511
25495	205	21971	1489	287	Livestock (cattle)	77	RWF	33	Unit	12	2015	189444
25496	205	21971	1489	292	Peppers (green)	77	RWF	5	KG	12	2015	655.66700000000003
25497	205	21971	1489	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	26222
25498	205	21971	1489	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	22333
25499	205	21971	1489	404	Spinach	77	RWF	5	KG	5	2015	300
25500	205	21971	1489	407	Guava	77	RWF	5	KG	12	2015	300
25501	205	21971	1489	408	Papaya	77	RWF	5	KG	12	2015	600
25502	205	21971	1489	411	Mangoes	77	RWF	5	KG	12	2015	600
25503	205	21971	1489	434	Eggplants	77	RWF	5	KG	12	2015	294.333000000000027
25504	205	21971	1489	446	Charcoal	77	RWF	31	Sack	12	2015	6000
25505	205	21971	1489	447	Passion fruit	77	RWF	5	KG	12	2015	1100
25506	205	21971	1489	450	Zucchini	77	RWF	5	KG	11	2015	316.5
25507	205	21971	1489	451	Meat (goat)	77	RWF	5	KG	12	2015	2777.67000000000007
25508	205	21971	1489	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4000
25509	205	21971	1489	454	Avocados	77	RWF	33	Unit	12	2015	186.667000000000002
25510	205	21971	1489	456	Peas (fresh)	77	RWF	5	KG	12	2015	833.33299999999997
25511	205	21971	1489	457	Peas (dry)	77	RWF	5	KG	11	2015	1500
25512	205	21971	1489	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	366.666999999999973
25513	205	21969	1490	51	Maize	77	RWF	5	KG	9	2015	250
25514	205	21969	1490	52	Rice	77	RWF	5	KG	9	2015	621
25515	205	21969	1490	58	Wheat flour	77	RWF	5	KG	9	2015	600
25516	205	21969	1490	65	Sorghum	77	RWF	5	KG	9	2015	354.25
25517	205	21969	1490	74	Cassava flour	77	RWF	5	KG	9	2015	304.25
25518	205	21969	1490	76	Maize flour	77	RWF	5	KG	9	2015	445.75
25519	205	21969	1490	81	Milk	77	RWF	15	L	9	2015	400
25520	205	21969	1490	87	Sweet potatoes	77	RWF	5	KG	9	2015	200
25521	205	21969	1490	91	Chili (red)	77	RWF	5	KG	9	2015	966.75
25522	205	21969	1490	92	Eggs	77	RWF	33	Unit	9	2015	100
25523	205	21969	1490	105	Garlic	77	RWF	5	KG	9	2015	2475
25524	205	21969	1490	110	Onions (red)	77	RWF	5	KG	9	2015	500
25525	205	21969	1490	111	Onions (white)	77	RWF	5	KG	9	2015	725
25526	205	21969	1490	114	Tomatoes	77	RWF	5	KG	9	2015	420.75
25527	205	21969	1490	119	Groundnuts (shelled)	77	RWF	5	KG	9	2015	1000
25528	205	21969	1490	141	Meat (beef)	77	RWF	5	KG	9	2015	1317.5
25529	205	21969	1490	148	Potatoes (Irish)	77	RWF	5	KG	9	2015	250
25530	205	21969	1490	166	Carrots	77	RWF	5	KG	9	2015	395.75
25531	205	21969	1490	181	Cabbage	77	RWF	5	KG	9	2015	175
25532	205	21969	1490	229	Apples (red)	77	RWF	5	KG	9	2015	2500
25533	205	21969	1490	231	Cauliflower	77	RWF	5	KG	7	2015	400
25534	205	21969	1490	233	Cucumbers (greenhouse)	77	RWF	5	KG	9	2015	475
25535	205	21969	1490	241	Oranges (big size)	77	RWF	5	KG	9	2015	575
25536	205	21969	1490	248	Soybeans	77	RWF	5	KG	9	2015	400
25537	205	21969	1490	251	Rice (imported, Indian)	77	RWF	5	KG	9	2015	750
25538	205	21969	1490	253	Sorghum flour	77	RWF	5	KG	9	2015	500
25539	205	21969	1490	254	Bananas	77	RWF	5	KG	9	2015	145.75
25540	205	21969	1490	262	Beans (dry)	77	RWF	5	KG	9	2015	475
25541	205	21969	1490	263	Beans (fresh)	77	RWF	5	KG	8	2015	750
25542	205	21969	1490	292	Peppers (green)	77	RWF	5	KG	9	2015	566.5
25543	205	21969	1490	381	Rice (imported, Tanzanian)	77	RWF	5	KG	9	2015	1000
25544	205	21969	1490	383	Livestock (Goat)	77	RWF	33	Unit	9	2015	23167
25545	205	21969	1490	404	Spinach	77	RWF	5	KG	9	2015	200
25546	205	21969	1490	408	Papaya	77	RWF	5	KG	9	2015	425
25547	205	21969	1490	411	Mangoes	77	RWF	5	KG	9	2015	716.75
25548	205	21969	1490	434	Eggplants	77	RWF	5	KG	9	2015	404.25
25549	205	21969	1490	447	Passion fruit	77	RWF	5	KG	9	2015	1200
25550	205	21969	1490	453	Livestock (hen)	77	RWF	33	Unit	9	2015	3500
25551	205	21969	1490	454	Avocados	77	RWF	33	Unit	9	2015	466.75
25552	205	21969	1490	455	Cassava leaves	77	RWF	5	KG	9	2015	475
25553	205	21969	1490	456	Peas (fresh)	77	RWF	5	KG	9	2015	800
25554	205	21969	1490	458	Beans (green, fresh)	77	RWF	5	KG	9	2015	491.5
25555	205	21971	1491	51	Maize	77	RWF	5	KG	12	2015	300
25556	205	21971	1491	52	Rice	77	RWF	5	KG	12	2015	600
25557	205	21971	1491	65	Sorghum	77	RWF	5	KG	12	2015	300
25558	205	21971	1491	68	Cassava	77	RWF	5	KG	11	2015	277.5
25559	205	21971	1491	74	Cassava flour	77	RWF	5	KG	12	2015	392.5
25560	205	21971	1491	76	Maize flour	77	RWF	5	KG	12	2015	400
25561	205	21971	1491	81	Milk	77	RWF	15	L	12	2015	300
25562	205	21971	1491	87	Sweet potatoes	77	RWF	5	KG	12	2015	150
25563	205	21971	1491	91	Chili (red)	77	RWF	5	KG	12	2015	1000
25564	205	21971	1491	92	Eggs	77	RWF	33	Unit	12	2015	100
25565	205	21971	1491	105	Garlic	77	RWF	5	KG	12	2015	2500
25566	205	21971	1491	110	Onions (red)	77	RWF	5	KG	12	2015	637.5
25567	205	21971	1491	114	Tomatoes	77	RWF	5	KG	12	2015	500
25568	205	21971	1491	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1000
25569	205	21971	1491	140	Meat (pork)	77	RWF	5	KG	5	2015	1000
25570	205	21971	1491	141	Meat (beef)	77	RWF	5	KG	12	2015	2000
25571	205	21971	1491	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	187.5
25572	205	21971	1491	166	Carrots	77	RWF	5	KG	12	2015	375
25573	205	21971	1491	181	Cabbage	77	RWF	5	KG	12	2015	150
25574	205	21971	1491	229	Apples (red)	77	RWF	5	KG	11	2015	2500
25575	205	21971	1491	231	Cauliflower	77	RWF	5	KG	12	2015	250
25576	205	21971	1491	233	Cucumbers (greenhouse)	77	RWF	5	KG	12	2015	333.333000000000027
25577	205	21971	1491	241	Oranges (big size)	77	RWF	5	KG	12	2015	500
25578	205	21971	1491	248	Soybeans	77	RWF	5	KG	12	2015	400
25579	205	21971	1491	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	750
25580	205	21971	1491	253	Sorghum flour	77	RWF	5	KG	12	2015	400
25581	205	21971	1491	254	Bananas	77	RWF	5	KG	12	2015	175
25582	205	21971	1491	262	Beans (dry)	77	RWF	5	KG	12	2015	487.5
25583	205	21971	1491	263	Beans (fresh)	77	RWF	5	KG	9	2015	600
25584	205	21971	1491	292	Peppers (green)	77	RWF	5	KG	12	2015	487.5
25585	205	21971	1491	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2015	1000
25586	205	21971	1491	383	Livestock (Goat)	77	RWF	33	Unit	4	2014	25000
25587	205	21971	1491	390	Livestock (Sheep)	77	RWF	33	Unit	5	2013	22000
25588	205	21971	1491	404	Spinach	77	RWF	5	KG	12	2015	400
25589	205	21971	1491	408	Papaya	77	RWF	5	KG	12	2015	375
25590	205	21971	1491	411	Mangoes	77	RWF	5	KG	12	2015	512.5
25591	205	21971	1491	434	Eggplants	77	RWF	5	KG	12	2015	250
25592	205	21971	1491	447	Passion fruit	77	RWF	5	KG	12	2015	900
25593	205	21971	1491	450	Zucchini	77	RWF	5	KG	12	2015	300
25594	205	21971	1491	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4500
25595	205	21971	1491	454	Avocados	77	RWF	33	Unit	12	2015	250
25596	205	21971	1491	455	Cassava leaves	77	RWF	5	KG	9	2015	500
25597	205	21971	1491	456	Peas (fresh)	77	RWF	5	KG	12	2015	712.5
25598	205	21971	1491	457	Peas (dry)	77	RWF	5	KG	12	2015	1500
25599	205	21971	1491	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	400
25600	205	21973	1560	51	Maize	77	RWF	5	KG	10	2015	220
25601	205	21973	1560	52	Rice	77	RWF	5	KG	12	2015	638.5
25602	205	21973	1560	65	Sorghum	77	RWF	5	KG	12	2015	317
25603	205	21973	1560	68	Cassava	77	RWF	5	KG	12	2015	190
25604	205	21973	1560	74	Cassava flour	77	RWF	5	KG	12	2015	220
25605	205	21973	1560	76	Maize flour	77	RWF	5	KG	12	2015	558.5
25606	205	21973	1560	81	Milk	77	RWF	15	L	12	2015	367
25607	205	21973	1560	87	Sweet potatoes	77	RWF	5	KG	12	2015	78.5
25608	205	21973	1560	91	Chili (red)	77	RWF	5	KG	12	2015	425
25609	205	21973	1560	92	Eggs	77	RWF	33	Unit	12	2015	96.5
25610	205	21973	1560	105	Garlic	77	RWF	5	KG	12	2015	3375
25611	205	21973	1560	110	Onions (red)	77	RWF	5	KG	12	2015	300
25612	205	21973	1560	111	Onions (white)	77	RWF	5	KG	6	2015	800
25613	205	21973	1560	114	Tomatoes	77	RWF	5	KG	12	2015	146
25614	205	21973	1560	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	912.5
25615	205	21973	1560	140	Meat (pork)	77	RWF	5	KG	12	2015	1950
25616	205	21973	1560	141	Meat (beef)	77	RWF	5	KG	12	2015	1900
25617	205	21973	1560	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	200
25618	205	21973	1560	166	Carrots	77	RWF	5	KG	11	2015	260
25619	205	21973	1560	181	Cabbage	77	RWF	5	KG	12	2015	58.5
25620	205	21973	1560	233	Cucumbers (greenhouse)	77	RWF	5	KG	6	2015	320
25621	205	21973	1560	241	Oranges (big size)	77	RWF	5	KG	12	2015	163.5
25622	205	21973	1560	248	Soybeans	77	RWF	5	KG	12	2015	584
25623	205	21973	1560	253	Sorghum flour	77	RWF	5	KG	12	2015	550
25624	205	21973	1560	254	Bananas	77	RWF	5	KG	12	2015	140
25625	205	21973	1560	262	Beans (dry)	77	RWF	5	KG	12	2015	423.5
25626	205	21973	1560	287	Livestock (cattle)	77	RWF	33	Unit	12	2015	212500
25627	205	21973	1560	292	Peppers (green)	77	RWF	5	KG	12	2015	340
25628	205	21973	1560	381	Rice (imported, Tanzanian)	77	RWF	5	KG	10	2015	1900
25629	205	21973	1560	383	Livestock (Goat)	77	RWF	33	Unit	12	2015	26250
25630	205	21973	1560	390	Livestock (Sheep)	77	RWF	33	Unit	12	2015	20500
25631	205	21973	1560	408	Papaya	77	RWF	5	KG	6	2015	175
25632	205	21973	1560	411	Mangoes	77	RWF	5	KG	11	2015	266.5
25633	205	21973	1560	422	Livestock (pig)	77	RWF	33	Unit	12	2015	130000
25634	205	21973	1560	434	Eggplants	77	RWF	5	KG	12	2015	85
25635	205	21973	1560	446	Charcoal	77	RWF	31	Sack	6	2015	5500
25636	205	21973	1560	447	Passion fruit	77	RWF	5	KG	6	2015	650
25637	205	21973	1560	450	Zucchini	77	RWF	5	KG	6	2015	137
25638	205	21973	1560	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4750
25639	205	21973	1560	454	Avocados	77	RWF	33	Unit	12	2015	206.5
25640	205	21973	1560	455	Cassava leaves	77	RWF	5	KG	6	2015	260
25641	205	21973	1560	456	Peas (fresh)	77	RWF	5	KG	6	2015	1100
25642	205	21973	1560	457	Peas (dry)	77	RWF	5	KG	12	2015	641.5
25643	205	21973	1560	458	Beans (green, fresh)	77	RWF	5	KG	6	2015	317
25644	205	21969	1561	51	Maize	77	RWF	5	KG	12	2015	300
25645	205	21969	1561	52	Rice	77	RWF	5	KG	12	2015	650
25646	205	21969	1561	65	Sorghum	77	RWF	5	KG	11	2015	300
25647	205	21969	1561	74	Cassava flour	77	RWF	5	KG	12	2015	400
25648	205	21969	1561	76	Maize flour	77	RWF	5	KG	12	2015	350
25649	205	21969	1561	77	Maize flour (imported)	77	RWF	5	KG	11	2015	800
25650	205	21969	1561	81	Milk	77	RWF	15	L	12	2015	200
25651	205	21969	1561	87	Sweet potatoes	77	RWF	5	KG	12	2015	250
25652	205	21969	1561	91	Chili (red)	77	RWF	5	KG	12	2015	2000
25653	205	21969	1561	92	Eggs	77	RWF	33	Unit	12	2015	100
25654	205	21969	1561	105	Garlic	77	RWF	5	KG	12	2015	2749.5
25655	205	21969	1561	110	Onions (red)	77	RWF	5	KG	12	2015	450
25656	205	21969	1561	111	Onions (white)	77	RWF	5	KG	8	2015	1050
25657	205	21969	1561	114	Tomatoes	77	RWF	5	KG	12	2015	191
25658	205	21969	1561	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	916.5
25659	205	21969	1561	141	Meat (beef)	77	RWF	5	KG	12	2015	1666
25660	205	21969	1561	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	206
25661	205	21969	1561	166	Carrots	77	RWF	5	KG	12	2015	249.5
25662	205	21969	1561	181	Cabbage	77	RWF	5	KG	12	2015	150
25663	205	21969	1561	241	Oranges (big size)	77	RWF	5	KG	12	2015	600
25664	205	21969	1561	248	Soybeans	77	RWF	5	KG	12	2015	450
25665	205	21969	1561	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	800
25666	205	21969	1561	253	Sorghum flour	77	RWF	5	KG	12	2015	700
25667	205	21969	1561	254	Bananas	77	RWF	5	KG	12	2015	126.5
25668	205	21969	1561	262	Beans (dry)	77	RWF	5	KG	12	2015	375
25669	205	21969	1561	263	Beans (fresh)	77	RWF	5	KG	11	2015	500
25670	205	21969	1561	292	Peppers (green)	77	RWF	5	KG	12	2015	495
25671	205	21969	1561	381	Rice (imported, Tanzanian)	77	RWF	5	KG	12	2015	1000
25672	205	21969	1561	390	Livestock (Sheep)	77	RWF	33	Unit	6	2015	5000
25673	205	21969	1561	407	Guava	77	RWF	5	KG	10	2015	400
25674	205	21969	1561	411	Mangoes	77	RWF	5	KG	12	2015	950
25675	205	21969	1561	434	Eggplants	77	RWF	5	KG	12	2015	233
25676	205	21969	1561	446	Charcoal	77	RWF	31	Sack	12	2015	6750
25677	205	21969	1561	447	Passion fruit	77	RWF	5	KG	12	2015	1200
25678	205	21969	1561	453	Livestock (hen)	77	RWF	33	Unit	12	2015	5500
25679	205	21969	1561	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	300
25680	205	21971	1562	51	Maize	77	RWF	5	KG	7	2015	265
25681	205	21971	1562	52	Rice	77	RWF	5	KG	12	2015	675
25682	205	21971	1562	58	Wheat flour	77	RWF	5	KG	12	2015	600
25683	205	21971	1562	65	Sorghum	77	RWF	5	KG	12	2015	320
25684	205	21971	1562	68	Cassava	77	RWF	5	KG	12	2015	250
25685	205	21971	1562	74	Cassava flour	77	RWF	5	KG	12	2015	325
25686	205	21971	1562	76	Maize flour	77	RWF	5	KG	12	2015	366
25687	205	21971	1562	87	Sweet potatoes	77	RWF	5	KG	12	2015	110
25688	205	21971	1562	91	Chili (red)	77	RWF	5	KG	12	2015	750
25689	205	21971	1562	92	Eggs	77	RWF	33	Unit	12	2015	110
25690	205	21971	1562	105	Garlic	77	RWF	5	KG	12	2015	3200
25691	205	21971	1562	110	Onions (red)	77	RWF	5	KG	12	2015	850
25692	205	21971	1562	114	Tomatoes	77	RWF	5	KG	12	2015	350
25693	205	21971	1562	119	Groundnuts (shelled)	77	RWF	5	KG	12	2015	1000
25694	205	21971	1562	141	Meat (beef)	77	RWF	5	KG	12	2015	2000
25695	205	21971	1562	148	Potatoes (Irish)	77	RWF	5	KG	12	2015	160
25696	205	21971	1562	166	Carrots	77	RWF	5	KG	12	2015	200
25697	205	21971	1562	181	Cabbage	77	RWF	5	KG	12	2015	173
25698	205	21971	1562	241	Oranges (big size)	77	RWF	5	KG	12	2015	500
25699	205	21971	1562	248	Soybeans	77	RWF	5	KG	12	2015	450
25700	205	21971	1562	251	Rice (imported, Indian)	77	RWF	5	KG	12	2015	700
25701	205	21971	1562	253	Sorghum flour	77	RWF	5	KG	12	2015	400
25702	205	21971	1562	254	Bananas	77	RWF	5	KG	12	2015	200
25703	205	21971	1562	262	Beans (dry)	77	RWF	5	KG	12	2015	500
25704	205	21971	1562	263	Beans (fresh)	77	RWF	5	KG	12	2015	500
25705	205	21971	1562	287	Livestock (cattle)	77	RWF	33	Unit	10	2015	163000
25706	205	21971	1562	292	Peppers (green)	77	RWF	5	KG	12	2015	700
25707	205	21971	1562	408	Papaya	77	RWF	5	KG	6	2015	400
25708	205	21971	1562	411	Mangoes	77	RWF	5	KG	12	2015	500
25709	205	21971	1562	434	Eggplants	77	RWF	5	KG	12	2015	325
25710	205	21971	1562	447	Passion fruit	77	RWF	5	KG	12	2015	800
25711	205	21971	1562	450	Zucchini	77	RWF	5	KG	7	2015	120
25712	205	21971	1562	453	Livestock (hen)	77	RWF	33	Unit	12	2015	4600
25713	205	21971	1562	454	Avocados	77	RWF	33	Unit	12	2015	180
25714	205	21971	1562	456	Peas (fresh)	77	RWF	5	KG	12	2015	800
25715	205	21971	1562	458	Beans (green, fresh)	77	RWF	5	KG	12	2015	300
25716	205	2587	1885	51	Maize	77	RWF	5	KG	5	2015	200
25717	205	2587	1885	52	Rice	77	RWF	5	KG	5	2015	650
25718	205	2587	1885	58	Wheat flour	77	RWF	5	KG	5	2015	600
25719	205	2587	1885	65	Sorghum	77	RWF	5	KG	5	2015	450
25720	205	2587	1885	74	Cassava flour	77	RWF	5	KG	5	2015	250
25721	205	2587	1885	76	Maize flour	77	RWF	5	KG	5	2015	500
25722	205	2587	1885	81	Milk	77	RWF	15	L	5	2015	300
25723	205	2587	1885	84	Wheat	77	RWF	5	KG	5	2015	500
25724	205	2587	1885	87	Sweet potatoes	77	RWF	5	KG	5	2015	200
25725	205	2587	1885	91	Chili (red)	77	RWF	5	KG	5	2015	1167
25726	205	2587	1885	92	Eggs	77	RWF	33	Unit	5	2015	90
25727	205	2587	1885	105	Garlic	77	RWF	5	KG	5	2015	2367
25728	205	2587	1885	110	Onions (red)	77	RWF	5	KG	5	2015	767
25729	205	2587	1885	111	Onions (white)	77	RWF	5	KG	5	2015	650
25730	205	2587	1885	114	Tomatoes	77	RWF	5	KG	5	2015	700
25731	205	2587	1885	119	Groundnuts (shelled)	77	RWF	5	KG	5	2015	1100
25732	205	2587	1885	148	Potatoes (Irish)	77	RWF	5	KG	5	2015	190
25733	205	2587	1885	166	Carrots	77	RWF	5	KG	5	2015	433
25734	205	2587	1885	181	Cabbage	77	RWF	5	KG	5	2015	77
25735	205	2587	1885	183	Meat (mutton)	77	RWF	5	KG	5	2015	2133
25736	205	2587	1885	229	Apples (red)	77	RWF	5	KG	5	2015	2400
25737	205	2587	1885	231	Cauliflower	77	RWF	5	KG	5	2015	400
25738	205	2587	1885	233	Cucumbers (greenhouse)	77	RWF	5	KG	5	2015	400
25739	205	2587	1885	241	Oranges (big size)	77	RWF	5	KG	5	2015	533
25740	205	2587	1885	248	Soybeans	77	RWF	5	KG	5	2015	500
25741	205	2587	1885	251	Rice (imported, Indian)	77	RWF	5	KG	5	2015	750
25742	205	2587	1885	253	Sorghum flour	77	RWF	5	KG	5	2015	500
25743	205	2587	1885	254	Bananas	77	RWF	5	KG	5	2015	183
25744	205	2587	1885	262	Beans (dry)	77	RWF	5	KG	5	2015	450
25745	205	2587	1885	263	Beans (fresh)	77	RWF	5	KG	5	2015	667
25746	205	2587	1885	292	Peppers (green)	77	RWF	5	KG	5	2015	533
25747	205	2587	1885	381	Rice (imported, Tanzanian)	77	RWF	5	KG	5	2015	1000
25748	205	2587	1885	404	Spinach	77	RWF	5	KG	5	2015	200
25749	205	2587	1885	408	Papaya	77	RWF	5	KG	5	2015	1000
25750	205	2587	1885	411	Mangoes	77	RWF	5	KG	5	2015	600
25751	205	2587	1885	434	Eggplants	77	RWF	5	KG	5	2015	167
25752	205	2587	1885	446	Charcoal	77	RWF	31	Sack	5	2015	6633
25753	205	2587	1885	447	Passion fruit	77	RWF	5	KG	5	2015	1000
25754	205	2587	1885	450	Zucchini	77	RWF	5	KG	5	2015	300
25755	205	2587	1885	451	Meat (goat)	77	RWF	5	KG	5	2015	3167
25756	205	2587	1885	453	Livestock (hen)	77	RWF	33	Unit	5	2015	4500
25757	205	2587	1885	454	Avocados	77	RWF	33	Unit	5	2015	267
25758	205	2587	1885	455	Cassava leaves	77	RWF	5	KG	5	2015	317
25759	205	2587	1885	456	Peas (fresh)	77	RWF	5	KG	5	2015	1233
25760	205	2587	1885	457	Peas (dry)	77	RWF	5	KG	5	2015	967
25761	205	2587	1885	458	Beans (green, fresh)	77	RWF	5	KG	5	2015	333
25762	217	2643	405	56	Maize (local)	26	XOF	5	KG	2	2016	212
25763	217	2643	405	64	Rice (imported)	26	XOF	5	KG	2	2016	275
25764	217	2643	405	65	Sorghum	26	XOF	5	KG	2	2016	212
25765	217	2643	405	73	Millet	26	XOF	5	KG	2	2016	212
25766	217	47585	406	56	Maize (local)	26	XOF	5	KG	1	2016	200
25767	217	47585	406	64	Rice (imported)	26	XOF	5	KG	1	2016	250
25768	217	47585	406	65	Sorghum	26	XOF	5	KG	1	2016	225
25769	217	47585	406	71	Rice (local)	26	XOF	5	KG	1	2016	300
25770	217	47585	406	73	Millet	26	XOF	5	KG	1	2016	160
25771	217	47585	406	158	Maize (imported)	26	XOF	5	KG	1	2016	200
25772	217	2645	407	56	Maize (local)	26	XOF	5	KG	2	2016	250
25773	217	2645	407	64	Rice (imported)	26	XOF	5	KG	2	2016	285
25774	217	2645	407	65	Sorghum	26	XOF	5	KG	2	2016	275
25775	217	2645	407	73	Millet	26	XOF	5	KG	2	2016	250
25776	217	2636	408	56	Maize (local)	26	XOF	5	KG	2	2016	225
25777	217	2636	408	64	Rice (imported)	26	XOF	5	KG	2	2016	270
25778	217	2636	408	65	Sorghum	26	XOF	5	KG	2	2016	225
25779	217	2636	408	73	Millet	26	XOF	5	KG	2	2016	221
25780	217	2636	408	158	Maize (imported)	26	XOF	5	KG	2	2016	220
25781	217	47589	409	56	Maize (local)	26	XOF	5	KG	4	2013	275
25782	217	47589	409	64	Rice (imported)	26	XOF	5	KG	4	2013	300
25783	217	47589	409	65	Sorghum	26	XOF	5	KG	4	2013	275
25784	217	47589	409	71	Rice (local)	26	XOF	5	KG	4	2013	250
25785	217	47589	409	73	Millet	26	XOF	5	KG	4	2013	300
25786	217	47589	409	158	Maize (imported)	26	XOF	5	KG	6	2011	200
25787	217	2636	410	56	Maize (local)	26	XOF	5	KG	2	2011	186.667000000000002
25788	217	2636	410	64	Rice (imported)	26	XOF	5	KG	2	2011	302
25789	217	2636	410	73	Millet	26	XOF	5	KG	2	2011	182.5
25790	217	47586	411	56	Maize (local)	26	XOF	5	KG	2	2016	225
25791	217	47586	411	64	Rice (imported)	26	XOF	5	KG	2	2016	270
25792	217	47586	411	65	Sorghum	26	XOF	5	KG	1	2016	180
25793	217	47586	411	73	Millet	26	XOF	5	KG	2	2016	175
25794	217	47586	411	158	Maize (imported)	26	XOF	5	KG	10	2015	225
25795	217	2640	412	56	Maize (local)	26	XOF	5	KG	2	2016	225
25796	217	2640	412	64	Rice (imported)	26	XOF	5	KG	2	2016	275
25797	217	2640	412	65	Sorghum	26	XOF	5	KG	2	2016	250
25798	217	2640	412	71	Rice (local)	26	XOF	5	KG	1	2016	375
25799	217	2640	412	73	Millet	26	XOF	5	KG	2	2016	250
25800	217	2640	412	158	Maize (imported)	26	XOF	5	KG	1	2014	200
25801	217	47585	413	56	Maize (local)	26	XOF	5	KG	2	2016	200
25802	217	47585	413	64	Rice (imported)	26	XOF	5	KG	2	2016	250
25803	217	47585	413	65	Sorghum	26	XOF	5	KG	2	2016	225
25804	217	47585	413	71	Rice (local)	26	XOF	5	KG	2	2016	300
25805	217	47585	413	73	Millet	26	XOF	5	KG	2	2016	160
25806	217	47585	413	158	Maize (imported)	26	XOF	5	KG	2	2016	200
25807	217	47586	414	56	Maize (local)	26	XOF	5	KG	2	2016	200
25808	217	47586	414	64	Rice (imported)	26	XOF	5	KG	2	2016	270
25809	217	47586	414	65	Sorghum	26	XOF	5	KG	2	2016	225
25810	217	47586	414	73	Millet	26	XOF	5	KG	2	2016	225
25811	217	47586	414	158	Maize (imported)	26	XOF	5	KG	12	2015	200
25812	217	47586	415	56	Maize (local)	26	XOF	5	KG	2	2016	170
25813	217	47586	415	64	Rice (imported)	26	XOF	5	KG	2	2016	260
25814	217	47586	415	65	Sorghum	26	XOF	5	KG	2	2016	150
25815	217	47586	415	73	Millet	26	XOF	5	KG	2	2016	150
25816	217	47586	415	158	Maize (imported)	26	XOF	5	KG	2	2015	200
25817	217	47587	416	56	Maize (local)	26	XOF	5	KG	2	2016	180
25818	217	47587	416	64	Rice (imported)	26	XOF	5	KG	2	2016	270
25819	217	47587	416	65	Sorghum	26	XOF	5	KG	2	2016	190
25820	217	47587	416	71	Rice (local)	26	XOF	5	KG	2	2016	250
25821	217	47587	416	73	Millet	26	XOF	5	KG	2	2016	180
25822	217	47587	416	158	Maize (imported)	26	XOF	5	KG	2	2016	225
25823	217	1378	417	56	Maize (local)	26	XOF	5	KG	2	2016	160
25824	217	1378	417	64	Rice (imported)	26	XOF	5	KG	2	2016	295
25825	217	1378	417	65	Sorghum	26	XOF	5	KG	2	2016	171
25826	217	1378	417	71	Rice (local)	26	XOF	5	KG	2	2016	272
25827	217	1378	417	73	Millet	26	XOF	5	KG	2	2016	144
25828	217	2639	418	56	Maize (local)	26	XOF	5	KG	2	2016	176
25829	217	2639	418	64	Rice (imported)	26	XOF	5	KG	2	2016	267
25830	217	2639	418	65	Sorghum	26	XOF	5	KG	2	2016	220
25831	217	2639	418	71	Rice (local)	26	XOF	5	KG	2	2016	290
25832	217	2639	418	73	Millet	26	XOF	5	KG	2	2016	150
25833	217	2639	418	158	Maize (imported)	26	XOF	5	KG	2	2016	170
25834	217	1374	419	56	Maize (local)	26	XOF	5	KG	2	2016	200
25835	217	1374	419	64	Rice (imported)	26	XOF	5	KG	2	2016	280
25836	217	1374	419	65	Sorghum	26	XOF	5	KG	2	2016	300
25837	217	1374	419	73	Millet	26	XOF	5	KG	2	2016	266
25838	217	1374	419	158	Maize (imported)	26	XOF	5	KG	1	2016	225
25839	217	47586	420	56	Maize (local)	26	XOF	5	KG	9	2015	230
25840	217	47586	420	64	Rice (imported)	26	XOF	5	KG	2	2016	300
25841	217	47586	420	65	Sorghum	26	XOF	5	KG	2	2016	145
25842	217	47586	420	71	Rice (local)	26	XOF	5	KG	2	2016	275
25843	217	47586	420	73	Millet	26	XOF	5	KG	2	2016	140
25844	217	47586	420	158	Maize (imported)	26	XOF	5	KG	8	2014	250
25845	217	2640	421	56	Maize (local)	26	XOF	5	KG	2	2016	175
25846	217	2640	421	64	Rice (imported)	26	XOF	5	KG	2	2016	275
25847	217	2640	421	65	Sorghum	26	XOF	5	KG	2	2016	212
25848	217	2640	421	71	Rice (local)	26	XOF	5	KG	2	2016	400
25849	217	2640	421	73	Millet	26	XOF	5	KG	2	2016	193
25850	217	1378	422	56	Maize (local)	26	XOF	5	KG	8	2012	222.5
25851	217	1378	422	64	Rice (imported)	26	XOF	5	KG	8	2012	300
25852	217	1378	422	65	Sorghum	26	XOF	5	KG	8	2012	255
25853	217	1378	422	73	Millet	26	XOF	5	KG	8	2012	210
25854	217	2643	423	56	Maize (local)	26	XOF	5	KG	2	2016	162
25855	217	2643	423	64	Rice (imported)	26	XOF	5	KG	2	2016	275
25856	217	2643	423	65	Sorghum	26	XOF	5	KG	2	2016	162
25857	217	2643	423	71	Rice (local)	26	XOF	5	KG	12	2015	250
25858	217	2643	423	73	Millet	26	XOF	5	KG	2	2016	162
25859	217	47587	424	56	Maize (local)	26	XOF	5	KG	2	2016	176
25860	217	47587	424	64	Rice (imported)	26	XOF	5	KG	2	2016	270
25861	217	47587	424	65	Sorghum	26	XOF	5	KG	2	2016	195
25862	217	47587	424	71	Rice (local)	26	XOF	5	KG	2	2016	250
25863	217	47587	424	73	Millet	26	XOF	5	KG	2	2016	186
25864	217	47587	424	158	Maize (imported)	26	XOF	5	KG	2	2016	225
25865	217	1378	425	56	Maize (local)	26	XOF	5	KG	2	2016	160
25866	217	1378	425	64	Rice (imported)	26	XOF	5	KG	2	2016	300
25867	217	1378	425	65	Sorghum	26	XOF	5	KG	2	2016	170
25868	217	1378	425	71	Rice (local)	26	XOF	5	KG	2	2016	275
25869	217	1378	425	73	Millet	26	XOF	5	KG	2	2016	140
25870	217	47588	426	64	Rice (imported)	26	XOF	5	KG	2	2011	312.5
25871	217	47588	426	73	Millet	26	XOF	5	KG	2	2011	197.5
25872	217	2644	427	56	Maize (local)	26	XOF	5	KG	2	2016	200
25873	217	2644	427	64	Rice (imported)	26	XOF	5	KG	2	2016	260
25874	217	2644	427	65	Sorghum	26	XOF	5	KG	2	2016	185
25875	217	2644	427	71	Rice (local)	26	XOF	5	KG	2	2016	230
25876	217	2644	427	73	Millet	26	XOF	5	KG	2	2016	140
25877	217	2644	427	158	Maize (imported)	26	XOF	5	KG	2	2016	225
25878	217	47586	428	56	Maize (local)	26	XOF	5	KG	1	2016	185
25879	217	47586	428	64	Rice (imported)	26	XOF	5	KG	1	2016	275
25880	217	47586	428	65	Sorghum	26	XOF	5	KG	1	2016	175
25881	217	47586	428	71	Rice (local)	26	XOF	5	KG	7	2015	250
25882	217	47586	428	73	Millet	26	XOF	5	KG	1	2016	150
25883	217	47586	428	158	Maize (imported)	26	XOF	5	KG	9	2015	200
25884	217	2643	429	56	Maize (local)	26	XOF	5	KG	2	2016	162
25885	217	2643	429	64	Rice (imported)	26	XOF	5	KG	2	2016	275
25886	217	2643	429	65	Sorghum	26	XOF	5	KG	2	2016	162
25887	217	2643	429	71	Rice (local)	26	XOF	5	KG	8	2014	275
25888	217	2643	429	73	Millet	26	XOF	5	KG	2	2016	162
25889	217	47589	430	56	Maize (local)	26	XOF	5	KG	2	2016	205
25890	217	47589	430	64	Rice (imported)	26	XOF	5	KG	2	2016	262
25891	217	47589	430	65	Sorghum	26	XOF	5	KG	2	2016	200
25892	217	47589	430	71	Rice (local)	26	XOF	5	KG	2	2016	250
25893	217	47589	430	73	Millet	26	XOF	5	KG	2	2016	200
25894	217	47589	430	158	Maize (imported)	26	XOF	5	KG	2	2016	200
25895	217	47587	431	56	Maize (local)	26	XOF	5	KG	2	2016	180
25896	217	47587	431	64	Rice (imported)	26	XOF	5	KG	2	2016	265
25897	217	47587	431	65	Sorghum	26	XOF	5	KG	3	2015	225
25898	217	47587	431	71	Rice (local)	26	XOF	5	KG	2	2016	240
25899	217	47587	431	73	Millet	26	XOF	5	KG	2	2016	180
25900	217	47587	431	158	Maize (imported)	26	XOF	5	KG	2	2016	215
25901	217	47585	432	56	Maize (local)	26	XOF	5	KG	2	2016	225
25902	217	47585	432	64	Rice (imported)	26	XOF	5	KG	2	2016	300
25903	217	47585	432	65	Sorghum	26	XOF	5	KG	2	2016	325
25904	217	47585	432	71	Rice (local)	26	XOF	5	KG	2	2016	275
25905	217	47585	432	73	Millet	26	XOF	5	KG	2	2016	150
25906	217	47585	432	158	Maize (imported)	26	XOF	5	KG	9	2015	250
25907	217	47588	433	56	Maize (local)	26	XOF	5	KG	2	2016	225
25908	217	47588	433	64	Rice (imported)	26	XOF	5	KG	2	2016	283
25909	217	47588	433	65	Sorghum	26	XOF	5	KG	2	2016	225
25910	217	47588	433	71	Rice (local)	26	XOF	5	KG	1	2016	275
25911	217	47588	433	73	Millet	26	XOF	5	KG	2	2016	241
25912	217	47588	433	158	Maize (imported)	26	XOF	5	KG	2	2016	225
25913	217	47588	434	56	Maize (local)	26	XOF	5	KG	2	2016	202
25914	217	47588	434	64	Rice (imported)	26	XOF	5	KG	2	2016	300
25915	217	47588	434	65	Sorghum	26	XOF	5	KG	2	2016	212
25916	217	47588	434	71	Rice (local)	26	XOF	5	KG	1	2016	300
25917	217	47588	434	73	Millet	26	XOF	5	KG	2	2016	225
25918	217	47588	434	158	Maize (imported)	26	XOF	5	KG	1	2016	250
25919	217	2645	435	56	Maize (local)	26	XOF	5	KG	6	2011	275
25920	217	2645	435	64	Rice (imported)	26	XOF	5	KG	10	2011	300
25921	217	2645	435	73	Millet	26	XOF	5	KG	10	2011	300
25922	217	47586	436	56	Maize (local)	26	XOF	5	KG	1	2016	200
25923	217	47586	436	64	Rice (imported)	26	XOF	5	KG	1	2016	270
25924	217	47586	436	65	Sorghum	26	XOF	5	KG	1	2016	210
25925	217	47586	436	73	Millet	26	XOF	5	KG	1	2016	165
25926	217	47586	436	158	Maize (imported)	26	XOF	5	KG	12	2015	200
25927	217	2639	437	56	Maize (local)	26	XOF	5	KG	2	2016	163
25928	217	2639	437	64	Rice (imported)	26	XOF	5	KG	2	2016	265
25929	217	2639	437	65	Sorghum	26	XOF	5	KG	1	2016	150
25930	217	2639	437	73	Millet	26	XOF	5	KG	2	2016	135
25931	217	47587	438	56	Maize (local)	26	XOF	5	KG	2	2016	180
25932	217	47587	438	64	Rice (imported)	26	XOF	5	KG	2	2016	270
25933	217	47587	438	65	Sorghum	26	XOF	5	KG	1	2016	235
25934	217	47587	438	71	Rice (local)	26	XOF	5	KG	1	2016	230
25935	217	47587	438	73	Millet	26	XOF	5	KG	2	2016	180
25936	217	47587	438	158	Maize (imported)	26	XOF	5	KG	2	2016	225
25937	217	2640	439	56	Maize (local)	26	XOF	5	KG	2	2016	175
25938	217	2640	439	64	Rice (imported)	26	XOF	5	KG	2	2016	275
25939	217	2640	439	65	Sorghum	26	XOF	5	KG	7	2015	200
25940	217	2640	439	73	Millet	26	XOF	5	KG	2	2016	200
25941	217	47589	440	56	Maize (local)	26	XOF	5	KG	1	2016	180
25942	217	47589	440	64	Rice (imported)	26	XOF	5	KG	2	2016	265
25943	217	47589	440	65	Sorghum	26	XOF	5	KG	2	2016	250
25944	217	47589	440	71	Rice (local)	26	XOF	5	KG	2	2016	251
25945	217	47589	440	73	Millet	26	XOF	5	KG	2	2016	203
25946	217	47589	440	158	Maize (imported)	26	XOF	5	KG	2	2016	213
25947	217	2643	441	56	Maize (local)	26	XOF	5	KG	2	2016	187
25948	217	2643	441	64	Rice (imported)	26	XOF	5	KG	2	2016	275
25949	217	2643	441	65	Sorghum	26	XOF	5	KG	2	2016	187
25950	217	2643	441	73	Millet	26	XOF	5	KG	2	2016	187
25951	217	2636	442	56	Maize (local)	26	XOF	5	KG	2	2016	225
25952	217	2636	442	64	Rice (imported)	26	XOF	5	KG	2	2016	270
25953	217	2636	442	65	Sorghum	26	XOF	5	KG	2	2016	225
25954	217	2636	442	71	Rice (local)	26	XOF	5	KG	1	2015	282.5
25955	217	2636	442	73	Millet	26	XOF	5	KG	2	2016	215
25956	217	2636	442	158	Maize (imported)	26	XOF	5	KG	2	2016	213
25957	217	2644	443	56	Maize (local)	26	XOF	5	KG	2	2016	198
25958	217	2644	443	64	Rice (imported)	26	XOF	5	KG	2	2016	260
25959	217	2644	443	65	Sorghum	26	XOF	5	KG	2	2016	210
25960	217	2644	443	71	Rice (local)	26	XOF	5	KG	2	2016	260
25961	217	2644	443	73	Millet	26	XOF	5	KG	2	2016	170
25962	217	2644	443	158	Maize (imported)	26	XOF	5	KG	2	2016	185
25963	217	47589	444	56	Maize (local)	26	XOF	5	KG	4	2013	275
25964	217	47589	444	64	Rice (imported)	26	XOF	5	KG	4	2013	300
25965	217	47589	444	65	Sorghum	26	XOF	5	KG	4	2013	275
25966	217	47589	444	71	Rice (local)	26	XOF	5	KG	4	2013	250
25967	217	47589	444	73	Millet	26	XOF	5	KG	4	2013	300
25968	217	47589	444	158	Maize (imported)	26	XOF	5	KG	7	2012	275
25969	217	2644	445	56	Maize (local)	26	XOF	5	KG	2	2016	200
25970	217	2644	445	64	Rice (imported)	26	XOF	5	KG	2	2016	260
25971	217	2644	445	71	Rice (local)	26	XOF	5	KG	2	2016	230
25972	217	2644	445	73	Millet	26	XOF	5	KG	2	2016	144
25973	217	2644	445	158	Maize (imported)	26	XOF	5	KG	2	2016	225
25974	217	47588	446	56	Maize (local)	26	XOF	5	KG	2	2016	180
25975	217	47588	446	64	Rice (imported)	26	XOF	5	KG	2	2016	300
25976	217	47588	446	65	Sorghum	26	XOF	5	KG	2	2016	200
25977	217	47588	446	71	Rice (local)	26	XOF	5	KG	1	2016	275
25978	217	47588	446	73	Millet	26	XOF	5	KG	2	2016	200
25979	217	47588	446	158	Maize (imported)	26	XOF	5	KG	1	2016	250
25980	217	2636	447	56	Maize (local)	26	XOF	5	KG	2	2016	220
25981	217	2636	447	64	Rice (imported)	26	XOF	5	KG	2	2016	270
25982	217	2636	447	65	Sorghum	26	XOF	5	KG	2	2016	225
25983	217	2636	447	71	Rice (local)	26	XOF	5	KG	1	2015	260
25984	217	2636	447	73	Millet	26	XOF	5	KG	2	2016	220
25985	217	2636	447	158	Maize (imported)	26	XOF	5	KG	2	2016	213
25986	217	47585	448	56	Maize (local)	26	XOF	5	KG	10	2015	230
25987	217	47585	448	64	Rice (imported)	26	XOF	5	KG	2	2016	250
25988	217	47585	448	65	Sorghum	26	XOF	5	KG	2	2016	200
25989	217	47585	448	71	Rice (local)	26	XOF	5	KG	2	2016	275
25990	217	47585	448	73	Millet	26	XOF	5	KG	2	2016	160
25991	217	47585	448	158	Maize (imported)	26	XOF	5	KG	2	2016	165
25992	217	2644	449	56	Maize (local)	26	XOF	5	KG	2	2016	200
25993	217	2644	449	64	Rice (imported)	26	XOF	5	KG	2	2016	265
25994	217	2644	449	65	Sorghum	26	XOF	5	KG	1	2016	200
25995	217	2644	449	71	Rice (local)	26	XOF	5	KG	2	2016	250
25996	217	2644	449	73	Millet	26	XOF	5	KG	2	2016	161
25997	217	2644	449	158	Maize (imported)	26	XOF	5	KG	2	2016	200
25998	217	2645	450	56	Maize (local)	26	XOF	5	KG	5	2011	243.332999999999998
25999	217	2645	450	64	Rice (imported)	26	XOF	5	KG	5	2011	300
26000	217	2645	450	65	Sorghum	26	XOF	5	KG	5	2011	233.332999999999998
26001	217	2645	450	73	Millet	26	XOF	5	KG	5	2011	208.332999999999998
26002	217	2639	451	56	Maize (local)	26	XOF	5	KG	2	2016	167
26003	217	2639	451	64	Rice (imported)	26	XOF	5	KG	2	2016	266
26004	217	2639	451	65	Sorghum	26	XOF	5	KG	1	2016	200
26005	217	2639	451	71	Rice (local)	26	XOF	5	KG	10	2015	240
26006	217	2639	451	73	Millet	26	XOF	5	KG	2	2016	131
26007	217	1376	452	56	Maize (local)	26	XOF	5	KG	2	2016	193
26008	217	1376	452	64	Rice (imported)	26	XOF	5	KG	2	2016	280
26009	217	1376	452	65	Sorghum	26	XOF	5	KG	2	2016	200
26010	217	1376	452	71	Rice (local)	26	XOF	5	KG	6	2015	270
26011	217	1376	452	73	Millet	26	XOF	5	KG	2	2016	193
26012	217	1378	453	56	Maize (local)	26	XOF	5	KG	8	2010	185
26013	217	1378	453	64	Rice (imported)	26	XOF	5	KG	8	2010	275
26014	217	1378	453	65	Sorghum	26	XOF	5	KG	8	2010	145
26015	217	1378	453	73	Millet	26	XOF	5	KG	8	2010	152.5
26016	217	2645	455	56	Maize (local)	26	XOF	5	KG	2	2016	250
26017	217	2645	455	64	Rice (imported)	26	XOF	5	KG	2	2016	280
26018	217	2645	455	65	Sorghum	26	XOF	5	KG	2	2016	275
26019	217	2645	455	73	Millet	26	XOF	5	KG	2	2016	250
26020	217	2636	457	56	Maize (local)	26	XOF	5	KG	2	2016	225
26021	217	2636	457	64	Rice (imported)	26	XOF	5	KG	2	2016	270
26022	217	2636	457	65	Sorghum	26	XOF	5	KG	2	2016	225
26023	217	2636	457	73	Millet	26	XOF	5	KG	2	2016	220
26024	217	2636	457	158	Maize (imported)	26	XOF	5	KG	2	2016	220
26025	217	2639	697	56	Maize (local)	26	XOF	5	KG	2	2016	166
26026	217	2639	697	64	Rice (imported)	26	XOF	5	KG	2	2016	260
26027	217	2639	697	65	Sorghum	26	XOF	5	KG	2	2016	170
26028	217	2639	697	71	Rice (local)	26	XOF	5	KG	12	2015	250
26029	217	2639	697	73	Millet	26	XOF	5	KG	2	2016	133
26030	217	2639	698	56	Maize (local)	26	XOF	5	KG	2	2016	162
26031	217	2639	698	64	Rice (imported)	26	XOF	5	KG	2	2016	300
26032	217	2639	698	65	Sorghum	26	XOF	5	KG	2	2016	172
26033	217	2639	698	71	Rice (local)	26	XOF	5	KG	2	2016	275
26034	217	2639	698	73	Millet	26	XOF	5	KG	2	2016	141
26035	217	2639	698	158	Maize (imported)	26	XOF	5	KG	7	2015	275
26036	217	2639	699	56	Maize (local)	26	XOF	5	KG	2	2016	155
26037	217	2639	699	64	Rice (imported)	26	XOF	5	KG	2	2016	300
26038	217	2639	699	65	Sorghum	26	XOF	5	KG	2	2016	165
26039	217	2639	699	71	Rice (local)	26	XOF	5	KG	2	2016	275
26040	217	2639	699	73	Millet	26	XOF	5	KG	2	2016	141
26041	217	47585	700	64	Rice (imported)	26	XOF	5	KG	3	2014	265
26042	217	47585	700	65	Sorghum	26	XOF	5	KG	3	2014	215
26043	217	47585	700	73	Millet	26	XOF	5	KG	3	2014	225
26044	217	47585	700	158	Maize (imported)	26	XOF	5	KG	3	2014	250
26045	217	1374	1542	56	Maize (local)	26	XOF	5	KG	2	2016	175
26046	217	1374	1542	64	Rice (imported)	26	XOF	5	KG	2	2016	300
26047	217	1374	1542	65	Sorghum	26	XOF	5	KG	3	2015	300
26048	217	1374	1542	73	Millet	26	XOF	5	KG	2	2016	200
26049	217	1374	1543	56	Maize (local)	26	XOF	5	KG	2	2016	250
26050	217	1374	1543	64	Rice (imported)	26	XOF	5	KG	2	2016	300
26051	217	1374	1543	65	Sorghum	26	XOF	5	KG	9	2015	300
26052	217	1374	1543	73	Millet	26	XOF	5	KG	2	2016	175
26053	217	47586	1544	56	Maize (local)	26	XOF	5	KG	2	2016	165
26054	217	47586	1544	64	Rice (imported)	26	XOF	5	KG	2	2016	291
26055	217	47586	1544	65	Sorghum	26	XOF	5	KG	2	2016	180
26056	217	47586	1544	71	Rice (local)	26	XOF	5	KG	2	2016	270
26057	217	47586	1544	73	Millet	26	XOF	5	KG	2	2016	146
26058	226	2705	1412	58	Wheat flour	81	Somaliland Shilling	5	KG	8	2015	5000
26059	226	2705	1412	64	Rice (imported)	81	Somaliland Shilling	5	KG	8	2015	5500
26060	226	2705	1412	67	Maize (white)	79	SOS	5	KG	2	2016	16000
26061	226	2705	1412	101	Oil (vegetable, imported)	81	Somaliland Shilling	15	L	8	2015	12000
26062	226	2705	1412	135	Sorghum (white)	81	Somaliland Shilling	5	KG	8	2015	5000
26063	226	2705	1412	282	Sorghum (red)	81	Somaliland Shilling	5	KG	8	2015	5000
26064	226	2705	1412	284	Fuel (diesel)	81	Somaliland Shilling	15	L	8	2015	7500
26065	226	2691	1413	58	Wheat flour	81	Somaliland Shilling	5	KG	8	2015	5500
26066	226	2691	1413	64	Rice (imported)	81	Somaliland Shilling	5	KG	8	2015	6000
26067	226	2691	1413	101	Oil (vegetable, imported)	81	Somaliland Shilling	15	L	8	2015	13000
26068	226	2691	1413	135	Sorghum (white)	81	Somaliland Shilling	5	KG	8	2015	4500
26069	226	2691	1413	282	Sorghum (red)	81	Somaliland Shilling	5	KG	8	2015	5000
26070	226	2691	1413	284	Fuel (diesel)	81	Somaliland Shilling	15	L	8	2015	7400
26071	226	2690	1414	58	Wheat flour	79	SOS	5	KG	2	2016	14500
26072	226	2690	1414	64	Rice (imported)	79	SOS	5	KG	2	2016	15000
26073	226	2690	1414	67	Maize (white)	79	SOS	5	KG	2	2016	19000
26074	226	2690	1414	101	Oil (vegetable, imported)	79	SOS	15	L	2	2016	32000
26075	226	2690	1414	135	Sorghum (white)	79	SOS	5	KG	10	2015	23000
26076	226	2690	1414	282	Sorghum (red)	79	SOS	5	KG	10	2015	23000
26077	226	2690	1414	284	Fuel (diesel)	79	SOS	15	L	10	2015	18400
26078	226	2704	1415	58	Wheat flour	81	Somaliland Shilling	5	KG	8	2015	5000
26079	226	2704	1415	64	Rice (imported)	81	Somaliland Shilling	5	KG	8	2015	6000
26080	226	2704	1415	67	Maize (white)	79	SOS	5	KG	12	2015	4200
26081	226	2704	1415	101	Oil (vegetable, imported)	81	Somaliland Shilling	15	L	8	2015	13000
26082	226	2704	1415	135	Sorghum (white)	81	Somaliland Shilling	5	KG	8	2015	5000
26083	226	2704	1415	282	Sorghum (red)	81	Somaliland Shilling	5	KG	8	2015	5000
26084	226	2704	1415	284	Fuel (diesel)	81	Somaliland Shilling	15	L	8	2015	7400
26085	226	2702	1416	58	Wheat flour	79	SOS	5	KG	8	2015	5500
26086	226	2702	1416	64	Rice (imported)	81	Somaliland Shilling	5	KG	6	2015	6000
26087	226	2702	1416	101	Oil (vegetable, imported)	81	Somaliland Shilling	15	L	6	2015	13500
26088	226	2702	1416	135	Sorghum (white)	81	Somaliland Shilling	5	KG	6	2015	5000
26089	226	2702	1416	282	Sorghum (red)	81	Somaliland Shilling	5	KG	6	2015	4500
26090	226	2702	1416	284	Fuel (diesel)	81	Somaliland Shilling	15	L	6	2015	7100
26091	226	2700	1417	58	Wheat flour	79	SOS	5	KG	2	2016	14750
26092	226	2700	1417	64	Rice (imported)	79	SOS	5	KG	2	2016	16000
26093	226	2700	1417	67	Maize (white)	79	SOS	5	KG	2	2016	14000
26094	226	2700	1417	101	Oil (vegetable, imported)	79	SOS	15	L	2	2016	31000
26095	226	2700	1417	135	Sorghum (white)	79	SOS	5	KG	10	2015	16000
26096	226	2700	1417	282	Sorghum (red)	79	SOS	5	KG	10	2015	15000
26097	226	2700	1417	284	Fuel (diesel)	79	SOS	15	L	2	2016	16000
26098	226	2701	1418	58	Wheat flour	79	SOS	5	KG	2	2016	14667
26099	226	2701	1418	64	Rice (imported)	79	SOS	5	KG	2	2016	15583
26100	226	2701	1418	67	Maize (white)	79	SOS	5	KG	2	2016	11417
26101	226	2701	1418	101	Oil (vegetable, imported)	79	SOS	15	L	2	2016	32600
26102	226	2701	1418	135	Sorghum (white)	79	SOS	5	KG	10	2015	15850
26103	226	2701	1418	282	Sorghum (red)	79	SOS	5	KG	10	2015	12350
26104	226	2701	1418	284	Fuel (diesel)	79	SOS	15	L	10	2015	20330
26105	226	2705	1419	58	Wheat flour	81	Somaliland Shilling	5	KG	8	2015	4000
26106	226	2705	1419	64	Rice (imported)	81	Somaliland Shilling	5	KG	8	2015	5000
26107	226	2705	1419	67	Maize (white)	79	SOS	5	KG	2	2016	4000
26108	226	2705	1419	101	Oil (vegetable, imported)	81	Somaliland Shilling	15	L	8	2015	11500
26109	226	2705	1419	135	Sorghum (white)	81	Somaliland Shilling	5	KG	8	2015	4000
26110	226	2705	1419	282	Sorghum (red)	81	Somaliland Shilling	5	KG	8	2015	3500
26111	226	2705	1419	284	Fuel (diesel)	81	Somaliland Shilling	15	L	8	2015	7500
26112	226	2690	1420	58	Wheat flour	79	SOS	5	KG	2	2016	16000
26113	226	2690	1420	64	Rice (imported)	79	SOS	5	KG	2	2016	15000
26114	226	2690	1420	67	Maize (white)	79	SOS	5	KG	2	2016	34000
26115	226	2690	1420	101	Oil (vegetable, imported)	79	SOS	15	L	2	2016	46000
26116	226	2690	1420	135	Sorghum (white)	79	SOS	5	KG	9	2015	30800
26117	226	2690	1420	282	Sorghum (red)	79	SOS	5	KG	9	2015	22000
26118	226	2690	1420	284	Fuel (diesel)	79	SOS	15	L	9	2015	22000
26119	226	2692	1421	58	Wheat flour	79	SOS	5	KG	2	2016	12585
26120	226	2692	1421	64	Rice (imported)	79	SOS	5	KG	2	2016	12400
26121	226	2692	1421	67	Maize (white)	79	SOS	5	KG	2	2016	6700
26122	226	2692	1421	101	Oil (vegetable, imported)	79	SOS	15	L	2	2016	22400
26123	226	2695	1894	64	Rice (imported)	79	SOS	5	KG	10	2015	15000
26124	226	2695	1894	101	Oil (vegetable, imported)	79	SOS	15	L	10	2015	28000
26125	226	2695	1894	135	Sorghum (white)	79	SOS	5	KG	10	2015	12500
26126	226	2695	1894	282	Sorghum (red)	79	SOS	5	KG	10	2015	12000
26127	226	2695	1894	284	Fuel (diesel)	79	SOS	15	L	10	2015	17000
26128	70001	\N	\N	284	Fuel (diesel)	83	SSP	15	L	12	2013	8.96429999999999971
26129	70001	\N	\N	285	Fuel (petrol-gasoline)	83	SSP	15	L	12	2013	10.25
26130	70001	2754	1384	58	Wheat flour	83	SSP	5	KG	2	2016	25
26131	70001	2754	1384	67	Maize (white)	83	SSP	47	3.5 KG	2	2016	40
26132	70001	2754	1384	68	Cassava	83	SSP	47	3.5 KG	2	2016	50
26133	70001	2754	1384	78	Beans (red)	83	SSP	5	KG	2	2016	45
26134	70001	2754	1384	96	Oil (vegetable)	83	SSP	15	L	2	2016	70
26135	70001	2754	1384	119	Groundnuts (shelled)	83	SSP	5	KG	2	2016	18
26136	70001	2754	1384	135	Sorghum (white)	83	SSP	47	3.5 KG	2	2016	46
26137	70001	2754	1384	146	Millet (white)	83	SSP	47	3.5 KG	2	2016	50
26138	70001	2754	1384	156	Sesame	83	SSP	47	3.5 KG	2	2016	81
26139	70001	2754	1384	284	Fuel (diesel)	83	SSP	15	L	2	2016	28
26140	70001	2754	1384	285	Fuel (petrol-gasoline)	83	SSP	15	L	2	2016	34
26141	70001	2747	1385	58	Wheat flour	83	SSP	5	KG	2	2016	41
26142	70001	2747	1385	67	Maize (white)	83	SSP	47	3.5 KG	10	2015	35
26143	70001	2747	1385	78	Beans (red)	83	SSP	5	KG	2	2016	34.7000000000000028
26144	70001	2747	1385	96	Oil (vegetable)	83	SSP	15	L	2	2016	50
26145	70001	2747	1385	119	Groundnuts (shelled)	83	SSP	5	KG	11	2015	38.2000000000000028
26146	70001	2747	1385	135	Sorghum (white)	83	SSP	47	3.5 KG	2	2016	32
26147	70001	2747	1385	146	Millet (white)	83	SSP	47	3.5 KG	12	2013	20
26148	70001	2747	1385	156	Sesame	83	SSP	47	3.5 KG	12	2013	20
26149	70001	2747	1385	284	Fuel (diesel)	83	SSP	15	L	12	2013	11
26150	70001	2747	1385	285	Fuel (petrol-gasoline)	83	SSP	15	L	12	2013	13
26151	70001	2751	1386	58	Wheat flour	83	SSP	5	KG	2	2016	30
26152	70001	2751	1386	67	Maize (white)	83	SSP	47	3.5 KG	9	2015	20
26153	70001	2751	1386	78	Beans (red)	83	SSP	5	KG	2	2016	38.7000000000000028
26154	70001	2751	1386	96	Oil (vegetable)	83	SSP	15	L	2	2016	50
26155	70001	2751	1386	119	Groundnuts (shelled)	83	SSP	5	KG	2	2016	38
26156	70001	2751	1386	135	Sorghum (white)	83	SSP	47	3.5 KG	2	2016	38
26157	70001	2751	1386	284	Fuel (diesel)	83	SSP	15	L	2	2016	29.5
26158	70001	2751	1386	285	Fuel (petrol-gasoline)	83	SSP	15	L	2	2016	29.5
26159	70001	2765	1387	58	Wheat flour	83	SSP	5	KG	2	2016	29
26160	70001	2765	1387	67	Maize (white)	83	SSP	47	3.5 KG	2	2016	40
26161	70001	2765	1387	78	Beans (red)	83	SSP	5	KG	2	2016	45
26162	70001	2765	1387	96	Oil (vegetable)	83	SSP	15	L	2	2016	30
26163	70001	2765	1387	119	Groundnuts (shelled)	83	SSP	5	KG	2	2016	20
26164	70001	2765	1387	135	Sorghum (white)	83	SSP	47	3.5 KG	2	2016	45
26165	70001	2765	1387	156	Sesame	83	SSP	47	3.5 KG	2	2016	90
26166	70001	2765	1387	284	Fuel (diesel)	83	SSP	15	L	2	2016	35
26167	70001	2765	1387	285	Fuel (petrol-gasoline)	83	SSP	15	L	2	2016	35
26168	70001	2748	1388	58	Wheat flour	83	SSP	5	KG	2	2016	46
26169	70001	2748	1388	67	Maize (white)	83	SSP	47	3.5 KG	2	2016	57.5
26170	70001	2748	1388	68	Cassava	83	SSP	47	3.5 KG	2	2016	112
26171	70001	2748	1388	78	Beans (red)	83	SSP	5	KG	2	2016	43.7000000000000028
26172	70001	2748	1388	96	Oil (vegetable)	83	SSP	15	L	2	2016	65
26173	70001	2748	1388	119	Groundnuts (shelled)	83	SSP	5	KG	2	2016	47.5
26174	70001	2748	1388	135	Sorghum (white)	83	SSP	47	3.5 KG	2	2016	56
26175	70001	2748	1388	146	Millet (white)	83	SSP	47	3.5 KG	2	2016	120
26176	70001	2748	1388	156	Sesame	83	SSP	47	3.5 KG	2	2016	51
26177	70001	2748	1388	284	Fuel (diesel)	83	SSP	15	L	2	2016	22
26178	70001	2748	1388	285	Fuel (petrol-gasoline)	83	SSP	15	L	2	2016	22
26179	70001	2748	1388	290	Cassava (dry)	83	SSP	47	3.5 KG	7	2014	13
26180	70001	37021	1389	58	Wheat flour	83	SSP	5	KG	2	2016	30
26181	70001	37021	1389	67	Maize (white)	83	SSP	47	3.5 KG	1	2016	38
26182	70001	37021	1389	78	Beans (red)	83	SSP	5	KG	2	2016	30
26183	70001	37021	1389	96	Oil (vegetable)	83	SSP	15	L	2	2016	50
26184	70001	37021	1389	119	Groundnuts (shelled)	83	SSP	5	KG	2	2016	30
26185	70001	37021	1389	135	Sorghum (white)	83	SSP	47	3.5 KG	2	2016	30
26186	70001	37021	1389	146	Millet (white)	83	SSP	47	3.5 KG	11	2012	30
26187	70001	37021	1389	156	Sesame	83	SSP	47	3.5 KG	4	2015	41
26188	70001	37021	1389	284	Fuel (diesel)	83	SSP	15	L	2	2016	35
26189	70001	37021	1389	285	Fuel (petrol-gasoline)	83	SSP	15	L	2	2016	35
26190	70001	2746	1390	58	Wheat flour	83	SSP	5	KG	1	2016	24
26191	70001	2746	1390	67	Maize (white)	83	SSP	47	3.5 KG	1	2016	23
26192	70001	2746	1390	78	Beans (red)	83	SSP	5	KG	1	2016	39
26193	70001	2746	1390	96	Oil (vegetable)	83	SSP	15	L	1	2016	35
26194	70001	2746	1390	119	Groundnuts (shelled)	83	SSP	5	KG	1	2016	20
26195	70001	2746	1390	135	Sorghum (white)	83	SSP	47	3.5 KG	1	2016	54
26196	70001	2746	1390	156	Sesame	83	SSP	47	3.5 KG	12	2015	40
26197	70001	2746	1390	284	Fuel (diesel)	83	SSP	15	L	1	2016	30
26198	70001	2746	1390	285	Fuel (petrol-gasoline)	83	SSP	15	L	1	2016	34
26199	70001	2747	1391	58	Wheat flour	83	SSP	5	KG	2	2016	40
26200	70001	2747	1391	67	Maize (white)	83	SSP	47	3.5 KG	2	2016	41
26201	70001	2747	1391	68	Cassava	83	SSP	47	3.5 KG	2	2016	33
26202	70001	2747	1391	78	Beans (red)	83	SSP	5	KG	2	2016	60
26203	70001	2747	1391	96	Oil (vegetable)	83	SSP	15	L	2	2016	50
26204	70001	2747	1391	119	Groundnuts (shelled)	83	SSP	5	KG	2	2016	35
26205	70001	2747	1391	135	Sorghum (white)	83	SSP	47	3.5 KG	2	2016	53.7000000000000028
26206	70001	2747	1391	146	Millet (white)	83	SSP	47	3.5 KG	2	2016	87.5
26207	70001	2747	1391	156	Sesame	83	SSP	47	3.5 KG	2	2016	97.5
26208	70001	2747	1391	284	Fuel (diesel)	83	SSP	15	L	2	2016	36
26209	70001	2747	1391	285	Fuel (petrol-gasoline)	83	SSP	15	L	2	2016	24
26210	70001	2747	1391	290	Cassava (dry)	83	SSP	47	3.5 KG	7	2014	10
26211	70001	2750	1786	67	Maize (white)	83	SSP	47	3.5 KG	1	2016	34
26212	70001	2750	1786	68	Cassava	83	SSP	47	3.5 KG	1	2016	30
26213	70001	2750	1786	78	Beans (red)	83	SSP	5	KG	1	2016	24
26214	70001	2750	1786	96	Oil (vegetable)	83	SSP	15	L	1	2016	52
26215	70001	2750	1786	119	Groundnuts (shelled)	83	SSP	5	KG	1	2016	41
26216	70001	2750	1786	135	Sorghum (white)	83	SSP	47	3.5 KG	1	2016	33
26217	70001	2750	1786	156	Sesame	83	SSP	47	3.5 KG	1	2016	90
26218	231	2737	360	58	Wheat flour	55	LKR	5	KG	7	2012	94.6700000000000017
26219	231	2737	360	157	Rice (red nadu)	55	LKR	5	KG	12	2011	60
26220	231	2737	361	58	Wheat flour	55	LKR	5	KG	7	2012	96
26221	231	2737	361	157	Rice (red nadu)	55	LKR	5	KG	7	2012	65
26222	231	2740	362	58	Wheat flour	55	LKR	5	KG	7	2012	80
26223	231	2740	362	157	Rice (red nadu)	55	LKR	5	KG	7	2012	59.2999999999999972
26224	231	2740	363	58	Wheat flour	55	LKR	5	KG	7	2012	82.6299999999999955
26225	231	2740	363	157	Rice (red nadu)	55	LKR	5	KG	7	2012	50
26226	231	2740	364	58	Wheat flour	55	LKR	5	KG	7	2012	90.6700000000000017
26227	231	2740	364	157	Rice (red nadu)	55	LKR	5	KG	7	2012	60
26228	231	2740	365	58	Wheat flour	55	LKR	5	KG	7	2012	92.5
26229	231	2740	365	157	Rice (red nadu)	55	LKR	5	KG	7	2012	57.5
26230	231	2737	366	58	Wheat flour	55	LKR	5	KG	7	2012	90
26231	231	2737	366	157	Rice (red nadu)	55	LKR	5	KG	7	2012	69.4000000000000057
26232	231	2740	367	58	Wheat flour	55	LKR	5	KG	7	2012	88.5
26233	231	2740	367	157	Rice (red nadu)	55	LKR	5	KG	7	2012	59.9699999999999989
26234	231	2744	368	58	Wheat flour	55	LKR	5	KG	1	2016	93.6700000000000017
26235	231	2744	368	97	Sugar	55	LKR	5	KG	1	2016	96.7999999999999972
26236	231	2744	368	157	Rice (red nadu)	55	LKR	5	KG	7	2012	60.3699999999999974
26237	231	2744	368	162	Rice (long grain)	55	LKR	5	KG	1	2016	86.2800000000000011
26238	231	2744	368	284	Fuel (diesel)	55	LKR	15	L	1	2016	95
26239	231	2744	368	285	Fuel (petrol-gasoline)	55	LKR	15	L	1	2016	117
26240	231	\N	\N	58	Wheat flour	55	LKR	5	KG	9	2013	98.2000000000000028
26241	231	\N	\N	97	Sugar	55	LKR	5	KG	9	2013	103.200000000000003
26242	231	\N	\N	157	Rice (red nadu)	55	LKR	5	KG	9	2013	62.5
26243	231	\N	\N	162	Rice (long grain)	55	LKR	5	KG	9	2014	82.1500000000000057
26244	231	\N	\N	284	Fuel (diesel)	55	LKR	15	L	9	2014	118
26245	231	\N	\N	285	Fuel (petrol-gasoline)	55	LKR	15	L	9	2014	157
26246	999	267	975	58	Wheat flour	73	NIS	44	60 KG	2	2016	150.969999999999999
26247	999	267	975	94	Meat (chicken)	73	NIS	5	KG	2	2016	16.0899999999999999
26248	999	267	975	97	Sugar	73	NIS	5	KG	2	2016	3.41000000000000014
26249	999	267	975	108	Lentils	73	NIS	5	KG	2	2016	7.41000000000000014
26250	999	267	975	141	Meat (beef)	73	NIS	5	KG	5	2015	54.3999999999999986
26251	999	267	975	185	Salt	73	NIS	5	KG	2	2016	1.71999999999999997
26252	999	267	975	227	Rice (small grain, imported)	73	NIS	43	25 KG	2	2016	133.409999999999997
26253	999	267	975	229	Apples (red)	73	NIS	5	KG	2	2016	6.33999999999999986
26254	999	267	975	230	Bananas (medium size)	73	NIS	5	KG	2	2016	5.12000000000000011
26255	999	267	975	231	Cauliflower	73	NIS	5	KG	2	2016	2.47999999999999998
26256	999	267	975	233	Cucumbers (greenhouse)	73	NIS	5	KG	2	2016	4.51999999999999957
26257	999	267	975	234	Fish (red snapper)	73	NIS	5	KG	9	2012	14.4792000000000005
26258	999	267	975	236	Meat (goat, with bones)	73	NIS	5	KG	2	2016	76.5999999999999943
26259	999	267	975	238	Milk (powder)	73	NIS	46	1.8 KG	2	2016	97.269999999999996
26260	999	267	975	239	Oil (olive)	73	NIS	5	KG	2	2016	28.0199999999999996
26261	999	267	975	240	Onions (dry, local)	73	NIS	5	KG	2	2016	3.79999999999999982
26262	999	267	975	241	Oranges (big size)	73	NIS	5	KG	4	2015	4.04000000000000004
26263	999	267	975	242	Potatoes (medium size)	73	NIS	5	KG	2	2016	3.41000000000000014
26264	999	267	975	243	Tomatoes (greenhouse)	73	NIS	5	KG	2	2016	3.45999999999999996
26265	999	267	975	244	Chickpeas	73	NIS	5	KG	2	2016	10.0899999999999999
26266	999	267	975	285	Fuel (petrol-gasoline)	73	NIS	15	L	2	2016	5.61000000000000032
26267	999	91	976	94	Meat (chicken)	73	NIS	5	KG	2	2016	13.5
26268	999	91	976	97	Sugar	73	NIS	5	KG	2	2016	3.5
26269	999	91	976	108	Lentils	73	NIS	5	KG	2	2016	5
26270	999	91	976	141	Meat (beef)	73	NIS	5	KG	5	2015	51.6700000000000017
26271	999	91	976	185	Salt	73	NIS	5	KG	2	2016	1.41999999999999993
26272	999	91	976	227	Rice (small grain, imported)	73	NIS	43	25 KG	2	2016	147.5
26273	999	91	976	229	Apples (red)	73	NIS	5	KG	2	2016	4.95999999999999996
26274	999	91	976	230	Bananas (medium size)	73	NIS	5	KG	2	2016	4.87999999999999989
26275	999	91	976	231	Cauliflower	73	NIS	5	KG	2	2016	1.93999999999999995
26276	999	91	976	233	Cucumbers (greenhouse)	73	NIS	5	KG	2	2016	2.10000000000000009
26277	999	91	976	234	Fish (red snapper)	73	NIS	5	KG	9	2012	12.9443999999999999
26278	999	91	976	236	Meat (goat, with bones)	73	NIS	5	KG	2	2016	70
26279	999	91	976	238	Milk (powder)	73	NIS	46	1.8 KG	2	2016	95
26280	999	91	976	239	Oil (olive)	73	NIS	5	KG	2	2016	37.3299999999999983
26281	999	91	976	240	Onions (dry, local)	73	NIS	5	KG	2	2016	2.70999999999999996
26282	999	91	976	241	Oranges (big size)	73	NIS	5	KG	4	2015	4
26283	999	91	976	242	Potatoes (medium size)	73	NIS	5	KG	2	2016	1.65999999999999992
26284	999	91	976	243	Tomatoes (greenhouse)	73	NIS	5	KG	2	2016	2.41000000000000014
26285	999	91	976	244	Chickpeas	73	NIS	5	KG	2	2016	6.91999999999999993
26286	999	91	976	285	Fuel (petrol-gasoline)	73	NIS	15	L	2	2016	5.61000000000000032
26287	999	91	976	366	Wheat flour (locally processed)	73	NIS	22	50 KG	2	2016	85
26288	40764	2757	1025	65	Sorghum	75	SDG	48	3 KG	3	2016	15
26289	40764	2757	1025	73	Millet	75	SDG	47	3.5 KG	3	2016	16.25
26290	40764	2757	1025	84	Wheat	75	SDG	48	3 KG	10	2009	2
26291	40764	2757	1025	249	Sorghum (food aid)	75	SDG	48	3 KG	3	2016	14.25
26292	40764	2749	1026	65	Sorghum	75	SDG	48	3 KG	3	2016	9.5
26293	40764	2749	1026	73	Millet	75	SDG	47	3.5 KG	3	2016	15
26294	40764	2749	1026	84	Wheat	75	SDG	48	3 KG	12	2009	4.16999999999999993
26295	40764	2764	1027	65	Sorghum	75	SDG	48	3 KG	3	2016	16
26296	40764	2764	1027	73	Millet	75	SDG	47	3.5 KG	3	2016	18
26297	40764	2764	1027	84	Wheat	75	SDG	48	3 KG	12	2009	6.5
26298	40764	2764	1027	249	Sorghum (food aid)	75	SDG	48	3 KG	3	2016	13.25
26299	40764	2769	1028	65	Sorghum	75	SDG	48	3 KG	3	2016	8.34999999999999964
26300	40764	2769	1028	73	Millet	75	SDG	47	3.5 KG	3	2016	10.0999999999999996
26301	40764	2769	1028	84	Wheat	75	SDG	48	3 KG	6	2009	2.66999999999999993
26302	40764	2769	1028	249	Sorghum (food aid)	75	SDG	48	3 KG	3	2016	8.30000000000000071
26303	40764	2756	1029	65	Sorghum	75	SDG	48	3 KG	3	2016	10.25
26304	40764	2756	1029	73	Millet	75	SDG	47	3.5 KG	3	2016	15.25
26305	40764	2756	1029	84	Wheat	75	SDG	48	3 KG	12	2009	3.73499999999999988
26306	40764	2763	1030	65	Sorghum	75	SDG	48	3 KG	3	2016	10
26307	40764	2763	1030	73	Millet	75	SDG	47	3.5 KG	3	2016	20
26308	40764	2763	1030	84	Wheat	75	SDG	48	3 KG	12	2009	5.75
26309	40764	2763	1030	249	Sorghum (food aid)	75	SDG	48	3 KG	9	2015	8
26310	40764	2752	1031	65	Sorghum	75	SDG	48	3 KG	3	2016	12.75
26311	40764	2752	1031	73	Millet	75	SDG	47	3.5 KG	3	2016	20.25
26312	40764	2752	1031	84	Wheat	75	SDG	48	3 KG	12	2009	3.66999999999999993
26313	40764	2752	1031	249	Sorghum (food aid)	75	SDG	48	3 KG	10	2015	10
26314	40764	2770	1032	65	Sorghum	75	SDG	48	3 KG	3	2016	11
26315	40764	2770	1032	73	Millet	75	SDG	47	3.5 KG	3	2016	18
26316	40764	2770	1032	84	Wheat	75	SDG	48	3 KG	12	2009	4
26317	40764	2770	1032	249	Sorghum (food aid)	75	SDG	48	3 KG	5	2015	6.25
26318	40764	2764	1033	65	Sorghum	75	SDG	48	3 KG	3	2016	13.25
26319	40764	2764	1033	73	Millet	75	SDG	47	3.5 KG	3	2016	17
26320	40764	2764	1033	84	Wheat	75	SDG	48	3 KG	12	2009	6.66999999999999993
26321	40764	2764	1033	249	Sorghum (food aid)	75	SDG	48	3 KG	3	2016	12.25
26322	40764	40772	1034	65	Sorghum	75	SDG	48	3 KG	3	2016	12
26323	40764	40772	1034	73	Millet	75	SDG	47	3.5 KG	3	2016	18.5
26324	40764	40772	1034	84	Wheat	75	SDG	48	3 KG	12	2009	4
26325	40764	2767	1823	65	Sorghum	75	SDG	48	3 KG	3	2016	13
26326	40764	2767	1823	73	Millet	75	SDG	47	3.5 KG	3	2016	19
26327	40764	2769	1824	65	Sorghum	75	SDG	48	3 KG	3	2016	8
26328	40764	2769	1824	73	Millet	75	SDG	47	3.5 KG	3	2016	12.2599999999999998
26329	40764	2769	1824	249	Sorghum (food aid)	75	SDG	48	3 KG	3	2016	6.92999999999999972
26330	235	\N	\N	52	Rice	23	SZL	5	KG	2	2016	13.3399999999999999
26331	235	\N	\N	54	Maize meal	23	SZL	5	KG	2	2016	13.9000000000000004
26332	235	\N	\N	58	Wheat flour	23	SZL	5	KG	2	2016	12.7699999999999996
26333	235	\N	\N	67	Maize (white)	23	SZL	22	50 KG	2	2016	303.800000000000011
26334	235	\N	\N	184	Oil (sunflower)	23	SZL	38	750 ML	2	2016	17.4800000000000004
26335	235	\N	\N	185	Salt	23	SZL	5	KG	2	2016	5.28000000000000025
26336	235	\N	\N	214	Sugar (brown)	23	SZL	5	KG	2	2016	13.0099999999999998
26337	235	\N	\N	432	Beans (sugar) 	23	SZL	5	KG	2	2016	25.370000000000001
26338	238	2836	1112	52	Rice	78	SYP	5	KG	12	2015	239
26339	238	2836	1112	58	Wheat flour	78	SYP	5	KG	12	2015	185
26340	238	2836	1112	97	Sugar	78	SYP	5	KG	12	2015	256
26341	238	2836	1112	108	Lentils	78	SYP	5	KG	12	2015	448
26342	238	2836	1112	137	Oil	78	SYP	15	L	12	2015	490
26343	238	2836	1112	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1500
26344	238	2836	1112	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26345	238	2836	1112	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	100
26346	238	2836	1112	281	Tea	78	SYP	5	KG	12	2015	1840
26347	238	2836	1112	284	Fuel (diesel)	78	SYP	15	L	12	2015	200
26348	238	2836	1112	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	2000
26349	238	2836	1112	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	65020
26350	238	2837	1115	52	Rice	78	SYP	5	KG	12	2015	1600
26351	238	2837	1115	58	Wheat flour	78	SYP	5	KG	12	2015	2000
26352	238	2837	1115	97	Sugar	78	SYP	5	KG	12	2015	710
26353	238	2837	1115	108	Lentils	78	SYP	5	KG	12	2015	700
26354	238	2837	1115	137	Oil	78	SYP	15	L	12	2015	500
26355	238	2837	1115	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1450
26356	238	2837	1115	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	400
26357	238	2837	1115	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	600
26358	238	2837	1115	281	Tea	78	SYP	5	KG	12	2015	3720
26359	238	2837	1115	284	Fuel (diesel)	78	SYP	15	L	12	2015	210
26360	238	2837	1115	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	10000
26361	238	2837	1115	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	60650
26362	238	2837	1116	52	Rice	78	SYP	5	KG	4	2013	95
26363	238	2837	1116	97	Sugar	78	SYP	5	KG	4	2013	93.75
26364	238	2837	1116	108	Lentils	78	SYP	5	KG	4	2013	120
26365	238	2837	1116	137	Oil	78	SYP	15	L	4	2013	195
26366	238	2837	1116	179	Wheat flour (local)	78	SYP	5	KG	4	2013	125
26367	238	2837	1116	280	Bread (shop)	78	SYP	52	1.5 KG	4	2013	25
26368	238	2838	1118	52	Rice	78	SYP	5	KG	12	2015	380
26369	238	2838	1118	58	Wheat flour	78	SYP	5	KG	12	2015	159
26370	238	2838	1118	97	Sugar	78	SYP	5	KG	12	2015	240
26371	238	2838	1118	108	Lentils	78	SYP	5	KG	12	2015	340
26372	238	2838	1118	137	Oil	78	SYP	15	L	12	2015	480
26373	238	2838	1118	179	Wheat flour (local)	78	SYP	5	KG	8	2013	236.25
26374	238	2838	1118	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	700
26375	238	2838	1118	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26376	238	2838	1118	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	100
26377	238	2838	1118	281	Tea	78	SYP	5	KG	12	2015	2600
26378	238	2838	1118	284	Fuel (diesel)	78	SYP	15	L	12	2015	135
26379	238	2838	1118	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	2000
26380	238	2838	1118	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	60400
26381	238	2839	1121	52	Rice	78	SYP	5	KG	12	2015	1700
26382	238	2839	1121	58	Wheat flour	78	SYP	5	KG	12	2015	290
26383	238	2839	1121	97	Sugar	78	SYP	5	KG	12	2015	4833
26384	238	2839	1121	108	Lentils	78	SYP	5	KG	12	2015	7200
26385	238	2839	1121	137	Oil	78	SYP	15	L	12	2015	5875
26386	238	2839	1121	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1000
26387	238	2839	1121	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	150
26388	238	2839	1121	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	485
26389	238	2839	1121	281	Tea	78	SYP	5	KG	12	2015	30000
26390	238	2839	1121	284	Fuel (diesel)	78	SYP	15	L	12	2015	2850
26391	238	2839	1121	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	2450
26392	238	2839	1121	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	308750
26393	238	2841	1124	52	Rice	78	SYP	5	KG	12	2015	500
26394	238	2841	1124	58	Wheat flour	78	SYP	5	KG	12	2015	235
26395	238	2841	1124	97	Sugar	78	SYP	5	KG	12	2015	271
26396	238	2841	1124	108	Lentils	78	SYP	5	KG	12	2015	350
26397	238	2841	1124	137	Oil	78	SYP	15	L	12	2015	450
26398	238	2841	1124	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	600
26399	238	2841	1124	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26400	238	2841	1124	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	100
26401	238	2841	1124	281	Tea	78	SYP	5	KG	12	2015	2700
26402	238	2841	1124	284	Fuel (diesel)	78	SYP	15	L	12	2015	55
26403	238	2841	1124	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	4000
26404	238	2841	1124	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	40000
26405	238	2841	1125	52	Rice	78	SYP	5	KG	12	2015	450
26406	238	2841	1125	58	Wheat flour	78	SYP	5	KG	12	2015	160
26407	238	2841	1125	97	Sugar	78	SYP	5	KG	12	2015	283
26408	238	2841	1125	108	Lentils	78	SYP	5	KG	12	2015	275
26409	238	2841	1125	137	Oil	78	SYP	15	L	12	2015	450
26410	238	2841	1125	179	Wheat flour (local)	78	SYP	5	KG	8	2013	137.5
26411	238	2841	1125	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1000
26412	238	2841	1125	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26413	238	2841	1125	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	81
26414	238	2841	1125	281	Tea	78	SYP	5	KG	12	2015	2450
26415	238	2841	1125	284	Fuel (diesel)	78	SYP	15	L	12	2015	47
26416	238	2841	1125	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	2200
26417	238	2841	1125	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	60500
26418	238	2845	1127	52	Rice	78	SYP	5	KG	12	2015	375
26419	238	2845	1127	58	Wheat flour	78	SYP	5	KG	12	2015	150
26420	238	2845	1127	97	Sugar	78	SYP	5	KG	12	2015	300
26421	238	2845	1127	108	Lentils	78	SYP	5	KG	12	2015	400
26422	238	2845	1127	137	Oil	78	SYP	15	L	12	2015	400
26423	238	2845	1127	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1500
26424	238	2845	1127	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	85
26425	238	2845	1127	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	100
26426	238	2845	1127	281	Tea	78	SYP	5	KG	12	2015	2600
26427	238	2845	1127	284	Fuel (diesel)	78	SYP	15	L	12	2015	155
26428	238	2845	1127	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	6500
26429	238	2845	1127	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	50000
26430	238	2845	1129	52	Rice	78	SYP	5	KG	12	2015	385
26431	238	2845	1129	58	Wheat flour	78	SYP	5	KG	12	2015	140
26432	238	2845	1129	97	Sugar	78	SYP	5	KG	12	2015	190
26433	238	2845	1129	108	Lentils	78	SYP	5	KG	12	2015	375
26434	238	2845	1129	137	Oil	78	SYP	15	L	12	2015	400
26435	238	2845	1129	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1500
26436	238	2845	1129	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	100
26437	238	2845	1129	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	150
26438	238	2845	1129	281	Tea	78	SYP	5	KG	12	2015	2600
26439	238	2845	1129	284	Fuel (diesel)	78	SYP	15	L	12	2015	50
26440	238	2845	1129	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	4400
26441	238	2845	1129	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	47000
26442	238	2846	1130	52	Rice	78	SYP	5	KG	12	2015	350
26443	238	2846	1130	58	Wheat flour	78	SYP	5	KG	12	2015	176
26444	238	2846	1130	97	Sugar	78	SYP	5	KG	12	2015	246
26445	238	2846	1130	108	Lentils	78	SYP	5	KG	12	2015	452
26446	238	2846	1130	137	Oil	78	SYP	15	L	12	2015	409
26447	238	2846	1130	179	Wheat flour (local)	78	SYP	5	KG	8	2013	112.5
26448	238	2846	1130	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1000
26449	238	2846	1130	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26450	238	2846	1130	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	69
26451	238	2846	1130	281	Tea	78	SYP	5	KG	12	2015	1675
26452	238	2846	1130	284	Fuel (diesel)	78	SYP	15	L	12	2015	165
26453	238	2846	1130	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	2000
26454	238	2846	1130	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	67500
26455	238	2844	1133	52	Rice	78	SYP	5	KG	12	2015	350
26456	238	2844	1133	58	Wheat flour	78	SYP	5	KG	12	2015	165
26457	238	2844	1133	97	Sugar	78	SYP	5	KG	12	2015	220
26458	238	2844	1133	108	Lentils	78	SYP	5	KG	12	2015	416
26459	238	2844	1133	137	Oil	78	SYP	15	L	12	2015	400
26460	238	2844	1133	179	Wheat flour (local)	78	SYP	5	KG	8	2013	121.25
26461	238	2844	1133	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1080
26462	238	2844	1133	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26463	238	2844	1133	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	65
26464	238	2844	1133	281	Tea	78	SYP	5	KG	12	2015	1680
26465	238	2844	1133	284	Fuel (diesel)	78	SYP	15	L	12	2015	163
26466	238	2844	1133	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	2040
26467	238	2844	1133	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	59800
26468	238	2844	1134	52	Rice	78	SYP	5	KG	12	2015	350
26469	238	2844	1134	58	Wheat flour	78	SYP	5	KG	12	2015	165
26470	238	2844	1134	97	Sugar	78	SYP	5	KG	12	2015	225
26471	238	2844	1134	108	Lentils	78	SYP	5	KG	12	2015	406
26472	238	2844	1134	137	Oil	78	SYP	15	L	12	2015	400
26473	238	2844	1134	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1080
26474	238	2844	1134	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26475	238	2844	1134	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	65
26476	238	2844	1134	281	Tea	78	SYP	5	KG	12	2015	1680
26477	238	2844	1134	284	Fuel (diesel)	78	SYP	15	L	12	2015	163
26478	238	2844	1134	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	2040
26479	238	2844	1134	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	59200
26480	238	2840	1136	52	Rice	78	SYP	5	KG	12	2015	170
26481	238	2840	1136	58	Wheat flour	78	SYP	5	KG	12	2015	161
26482	238	2840	1136	97	Sugar	78	SYP	5	KG	12	2015	220
26483	238	2840	1136	108	Lentils	78	SYP	5	KG	12	2015	414
26484	238	2840	1136	137	Oil	78	SYP	15	L	12	2015	418
26485	238	2840	1136	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1000
26486	238	2840	1136	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26487	238	2840	1136	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	65
26488	238	2840	1136	281	Tea	78	SYP	5	KG	12	2015	1600
26489	238	2840	1136	284	Fuel (diesel)	78	SYP	15	L	12	2015	135
26490	238	2840	1136	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	1800
26491	238	2840	1136	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	64200
26492	238	2840	1137	52	Rice	78	SYP	5	KG	12	2015	381
26493	238	2840	1137	58	Wheat flour	78	SYP	5	KG	12	2015	190
26494	238	2840	1137	97	Sugar	78	SYP	5	KG	12	2015	239
26495	238	2840	1137	108	Lentils	78	SYP	5	KG	12	2015	521
26496	238	2840	1137	137	Oil	78	SYP	15	L	12	2015	488
26497	238	2840	1137	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1125
26498	238	2840	1137	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26499	238	2840	1137	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	65
26500	238	2840	1137	281	Tea	78	SYP	5	KG	12	2015	1800
26501	238	2840	1137	284	Fuel (diesel)	78	SYP	15	L	12	2015	181
26502	238	2840	1137	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	2625
26503	238	2840	1137	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	58000
26504	238	2842	1139	52	Rice	78	SYP	5	KG	5	2015	232
26505	238	2842	1139	58	Wheat flour	78	SYP	5	KG	5	2015	135
26506	238	2842	1139	97	Sugar	78	SYP	5	KG	5	2015	156
26507	238	2842	1139	108	Lentils	78	SYP	5	KG	5	2015	300
26508	238	2842	1139	137	Oil	78	SYP	15	L	5	2015	359
26509	238	2842	1139	278	Bread (bakery)	78	SYP	52	1.5 KG	5	2015	35
26510	238	2842	1139	280	Bread (shop)	78	SYP	52	1.5 KG	5	2015	45
26511	238	2842	1139	281	Tea	78	SYP	5	KG	5	2015	1600
26512	238	2842	1139	284	Fuel (diesel)	78	SYP	15	L	5	2015	178
26513	238	2842	1139	341	Fuel (gas)	78	SYP	83	10 KG	5	2015	1700
26514	238	2834	1142	52	Rice	78	SYP	5	KG	4	2013	75
26515	238	2834	1142	66	Beans (white)	78	SYP	5	KG	5	2012	120
26516	238	2834	1142	97	Sugar	78	SYP	5	KG	4	2013	73.75
26517	238	2834	1142	108	Lentils	78	SYP	5	KG	4	2013	77
26518	238	2834	1142	137	Oil	78	SYP	15	L	4	2013	166.25
26519	238	2834	1142	179	Wheat flour (local)	78	SYP	5	KG	4	2013	68.5
26520	238	2834	1142	280	Bread (shop)	78	SYP	52	1.5 KG	4	2013	125
26521	238	2834	1142	281	Tea	78	SYP	5	KG	4	2013	521.25
26522	238	2834	1545	52	Rice	78	SYP	5	KG	12	2015	305
26523	238	2834	1545	58	Wheat flour	78	SYP	5	KG	12	2015	140
26524	238	2834	1545	97	Sugar	78	SYP	5	KG	12	2015	218
26525	238	2834	1545	108	Lentils	78	SYP	5	KG	12	2015	393
26526	238	2834	1545	137	Oil	78	SYP	15	L	12	2015	460
26527	238	2834	1545	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1000
26528	238	2834	1545	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26529	238	2834	1545	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	153
26530	238	2834	1545	281	Tea	78	SYP	5	KG	12	2015	1800
26531	238	2834	1545	284	Fuel (diesel)	78	SYP	15	L	12	2015	221
26532	238	2834	1545	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	1975
26533	238	2834	1545	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	68750
26534	238	2834	1546	52	Rice	78	SYP	5	KG	12	2015	350
26535	238	2834	1546	58	Wheat flour	78	SYP	5	KG	12	2015	148
26536	238	2834	1546	97	Sugar	78	SYP	5	KG	12	2015	236
26537	238	2834	1546	108	Lentils	78	SYP	5	KG	12	2015	400
26538	238	2834	1546	137	Oil	78	SYP	15	L	12	2015	375
26539	238	2834	1546	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1000
26540	238	2834	1546	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	114
26541	238	2834	1546	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	160
26542	238	2834	1546	281	Tea	78	SYP	5	KG	12	2015	1950
26543	238	2834	1546	284	Fuel (diesel)	78	SYP	15	L	12	2015	163
26544	238	2834	1546	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	5850
26545	238	2834	1546	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	50625
26546	238	2843	1547	52	Rice	78	SYP	5	KG	3	2015	108
26547	238	2843	1547	58	Wheat flour	78	SYP	5	KG	3	2015	103
26548	238	2843	1547	97	Sugar	78	SYP	5	KG	3	2015	120
26549	238	2843	1547	108	Lentils	78	SYP	5	KG	3	2015	190
26550	238	2843	1547	137	Oil	78	SYP	15	L	3	2015	265
26551	238	2843	1547	278	Bread (bakery)	78	SYP	52	1.5 KG	3	2015	77
26552	238	2843	1547	280	Bread (shop)	78	SYP	52	1.5 KG	1	2015	73
26553	238	2843	1547	281	Tea	78	SYP	5	KG	3	2015	1208
26554	238	2843	1547	284	Fuel (diesel)	78	SYP	15	L	1	2015	170
26555	238	2843	1547	341	Fuel (gas)	78	SYP	83	10 KG	3	2015	1783
26556	238	2839	1548	52	Rice	78	SYP	5	KG	12	2015	375
26557	238	2839	1548	58	Wheat flour	78	SYP	5	KG	12	2015	165
26558	238	2839	1548	97	Sugar	78	SYP	5	KG	12	2015	250
26559	238	2839	1548	108	Lentils	78	SYP	5	KG	12	2015	275
26560	238	2839	1548	137	Oil	78	SYP	15	L	12	2015	450
26561	238	2839	1548	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1000
26562	238	2839	1548	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	90
26563	238	2839	1548	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	90
26564	238	2839	1548	281	Tea	78	SYP	5	KG	12	2015	2400
26565	238	2839	1548	284	Fuel (diesel)	78	SYP	15	L	12	2015	200
26566	238	2839	1548	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	2500
26567	238	2839	1548	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	60000
26568	238	2837	1549	52	Rice	78	SYP	5	KG	12	2015	424
26569	238	2837	1549	58	Wheat flour	78	SYP	5	KG	12	2015	230
26570	238	2837	1549	97	Sugar	78	SYP	5	KG	12	2015	290
26571	238	2837	1549	108	Lentils	78	SYP	5	KG	12	2015	528
26572	238	2837	1549	137	Oil	78	SYP	15	L	12	2015	495
26573	238	2837	1549	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1500
26574	238	2837	1549	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26575	238	2837	1549	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	140
26576	238	2837	1549	281	Tea	78	SYP	5	KG	12	2015	2300
26577	238	2837	1549	284	Fuel (diesel)	78	SYP	15	L	12	2015	370
26578	238	2837	1549	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	6500
26579	238	2837	1549	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	74250
26580	238	2843	1550	52	Rice	78	SYP	5	KG	12	2014	225
26581	238	2843	1550	58	Wheat flour	78	SYP	5	KG	12	2014	100
26582	238	2843	1550	97	Sugar	78	SYP	5	KG	12	2014	125
26583	238	2843	1550	108	Lentils	78	SYP	5	KG	12	2014	125
26584	238	2843	1550	137	Oil	78	SYP	15	L	12	2014	200
26585	238	2843	1550	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2014	35
26586	238	2843	1550	280	Bread (shop)	78	SYP	52	1.5 KG	12	2014	45
26587	238	2843	1550	281	Tea	78	SYP	5	KG	12	2014	1200
26588	238	2843	1550	284	Fuel (diesel)	78	SYP	15	L	12	2014	100
26589	238	2843	1550	341	Fuel (gas)	78	SYP	83	10 KG	12	2014	1500
26590	238	2842	1551	52	Rice	78	SYP	5	KG	12	2015	348
26591	238	2842	1551	58	Wheat flour	78	SYP	5	KG	12	2015	174
26592	238	2842	1551	97	Sugar	78	SYP	5	KG	12	2015	229
26593	238	2842	1551	108	Lentils	78	SYP	5	KG	12	2015	363
26594	238	2842	1551	137	Oil	78	SYP	15	L	12	2015	496
26595	238	2842	1551	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1500
26596	238	2842	1551	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26597	238	2842	1551	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	60
26598	238	2842	1551	281	Tea	78	SYP	5	KG	12	2015	1800
26599	238	2842	1551	284	Fuel (diesel)	78	SYP	15	L	12	2015	180
26600	238	2842	1551	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	2500
26601	238	2842	1551	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	54125
26602	238	2846	1553	52	Rice	78	SYP	5	KG	12	2015	326
26603	238	2846	1553	58	Wheat flour	78	SYP	5	KG	12	2015	174
26604	238	2846	1553	97	Sugar	78	SYP	5	KG	12	2015	225
26605	238	2846	1553	108	Lentils	78	SYP	5	KG	12	2015	405
26606	238	2846	1553	137	Oil	78	SYP	15	L	12	2015	392
26607	238	2846	1553	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1500
26608	238	2846	1553	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26609	238	2846	1553	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	65
26610	238	2846	1553	281	Tea	78	SYP	5	KG	12	2015	1950
26611	238	2846	1553	284	Fuel (diesel)	78	SYP	15	L	12	2015	165
26612	238	2846	1553	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	2000
26613	238	2846	1553	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	63500
26614	238	2833	1554	52	Rice	78	SYP	5	KG	6	2014	190
26615	238	2833	1554	97	Sugar	78	SYP	5	KG	6	2014	110
26616	238	2833	1554	108	Lentils	78	SYP	5	KG	6	2014	170
26617	238	2833	1554	137	Oil	78	SYP	15	L	6	2014	275
26618	238	2833	1554	278	Bread (bakery)	78	SYP	52	1.5 KG	6	2014	15
26619	238	2833	1554	280	Bread (shop)	78	SYP	52	1.5 KG	6	2014	25
26620	238	2833	1554	281	Tea	78	SYP	5	KG	6	2014	1000
26621	238	2833	1554	284	Fuel (diesel)	78	SYP	15	L	6	2014	80
26622	238	2833	1554	341	Fuel (gas)	78	SYP	83	10 KG	6	2014	1100
26623	238	2838	1555	52	Rice	78	SYP	5	KG	12	2015	410
26624	238	2838	1555	58	Wheat flour	78	SYP	5	KG	12	2015	180
26625	238	2838	1555	97	Sugar	78	SYP	5	KG	12	2015	260
26626	238	2838	1555	108	Lentils	78	SYP	5	KG	12	2015	330
26627	238	2838	1555	137	Oil	78	SYP	15	L	12	2015	550
26628	238	2838	1555	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	700
26629	238	2838	1555	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26630	238	2838	1555	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	200
26631	238	2838	1555	281	Tea	78	SYP	5	KG	12	2015	2700
26632	238	2838	1555	284	Fuel (diesel)	78	SYP	15	L	12	2015	340
26633	238	2838	1555	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	5000
26634	238	2838	1555	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	58000
26635	238	2835	1556	52	Rice	78	SYP	5	KG	12	2015	275
26636	238	2835	1556	58	Wheat flour	78	SYP	5	KG	12	2015	190
26637	238	2835	1556	97	Sugar	78	SYP	5	KG	12	2015	248
26638	238	2835	1556	108	Lentils	78	SYP	5	KG	12	2015	460
26639	238	2835	1556	137	Oil	78	SYP	15	L	12	2015	413
26640	238	2835	1556	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1200
26641	238	2835	1556	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26642	238	2835	1556	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	65
26643	238	2835	1556	281	Tea	78	SYP	5	KG	12	2015	2420
26644	238	2835	1556	284	Fuel (diesel)	78	SYP	15	L	12	2015	250
26645	238	2835	1556	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	2500
26646	238	2835	1556	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	54450
26647	238	2833	1557	52	Rice	78	SYP	5	KG	6	2014	190
26648	238	2833	1557	97	Sugar	78	SYP	5	KG	6	2014	110
26649	238	2833	1557	108	Lentils	78	SYP	5	KG	6	2014	170
26650	238	2833	1557	137	Oil	78	SYP	15	L	6	2014	275
26651	238	2833	1557	278	Bread (bakery)	78	SYP	52	1.5 KG	6	2014	15
26652	238	2833	1557	280	Bread (shop)	78	SYP	52	1.5 KG	6	2014	25
26653	238	2833	1557	281	Tea	78	SYP	5	KG	6	2014	1000
26654	238	2833	1557	284	Fuel (diesel)	78	SYP	15	L	6	2014	80
26655	238	2833	1557	341	Fuel (gas)	78	SYP	83	10 KG	6	2014	1100
26656	238	2836	1558	52	Rice	78	SYP	5	KG	12	2015	350
26657	238	2836	1558	58	Wheat flour	78	SYP	5	KG	12	2015	168
26658	238	2836	1558	97	Sugar	78	SYP	5	KG	12	2015	250
26659	238	2836	1558	108	Lentils	78	SYP	5	KG	12	2015	390
26660	238	2836	1558	137	Oil	78	SYP	15	L	12	2015	414
26661	238	2836	1558	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1500
26662	238	2836	1558	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26663	238	2836	1558	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	100
26664	238	2836	1558	281	Tea	78	SYP	5	KG	12	2015	350
26665	238	2836	1558	284	Fuel (diesel)	78	SYP	15	L	12	2015	210
26666	238	2836	1558	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	1950
26667	238	2836	1558	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	63250
26668	238	2835	1559	52	Rice	78	SYP	5	KG	12	2015	275
26669	238	2835	1559	58	Wheat flour	78	SYP	5	KG	12	2015	190
26670	238	2835	1559	97	Sugar	78	SYP	5	KG	12	2015	248
26671	238	2835	1559	108	Lentils	78	SYP	5	KG	12	2015	480
26672	238	2835	1559	137	Oil	78	SYP	15	L	12	2015	413
26673	238	2835	1559	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	1200
26674	238	2835	1559	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26675	238	2835	1559	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	65
26676	238	2835	1559	281	Tea	78	SYP	5	KG	12	2015	2420
26677	238	2835	1559	284	Fuel (diesel)	78	SYP	15	L	12	2015	300
26678	238	2835	1559	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	2500
26679	238	2835	1559	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	54450
26680	238	2842	1897	52	Rice	78	SYP	5	KG	12	2015	275
26681	238	2842	1897	58	Wheat flour	78	SYP	5	KG	12	2015	125
26682	238	2842	1897	97	Sugar	78	SYP	5	KG	12	2015	180
26683	238	2842	1897	108	Lentils	78	SYP	5	KG	12	2015	375
26684	238	2842	1897	137	Oil	78	SYP	15	L	12	2015	355
26685	238	2842	1897	277	Wage (non-qualified labour)	78	SYP	51	Day	12	2015	700
26686	238	2842	1897	278	Bread (bakery)	78	SYP	52	1.5 KG	12	2015	50
26687	238	2842	1897	280	Bread (shop)	78	SYP	52	1.5 KG	12	2015	65
26688	238	2842	1897	281	Tea	78	SYP	5	KG	12	2015	1650
26689	238	2842	1897	284	Fuel (diesel)	78	SYP	15	L	12	2015	190
26690	238	2842	1897	341	Fuel (gas)	78	SYP	83	10 KG	12	2015	2360
26691	238	2842	1897	361	Livestock (sheep, two-year-old male)	78	SYP	33	Unit	12	2015	39000
26692	239	2850	302	51	Maize	49	TJS	5	KG	1	2016	2.82500000000000018
26693	239	2850	302	52	Rice	49	TJS	5	KG	1	2016	9.80000000000000071
26694	239	2850	302	55	Bread	49	TJS	42	150 G	1	2016	1.25
26695	239	2850	302	81	Milk	49	TJS	15	L	1	2016	5.02500000000000036
26696	239	2850	302	83	Potatoes	49	TJS	5	KG	1	2016	1.85000000000000009
26697	239	2850	302	84	Wheat	49	TJS	5	KG	1	2016	2.5
26698	239	2850	302	92	Eggs	49	TJS	81	10 pcs	1	2016	8.69999999999999929
26699	239	2850	302	96	Oil (vegetable)	49	TJS	15	L	1	2016	12.875
26700	239	2850	302	97	Sugar	49	TJS	5	KG	1	2016	6.3125
26701	239	2850	302	141	Meat (beef)	49	TJS	5	KG	1	2016	31.25
26702	239	2850	302	166	Carrots	49	TJS	5	KG	1	2016	1.32499999999999996
26703	239	2850	302	172	Oil (cotton)	49	TJS	15	L	1	2016	9
26704	239	2850	302	173	Onions	49	TJS	5	KG	1	2016	1.67500000000000004
26705	239	2850	302	175	Tea (black)	49	TJS	5	KG	1	2016	18.3000000000000007
26706	239	2850	302	176	Tea (green)	49	TJS	5	KG	1	2016	18.3999999999999986
26707	239	2850	302	177	Wheat flour (first grade)	49	TJS	5	KG	1	2016	3.41250000000000009
26708	239	2850	302	178	Wheat flour (high quality)	49	TJS	5	KG	1	2016	3.64999999999999991
26709	239	2850	302	179	Wheat flour (local)	49	TJS	5	KG	1	2016	3
26710	239	2850	302	181	Cabbage	49	TJS	5	KG	1	2016	1.75
26711	239	2850	302	183	Meat (mutton)	49	TJS	5	KG	1	2016	32.25
26712	239	2850	302	185	Salt	49	TJS	5	KG	1	2016	1.10000000000000009
26713	239	2850	302	207	Meat (chicken, frozen)	49	TJS	5	KG	1	2016	11.875
26714	239	2850	302	274	Wage (qualified labour)	49	TJS	51	Day	1	2016	97.25
26715	239	2850	302	284	Fuel (diesel)	49	TJS	15	L	1	2016	5.0625
26716	239	2850	302	285	Fuel (petrol-gasoline)	49	TJS	15	L	1	2016	5.22499999999999964
26717	239	2850	302	305	Exchange rate	49	TJS	56	USD/LCU	1	2016	8.11250000000000071
26718	239	2850	302	465	Wage (non-qualified labour, non-agricultural)	49	TJS	51	Day	1	2016	49.5
26719	239	2850	303	51	Maize	49	TJS	5	KG	1	2016	2.26250000000000018
26720	239	2850	303	52	Rice	49	TJS	5	KG	1	2016	10.9499999999999993
26721	239	2850	303	55	Bread	49	TJS	42	150 G	1	2016	1.76249999999999996
26722	239	2850	303	81	Milk	49	TJS	15	L	1	2016	4.51250000000000018
26723	239	2850	303	83	Potatoes	49	TJS	5	KG	1	2016	1.52499999999999991
26724	239	2850	303	84	Wheat	49	TJS	5	KG	1	2016	2.8424999999999998
26725	239	2850	303	92	Eggs	49	TJS	81	10 pcs	1	2016	10
26726	239	2850	303	96	Oil (vegetable)	49	TJS	15	L	1	2016	12.7974999999999994
26727	239	2850	303	97	Sugar	49	TJS	5	KG	1	2016	7.0625
26728	239	2850	303	141	Meat (beef)	49	TJS	5	KG	1	2016	33
26729	239	2850	303	166	Carrots	49	TJS	5	KG	1	2016	1.10000000000000009
26730	239	2850	303	172	Oil (cotton)	49	TJS	15	L	1	2016	11.5500000000000007
26731	239	2850	303	173	Onions	49	TJS	5	KG	1	2016	2.46249999999999991
26732	239	2850	303	175	Tea (black)	49	TJS	5	KG	1	2016	16.3374999999999986
26733	239	2850	303	176	Tea (green)	49	TJS	5	KG	1	2016	17.6000000000000014
26734	239	2850	303	177	Wheat flour (first grade)	49	TJS	5	KG	1	2016	3.54000000000000004
26735	239	2850	303	178	Wheat flour (high quality)	49	TJS	5	KG	1	2016	3.89749999999999996
26736	239	2850	303	179	Wheat flour (local)	49	TJS	5	KG	1	2016	3.2799999999999998
26737	239	2850	303	181	Cabbage	49	TJS	5	KG	1	2016	2.5
26738	239	2850	303	183	Meat (mutton)	49	TJS	5	KG	1	2016	34
26739	239	2850	303	185	Salt	49	TJS	5	KG	1	2016	1
26740	239	2850	303	207	Meat (chicken, frozen)	49	TJS	5	KG	1	2016	15
26741	239	2850	303	274	Wage (qualified labour)	49	TJS	51	Day	1	2016	50
26742	239	2850	303	284	Fuel (diesel)	49	TJS	15	L	1	2016	5.84999999999999964
26743	239	2850	303	285	Fuel (petrol-gasoline)	49	TJS	15	L	1	2016	5.78749999999999964
26744	239	2850	303	305	Exchange rate	49	TJS	56	USD/LCU	1	2016	7.65000000000000036
26745	239	2850	303	465	Wage (non-qualified labour, non-agricultural)	49	TJS	51	Day	1	2016	34.9750000000000014
26746	239	2847	304	52	Rice	49	TJS	5	KG	1	2016	16
26747	239	2847	304	55	Bread	49	TJS	42	150 G	1	2016	3
26748	239	2847	304	81	Milk	49	TJS	15	L	1	2016	5
26749	239	2847	304	83	Potatoes	49	TJS	5	KG	1	2016	3
26750	239	2847	304	92	Eggs	49	TJS	81	10 pcs	1	2016	9
26751	239	2847	304	96	Oil (vegetable)	49	TJS	15	L	1	2016	12.25
26752	239	2847	304	97	Sugar	49	TJS	5	KG	1	2016	7
26753	239	2847	304	141	Meat (beef)	49	TJS	5	KG	1	2016	29.25
26754	239	2847	304	166	Carrots	49	TJS	5	KG	1	2016	2.75
26755	239	2847	304	172	Oil (cotton)	49	TJS	15	L	1	2016	11.25
26756	239	2847	304	173	Onions	49	TJS	5	KG	1	2016	2.875
26757	239	2847	304	175	Tea (black)	49	TJS	5	KG	1	2016	20
26758	239	2847	304	176	Tea (green)	49	TJS	5	KG	1	2016	18
26759	239	2847	304	177	Wheat flour (first grade)	49	TJS	5	KG	1	2016	3.72999999999999998
26760	239	2847	304	178	Wheat flour (high quality)	49	TJS	5	KG	7	2012	3.39999999999999991
26761	239	2847	304	181	Cabbage	49	TJS	5	KG	1	2016	3
26762	239	2847	304	183	Meat (mutton)	49	TJS	5	KG	1	2016	30.5
26763	239	2847	304	185	Salt	49	TJS	5	KG	1	2016	1.64999999999999991
26764	239	2847	304	207	Meat (chicken, frozen)	49	TJS	5	KG	1	2016	14
26765	239	2847	304	274	Wage (qualified labour)	49	TJS	51	Day	1	2016	85
26766	239	2847	304	284	Fuel (diesel)	49	TJS	15	L	1	2016	5.59999999999999964
26767	239	2847	304	285	Fuel (petrol-gasoline)	49	TJS	15	L	1	2016	5.79999999999999982
26768	239	2847	304	305	Exchange rate	49	TJS	56	USD/LCU	1	2016	7.79999999999999982
26769	239	2847	304	465	Wage (non-qualified labour, non-agricultural)	49	TJS	51	Day	1	2016	45
26770	239	2849	305	51	Maize	49	TJS	5	KG	1	2016	3
26771	239	2849	305	52	Rice	49	TJS	5	KG	1	2016	7.25
26772	239	2849	305	55	Bread	49	TJS	42	150 G	1	2016	1.69999999999999996
26773	239	2849	305	81	Milk	49	TJS	15	L	1	2016	3.5
26774	239	2849	305	83	Potatoes	49	TJS	5	KG	1	2016	1.5
26775	239	2849	305	84	Wheat	49	TJS	5	KG	1	2016	2.10000000000000009
26776	239	2849	305	92	Eggs	49	TJS	81	10 pcs	1	2016	6.5
26777	239	2849	305	96	Oil (vegetable)	49	TJS	15	L	1	2016	11.5
26778	239	2849	305	97	Sugar	49	TJS	5	KG	1	2016	6.625
26779	239	2849	305	141	Meat (beef)	49	TJS	5	KG	1	2016	28.5
26780	239	2849	305	166	Carrots	49	TJS	5	KG	1	2016	0.762499999999999956
26781	239	2849	305	172	Oil (cotton)	49	TJS	15	L	1	2016	10.5
26782	239	2849	305	173	Onions	49	TJS	5	KG	1	2016	1.39999999999999991
26783	239	2849	305	175	Tea (black)	49	TJS	5	KG	1	2016	35
26784	239	2849	305	176	Tea (green)	49	TJS	5	KG	1	2016	28
26785	239	2849	305	177	Wheat flour (first grade)	49	TJS	5	KG	1	2016	3.10000000000000009
26786	239	2849	305	178	Wheat flour (high quality)	49	TJS	5	KG	1	2016	3.29999999999999982
26787	239	2849	305	179	Wheat flour (local)	49	TJS	5	KG	1	2016	3
26788	239	2849	305	181	Cabbage	49	TJS	5	KG	1	2016	1.30000000000000004
26789	239	2849	305	183	Meat (mutton)	49	TJS	5	KG	1	2016	33.5
26790	239	2849	305	185	Salt	49	TJS	5	KG	1	2016	1
26791	239	2849	305	207	Meat (chicken, frozen)	49	TJS	5	KG	1	2016	12.5
26792	239	2849	305	274	Wage (qualified labour)	49	TJS	51	Day	1	2016	70
26793	239	2849	305	284	Fuel (diesel)	49	TJS	15	L	1	2016	4.22499999999999964
26794	239	2849	305	285	Fuel (petrol-gasoline)	49	TJS	15	L	1	2016	4.79999999999999982
26795	239	2849	305	305	Exchange rate	49	TJS	56	USD/LCU	1	2016	8.5
26796	239	2849	305	465	Wage (non-qualified labour, non-agricultural)	49	TJS	51	Day	1	2016	30
26797	239	2848	306	51	Maize	49	TJS	5	KG	1	2016	1.80000000000000004
26798	239	2848	306	52	Rice	49	TJS	5	KG	1	2016	7.875
26799	239	2848	306	55	Bread	49	TJS	42	150 G	1	2016	1.375
26800	239	2848	306	81	Milk	49	TJS	15	L	1	2016	3.875
26801	239	2848	306	83	Potatoes	49	TJS	5	KG	1	2016	1.75
26802	239	2848	306	84	Wheat	49	TJS	5	KG	1	2016	2.125
26803	239	2848	306	92	Eggs	49	TJS	81	10 pcs	1	2016	7
26804	239	2848	306	96	Oil (vegetable)	49	TJS	15	L	1	2016	10.3499999999999996
26805	239	2848	306	97	Sugar	49	TJS	5	KG	1	2016	6.375
26806	239	2848	306	141	Meat (beef)	49	TJS	5	KG	1	2016	27
26807	239	2848	306	166	Carrots	49	TJS	5	KG	1	2016	1
26808	239	2848	306	172	Oil (cotton)	49	TJS	15	L	1	2016	9.59999999999999964
26809	239	2848	306	173	Onions	49	TJS	5	KG	1	2016	2.0299999999999998
26810	239	2848	306	175	Tea (black)	49	TJS	5	KG	1	2016	22
26811	239	2848	306	176	Tea (green)	49	TJS	5	KG	1	2016	22
26812	239	2848	306	177	Wheat flour (first grade)	49	TJS	5	KG	1	2016	3.875
26813	239	2848	306	178	Wheat flour (high quality)	49	TJS	5	KG	1	2016	4.22499999999999964
26814	239	2848	306	179	Wheat flour (local)	49	TJS	5	KG	1	2016	3.14999999999999991
26815	239	2848	306	181	Cabbage	49	TJS	5	KG	1	2016	2.375
26816	239	2848	306	183	Meat (mutton)	49	TJS	5	KG	1	2016	33.5
26817	239	2848	306	185	Salt	49	TJS	5	KG	1	2016	1
26818	239	2848	306	207	Meat (chicken, frozen)	49	TJS	5	KG	1	2016	12.9499999999999993
26819	239	2848	306	274	Wage (qualified labour)	49	TJS	51	Day	1	2016	81.25
26820	239	2848	306	284	Fuel (diesel)	49	TJS	15	L	1	2016	4.59999999999999964
26821	239	2848	306	285	Fuel (petrol-gasoline)	49	TJS	15	L	1	2016	5.20000000000000018
26822	239	2848	306	305	Exchange rate	49	TJS	56	USD/LCU	1	2016	8.31750000000000078
26823	239	2848	306	465	Wage (non-qualified labour, non-agricultural)	49	TJS	51	Day	1	2016	26.25
26824	239	\N	\N	274	Wage (qualified labour)	49	TJS	51	Day	1	2016	76.7000000000000028
26825	239	\N	\N	284	Fuel (diesel)	49	TJS	15	L	1	2016	5.07000000000000028
26826	239	\N	\N	285	Fuel (petrol-gasoline)	49	TJS	15	L	1	2016	5.36000000000000032
26827	239	\N	\N	305	Exchange rate	49	TJS	56	USD/LCU	1	2016	8.08000000000000007
26828	239	\N	\N	465	Wage (non-qualified labour, non-agricultural)	49	TJS	51	Day	1	2016	37.1450000000000031
26829	242	2960	1358	51	Maize	28	USD	5	KG	10	2013	0.739999999999999991
26830	242	2960	1358	64	Rice (imported)	28	USD	5	KG	10	2013	0.660000000000000031
26831	242	2960	1358	71	Rice (local)	28	USD	5	KG	10	2013	0.800000000000000044
26832	242	2968	1359	51	Maize	28	USD	5	KG	10	2013	0.640000000000000013
26833	242	2968	1359	64	Rice (imported)	28	USD	5	KG	10	2013	0.660000000000000031
26834	242	2968	1359	71	Rice (local)	28	USD	5	KG	10	2013	0.959999999999999964
26835	242	2968	1359	180	Beans (kidney)	28	USD	5	KG	5	2013	3.52000000000000002
26836	242	2959	1360	51	Maize	28	USD	5	KG	10	2013	0.510000000000000009
26837	242	2959	1360	64	Rice (imported)	28	USD	5	KG	10	2013	0.57999999999999996
26838	242	2959	1360	68	Cassava	28	USD	5	KG	10	2013	0.57999999999999996
26839	242	2959	1360	71	Rice (local)	28	USD	5	KG	10	2013	0.979999999999999982
26840	242	2959	1360	180	Beans (kidney)	28	USD	5	KG	10	2013	2.20000000000000018
26841	242	2962	1361	51	Maize	28	USD	5	KG	10	2013	0.930000000000000049
26842	242	2962	1361	64	Rice (imported)	28	USD	5	KG	10	2013	0.819999999999999951
26843	242	2962	1361	68	Cassava	28	USD	5	KG	9	2012	0.390000000000000013
26844	242	2962	1361	71	Rice (local)	28	USD	5	KG	10	2013	2.02000000000000002
26845	242	2962	1361	180	Beans (kidney)	28	USD	5	KG	10	2013	3.91000000000000014
26846	242	2960	1362	51	Maize	28	USD	5	KG	9	2013	0.75
26847	242	2960	1362	64	Rice (imported)	28	USD	5	KG	10	2013	0.709999999999999964
26848	242	2960	1362	71	Rice (local)	28	USD	5	KG	10	2013	0.790000000000000036
26849	242	2960	1362	180	Beans (kidney)	28	USD	5	KG	7	2013	5.62000000000000011
26850	242	2962	1363	51	Maize	28	USD	5	KG	10	2013	0.780000000000000027
26851	242	2962	1363	64	Rice (imported)	28	USD	5	KG	10	2013	0.680000000000000049
26852	242	2962	1363	68	Cassava	28	USD	5	KG	10	2013	0.640000000000000013
26853	242	2962	1363	71	Rice (local)	28	USD	5	KG	10	2013	1.56000000000000005
26854	242	2962	1363	180	Beans (kidney)	28	USD	5	KG	10	2013	4.03000000000000025
26855	242	2962	1364	51	Maize	28	USD	5	KG	10	2013	0.689999999999999947
26856	242	2962	1364	64	Rice (imported)	28	USD	5	KG	10	2013	0.770000000000000018
26857	242	2962	1364	68	Cassava	28	USD	5	KG	10	2013	0.810000000000000053
26858	242	2962	1364	71	Rice (local)	28	USD	5	KG	10	2013	1.54000000000000004
26859	242	2962	1364	180	Beans (kidney)	28	USD	5	KG	10	2013	4.24000000000000021
26860	242	2959	1365	51	Maize	28	USD	5	KG	10	2013	0.46000000000000002
26861	242	2959	1365	64	Rice (imported)	28	USD	5	KG	10	2013	0.739999999999999991
26862	242	2959	1365	68	Cassava	28	USD	5	KG	10	2013	0.299999999999999989
26863	242	2959	1365	71	Rice (local)	28	USD	5	KG	10	2013	0.729999999999999982
26864	242	2959	1365	180	Beans (kidney)	28	USD	5	KG	10	2013	1.97999999999999998
26865	242	2960	1366	51	Maize	28	USD	5	KG	10	2013	0.770000000000000018
26866	242	2960	1366	64	Rice (imported)	28	USD	5	KG	10	2013	0.640000000000000013
26867	242	2960	1366	68	Cassava	28	USD	5	KG	9	2013	0.650000000000000022
26868	242	2960	1366	71	Rice (local)	28	USD	5	KG	10	2013	0.790000000000000036
26869	242	2960	1366	180	Beans (kidney)	28	USD	5	KG	10	2013	0.560000000000000053
26870	242	2968	1367	51	Maize	28	USD	5	KG	10	2013	1.20999999999999996
26871	242	2968	1367	64	Rice (imported)	28	USD	5	KG	10	2013	0.979999999999999982
26872	242	2968	1367	71	Rice (local)	28	USD	5	KG	10	2013	0.589999999999999969
26873	242	2968	1367	180	Beans (kidney)	28	USD	5	KG	7	2013	2.75999999999999979
26874	242	2968	1368	51	Maize	28	USD	5	KG	10	2013	1.44999999999999996
26875	242	2968	1368	64	Rice (imported)	28	USD	5	KG	10	2013	0.67000000000000004
26876	242	2968	1368	71	Rice (local)	28	USD	5	KG	10	2013	0.619999999999999996
26877	242	2959	1369	64	Rice (imported)	28	USD	5	KG	10	2013	0.520000000000000018
26878	242	2959	1369	71	Rice (local)	28	USD	5	KG	10	2013	0.989999999999999991
26879	242	2959	1369	180	Beans (kidney)	28	USD	5	KG	9	2013	2.20999999999999996
26880	249	\N	\N	52	Rice	88	TRY	5	KG	3	2016	6.25999999999999979
26881	249	\N	\N	58	Wheat flour	88	TRY	5	KG	3	2016	2.83999999999999986
26882	249	\N	\N	66	Beans (white)	88	TRY	5	KG	3	2016	6.88999999999999968
26883	249	\N	\N	83	Potatoes	88	TRY	5	KG	3	2016	1.21999999999999997
26884	249	\N	\N	92	Eggs	88	TRY	33	Unit	3	2016	0.340000000000000024
26885	249	\N	\N	97	Sugar	88	TRY	5	KG	3	2016	4.09999999999999964
26886	249	\N	\N	105	Garlic	88	TRY	5	KG	3	2016	19.7699999999999996
26887	249	\N	\N	108	Lentils	88	TRY	5	KG	3	2016	7.04999999999999982
26888	249	\N	\N	112	Pasta	88	TRY	5	KG	3	2016	2.95999999999999996
26889	249	\N	\N	114	Tomatoes	88	TRY	5	KG	3	2016	1.80000000000000004
26890	249	\N	\N	119	Groundnuts (shelled)	88	TRY	5	KG	3	2016	18.0300000000000011
26891	249	\N	\N	124	Bread (common)	88	TRY	5	KG	3	2016	3.22999999999999998
26892	249	\N	\N	151	Coffee	88	TRY	5	KG	3	2016	36.0499999999999972
26893	249	\N	\N	173	Onions	88	TRY	5	KG	3	2016	2.5
26894	249	\N	\N	176	Tea (green)	88	TRY	33	Unit	3	2016	4.41000000000000014
26895	249	\N	\N	181	Cabbage	88	TRY	5	KG	3	2016	1.33000000000000007
26896	249	\N	\N	183	Meat (mutton)	88	TRY	5	KG	3	2016	29.9899999999999984
26897	249	\N	\N	184	Oil (sunflower)	88	TRY	15	L	3	2016	7.73000000000000043
26898	249	\N	\N	185	Salt	88	TRY	5	KG	3	2016	1.62999999999999989
26899	249	\N	\N	207	Meat (chicken, frozen)	88	TRY	5	KG	3	2016	7.28000000000000025
26900	249	\N	\N	209	Coffee (instant)	88	TRY	5	KG	3	2016	35.3599999999999994
26901	249	\N	\N	212	Peas (green, dry)	88	TRY	5	KG	6	2015	3.29000000000000004
26902	249	\N	\N	229	Apples (red)	88	TRY	5	KG	3	2016	2.33000000000000007
26903	249	\N	\N	231	Cauliflower	88	TRY	5	KG	3	2016	2.02000000000000002
26904	249	\N	\N	233	Cucumbers (greenhouse)	88	TRY	5	KG	3	2016	2.5299999999999998
26905	249	\N	\N	239	Oil (olive)	88	TRY	15	L	3	2016	28.3999999999999986
26906	249	\N	\N	241	Oranges (big size)	88	TRY	5	KG	3	2016	1.51000000000000001
26907	249	\N	\N	244	Chickpeas	88	TRY	5	KG	3	2016	6.92999999999999972
26908	249	\N	\N	254	Bananas	88	TRY	5	KG	3	2016	5.91999999999999993
26909	249	\N	\N	258	Bulgur	88	TRY	5	KG	3	2016	2.75999999999999979
26910	249	\N	\N	281	Tea	88	TRY	5	KG	3	2016	22.0799999999999983
26911	249	\N	\N	285	Fuel (petrol-gasoline)	88	TRY	15	L	3	2016	4.29999999999999982
26912	249	\N	\N	317	Tomatoes (paste)	88	TRY	5	KG	3	2016	6.5
26913	249	\N	\N	341	Fuel (gas)	88	TRY	90	12 KG	3	2016	63.1300000000000026
26914	249	\N	\N	364	Yogurt	88	TRY	5	KG	3	2016	3.97999999999999998
26915	249	\N	\N	384	Bread (pita)	88	TRY	5	KG	3	2016	2.35000000000000009
26916	249	\N	\N	401	Fish (fresh)	88	TRY	5	KG	3	2016	14.5600000000000005
26917	249	\N	\N	404	Spinach	88	TRY	5	KG	3	2016	1.62000000000000011
26918	249	\N	\N	414	Cheese	88	TRY	5	KG	3	2016	15.2799999999999994
26919	249	\N	\N	433	Meat (veal)	88	TRY	5	KG	3	2016	36.009999999999998
26920	249	\N	\N	434	Eggplants	88	TRY	5	KG	3	2016	3.14999999999999991
26921	249	\N	\N	442	Milk (powder, infant formula)	88	TRY	5	KG	3	2016	70.1299999999999955
26922	249	\N	\N	461	Cocoa (powder, not sweetened)	88	TRY	5	KG	3	2016	36.0600000000000023
26923	249	\N	\N	463	Milk (pasteurized)	88	TRY	15	L	3	2016	2.87000000000000011
26924	249	\N	\N	465	Wage (non-qualified labour, non-agricultural)	88	TRY	51	Day	3	2016	43.3299999999999983
26925	253	1344	257	50	Beans	39	UGX	5	KG	4	2014	2450
26926	253	1344	257	65	Sorghum	39	UGX	5	KG	4	2014	800
26927	253	1344	257	67	Maize (white)	39	UGX	5	KG	4	2014	725
26928	253	1344	257	73	Millet	39	UGX	5	KG	4	2014	1400
26929	253	1344	257	74	Cassava flour	39	UGX	5	KG	4	2014	1413
26930	253	1344	257	76	Maize flour	39	UGX	5	KG	4	2014	2050
26931	253	42182	258	50	Beans	39	UGX	5	KG	2	2016	2750
26932	253	42182	258	65	Sorghum	39	UGX	5	KG	2	2016	2000
26933	253	42182	258	67	Maize (white)	39	UGX	5	KG	2	2016	1275
26934	253	42182	258	73	Millet	39	UGX	5	KG	2	2016	2000
26935	253	42182	258	74	Cassava flour	39	UGX	5	KG	2	2016	1425
26936	253	42182	258	76	Maize flour	39	UGX	5	KG	2	2016	1817
26937	253	42179	259	50	Beans	39	UGX	5	KG	2	2016	2625
26938	253	42179	259	65	Sorghum	39	UGX	5	KG	2	2016	1600
26939	253	42179	259	67	Maize (white)	39	UGX	5	KG	2	2016	730
26940	253	42179	259	73	Millet	39	UGX	5	KG	2	2016	1800
26941	253	42179	259	74	Cassava flour	39	UGX	5	KG	2	2016	1200
26942	253	42179	259	76	Maize flour	39	UGX	5	KG	2	2016	1675
26943	253	3114	260	50	Beans	39	UGX	5	KG	11	2014	1600
26944	253	3114	260	65	Sorghum	39	UGX	5	KG	11	2014	1000
26945	253	3114	260	67	Maize (white)	39	UGX	5	KG	11	2014	600
26946	253	3114	260	73	Millet	39	UGX	5	KG	11	2014	1400
26947	253	3114	260	74	Cassava flour	39	UGX	5	KG	11	2014	900
26948	253	3114	260	76	Maize flour	39	UGX	5	KG	11	2014	1400
26949	253	766	261	50	Beans	39	UGX	5	KG	2	2016	2100
26950	253	766	261	65	Sorghum	39	UGX	5	KG	2	2016	1200
26951	253	766	261	67	Maize (white)	39	UGX	5	KG	2	2016	900
26952	253	766	261	73	Millet	39	UGX	5	KG	2	2016	1450
26953	253	766	261	74	Cassava flour	39	UGX	5	KG	2	2016	1500
26954	253	766	261	76	Maize flour	39	UGX	5	KG	2	2016	1700
26955	253	3111	262	50	Beans	39	UGX	5	KG	2	2016	2800
26956	253	3111	262	65	Sorghum	39	UGX	5	KG	2	2016	1600
26957	253	3111	262	67	Maize (white)	39	UGX	5	KG	2	2016	1000
26958	253	3111	262	73	Millet	39	UGX	5	KG	2	2016	1500
26959	253	3111	262	74	Cassava flour	39	UGX	5	KG	2	2016	2000
26960	253	3111	262	76	Maize flour	39	UGX	5	KG	2	2016	2000
26961	253	47082	263	50	Beans	39	UGX	5	KG	2	2016	2575
26962	253	47082	263	65	Sorghum	39	UGX	5	KG	2	2016	975
26963	253	47082	263	67	Maize (white)	39	UGX	5	KG	2	2016	1000
26964	253	47082	263	73	Millet	39	UGX	5	KG	2	2016	1225
26965	253	47082	263	74	Cassava flour	39	UGX	5	KG	2	2016	1750
26966	253	47082	263	76	Maize flour	39	UGX	5	KG	2	2016	2000
26967	253	47086	264	50	Beans	39	UGX	5	KG	2	2016	2100
26968	253	47086	264	65	Sorghum	39	UGX	5	KG	2	2016	2500
26969	253	47086	264	67	Maize (white)	39	UGX	5	KG	2	2016	750
26970	253	47086	264	73	Millet	39	UGX	5	KG	2	2016	2900
26971	253	47086	264	74	Cassava flour	39	UGX	5	KG	2	2016	1250
26972	253	47086	264	76	Maize flour	39	UGX	5	KG	2	2016	1750
26973	254	\N	\N	52	Rice	93	UAH	5	KG	2	2016	16.5867000000000004
26974	254	\N	\N	81	Milk	93	UAH	15	L	2	2016	12.3200000000000003
26975	254	\N	\N	83	Potatoes	93	UAH	5	KG	2	2016	6.01999999999999957
26976	254	\N	\N	92	Eggs	93	UAH	81	10 pcs	2	2016	14.8666999999999998
26977	254	\N	\N	97	Sugar	93	UAH	5	KG	2	2016	14.9267000000000003
26978	254	\N	\N	112	Pasta	93	UAH	5	KG	2	2016	9.84329999999999927
26979	254	\N	\N	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	38.240000000000002
26980	254	\N	\N	140	Meat (pork)	93	UAH	5	KG	2	2016	64.6833000000000027
26981	254	\N	\N	141	Meat (beef)	93	UAH	5	KG	2	2016	82.6400000000000006
26982	254	\N	\N	166	Carrots	93	UAH	5	KG	2	2016	11.6667000000000005
26983	254	\N	\N	173	Onions	93	UAH	5	KG	2	2016	9.34329999999999927
26984	254	\N	\N	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.6333000000000002
26985	254	\N	\N	181	Cabbage	93	UAH	5	KG	2	2016	11.2766999999999999
26986	254	\N	\N	184	Oil (sunflower)	93	UAH	15	L	2	2016	30.2032999999999987
26987	254	\N	\N	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.7632999999999992
26988	254	\N	\N	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	19.4033000000000015
26989	254	\N	\N	367	Curd	93	UAH	5	KG	2	2016	69.9432999999999936
26990	254	\N	\N	368	Sour cream	93	UAH	15	L	2	2016	31.3167000000000009
26991	254	\N	\N	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	55.5533000000000001
26992	254	\N	\N	370	Beetroots	93	UAH	5	KG	2	2016	8.55330000000000013
26993	254	\N	\N	372	Butter	93	UAH	5	KG	2	2016	103.626999999999995
26994	254	\N	\N	373	Buckwheat grits	93	UAH	5	KG	2	2016	27.3399999999999999
26995	254	\N	\N	374	Bread (rye)	93	UAH	37	Loaf	2	2016	9.96669999999999945
26996	254	\N	\N	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	10.3833000000000002
26997	254	\N	\N	376	Fat (salo)	93	UAH	5	KG	2	2016	43.0700000000000003
26998	254	3148	1858	52	Rice	93	UAH	5	KG	2	2016	16.7566999999999986
26999	254	3148	1858	81	Milk	93	UAH	15	L	2	2016	11.5
27000	254	3148	1858	83	Potatoes	93	UAH	5	KG	2	2016	5.25
27001	254	3148	1858	92	Eggs	93	UAH	81	10 pcs	2	2016	14.5800000000000001
27002	254	3148	1858	97	Sugar	93	UAH	5	KG	2	2016	14.9167000000000005
27003	254	3148	1858	112	Pasta	93	UAH	5	KG	2	2016	9.94999999999999929
27004	254	3148	1858	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	39.0932999999999993
27005	254	3148	1858	140	Meat (pork)	93	UAH	5	KG	2	2016	61.9399999999999977
27006	254	3148	1858	141	Meat (beef)	93	UAH	5	KG	2	2016	81.8299999999999983
27007	254	3148	1858	166	Carrots	93	UAH	5	KG	2	2016	11.9967000000000006
27008	254	3148	1858	173	Onions	93	UAH	5	KG	2	2016	9.16000000000000014
27009	254	3148	1858	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.41000000000000014
27010	254	3148	1858	181	Cabbage	93	UAH	5	KG	2	2016	10.6366999999999994
27011	254	3148	1858	184	Oil (sunflower)	93	UAH	15	L	2	2016	29.8066999999999993
27012	254	3148	1858	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.5466999999999995
27013	254	3148	1858	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	19.6099999999999994
27014	254	3148	1858	367	Curd	93	UAH	5	KG	2	2016	70.5467000000000013
27015	254	3148	1858	368	Sour cream	93	UAH	15	L	2	2016	32.3667000000000016
27016	254	3148	1858	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	47.9532999999999987
27017	254	3148	1858	370	Beetroots	93	UAH	5	KG	2	2016	8.82000000000000028
27018	254	3148	1858	372	Butter	93	UAH	5	KG	2	2016	105.700000000000003
27019	254	3148	1858	373	Buckwheat grits	93	UAH	5	KG	2	2016	28.4732999999999983
27020	254	3148	1858	374	Bread (rye)	93	UAH	37	Loaf	2	2016	10.1600000000000001
27021	254	3148	1858	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	10.7300000000000004
27022	254	3148	1858	376	Fat (salo)	93	UAH	5	KG	2	2016	39.5666999999999973
27023	254	3149	1859	52	Rice	93	UAH	5	KG	2	2016	16.3966999999999992
27024	254	3149	1859	81	Milk	93	UAH	15	L	2	2016	12.8132999999999999
27025	254	3149	1859	83	Potatoes	93	UAH	5	KG	2	2016	5.51670000000000016
27026	254	3149	1859	92	Eggs	93	UAH	81	10 pcs	2	2016	14.7899999999999991
27027	254	3149	1859	97	Sugar	93	UAH	5	KG	2	2016	15.1600000000000001
27028	254	3149	1859	112	Pasta	93	UAH	5	KG	2	2016	9.5732999999999997
27029	254	3149	1859	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	37.9200000000000017
27030	254	3149	1859	140	Meat (pork)	93	UAH	5	KG	2	2016	65.3833000000000055
27031	254	3149	1859	141	Meat (beef)	93	UAH	5	KG	2	2016	82.9532999999999987
27032	254	3149	1859	166	Carrots	93	UAH	5	KG	2	2016	11.8200000000000003
27033	254	3149	1859	173	Onions	93	UAH	5	KG	2	2016	8.86999999999999922
27034	254	3149	1859	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.97669999999999924
27035	254	3149	1859	181	Cabbage	93	UAH	5	KG	2	2016	10.8766999999999996
27036	254	3149	1859	184	Oil (sunflower)	93	UAH	15	L	2	2016	30.4332999999999991
27037	254	3149	1859	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.0600000000000005
27038	254	3149	1859	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	17.9400000000000013
27039	254	3149	1859	367	Curd	93	UAH	5	KG	2	2016	75.2866999999999962
27040	254	3149	1859	368	Sour cream	93	UAH	15	L	2	2016	33.2766999999999982
27041	254	3149	1859	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	56.5900000000000034
27042	254	3149	1859	370	Beetroots	93	UAH	5	KG	2	2016	8.24000000000000021
27043	254	3149	1859	372	Butter	93	UAH	5	KG	2	2016	105.977000000000004
27044	254	3149	1859	373	Buckwheat grits	93	UAH	5	KG	2	2016	27.9567000000000014
27045	254	3149	1859	374	Bread (rye)	93	UAH	37	Loaf	2	2016	9.65000000000000036
27046	254	3149	1859	376	Fat (salo)	93	UAH	5	KG	2	2016	43.0733000000000033
27047	254	3150	1860	52	Rice	93	UAH	5	KG	2	2016	17.1266999999999996
27048	254	3150	1860	81	Milk	93	UAH	15	L	2	2016	12.2799999999999994
27049	254	3150	1860	83	Potatoes	93	UAH	5	KG	2	2016	5.76999999999999957
27050	254	3150	1860	92	Eggs	93	UAH	81	10 pcs	2	2016	15.7966999999999995
27051	254	3150	1860	97	Sugar	93	UAH	5	KG	2	2016	14.6300000000000008
27052	254	3150	1860	112	Pasta	93	UAH	5	KG	2	2016	9.74000000000000021
27053	254	3150	1860	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	40.283299999999997
27054	254	3150	1860	140	Meat (pork)	93	UAH	5	KG	2	2016	70.8666999999999945
27055	254	3150	1860	141	Meat (beef)	93	UAH	5	KG	2	2016	96.4899999999999949
27056	254	3150	1860	166	Carrots	93	UAH	5	KG	2	2016	11.8800000000000008
27057	254	3150	1860	173	Onions	93	UAH	5	KG	2	2016	10.0767000000000007
27058	254	3150	1860	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.75999999999999979
27059	254	3150	1860	181	Cabbage	93	UAH	5	KG	2	2016	10.9299999999999997
27060	254	3150	1860	184	Oil (sunflower)	93	UAH	15	L	2	2016	31.5366999999999997
27061	254	3150	1860	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.7367000000000008
27062	254	3150	1860	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	19.3066999999999993
27063	254	3150	1860	367	Curd	93	UAH	5	KG	2	2016	71.7733000000000061
27064	254	3150	1860	368	Sour cream	93	UAH	15	L	2	2016	30.7100000000000009
27065	254	3150	1860	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	62.5399999999999991
27066	254	3150	1860	370	Beetroots	93	UAH	5	KG	2	2016	8.16000000000000014
27067	254	3150	1860	372	Butter	93	UAH	5	KG	2	2016	112.563000000000002
27068	254	3150	1860	373	Buckwheat grits	93	UAH	5	KG	2	2016	28.023299999999999
27069	254	3150	1860	374	Bread (rye)	93	UAH	37	Loaf	2	2016	10.8100000000000005
27070	254	3150	1860	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	10.6500000000000004
27071	254	3150	1860	376	Fat (salo)	93	UAH	5	KG	2	2016	41.9299999999999997
27072	254	3151	1861	52	Rice	93	UAH	5	KG	2	2016	15.2200000000000006
27073	254	3151	1861	81	Milk	93	UAH	15	L	2	2016	12.6532999999999998
27074	254	3151	1861	83	Potatoes	93	UAH	5	KG	2	2016	6.4267000000000003
27075	254	3151	1861	92	Eggs	93	UAH	81	10 pcs	2	2016	13.6400000000000006
27076	254	3151	1861	97	Sugar	93	UAH	5	KG	2	2016	14.8367000000000004
27077	254	3151	1861	112	Pasta	93	UAH	5	KG	2	2016	9.27999999999999936
27078	254	3151	1861	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	37.6332999999999984
27079	254	3151	1861	140	Meat (pork)	93	UAH	5	KG	2	2016	71.4200000000000017
27080	254	3151	1861	141	Meat (beef)	93	UAH	5	KG	2	2016	92.7399999999999949
27081	254	3151	1861	166	Carrots	93	UAH	5	KG	2	2016	11.6333000000000002
27082	254	3151	1861	173	Onions	93	UAH	5	KG	2	2016	8.73000000000000043
27083	254	3151	1861	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.50329999999999941
27084	254	3151	1861	181	Cabbage	93	UAH	5	KG	2	2016	11.3766999999999996
27085	254	3151	1861	184	Oil (sunflower)	93	UAH	15	L	2	2016	29.7332999999999998
27086	254	3151	1861	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.3733000000000004
27087	254	3151	1861	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	18.6600000000000001
27088	254	3151	1861	367	Curd	93	UAH	5	KG	2	2016	68.5366999999999962
27089	254	3151	1861	368	Sour cream	93	UAH	15	L	2	2016	30.6700000000000017
27090	254	3151	1861	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	57.1433000000000035
27091	254	3151	1861	370	Beetroots	93	UAH	5	KG	2	2016	8.48000000000000043
27092	254	3151	1861	372	Butter	93	UAH	5	KG	2	2016	109.049999999999997
27093	254	3151	1861	373	Buckwheat grits	93	UAH	5	KG	2	2016	26.5366999999999997
27094	254	3151	1861	374	Bread (rye)	93	UAH	37	Loaf	2	2016	9.69330000000000069
27095	254	3151	1861	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	11.7532999999999994
27096	254	3151	1861	376	Fat (salo)	93	UAH	5	KG	2	2016	50.1066999999999965
27097	254	3152	1862	52	Rice	93	UAH	5	KG	2	2016	18.6632999999999996
27098	254	3152	1862	81	Milk	93	UAH	15	L	2	2016	14.2532999999999994
27099	254	3152	1862	83	Potatoes	93	UAH	5	KG	2	2016	7.20669999999999966
27100	254	3152	1862	92	Eggs	93	UAH	81	10 pcs	2	2016	16.6567000000000007
27101	254	3152	1862	97	Sugar	93	UAH	5	KG	2	2016	15.0099999999999998
27102	254	3152	1862	112	Pasta	93	UAH	5	KG	2	2016	10.4867000000000008
27103	254	3152	1862	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	39.8999999999999986
27104	254	3152	1862	140	Meat (pork)	93	UAH	5	KG	2	2016	66.4033000000000015
27105	254	3152	1862	141	Meat (beef)	93	UAH	5	KG	2	2016	69.2332999999999998
27106	254	3152	1862	166	Carrots	93	UAH	5	KG	2	2016	13.4967000000000006
27107	254	3152	1862	173	Onions	93	UAH	5	KG	2	2016	10.2200000000000006
27108	254	3152	1862	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.63669999999999938
27109	254	3152	1862	181	Cabbage	93	UAH	5	KG	2	2016	12.7733000000000008
27110	254	3152	1862	184	Oil (sunflower)	93	UAH	15	L	2	2016	31.5300000000000011
27111	254	3152	1862	284	Fuel (diesel)	93	UAH	15	L	2	2016	16.3299999999999983
27112	254	3152	1862	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	20.6900000000000013
27113	254	3152	1862	367	Curd	93	UAH	5	KG	2	2016	74.8966999999999956
27114	254	3152	1862	368	Sour cream	93	UAH	15	L	2	2016	35.0367000000000033
27115	254	3152	1862	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	58.4166999999999987
27116	254	3152	1862	370	Beetroots	93	UAH	5	KG	2	2016	9.84329999999999927
27117	254	3152	1862	372	Butter	93	UAH	5	KG	2	2016	112.269999999999996
27118	254	3152	1862	373	Buckwheat grits	93	UAH	5	KG	2	2016	29.1400000000000006
27119	254	3152	1862	374	Bread (rye)	93	UAH	37	Loaf	2	2016	14.1699999999999999
27120	254	3152	1862	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	10.1500000000000004
27121	254	3152	1862	376	Fat (salo)	93	UAH	5	KG	2	2016	46.6599999999999966
27122	254	3153	1863	52	Rice	93	UAH	5	KG	2	2016	16.8500000000000014
27123	254	3153	1863	81	Milk	93	UAH	15	L	2	2016	12.4566999999999997
27124	254	3153	1863	83	Potatoes	93	UAH	5	KG	2	2016	5.20000000000000018
27125	254	3153	1863	92	Eggs	93	UAH	81	10 pcs	2	2016	16.1933000000000007
27126	254	3153	1863	97	Sugar	93	UAH	5	KG	2	2016	14.8533000000000008
27127	254	3153	1863	112	Pasta	93	UAH	5	KG	2	2016	10.1333000000000002
27128	254	3153	1863	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	38.1066999999999965
27129	254	3153	1863	140	Meat (pork)	93	UAH	5	KG	2	2016	64.8700000000000045
27130	254	3153	1863	141	Meat (beef)	93	UAH	5	KG	2	2016	83.9699999999999989
27131	254	3153	1863	166	Carrots	93	UAH	5	KG	2	2016	10.9000000000000004
27132	254	3153	1863	173	Onions	93	UAH	5	KG	2	2016	9.4399999999999995
27133	254	3153	1863	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.58999999999999986
27134	254	3153	1863	181	Cabbage	93	UAH	5	KG	2	2016	10.9666999999999994
27135	254	3153	1863	184	Oil (sunflower)	93	UAH	15	L	2	2016	29.736699999999999
27136	254	3153	1863	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.7833000000000006
27137	254	3153	1863	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	19.6167000000000016
27138	254	3153	1863	367	Curd	93	UAH	5	KG	2	2016	69.769999999999996
27139	254	3153	1863	368	Sour cream	93	UAH	15	L	2	2016	30.629999999999999
27140	254	3153	1863	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	50.7899999999999991
27141	254	3153	1863	370	Beetroots	93	UAH	5	KG	2	2016	7.70329999999999959
27142	254	3153	1863	372	Butter	93	UAH	5	KG	2	2016	97.1800000000000068
27143	254	3153	1863	373	Buckwheat grits	93	UAH	5	KG	2	2016	26.3167000000000009
27144	254	3153	1863	374	Bread (rye)	93	UAH	37	Loaf	2	2016	9.13000000000000078
27145	254	3153	1863	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	10.6699999999999999
27146	254	3153	1863	376	Fat (salo)	93	UAH	5	KG	2	2016	39.6899999999999977
27147	254	3154	1864	52	Rice	93	UAH	5	KG	2	2016	15.9932999999999996
27148	254	3154	1864	81	Milk	93	UAH	15	L	2	2016	11.7133000000000003
27149	254	3154	1864	83	Potatoes	93	UAH	5	KG	2	2016	5.66000000000000014
27150	254	3154	1864	92	Eggs	93	UAH	81	10 pcs	2	2016	14.8367000000000004
27151	254	3154	1864	97	Sugar	93	UAH	5	KG	2	2016	15.3167000000000009
27152	254	3154	1864	112	Pasta	93	UAH	5	KG	2	2016	10.2833000000000006
27153	254	3154	1864	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	35.996699999999997
27154	254	3154	1864	140	Meat (pork)	93	UAH	5	KG	2	2016	66.3799999999999955
27155	254	3154	1864	141	Meat (beef)	93	UAH	5	KG	2	2016	83.0767000000000024
27156	254	3154	1864	166	Carrots	93	UAH	5	KG	2	2016	11.7467000000000006
27157	254	3154	1864	173	Onions	93	UAH	5	KG	2	2016	9.14669999999999916
27158	254	3154	1864	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	7.88670000000000027
27159	254	3154	1864	181	Cabbage	93	UAH	5	KG	2	2016	11.7100000000000009
27160	254	3154	1864	184	Oil (sunflower)	93	UAH	15	L	2	2016	29.1233000000000004
27161	254	3154	1864	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.8499999999999996
27162	254	3154	1864	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	19.5300000000000011
27163	254	3154	1864	367	Curd	93	UAH	5	KG	2	2016	72.0900000000000034
27164	254	3154	1864	368	Sour cream	93	UAH	15	L	2	2016	27.8399999999999999
27165	254	3154	1864	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	57.7899999999999991
27166	254	3154	1864	370	Beetroots	93	UAH	5	KG	2	2016	7.98000000000000043
27167	254	3154	1864	372	Butter	93	UAH	5	KG	2	2016	97.263300000000001
27168	254	3154	1864	373	Buckwheat grits	93	UAH	5	KG	2	2016	27.5599999999999987
27169	254	3154	1864	374	Bread (rye)	93	UAH	37	Loaf	2	2016	7.91000000000000014
27170	254	3154	1864	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	8.17999999999999972
27171	254	3154	1864	376	Fat (salo)	93	UAH	5	KG	2	2016	48.6599999999999966
27172	254	3155	1865	52	Rice	93	UAH	5	KG	2	2016	16.476700000000001
27173	254	3155	1865	81	Milk	93	UAH	15	L	2	2016	13.7332999999999998
27174	254	3155	1865	83	Potatoes	93	UAH	5	KG	2	2016	6.0033000000000003
27175	254	3155	1865	92	Eggs	93	UAH	81	10 pcs	2	2016	14.3432999999999993
27176	254	3155	1865	97	Sugar	93	UAH	5	KG	2	2016	14.9967000000000006
27177	254	3155	1865	112	Pasta	93	UAH	5	KG	2	2016	9.23000000000000043
27178	254	3155	1865	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	37.8900000000000006
27179	254	3155	1865	140	Meat (pork)	93	UAH	5	KG	2	2016	65.9967000000000041
27180	254	3155	1865	141	Meat (beef)	93	UAH	5	KG	2	2016	84
27181	254	3155	1865	166	Carrots	93	UAH	5	KG	2	2016	11.1667000000000005
27182	254	3155	1865	173	Onions	93	UAH	5	KG	2	2016	9.10330000000000084
27183	254	3155	1865	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.03330000000000055
27184	254	3155	1865	181	Cabbage	93	UAH	5	KG	2	2016	10.7266999999999992
27185	254	3155	1865	184	Oil (sunflower)	93	UAH	15	L	2	2016	29.2399999999999984
27186	254	3155	1865	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.6532999999999998
27187	254	3155	1865	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	19.3599999999999994
27188	254	3155	1865	367	Curd	93	UAH	5	KG	2	2016	72.1033000000000044
27189	254	3155	1865	368	Sour cream	93	UAH	15	L	2	2016	31.6933000000000007
27190	254	3155	1865	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	52.6099999999999994
27191	254	3155	1865	370	Beetroots	93	UAH	5	KG	2	2016	8.19999999999999929
27192	254	3155	1865	372	Butter	93	UAH	5	KG	2	2016	99.1732999999999976
27193	254	3155	1865	373	Buckwheat grits	93	UAH	5	KG	2	2016	27.1733000000000011
27194	254	3155	1865	374	Bread (rye)	93	UAH	37	Loaf	2	2016	10.3599999999999994
27195	254	3155	1865	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	9.88000000000000078
27196	254	3155	1865	376	Fat (salo)	93	UAH	5	KG	2	2016	39.6899999999999977
27197	254	3156	1866	52	Rice	93	UAH	5	KG	2	2016	15.0032999999999994
27198	254	3156	1866	81	Milk	93	UAH	15	L	2	2016	11.4199999999999999
27199	254	3156	1866	83	Potatoes	93	UAH	5	KG	2	2016	5.75999999999999979
27200	254	3156	1866	92	Eggs	93	UAH	81	10 pcs	2	2016	14.6199999999999992
27201	254	3156	1866	97	Sugar	93	UAH	5	KG	2	2016	14.7233000000000001
27202	254	3156	1866	112	Pasta	93	UAH	5	KG	2	2016	9.25329999999999941
27203	254	3156	1866	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	38.246699999999997
27204	254	3156	1866	140	Meat (pork)	93	UAH	5	KG	2	2016	62.4266999999999967
27205	254	3156	1866	141	Meat (beef)	93	UAH	5	KG	2	2016	80.1833000000000027
27206	254	3156	1866	166	Carrots	93	UAH	5	KG	2	2016	11.4932999999999996
27207	254	3156	1866	173	Onions	93	UAH	5	KG	2	2016	8.8100000000000005
27208	254	3156	1866	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.30330000000000013
27209	254	3156	1866	181	Cabbage	93	UAH	5	KG	2	2016	10.6767000000000003
27210	254	3156	1866	184	Oil (sunflower)	93	UAH	15	L	2	2016	29.5899999999999999
27211	254	3156	1866	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.6099999999999994
27212	254	3156	1866	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	19.1000000000000014
27213	254	3156	1866	367	Curd	93	UAH	5	KG	2	2016	69.3132999999999981
27214	254	3156	1866	368	Sour cream	93	UAH	15	L	2	2016	28.9466999999999999
27215	254	3156	1866	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	52.3299999999999983
27216	254	3156	1866	370	Beetroots	93	UAH	5	KG	2	2016	8.52330000000000076
27217	254	3156	1866	372	Butter	93	UAH	5	KG	2	2016	92.4633000000000038
27218	254	3156	1866	373	Buckwheat grits	93	UAH	5	KG	2	2016	27.2967000000000013
27219	254	3156	1866	374	Bread (rye)	93	UAH	37	Loaf	2	2016	9.78999999999999915
27220	254	3156	1866	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	10.0399999999999991
27221	254	3156	1866	376	Fat (salo)	93	UAH	5	KG	2	2016	31.5899999999999999
27222	254	3157	1867	52	Rice	93	UAH	5	KG	2	2016	16.2699999999999996
27223	254	3157	1867	81	Milk	93	UAH	15	L	2	2016	12.8000000000000007
27224	254	3157	1867	83	Potatoes	93	UAH	5	KG	2	2016	6.09670000000000023
27225	254	3157	1867	92	Eggs	93	UAH	81	10 pcs	2	2016	14.9433000000000007
27226	254	3157	1867	97	Sugar	93	UAH	5	KG	2	2016	14.5433000000000003
27227	254	3157	1867	112	Pasta	93	UAH	5	KG	2	2016	8.86330000000000062
27228	254	3157	1867	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	40.4033000000000015
27229	254	3157	1867	140	Meat (pork)	93	UAH	5	KG	2	2016	63.5200000000000031
27230	254	3157	1867	141	Meat (beef)	93	UAH	5	KG	2	2016	74.25
27231	254	3157	1867	166	Carrots	93	UAH	5	KG	2	2016	11.7699999999999996
27232	254	3157	1867	173	Onions	93	UAH	5	KG	2	2016	9.39000000000000057
27233	254	3157	1867	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.43329999999999913
27234	254	3157	1867	181	Cabbage	93	UAH	5	KG	2	2016	11.5199999999999996
27235	254	3157	1867	184	Oil (sunflower)	93	UAH	15	L	2	2016	28.4299999999999997
27236	254	3157	1867	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.8232999999999997
27237	254	3157	1867	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	19.4400000000000013
27238	254	3157	1867	367	Curd	93	UAH	5	KG	2	2016	75.0799999999999983
27239	254	3157	1867	368	Sour cream	93	UAH	15	L	2	2016	30.5700000000000003
27240	254	3157	1867	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	47.1199999999999974
27241	254	3157	1867	370	Beetroots	93	UAH	5	KG	2	2016	9.08329999999999949
27242	254	3157	1867	372	Butter	93	UAH	5	KG	2	2016	109.099999999999994
27243	254	3157	1867	373	Buckwheat grits	93	UAH	5	KG	2	2016	26.9933000000000014
27244	254	3157	1867	374	Bread (rye)	93	UAH	37	Loaf	2	2016	7.95999999999999996
27245	254	3157	1867	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	9.28999999999999915
27246	254	3157	1867	376	Fat (salo)	93	UAH	5	KG	2	2016	42.8500000000000014
27247	254	3159	1869	52	Rice	93	UAH	5	KG	2	2016	16.8167000000000009
27248	254	3159	1869	81	Milk	93	UAH	15	L	2	2016	11.4867000000000008
27249	254	3159	1869	83	Potatoes	93	UAH	5	KG	2	2016	7.23329999999999984
27250	254	3159	1869	92	Eggs	93	UAH	81	10 pcs	2	2016	14.0132999999999992
27251	254	3159	1869	97	Sugar	93	UAH	5	KG	2	2016	14.9832999999999998
27252	254	3159	1869	112	Pasta	93	UAH	5	KG	2	2016	9.87669999999999959
27253	254	3159	1869	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	40.273299999999999
27254	254	3159	1869	140	Meat (pork)	93	UAH	5	KG	2	2016	65.1867000000000019
27255	254	3159	1869	141	Meat (beef)	93	UAH	5	KG	2	2016	97.730000000000004
27256	254	3159	1869	166	Carrots	93	UAH	5	KG	2	2016	12.9433000000000007
27257	254	3159	1869	173	Onions	93	UAH	5	KG	2	2016	10.2833000000000006
27258	254	3159	1869	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	9.66999999999999993
27259	254	3159	1869	181	Cabbage	93	UAH	5	KG	2	2016	11.6366999999999994
27260	254	3159	1869	184	Oil (sunflower)	93	UAH	15	L	2	2016	30.9033000000000015
27261	254	3159	1869	284	Fuel (diesel)	93	UAH	15	L	2	2016	16.0100000000000016
27262	254	3159	1869	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	19.5100000000000016
27263	254	3159	1869	367	Curd	93	UAH	5	KG	2	2016	69.8466999999999985
27264	254	3159	1869	368	Sour cream	93	UAH	15	L	2	2016	33.6266999999999996
27265	254	3159	1869	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	58.1799999999999997
27266	254	3159	1869	370	Beetroots	93	UAH	5	KG	2	2016	9.91670000000000051
27267	254	3159	1869	372	Butter	93	UAH	5	KG	2	2016	113.930000000000007
27268	254	3159	1869	373	Buckwheat grits	93	UAH	5	KG	2	2016	27.4532999999999987
27269	254	3159	1869	374	Bread (rye)	93	UAH	37	Loaf	2	2016	9.9399999999999995
27270	254	3159	1869	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	11.2799999999999994
27271	254	3159	1869	376	Fat (salo)	93	UAH	5	KG	2	2016	71.4266999999999967
27272	254	3161	1870	52	Rice	93	UAH	5	KG	2	2016	18.0066999999999986
27273	254	3161	1870	81	Milk	93	UAH	15	L	2	2016	9.25999999999999979
27274	254	3161	1870	83	Potatoes	93	UAH	5	KG	2	2016	6.26670000000000016
27275	254	3161	1870	92	Eggs	93	UAH	81	10 pcs	2	2016	14.5867000000000004
27276	254	3161	1870	97	Sugar	93	UAH	5	KG	2	2016	15.2733000000000008
27277	254	3161	1870	112	Pasta	93	UAH	5	KG	2	2016	9.61999999999999922
27278	254	3161	1870	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	37.0200000000000031
27279	254	3161	1870	140	Meat (pork)	93	UAH	5	KG	2	2016	58.8532999999999973
27280	254	3161	1870	141	Meat (beef)	93	UAH	5	KG	2	2016	74.6367000000000047
27281	254	3161	1870	166	Carrots	93	UAH	5	KG	2	2016	12.3599999999999994
27282	254	3161	1870	173	Onions	93	UAH	5	KG	2	2016	10.0999999999999996
27283	254	3161	1870	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.1333000000000002
27284	254	3161	1870	181	Cabbage	93	UAH	5	KG	2	2016	11.5800000000000001
27285	254	3161	1870	184	Oil (sunflower)	93	UAH	15	L	2	2016	28.5566999999999993
27286	254	3161	1870	284	Fuel (diesel)	93	UAH	15	L	2	2016	16.4699999999999989
27287	254	3161	1870	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	20.0300000000000011
27288	254	3161	1870	367	Curd	93	UAH	5	KG	2	2016	69.2066999999999979
27289	254	3161	1870	368	Sour cream	93	UAH	15	L	2	2016	29.7032999999999987
27290	254	3161	1870	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	45
27291	254	3161	1870	370	Beetroots	93	UAH	5	KG	2	2016	8.84329999999999927
27292	254	3161	1870	372	Butter	93	UAH	5	KG	2	2016	98.8966999999999956
27293	254	3161	1870	373	Buckwheat grits	93	UAH	5	KG	2	2016	29.1499999999999986
27294	254	3161	1870	374	Bread (rye)	93	UAH	37	Loaf	2	2016	10.5600000000000005
27295	254	3161	1870	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	11.4466999999999999
27296	254	3161	1870	376	Fat (salo)	93	UAH	5	KG	2	2016	40.6332999999999984
27297	254	3160	1871	52	Rice	93	UAH	5	KG	2	2016	16.3066999999999993
27298	254	3160	1871	81	Milk	93	UAH	15	L	2	2016	13.7933000000000003
27299	254	3160	1871	83	Potatoes	93	UAH	5	KG	2	2016	5.05670000000000019
27300	254	3160	1871	92	Eggs	93	UAH	81	10 pcs	2	2016	15.9533000000000005
27301	254	3160	1871	97	Sugar	93	UAH	5	KG	2	2016	14.4967000000000006
27302	254	3160	1871	112	Pasta	93	UAH	5	KG	2	2016	10.3132999999999999
27303	254	3160	1871	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	37.7567000000000021
27304	254	3160	1871	140	Meat (pork)	93	UAH	5	KG	2	2016	60.2100000000000009
27305	254	3160	1871	141	Meat (beef)	93	UAH	5	KG	2	2016	82.9500000000000028
27306	254	3160	1871	166	Carrots	93	UAH	5	KG	2	2016	9.29330000000000034
27307	254	3160	1871	173	Onions	93	UAH	5	KG	2	2016	8.62669999999999959
27308	254	3160	1871	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	9.72330000000000005
27309	254	3160	1871	181	Cabbage	93	UAH	5	KG	2	2016	9.56329999999999991
27310	254	3160	1871	184	Oil (sunflower)	93	UAH	15	L	2	2016	31.7899999999999991
27311	254	3160	1871	284	Fuel (diesel)	93	UAH	15	L	2	2016	16.2232999999999983
27312	254	3160	1871	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	20.1700000000000017
27313	254	3160	1871	367	Curd	93	UAH	5	KG	2	2016	65.6466999999999956
27314	254	3160	1871	368	Sour cream	93	UAH	15	L	2	2016	32.3066999999999993
27315	254	3160	1871	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	61.1400000000000006
27316	254	3160	1871	370	Beetroots	93	UAH	5	KG	2	2016	7.2533000000000003
27317	254	3160	1871	372	Butter	93	UAH	5	KG	2	2016	97.243300000000005
27318	254	3160	1871	373	Buckwheat grits	93	UAH	5	KG	2	2016	25.513300000000001
27319	254	3160	1871	374	Bread (rye)	93	UAH	37	Loaf	2	2016	9.75999999999999979
27320	254	3160	1871	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	10.6699999999999999
27321	254	3160	1871	376	Fat (salo)	93	UAH	5	KG	2	2016	34.8999999999999986
27322	254	3162	1872	52	Rice	93	UAH	5	KG	2	2016	16.2399999999999984
27323	254	3162	1872	81	Milk	93	UAH	15	L	2	2016	12.9800000000000004
27324	254	3162	1872	83	Potatoes	93	UAH	5	KG	2	2016	5.69000000000000039
27325	254	3162	1872	92	Eggs	93	UAH	81	10 pcs	2	2016	13.7766999999999999
27326	254	3162	1872	97	Sugar	93	UAH	5	KG	2	2016	15.0600000000000005
27327	254	3162	1872	112	Pasta	93	UAH	5	KG	2	2016	9.77999999999999936
27328	254	3162	1872	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	36.4266999999999967
27329	254	3162	1872	140	Meat (pork)	93	UAH	5	KG	2	2016	68.3067000000000064
27330	254	3162	1872	141	Meat (beef)	93	UAH	5	KG	2	2016	80.9133000000000067
27331	254	3162	1872	166	Carrots	93	UAH	5	KG	2	2016	9.54669999999999952
27332	254	3162	1872	173	Onions	93	UAH	5	KG	2	2016	7.87669999999999959
27333	254	3162	1872	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.3100000000000005
27334	254	3162	1872	181	Cabbage	93	UAH	5	KG	2	2016	9.92329999999999934
27335	254	3162	1872	184	Oil (sunflower)	93	UAH	15	L	2	2016	28.8733000000000004
27336	254	3162	1872	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.8033000000000001
27337	254	3162	1872	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	19.5566999999999993
27338	254	3162	1872	367	Curd	93	UAH	5	KG	2	2016	70.2066999999999979
27339	254	3162	1872	368	Sour cream	93	UAH	15	L	2	2016	30.8867000000000012
27340	254	3162	1872	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	45.7800000000000011
27341	254	3162	1872	370	Beetroots	93	UAH	5	KG	2	2016	6.80330000000000013
27342	254	3162	1872	372	Butter	93	UAH	5	KG	2	2016	96.0699999999999932
27343	254	3162	1872	373	Buckwheat grits	93	UAH	5	KG	2	2016	27.2899999999999991
27344	254	3162	1872	374	Bread (rye)	93	UAH	37	Loaf	2	2016	11.3000000000000007
27345	254	3162	1872	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	9.05000000000000071
27346	254	3162	1872	376	Fat (salo)	93	UAH	5	KG	2	2016	33.9632999999999967
27347	254	3163	1873	52	Rice	93	UAH	5	KG	2	2016	15.8966999999999992
27348	254	3163	1873	81	Milk	93	UAH	15	L	2	2016	12.2166999999999994
27349	254	3163	1873	83	Potatoes	93	UAH	5	KG	2	2016	6.89670000000000005
27350	254	3163	1873	92	Eggs	93	UAH	81	10 pcs	2	2016	14.7033000000000005
27351	254	3163	1873	97	Sugar	93	UAH	5	KG	2	2016	14.7066999999999997
27352	254	3163	1873	112	Pasta	93	UAH	5	KG	2	2016	9.55000000000000071
27353	254	3163	1873	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	38.4166999999999987
27354	254	3163	1873	140	Meat (pork)	93	UAH	5	KG	2	2016	64.7199999999999989
27355	254	3163	1873	141	Meat (beef)	93	UAH	5	KG	2	2016	86.2399999999999949
27356	254	3163	1873	166	Carrots	93	UAH	5	KG	2	2016	11.7200000000000006
27357	254	3163	1873	173	Onions	93	UAH	5	KG	2	2016	9.10670000000000002
27358	254	3163	1873	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	9.31670000000000087
27359	254	3163	1873	181	Cabbage	93	UAH	5	KG	2	2016	12
27360	254	3163	1873	184	Oil (sunflower)	93	UAH	15	L	2	2016	30.273299999999999
27361	254	3163	1873	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.7300000000000004
27362	254	3163	1873	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	19.4400000000000013
27363	254	3163	1873	367	Curd	93	UAH	5	KG	2	2016	70.7667000000000002
27364	254	3163	1873	368	Sour cream	93	UAH	15	L	2	2016	31.6367000000000012
27365	254	3163	1873	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	63.2132999999999967
27366	254	3163	1873	370	Beetroots	93	UAH	5	KG	2	2016	9.28999999999999915
27367	254	3163	1873	372	Butter	93	UAH	5	KG	2	2016	100.200000000000003
27368	254	3163	1873	373	Buckwheat grits	93	UAH	5	KG	2	2016	26.8432999999999993
27369	254	3163	1873	374	Bread (rye)	93	UAH	37	Loaf	2	2016	7.30999999999999961
27370	254	3163	1873	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	8.47000000000000064
27371	254	3163	1873	376	Fat (salo)	93	UAH	5	KG	2	2016	41.9299999999999997
27372	254	3164	1874	52	Rice	93	UAH	5	KG	2	2016	15.6500000000000004
27373	254	3164	1874	81	Milk	93	UAH	15	L	2	2016	11.4633000000000003
27374	254	3164	1874	83	Potatoes	93	UAH	5	KG	2	2016	5.7533000000000003
27375	254	3164	1874	92	Eggs	93	UAH	81	10 pcs	2	2016	14.4900000000000002
27376	254	3164	1874	97	Sugar	93	UAH	5	KG	2	2016	15.0366999999999997
27377	254	3164	1874	112	Pasta	93	UAH	5	KG	2	2016	9.5600000000000005
27378	254	3164	1874	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	35.9500000000000028
27379	254	3164	1874	140	Meat (pork)	93	UAH	5	KG	2	2016	63.263300000000001
27380	254	3164	1874	141	Meat (beef)	93	UAH	5	KG	2	2016	80.243300000000005
27381	254	3164	1874	166	Carrots	93	UAH	5	KG	2	2016	11.2833000000000006
27382	254	3164	1874	173	Onions	93	UAH	5	KG	2	2016	8.66000000000000014
27383	254	3164	1874	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.74670000000000059
27384	254	3164	1874	181	Cabbage	93	UAH	5	KG	2	2016	11.4867000000000008
27385	254	3164	1874	184	Oil (sunflower)	93	UAH	15	L	2	2016	30.2767000000000017
27386	254	3164	1874	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.6433
27387	254	3164	1874	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	19.2967000000000013
27388	254	3164	1874	367	Curd	93	UAH	5	KG	2	2016	67.8466999999999985
27389	254	3164	1874	368	Sour cream	93	UAH	15	L	2	2016	30.6099999999999994
27390	254	3164	1874	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	49.5767000000000024
27391	254	3164	1874	370	Beetroots	93	UAH	5	KG	2	2016	8.47000000000000064
27392	254	3164	1874	372	Butter	93	UAH	5	KG	2	2016	98.9033000000000015
27393	254	3164	1874	373	Buckwheat grits	93	UAH	5	KG	2	2016	27.6832999999999991
27394	254	3164	1874	374	Bread (rye)	93	UAH	37	Loaf	2	2016	8.60999999999999943
27395	254	3164	1874	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	10.3699999999999992
27396	254	3164	1874	376	Fat (salo)	93	UAH	5	KG	2	2016	42.9699999999999989
27397	254	3165	1875	52	Rice	93	UAH	5	KG	2	2016	15.1366999999999994
27398	254	3165	1875	81	Milk	93	UAH	15	L	2	2016	11.4533000000000005
27399	254	3165	1875	83	Potatoes	93	UAH	5	KG	2	2016	5.48329999999999984
27400	254	3165	1875	92	Eggs	93	UAH	81	10 pcs	2	2016	14.7033000000000005
27401	254	3165	1875	97	Sugar	93	UAH	5	KG	2	2016	14.6366999999999994
27402	254	3165	1875	112	Pasta	93	UAH	5	KG	2	2016	9.44999999999999929
27403	254	3165	1875	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	37.1366999999999976
27404	254	3165	1875	140	Meat (pork)	93	UAH	5	KG	2	2016	61.8367000000000004
27405	254	3165	1875	141	Meat (beef)	93	UAH	5	KG	2	2016	90.006699999999995
27406	254	3165	1875	166	Carrots	93	UAH	5	KG	2	2016	10.5
27407	254	3165	1875	173	Onions	93	UAH	5	KG	2	2016	9.38669999999999938
27408	254	3165	1875	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.37669999999999959
27409	254	3165	1875	181	Cabbage	93	UAH	5	KG	2	2016	10.3966999999999992
27410	254	3165	1875	184	Oil (sunflower)	93	UAH	15	L	2	2016	30.2433000000000014
27411	254	3165	1875	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.5533000000000001
27412	254	3165	1875	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	19.0032999999999994
27413	254	3165	1875	367	Curd	93	UAH	5	KG	2	2016	72.8766999999999996
27414	254	3165	1875	368	Sour cream	93	UAH	15	L	2	2016	30.0366999999999997
27415	254	3165	1875	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	53.6266999999999996
27416	254	3165	1875	370	Beetroots	93	UAH	5	KG	2	2016	7.84330000000000016
27417	254	3165	1875	372	Butter	93	UAH	5	KG	2	2016	102.582999999999998
27418	254	3165	1875	373	Buckwheat grits	93	UAH	5	KG	2	2016	27.1067
27419	254	3165	1875	374	Bread (rye)	93	UAH	37	Loaf	2	2016	9.53999999999999915
27420	254	3165	1875	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	11.0299999999999994
27421	254	3165	1875	376	Fat (salo)	93	UAH	5	KG	2	2016	35.216700000000003
27422	254	3166	1876	52	Rice	93	UAH	5	KG	2	2016	16.1600000000000001
27423	254	3166	1876	81	Milk	93	UAH	15	L	2	2016	13.4900000000000002
27424	254	3166	1876	83	Potatoes	93	UAH	5	KG	2	2016	4.86329999999999973
27425	254	3166	1876	92	Eggs	93	UAH	81	10 pcs	2	2016	14.8200000000000003
27426	254	3166	1876	97	Sugar	93	UAH	5	KG	2	2016	14.5732999999999997
27427	254	3166	1876	112	Pasta	93	UAH	5	KG	2	2016	9.85330000000000084
27428	254	3166	1876	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	39.716700000000003
27429	254	3166	1876	140	Meat (pork)	93	UAH	5	KG	2	2016	63.1499999999999986
27430	254	3166	1876	141	Meat (beef)	93	UAH	5	KG	2	2016	85.0467000000000013
27431	254	3166	1876	166	Carrots	93	UAH	5	KG	2	2016	11.8599999999999994
27432	254	3166	1876	173	Onions	93	UAH	5	KG	2	2016	8.74329999999999963
27433	254	3166	1876	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.35670000000000002
27434	254	3166	1876	181	Cabbage	93	UAH	5	KG	2	2016	11.2066999999999997
27435	254	3166	1876	184	Oil (sunflower)	93	UAH	15	L	2	2016	31.3733000000000004
27436	254	3166	1876	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.5832999999999995
27437	254	3166	1876	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	19.3299999999999983
27438	254	3166	1876	367	Curd	93	UAH	5	KG	2	2016	75.6567000000000007
27439	254	3166	1876	368	Sour cream	93	UAH	15	L	2	2016	30.7699999999999996
27440	254	3166	1876	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	50.0600000000000023
27441	254	3166	1876	370	Beetroots	93	UAH	5	KG	2	2016	8.22669999999999924
27442	254	3166	1876	372	Butter	93	UAH	5	KG	2	2016	109.777000000000001
27443	254	3166	1876	373	Buckwheat grits	93	UAH	5	KG	2	2016	27.6099999999999994
27444	254	3166	1876	374	Bread (rye)	93	UAH	37	Loaf	2	2016	9.83000000000000007
27445	254	3166	1876	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	11.3000000000000007
27446	254	3166	1876	376	Fat (salo)	93	UAH	5	KG	2	2016	39.3400000000000034
27447	254	3167	1877	52	Rice	93	UAH	5	KG	2	2016	17.1000000000000014
27448	254	3167	1877	81	Milk	93	UAH	15	L	2	2016	10.8599999999999994
27449	254	3167	1877	83	Potatoes	93	UAH	5	KG	2	2016	5.06329999999999991
27450	254	3167	1877	92	Eggs	93	UAH	81	10 pcs	2	2016	16.1733000000000011
27451	254	3167	1877	97	Sugar	93	UAH	5	KG	2	2016	15.1999999999999993
27452	254	3167	1877	112	Pasta	93	UAH	5	KG	2	2016	10.8200000000000003
27453	254	3167	1877	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	38.7899999999999991
27454	254	3167	1877	140	Meat (pork)	93	UAH	5	KG	2	2016	60.1833000000000027
27455	254	3167	1877	141	Meat (beef)	93	UAH	5	KG	2	2016	81.4633000000000038
27456	254	3167	1877	166	Carrots	93	UAH	5	KG	2	2016	12.0466999999999995
27457	254	3167	1877	173	Onions	93	UAH	5	KG	2	2016	9.7632999999999992
27458	254	3167	1877	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.75999999999999979
27459	254	3167	1877	181	Cabbage	93	UAH	5	KG	2	2016	11.0399999999999991
27460	254	3167	1877	184	Oil (sunflower)	93	UAH	15	L	2	2016	27.9699999999999989
27461	254	3167	1877	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.7966999999999995
27462	254	3167	1877	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	19.2600000000000016
27463	254	3167	1877	367	Curd	93	UAH	5	KG	2	2016	62.1032999999999973
27464	254	3167	1877	368	Sour cream	93	UAH	15	L	2	2016	31.4400000000000013
27465	254	3167	1877	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	54.7800000000000011
27466	254	3167	1877	370	Beetroots	93	UAH	5	KG	2	2016	8.24670000000000059
27467	254	3167	1877	372	Butter	93	UAH	5	KG	2	2016	94.9200000000000017
27468	254	3167	1877	373	Buckwheat grits	93	UAH	5	KG	2	2016	25.8933
27469	254	3167	1877	374	Bread (rye)	93	UAH	37	Loaf	2	2016	10.8000000000000007
27470	254	3167	1877	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	12.0832999999999995
27471	254	3167	1877	376	Fat (salo)	93	UAH	5	KG	2	2016	32.009999999999998
27472	254	3168	1878	52	Rice	93	UAH	5	KG	2	2016	16.6666999999999987
27473	254	3168	1878	81	Milk	93	UAH	15	L	2	2016	11.5832999999999995
27474	254	3168	1878	83	Potatoes	93	UAH	5	KG	2	2016	5.68330000000000002
27475	254	3168	1878	92	Eggs	93	UAH	81	10 pcs	2	2016	14.1632999999999996
27476	254	3168	1878	97	Sugar	93	UAH	5	KG	2	2016	14.7467000000000006
27477	254	3168	1878	112	Pasta	93	UAH	5	KG	2	2016	9.8232999999999997
27478	254	3168	1878	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	38.1433000000000035
27479	254	3168	1878	140	Meat (pork)	93	UAH	5	KG	2	2016	63.1233000000000004
27480	254	3168	1878	141	Meat (beef)	93	UAH	5	KG	2	2016	79.7933000000000021
27481	254	3168	1878	166	Carrots	93	UAH	5	KG	2	2016	11.3399999999999999
27482	254	3168	1878	173	Onions	93	UAH	5	KG	2	2016	8.83999999999999986
27483	254	3168	1878	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.24329999999999963
27484	254	3168	1878	181	Cabbage	93	UAH	5	KG	2	2016	10.9000000000000004
27485	254	3168	1878	184	Oil (sunflower)	93	UAH	15	L	2	2016	30.2199999999999989
27486	254	3168	1878	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.8399999999999999
27487	254	3168	1878	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	18.9699999999999989
27488	254	3168	1878	367	Curd	93	UAH	5	KG	2	2016	69.1732999999999976
27489	254	3168	1878	368	Sour cream	93	UAH	15	L	2	2016	30.7199999999999989
27490	254	3168	1878	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	54.5266999999999982
27491	254	3168	1878	370	Beetroots	93	UAH	5	KG	2	2016	8.16000000000000014
27492	254	3168	1878	372	Butter	93	UAH	5	KG	2	2016	102.106999999999999
27493	254	3168	1878	373	Buckwheat grits	93	UAH	5	KG	2	2016	25.9967000000000006
27494	254	3168	1878	374	Bread (rye)	93	UAH	37	Loaf	2	2016	9.14000000000000057
27495	254	3168	1878	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	9.65000000000000036
27496	254	3168	1878	376	Fat (salo)	93	UAH	5	KG	2	2016	39.2899999999999991
27497	254	3169	1879	52	Rice	93	UAH	5	KG	2	2016	16.0066999999999986
27498	254	3169	1879	81	Milk	93	UAH	15	L	2	2016	12.1300000000000008
27499	254	3169	1879	83	Potatoes	93	UAH	5	KG	2	2016	5.34670000000000023
27500	254	3169	1879	92	Eggs	93	UAH	81	10 pcs	2	2016	15.1400000000000006
27501	254	3169	1879	97	Sugar	93	UAH	5	KG	2	2016	15.9032999999999998
27502	254	3169	1879	112	Pasta	93	UAH	5	KG	2	2016	10.25
27503	254	3169	1879	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	38.8466999999999985
27504	254	3169	1879	140	Meat (pork)	93	UAH	5	KG	2	2016	62.3667000000000016
27505	254	3169	1879	141	Meat (beef)	93	UAH	5	KG	2	2016	79.4000000000000057
27506	254	3169	1879	166	Carrots	93	UAH	5	KG	2	2016	11.2833000000000006
27507	254	3169	1879	173	Onions	93	UAH	5	KG	2	2016	10.3300000000000001
27508	254	3169	1879	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.44330000000000069
27509	254	3169	1879	181	Cabbage	93	UAH	5	KG	2	2016	11.4100000000000001
27510	254	3169	1879	184	Oil (sunflower)	93	UAH	15	L	2	2016	32.2132999999999967
27511	254	3169	1879	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.4666999999999994
27512	254	3169	1879	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	18.6000000000000014
27513	254	3169	1879	367	Curd	93	UAH	5	KG	2	2016	75.0866999999999933
27514	254	3169	1879	368	Sour cream	93	UAH	15	L	2	2016	28.8567
27515	254	3169	1879	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	60.976700000000001
27516	254	3169	1879	370	Beetroots	93	UAH	5	KG	2	2016	8.50329999999999941
27517	254	3169	1879	372	Butter	93	UAH	5	KG	2	2016	99.8900000000000006
27518	254	3169	1879	373	Buckwheat grits	93	UAH	5	KG	2	2016	26.6367000000000012
27519	254	3169	1879	374	Bread (rye)	93	UAH	37	Loaf	2	2016	10.1400000000000006
27520	254	3169	1879	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	11.0399999999999991
27521	254	3169	1879	376	Fat (salo)	93	UAH	5	KG	2	2016	35.1599999999999966
27522	254	3170	1880	52	Rice	93	UAH	5	KG	2	2016	17.763300000000001
27523	254	3170	1880	81	Milk	93	UAH	15	L	2	2016	12.6567000000000007
27524	254	3170	1880	83	Potatoes	93	UAH	5	KG	2	2016	5.6767000000000003
27525	254	3170	1880	92	Eggs	93	UAH	81	10 pcs	2	2016	16.2133000000000003
27526	254	3170	1880	97	Sugar	93	UAH	5	KG	2	2016	14.9232999999999993
27527	254	3170	1880	112	Pasta	93	UAH	5	KG	2	2016	10.7400000000000002
27528	254	3170	1880	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	38.5433000000000021
27529	254	3170	1880	140	Meat (pork)	93	UAH	5	KG	2	2016	69.7967000000000013
27530	254	3170	1880	141	Meat (beef)	93	UAH	5	KG	2	2016	77.6932999999999936
27531	254	3170	1880	166	Carrots	93	UAH	5	KG	2	2016	11.5099999999999998
27532	254	3170	1880	173	Onions	93	UAH	5	KG	2	2016	10.3132999999999999
27533	254	3170	1880	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.05000000000000071
27534	254	3170	1880	181	Cabbage	93	UAH	5	KG	2	2016	11.8833000000000002
27535	254	3170	1880	184	Oil (sunflower)	93	UAH	15	L	2	2016	30.1933000000000007
27536	254	3170	1880	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.6067
27537	254	3170	1880	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	19.4400000000000013
27538	254	3170	1880	367	Curd	93	UAH	5	KG	2	2016	63.2100000000000009
27539	254	3170	1880	368	Sour cream	93	UAH	15	L	2	2016	30.2866999999999997
27540	254	3170	1880	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	51.7999999999999972
27541	254	3170	1880	370	Beetroots	93	UAH	5	KG	2	2016	8.22000000000000064
27542	254	3170	1880	372	Butter	93	UAH	5	KG	2	2016	91.8833000000000055
27543	254	3170	1880	373	Buckwheat grits	93	UAH	5	KG	2	2016	29.1767000000000003
27544	254	3170	1880	374	Bread (rye)	93	UAH	37	Loaf	2	2016	11.0199999999999996
27545	254	3170	1880	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	11.9100000000000001
27546	254	3170	1880	376	Fat (salo)	93	UAH	5	KG	2	2016	37.9200000000000017
27547	254	3171	1881	52	Rice	93	UAH	5	KG	2	2016	16.3033000000000001
27548	254	3171	1881	81	Milk	93	UAH	15	L	2	2016	12.8167000000000009
27549	254	3171	1881	83	Potatoes	93	UAH	5	KG	2	2016	6.08999999999999986
27550	254	3171	1881	92	Eggs	93	UAH	81	10 pcs	2	2016	13.7699999999999996
27551	254	3171	1881	97	Sugar	93	UAH	5	KG	2	2016	15.0466999999999995
27552	254	3171	1881	112	Pasta	93	UAH	5	KG	2	2016	10.0266999999999999
27553	254	3171	1881	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	37.9033000000000015
27554	254	3171	1881	140	Meat (pork)	93	UAH	5	KG	2	2016	67.8400000000000034
27555	254	3171	1881	141	Meat (beef)	93	UAH	5	KG	2	2016	80.5400000000000063
27556	254	3171	1881	166	Carrots	93	UAH	5	KG	2	2016	10.9433000000000007
27557	254	3171	1881	173	Onions	93	UAH	5	KG	2	2016	9.10999999999999943
27558	254	3171	1881	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	7.98669999999999991
27559	254	3171	1881	181	Cabbage	93	UAH	5	KG	2	2016	11.2300000000000004
27560	254	3171	1881	184	Oil (sunflower)	93	UAH	15	L	2	2016	29.4033000000000015
27561	254	3171	1881	284	Fuel (diesel)	93	UAH	15	L	2	2016	15
27562	254	3171	1881	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	18
27563	254	3171	1881	367	Curd	93	UAH	5	KG	2	2016	68.7000000000000028
27564	254	3171	1881	368	Sour cream	93	UAH	15	L	2	2016	31.2300000000000004
27565	254	3171	1881	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	52.7332999999999998
27566	254	3171	1881	370	Beetroots	93	UAH	5	KG	2	2016	8.58000000000000007
27567	254	3171	1881	372	Butter	93	UAH	5	KG	2	2016	105.472999999999999
27568	254	3171	1881	373	Buckwheat grits	93	UAH	5	KG	2	2016	27.263300000000001
27569	254	3171	1881	374	Bread (rye)	93	UAH	37	Loaf	2	2016	9.06329999999999991
27570	254	3171	1881	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	9.30000000000000071
27571	254	3171	1881	376	Fat (salo)	93	UAH	5	KG	2	2016	38.8200000000000003
27572	254	3172	1882	52	Rice	93	UAH	5	KG	2	2016	16.0267000000000017
27573	254	3172	1882	81	Milk	93	UAH	15	L	2	2016	11.5399999999999991
27574	254	3172	1882	83	Potatoes	93	UAH	5	KG	2	2016	5.79000000000000004
27575	254	3172	1882	92	Eggs	93	UAH	81	10 pcs	2	2016	13.5333000000000006
27576	254	3172	1882	97	Sugar	93	UAH	5	KG	2	2016	14.9000000000000004
27577	254	3172	1882	112	Pasta	93	UAH	5	KG	2	2016	9.34670000000000023
27578	254	3172	1882	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	37.263300000000001
27579	254	3172	1882	140	Meat (pork)	93	UAH	5	KG	2	2016	60.236699999999999
27580	254	3172	1882	141	Meat (beef)	93	UAH	5	KG	2	2016	83.513300000000001
27581	254	3172	1882	166	Carrots	93	UAH	5	KG	2	2016	12.3332999999999995
27582	254	3172	1882	173	Onions	93	UAH	5	KG	2	2016	9.82670000000000066
27583	254	3172	1882	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	8.48329999999999984
27584	254	3172	1882	181	Cabbage	93	UAH	5	KG	2	2016	11.4533000000000005
27585	254	3172	1882	184	Oil (sunflower)	93	UAH	15	L	2	2016	29.6666999999999987
27586	254	3172	1882	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.3033000000000001
27587	254	3172	1882	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	18.5399999999999991
27588	254	3172	1882	367	Curd	93	UAH	5	KG	2	2016	56.4200000000000017
27589	254	3172	1882	368	Sour cream	93	UAH	15	L	2	2016	30.763300000000001
27590	254	3172	1882	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	63.2000000000000028
27591	254	3172	1882	370	Beetroots	93	UAH	5	KG	2	2016	8.58999999999999986
27592	254	3172	1882	372	Butter	93	UAH	5	KG	2	2016	108.132999999999996
27593	254	3172	1882	373	Buckwheat grits	93	UAH	5	KG	2	2016	26.5100000000000016
27594	254	3172	1882	374	Bread (rye)	93	UAH	37	Loaf	2	2016	9.58999999999999986
27595	254	3172	1882	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	11.1899999999999995
27596	254	3172	1882	376	Fat (salo)	93	UAH	5	KG	2	2016	30.476700000000001
27597	254	3159	1884	52	Rice	93	UAH	5	KG	2	2016	17.0566999999999993
27598	254	3159	1884	81	Milk	93	UAH	15	L	2	2016	12.4367000000000001
27599	254	3159	1884	83	Potatoes	93	UAH	5	KG	2	2016	5.78329999999999966
27600	254	3159	1884	92	Eggs	93	UAH	81	10 pcs	2	2016	14.2432999999999996
27601	254	3159	1884	97	Sugar	93	UAH	5	KG	2	2016	14.6966999999999999
27602	254	3159	1884	112	Pasta	93	UAH	5	KG	2	2016	9.09329999999999927
27603	254	3159	1884	125	Meat (chicken, whole)	93	UAH	5	KG	2	2016	38.1666999999999987
27604	254	3159	1884	140	Meat (pork)	93	UAH	5	KG	2	2016	61.4433000000000007
27605	254	3159	1884	141	Meat (beef)	93	UAH	5	KG	2	2016	80.9732999999999947
27606	254	3159	1884	166	Carrots	93	UAH	5	KG	2	2016	10.9832999999999998
27607	254	3159	1884	173	Onions	93	UAH	5	KG	2	2016	8.73329999999999984
27608	254	3159	1884	177	Wheat flour (first grade)	93	UAH	5	KG	2	2016	9.1899999999999995
27609	254	3159	1884	181	Cabbage	93	UAH	5	KG	2	2016	10.3000000000000007
27610	254	3159	1884	184	Oil (sunflower)	93	UAH	15	L	2	2016	31.3399999999999999
27611	254	3159	1884	284	Fuel (diesel)	93	UAH	15	L	2	2016	15.3866999999999994
27612	254	3159	1884	285	Fuel (petrol-gasoline)	93	UAH	15	L	2	2016	19.370000000000001
27613	254	3159	1884	367	Curd	93	UAH	5	KG	2	2016	69.1233000000000004
27614	254	3159	1884	368	Sour cream	93	UAH	15	L	2	2016	31.273299999999999
27615	254	3159	1884	369	Meat (mixed, sausage)	93	UAH	5	KG	2	2016	61.0799999999999983
27616	254	3159	1884	370	Beetroots	93	UAH	5	KG	2	2016	8.11999999999999922
27617	254	3159	1884	372	Butter	93	UAH	5	KG	2	2016	108.613
27618	254	3159	1884	373	Buckwheat grits	93	UAH	5	KG	2	2016	26.129999999999999
27619	254	3159	1884	374	Bread (rye)	93	UAH	37	Loaf	2	2016	9.00329999999999941
27620	254	3159	1884	375	Bread (wheat)	93	UAH	37	Loaf	2	2016	10.3332999999999995
27621	254	3159	1884	376	Fat (salo)	93	UAH	5	KG	2	2016	44.5399999999999991
27622	257	48357	80	50	Beans	22	TZS	9	100 KG	2	2016	143056
27623	257	48357	80	51	Maize	22	TZS	9	100 KG	2	2016	66277.8000000000029
27624	257	48357	80	52	Rice	22	TZS	9	100 KG	2	2016	185278
27625	257	48365	81	50	Beans	22	TZS	9	100 KG	2	2016	127250
27626	257	48365	81	51	Maize	22	TZS	9	100 KG	2	2016	66000
27627	257	48365	81	52	Rice	22	TZS	9	100 KG	2	2016	191250
27628	257	48361	82	50	Beans	22	TZS	9	100 KG	2	2016	109444
27629	257	48361	82	51	Maize	22	TZS	9	100 KG	2	2016	80166.6999999999971
27630	257	48361	82	52	Rice	22	TZS	9	100 KG	2	2016	181111
27631	257	48358	83	50	Beans	22	TZS	9	100 KG	2	2016	192176
27632	257	48358	83	51	Maize	22	TZS	9	100 KG	2	2016	67097.6999999999971
27633	257	48358	83	52	Rice	22	TZS	9	100 KG	2	2016	192569
27634	257	48359	84	50	Beans	22	TZS	9	100 KG	2	2016	186750
27635	257	48359	84	51	Maize	22	TZS	9	100 KG	2	2016	69750
27636	257	48359	84	52	Rice	22	TZS	9	100 KG	2	2016	188000
27637	257	48360	85	50	Beans	22	TZS	9	100 KG	2	2016	186500
27638	257	48360	85	51	Maize	22	TZS	9	100 KG	2	2016	60800
27639	257	48360	85	52	Rice	22	TZS	9	100 KG	2	2016	187050
27640	257	48362	86	50	Beans	22	TZS	9	100 KG	2	2016	166667
27641	257	48362	86	51	Maize	22	TZS	9	100 KG	2	2016	75381.3999999999942
27642	257	48362	86	52	Rice	22	TZS	9	100 KG	2	2016	166333
27643	257	48364	87	50	Beans	22	TZS	9	100 KG	2	2016	157000
27644	257	48364	87	51	Maize	22	TZS	9	100 KG	2	2016	66100
27645	257	48364	87	52	Rice	22	TZS	9	100 KG	2	2016	170000
27646	257	48367	88	50	Beans	22	TZS	9	100 KG	2	2016	172000
27647	257	48367	88	51	Maize	22	TZS	9	100 KG	2	2016	67600
27648	257	48367	88	52	Rice	22	TZS	9	100 KG	2	2016	193250
27649	257	48368	89	50	Beans	22	TZS	9	100 KG	2	2016	189500
27650	257	48368	89	51	Maize	22	TZS	9	100 KG	2	2016	57350
27651	257	48368	89	52	Rice	22	TZS	9	100 KG	2	2016	185000
27652	257	48363	90	50	Beans	22	TZS	9	100 KG	2	2016	159750
27653	257	48363	90	51	Maize	22	TZS	9	100 KG	2	2016	64550
27654	257	48363	90	52	Rice	22	TZS	9	100 KG	2	2016	150000
27655	257	48369	91	50	Beans	22	TZS	9	100 KG	2	2016	194545
27656	257	48369	91	51	Maize	22	TZS	9	100 KG	2	2016	65090.9000000000015
27657	257	48369	91	52	Rice	22	TZS	9	100 KG	2	2016	195045
27658	257	48370	92	50	Beans	22	TZS	9	100 KG	2	2016	193889
27659	257	48370	92	51	Maize	22	TZS	9	100 KG	2	2016	79277.8000000000029
27660	257	48370	92	52	Rice	22	TZS	9	100 KG	2	2016	185000
27661	257	48376	93	50	Beans	22	TZS	9	100 KG	2	2016	166500
27662	257	48376	93	51	Maize	22	TZS	9	100 KG	2	2016	70500
27663	257	48376	93	52	Rice	22	TZS	9	100 KG	2	2016	169000
27664	257	48377	94	50	Beans	22	TZS	9	100 KG	2	2016	156591
27665	257	48377	94	51	Maize	22	TZS	9	100 KG	2	2016	73636.3999999999942
27666	257	48377	94	52	Rice	22	TZS	9	100 KG	2	2016	173182
27667	257	48375	95	50	Beans	22	TZS	9	100 KG	2	2016	197000
27668	257	48375	95	51	Maize	22	TZS	9	100 KG	2	2016	46600
27669	257	48375	95	52	Rice	22	TZS	9	100 KG	2	2016	200000
27670	257	48380	96	50	Beans	22	TZS	9	100 KG	2	2016	164250
27671	257	48380	96	51	Maize	22	TZS	9	100 KG	2	2016	69850
27672	257	48380	96	52	Rice	22	TZS	9	100 KG	2	2016	180000
27673	257	48381	97	50	Beans	22	TZS	9	100 KG	2	2016	166000
27674	257	48381	97	51	Maize	22	TZS	9	100 KG	2	2016	69150
27675	257	48381	97	52	Rice	22	TZS	9	100 KG	2	2016	181500
27676	257	48366	99	50	Beans	22	TZS	9	100 KG	2	2016	162222
27677	257	48366	99	51	Maize	22	TZS	9	100 KG	2	2016	72888.8999999999942
27678	257	48366	99	52	Rice	22	TZS	9	100 KG	2	2016	192778
27679	257	48374	100	50	Beans	22	TZS	9	100 KG	2	2016	224000
27680	257	48374	100	51	Maize	22	TZS	9	100 KG	2	2016	54000
27681	257	48374	100	52	Rice	22	TZS	9	100 KG	2	2016	198250
27682	257	115002	1798	50	Beans	22	TZS	9	100 KG	5	2015	133333
27683	257	115002	1798	51	Maize	22	TZS	9	100 KG	5	2015	39458
27684	257	115002	1798	52	Rice	22	TZS	9	100 KG	5	2015	131667
27685	257	115007	1800	50	Beans	22	TZS	9	100 KG	5	2015	146364
27686	257	115007	1800	51	Maize	22	TZS	9	100 KG	5	2015	37500
27687	257	115007	1800	52	Rice	22	TZS	9	100 KG	5	2015	180636
27688	257	115005	1801	50	Beans	22	TZS	9	100 KG	5	2015	150000
27689	257	115005	1801	51	Maize	22	TZS	9	100 KG	5	2015	42333
27690	257	115005	1801	52	Rice	22	TZS	9	100 KG	5	2015	136679
27691	269	3409	192	58	Wheat flour	31	YER	5	KG	2	2016	154
27692	269	3409	192	64	Rice (imported)	31	YER	5	KG	4	2015	255
27693	269	3409	192	66	Beans (white)	31	YER	5	KG	4	2015	380
27694	269	3409	192	83	Potatoes	31	YER	5	KG	4	2015	235
27695	269	3409	192	84	Wheat	31	YER	5	KG	4	2015	190
27696	269	3409	192	92	Eggs	31	YER	33	Unit	4	2015	48
27697	269	3409	192	96	Oil (vegetable)	31	YER	15	L	2	2016	343
27698	269	3409	192	97	Sugar	31	YER	5	KG	2	2016	228
27699	269	3409	192	108	Lentils	31	YER	5	KG	4	2015	420
27700	269	3409	192	114	Tomatoes	31	YER	5	KG	4	2015	260
27701	269	3409	192	173	Onions	31	YER	5	KG	2	2016	188
27702	269	3409	192	185	Salt	31	YER	5	KG	4	2015	65
27703	269	3409	192	206	Beans (kidney red)	31	YER	5	KG	2	2016	400
27704	269	3409	192	284	Fuel (diesel)	31	YER	15	L	2	2016	150
27705	269	3409	192	285	Fuel (petrol-gasoline)	31	YER	15	L	2	2016	150
27706	269	3409	192	424	Peas (yellow, split)	31	YER	5	KG	4	2015	350
27707	269	3415	193	58	Wheat flour	31	YER	5	KG	2	2016	140
27708	269	3415	193	64	Rice (imported)	31	YER	5	KG	4	2015	240
27709	269	3415	193	66	Beans (white)	31	YER	5	KG	4	2015	310
27710	269	3415	193	83	Potatoes	31	YER	5	KG	4	2015	225
27711	269	3415	193	84	Wheat	31	YER	5	KG	4	2015	175
27712	269	3415	193	92	Eggs	31	YER	33	Unit	4	2015	45
27713	269	3415	193	96	Oil (vegetable)	31	YER	15	L	2	2016	369
27714	269	3415	193	97	Sugar	31	YER	5	KG	2	2016	220
27715	269	3415	193	108	Lentils	31	YER	5	KG	4	2015	350
27716	269	3415	193	114	Tomatoes	31	YER	5	KG	4	2015	250
27717	269	3415	193	173	Onions	31	YER	5	KG	2	2016	375
27718	269	3415	193	185	Salt	31	YER	5	KG	4	2015	60
27719	269	3415	193	206	Beans (kidney red)	31	YER	5	KG	2	2016	348
27720	269	3415	193	284	Fuel (diesel)	31	YER	15	L	2	2016	184
27721	269	3415	193	285	Fuel (petrol-gasoline)	31	YER	15	L	2	2016	268
27722	269	3415	193	424	Peas (yellow, split)	31	YER	5	KG	4	2015	315
27723	269	3418	194	58	Wheat flour	31	YER	5	KG	2	2016	147
27724	269	3418	194	64	Rice (imported)	31	YER	5	KG	4	2015	280
27725	269	3418	194	66	Beans (white)	31	YER	5	KG	4	2015	370
27726	269	3418	194	83	Potatoes	31	YER	5	KG	4	2015	230
27727	269	3418	194	84	Wheat	31	YER	5	KG	4	2015	180
27728	269	3418	194	92	Eggs	31	YER	33	Unit	4	2015	40
27729	269	3418	194	96	Oil (vegetable)	31	YER	15	L	2	2016	394
27730	269	3418	194	97	Sugar	31	YER	5	KG	2	2016	219
27731	269	3418	194	108	Lentils	31	YER	5	KG	4	2015	415
27732	269	3418	194	114	Tomatoes	31	YER	5	KG	4	2015	220
27733	269	3418	194	173	Onions	31	YER	5	KG	2	2016	312
27734	269	3418	194	185	Salt	31	YER	5	KG	4	2015	65
27735	269	3418	194	206	Beans (kidney red)	31	YER	5	KG	2	2016	350
27736	269	3418	194	284	Fuel (diesel)	31	YER	15	L	2	2016	181
27737	269	3418	194	285	Fuel (petrol-gasoline)	31	YER	15	L	2	2016	286
27738	269	3418	194	424	Peas (yellow, split)	31	YER	5	KG	4	2015	342
27739	269	3411	195	58	Wheat flour	31	YER	5	KG	2	2016	134
27740	269	3411	195	64	Rice (imported)	31	YER	5	KG	4	2015	305
27741	269	3411	195	66	Beans (white)	31	YER	5	KG	4	2015	350
27742	269	3411	195	83	Potatoes	31	YER	5	KG	4	2015	235
27743	269	3411	195	84	Wheat	31	YER	5	KG	4	2015	179
27744	269	3411	195	92	Eggs	31	YER	33	Unit	4	2015	40
27745	269	3411	195	96	Oil (vegetable)	31	YER	15	L	2	2016	316
27746	269	3411	195	97	Sugar	31	YER	5	KG	2	2016	208
27747	269	3411	195	108	Lentils	31	YER	5	KG	4	2015	365
27748	269	3411	195	114	Tomatoes	31	YER	5	KG	4	2015	240
27749	269	3411	195	173	Onions	31	YER	5	KG	2	2016	200
27750	269	3411	195	185	Salt	31	YER	5	KG	4	2015	60
27751	269	3411	195	206	Beans (kidney red)	31	YER	5	KG	2	2016	420
27752	269	3411	195	284	Fuel (diesel)	31	YER	15	L	2	2016	204
27753	269	3411	195	285	Fuel (petrol-gasoline)	31	YER	15	L	2	2016	260
27754	269	3411	195	424	Peas (yellow, split)	31	YER	5	KG	4	2015	320
27755	269	3422	196	58	Wheat flour	31	YER	5	KG	2	2016	162
27756	269	3422	196	64	Rice (imported)	31	YER	5	KG	4	2015	380
27757	269	3422	196	66	Beans (white)	31	YER	5	KG	4	2015	390
27758	269	3422	196	83	Potatoes	31	YER	5	KG	4	2015	270
27759	269	3422	196	84	Wheat	31	YER	5	KG	4	2015	190
27760	269	3422	196	92	Eggs	31	YER	33	Unit	4	2015	50
27761	269	3422	196	96	Oil (vegetable)	31	YER	15	L	2	2016	475
27762	269	3422	196	97	Sugar	31	YER	5	KG	2	2016	230
27763	269	3422	196	108	Lentils	31	YER	5	KG	4	2015	375
27764	269	3422	196	114	Tomatoes	31	YER	5	KG	4	2015	275
27765	269	3422	196	173	Onions	31	YER	5	KG	2	2016	310
27766	269	3422	196	185	Salt	31	YER	5	KG	4	2015	60
27767	269	3422	196	206	Beans (kidney red)	31	YER	5	KG	2	2016	406
27768	269	3422	196	284	Fuel (diesel)	31	YER	15	L	2	2016	300
27769	269	3422	196	285	Fuel (petrol-gasoline)	31	YER	15	L	2	2016	328
27770	269	3422	196	424	Peas (yellow, split)	31	YER	5	KG	4	2015	330
27771	269	144969	197	58	Wheat flour	31	YER	5	KG	2	2016	144
27772	269	144969	197	64	Rice (imported)	31	YER	5	KG	4	2015	245
27773	269	144969	197	66	Beans (white)	31	YER	5	KG	4	2015	340
27774	269	144969	197	83	Potatoes	31	YER	5	KG	4	2015	228
27775	269	144969	197	84	Wheat	31	YER	5	KG	4	2015	188
27776	269	144969	197	92	Eggs	31	YER	33	Unit	4	2015	45
27777	269	144969	197	96	Oil (vegetable)	31	YER	15	L	2	2016	346
27778	269	144969	197	97	Sugar	31	YER	5	KG	2	2016	203
27779	269	144969	197	108	Lentils	31	YER	5	KG	4	2015	387
27780	269	144969	197	114	Tomatoes	31	YER	5	KG	4	2015	270
27781	269	144969	197	173	Onions	31	YER	5	KG	2	2016	312
27782	269	144969	197	185	Salt	31	YER	5	KG	4	2015	65
27783	269	144969	197	206	Beans (kidney red)	31	YER	5	KG	2	2016	444
27784	269	144969	197	284	Fuel (diesel)	31	YER	15	L	2	2016	200
27785	269	144969	197	285	Fuel (petrol-gasoline)	31	YER	15	L	2	2016	220
27786	269	144969	197	424	Peas (yellow, split)	31	YER	5	KG	4	2015	333
27787	269	3409	198	58	Wheat flour	31	YER	5	KG	12	2010	150
27788	269	3409	198	84	Wheat	31	YER	5	KG	12	2010	150
27789	269	3425	199	58	Wheat flour	31	YER	5	KG	12	2010	120
27790	269	3425	199	84	Wheat	31	YER	5	KG	12	2010	120
27791	270	3427	369	65	Sorghum	52	ZMK	5	KG	9	2014	5000
27792	270	3427	369	67	Maize (white)	52	ZMK	5	KG	2	2016	2177.7800000000002
27793	270	3427	369	71	Rice (local)	52	ZMK	5	KG	11	2015	9000
27794	270	3427	369	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	17440
27795	270	3427	369	217	Cassava meal	52	ZMK	5	KG	2	2016	6000
27796	270	3427	369	262	Beans (dry)	52	ZMK	5	KG	2	2016	13440
27797	270	3427	369	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2250.40000000000009
27798	270	3427	369	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3060
27799	270	3428	370	67	Maize (white)	52	ZMK	5	KG	2	2016	1793.8900000000001
27800	270	3428	370	71	Rice (local)	52	ZMK	5	KG	2	2016	12310
27801	270	3428	370	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	9920
27802	270	3428	370	262	Beans (dry)	52	ZMK	5	KG	2	2016	16280
27803	270	3428	370	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2499.59999999999991
27804	270	3428	370	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3446.40000000000009
27805	270	3433	371	67	Maize (white)	52	ZMK	5	KG	2	2016	1400
27806	270	3433	371	71	Rice (local)	52	ZMK	5	KG	2	2016	11490
27807	270	3433	371	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	14290
27808	270	3433	371	262	Beans (dry)	52	ZMK	5	KG	2	2016	19320
27809	270	3433	371	264	Maize meal (white, roller)	52	ZMK	5	KG	1	2016	2308.40000000000009
27810	270	3433	371	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	2990.40000000000009
27811	270	3432	372	67	Maize (white)	52	ZMK	5	KG	2	2016	2044.44000000000005
27812	270	3432	372	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	12030
27813	270	3432	372	262	Beans (dry)	52	ZMK	5	KG	2	2016	13600
27814	270	3432	372	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3800
27815	270	3426	373	67	Maize (white)	52	ZMK	5	KG	9	2011	1151.72000000000003
27816	270	3426	374	67	Maize (white)	52	ZMK	5	KG	9	2011	861.11099999999999
27817	270	3433	375	67	Maize (white)	52	ZMK	5	KG	2	2016	1953.32999999999993
27818	270	3433	375	71	Rice (local)	52	ZMK	5	KG	2	2016	10000
27819	270	3433	375	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	18000
27820	270	3433	375	262	Beans (dry)	52	ZMK	5	KG	2	2016	19670
27821	270	3433	375	264	Maize meal (white, roller)	52	ZMK	5	KG	1	2016	2140
27822	270	3433	375	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	2880
27823	270	3427	376	65	Sorghum	52	ZMK	5	KG	5	2015	4000
27824	270	3427	376	67	Maize (white)	52	ZMK	5	KG	2	2016	2122.2199999999998
27825	270	3427	376	71	Rice (local)	52	ZMK	5	KG	2	2016	13080
27826	270	3427	376	73	Millet	52	ZMK	5	KG	2	2016	4500
27827	270	3427	376	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	16830
27828	270	3427	376	262	Beans (dry)	52	ZMK	5	KG	2	2016	14140
27829	270	3427	376	264	Maize meal (white, roller)	52	ZMK	5	KG	1	2016	2226.40000000000009
27830	270	3427	376	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3121.59999999999991
27831	270	3434	377	67	Maize (white)	52	ZMK	5	KG	1	2016	1977.77999999999997
27832	270	3434	377	71	Rice (local)	52	ZMK	5	KG	2	2016	13190
27833	270	3434	377	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	18370
27834	270	3434	377	217	Cassava meal	52	ZMK	5	KG	1	2015	6000
27835	270	3434	377	262	Beans (dry)	52	ZMK	5	KG	2	2016	19610
27836	270	3434	377	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2458.80000000000018
27837	270	3434	377	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3236.80000000000018
27838	270	3432	378	67	Maize (white)	52	ZMK	5	KG	2	2016	2130.55999999999995
27839	270	3432	378	71	Rice (local)	52	ZMK	5	KG	2	2016	11040
27840	270	3432	378	73	Millet	52	ZMK	5	KG	2	2016	2400
27841	270	3432	378	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	12230
27842	270	3432	378	217	Cassava meal	52	ZMK	5	KG	2	2016	6250
27843	270	3432	378	262	Beans (dry)	52	ZMK	5	KG	2	2016	9500
27844	270	3432	378	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2500
27845	270	3432	378	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3158.80000000000018
27846	270	3431	379	67	Maize (white)	52	ZMK	5	KG	2	2016	2122.2199999999998
27847	270	3431	379	71	Rice (local)	52	ZMK	5	KG	2	2016	11000
27848	270	3431	379	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	15800
27849	270	3431	379	217	Cassava meal	52	ZMK	5	KG	3	2015	10000
27850	270	3431	379	262	Beans (dry)	52	ZMK	5	KG	2	2016	15000
27851	270	3431	379	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2740
27852	270	3431	379	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3380
27853	270	3429	380	67	Maize (white)	52	ZMK	5	KG	2	2016	1800
27854	270	3429	380	71	Rice (local)	52	ZMK	5	KG	2	2016	9680
27855	270	3429	380	73	Millet	52	ZMK	5	KG	2	2016	2400
27856	270	3429	380	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	8990
27857	270	3429	380	217	Cassava meal	52	ZMK	5	KG	2	2016	3260
27858	270	3429	380	262	Beans (dry)	52	ZMK	5	KG	2	2016	11490
27859	270	3429	380	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2698.40000000000009
27860	270	3429	380	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3136.40000000000009
27861	270	3427	381	65	Sorghum	52	ZMK	5	KG	2	2016	4000
27862	270	3427	381	67	Maize (white)	52	ZMK	5	KG	2	2016	2192.2199999999998
27863	270	3427	381	71	Rice (local)	52	ZMK	5	KG	2	2016	11960
27864	270	3427	381	73	Millet	52	ZMK	5	KG	2	2016	4372
27865	270	3427	381	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	13120
27866	270	3427	381	217	Cassava meal	52	ZMK	5	KG	2	2016	6710
27867	270	3427	381	262	Beans (dry)	52	ZMK	5	KG	2	2016	12120
27868	270	3427	381	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2247.59999999999991
27869	270	3427	381	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	2943.59999999999991
27870	270	3433	382	65	Sorghum	52	ZMK	5	KG	2	2016	4400
27871	270	3433	382	67	Maize (white)	52	ZMK	5	KG	2	2016	1877.77999999999997
27872	270	3433	382	71	Rice (local)	52	ZMK	5	KG	2	2016	10700
27873	270	3433	382	73	Millet	52	ZMK	5	KG	2	2016	6800
27874	270	3433	382	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	15310
27875	270	3433	382	217	Cassava meal	52	ZMK	5	KG	2	2016	8360
27876	270	3433	382	262	Beans (dry)	52	ZMK	5	KG	2	2016	16670
27877	270	3433	382	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2180.80000000000018
27878	270	3433	382	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3058.80000000000018
27879	270	3430	383	67	Maize (white)	52	ZMK	5	KG	2	2016	2077.7800000000002
27880	270	3430	383	71	Rice (local)	52	ZMK	5	KG	2	2016	10000
27881	270	3430	383	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	14320
27882	270	3430	383	262	Beans (dry)	52	ZMK	5	KG	2	2016	14360
27883	270	3430	383	264	Maize meal (white, roller)	52	ZMK	5	KG	1	2016	2400
27884	270	3430	383	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3300
27885	270	3427	384	65	Sorghum	52	ZMK	5	KG	5	2015	5800
27886	270	3427	384	67	Maize (white)	52	ZMK	5	KG	2	2016	1822.22000000000003
27887	270	3427	384	71	Rice (local)	52	ZMK	5	KG	10	2015	8000
27888	270	3427	384	73	Millet	52	ZMK	5	KG	7	2014	4500
27889	270	3427	384	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	15000
27890	270	3427	384	217	Cassava meal	52	ZMK	5	KG	7	2014	3330
27891	270	3427	384	262	Beans (dry)	52	ZMK	5	KG	2	2016	9830
27892	270	3427	384	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2200
27893	270	3427	384	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3093.59999999999991
27894	270	3428	385	67	Maize (white)	52	ZMK	5	KG	2	2016	1700
27895	270	3428	385	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	10130
27896	270	3428	385	262	Beans (dry)	52	ZMK	5	KG	2	2016	12520
27897	270	3428	385	264	Maize meal (white, roller)	52	ZMK	5	KG	9	2015	2400
27898	270	3428	385	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3200
27899	270	3430	386	67	Maize (white)	52	ZMK	5	KG	9	2011	1094.27999999999997
27900	270	3430	387	67	Maize (white)	52	ZMK	5	KG	5	2012	910.971000000000004
27901	270	3432	388	67	Maize (white)	52	ZMK	5	KG	2	2016	1777.77999999999997
27902	270	3432	388	71	Rice (local)	52	ZMK	5	KG	12	2015	9130
27903	270	3432	388	73	Millet	52	ZMK	5	KG	2	2016	2000
27904	270	3432	388	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	12520
27905	270	3432	388	262	Beans (dry)	52	ZMK	5	KG	2	2016	12700
27906	270	3432	388	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	3100
27907	270	3432	388	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3396
27908	270	3429	389	67	Maize (white)	52	ZMK	5	KG	2	2016	1822.22000000000003
27909	270	3429	389	71	Rice (local)	52	ZMK	5	KG	2	2016	10070
27910	270	3429	389	73	Millet	52	ZMK	5	KG	2	2016	3000
27911	270	3429	389	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	11410
27912	270	3429	389	217	Cassava meal	52	ZMK	5	KG	2	2016	3140
27913	270	3429	389	262	Beans (dry)	52	ZMK	5	KG	2	2016	10000
27914	270	3429	389	264	Maize meal (white, roller)	52	ZMK	5	KG	1	2016	2378.40000000000009
27915	270	3429	389	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3042.80000000000018
27916	270	3433	390	67	Maize (white)	52	ZMK	5	KG	2	2016	1966.67000000000007
27917	270	3433	390	71	Rice (local)	52	ZMK	5	KG	2	2016	11850
27918	270	3433	390	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	16790
27919	270	3433	390	262	Beans (dry)	52	ZMK	5	KG	2	2016	18010
27920	270	3433	390	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2359.19999999999982
27921	270	3433	390	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3058.40000000000009
27922	270	3432	391	67	Maize (white)	52	ZMK	5	KG	2	2016	1933.32999999999993
27923	270	3432	391	71	Rice (local)	52	ZMK	5	KG	2	2016	7000
27924	270	3432	391	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	8700
27925	270	3432	391	262	Beans (dry)	52	ZMK	5	KG	2	2016	14330
27926	270	3432	391	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2280
27927	270	3432	391	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3000
27928	270	3426	392	67	Maize (white)	52	ZMK	5	KG	2	2016	2166.67000000000007
27929	270	3426	392	71	Rice (local)	52	ZMK	5	KG	2	2016	10000
27930	270	3426	392	73	Millet	52	ZMK	5	KG	2	2016	3200
27931	270	3426	392	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	11380
27932	270	3426	392	217	Cassava meal	52	ZMK	5	KG	4	2015	4000
27933	270	3426	392	262	Beans (dry)	52	ZMK	5	KG	2	2016	15060
27934	270	3426	392	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2531.59999999999991
27935	270	3426	392	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3248.40000000000009
27936	270	3428	393	67	Maize (white)	52	ZMK	5	KG	9	2012	138.88900000000001
27937	270	3428	393	119	Groundnuts (shelled)	52	ZMK	5	KG	4	2015	15620
27938	270	3428	393	262	Beans (dry)	52	ZMK	5	KG	2	2016	18040
27939	270	3428	393	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3476
27940	270	3428	394	67	Maize (white)	52	ZMK	5	KG	2	2016	2277.7800000000002
27941	270	3428	394	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	15040
27942	270	3428	394	262	Beans (dry)	52	ZMK	5	KG	2	2016	14600
27943	270	3428	394	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3259.59999999999991
27944	270	3434	395	67	Maize (white)	52	ZMK	5	KG	2	2016	2414.44000000000005
27945	270	3434	395	71	Rice (local)	52	ZMK	5	KG	2	2016	12380
27946	270	3434	395	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	12130
27947	270	3434	395	217	Cassava meal	52	ZMK	5	KG	2	2016	5560
27948	270	3434	395	262	Beans (dry)	52	ZMK	5	KG	2	2016	17450
27949	270	3434	395	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2596
27950	270	3434	395	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3252
27951	270	3433	396	67	Maize (white)	52	ZMK	5	KG	2	2016	1933.32999999999993
27952	270	3433	396	71	Rice (local)	52	ZMK	5	KG	2	2016	11000
27953	270	3433	396	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	11900
27954	270	3433	396	262	Beans (dry)	52	ZMK	5	KG	2	2016	18610
27955	270	3433	396	264	Maize meal (white, roller)	52	ZMK	5	KG	1	2016	2400
27956	270	3433	396	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3100
27957	270	3432	397	67	Maize (white)	52	ZMK	5	KG	2	2016	2122.2199999999998
27958	270	3432	397	71	Rice (local)	52	ZMK	5	KG	4	2015	7500
27959	270	3432	397	73	Millet	52	ZMK	5	KG	2	2016	2400
27960	270	3432	397	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	14260
27961	270	3432	397	217	Cassava meal	52	ZMK	5	KG	2	2016	7680
27962	270	3432	397	262	Beans (dry)	52	ZMK	5	KG	2	2016	10520
27963	270	3432	397	264	Maize meal (white, roller)	52	ZMK	5	KG	1	2016	2400
27964	270	3432	397	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3400
27965	270	3427	398	67	Maize (white)	52	ZMK	5	KG	2	2016	2022.22000000000003
27966	270	3427	398	71	Rice (local)	52	ZMK	5	KG	2	2016	14460
27967	270	3427	398	73	Millet	52	ZMK	5	KG	2	2016	4700
27968	270	3427	398	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	11000
27969	270	3427	398	217	Cassava meal	52	ZMK	5	KG	2	2016	5000
27970	270	3427	398	262	Beans (dry)	52	ZMK	5	KG	2	2016	10000
27971	270	3427	398	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2218
27972	270	3427	398	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3032.40000000000009
27973	270	3426	399	67	Maize (white)	52	ZMK	5	KG	2	2016	1866.67000000000007
27974	270	3426	399	71	Rice (local)	52	ZMK	5	KG	2	2016	12000
27975	270	3426	399	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	16040
27976	270	3426	399	262	Beans (dry)	52	ZMK	5	KG	2	2016	15840
27977	270	3426	399	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2620
27978	270	3426	399	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3400
27979	270	3429	400	67	Maize (white)	52	ZMK	5	KG	2	2016	1766.67000000000007
27980	270	3429	400	71	Rice (local)	52	ZMK	5	KG	2	2016	12000
27981	270	3429	400	73	Millet	52	ZMK	5	KG	4	2015	2400
27982	270	3429	400	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	11570
27983	270	3429	400	217	Cassava meal	52	ZMK	5	KG	2	2016	3100
27984	270	3429	400	262	Beans (dry)	52	ZMK	5	KG	2	2016	10830
27985	270	3429	400	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2793.19999999999982
27986	270	3429	400	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3200
27987	270	3431	401	67	Maize (white)	52	ZMK	5	KG	2	2016	1777.77999999999997
27988	270	3431	401	71	Rice (local)	52	ZMK	5	KG	2	2016	11000
27989	270	3431	401	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	12290
27990	270	3431	401	217	Cassava meal	52	ZMK	5	KG	2	2016	4570
27991	270	3431	401	262	Beans (dry)	52	ZMK	5	KG	2	2016	13330
27992	270	3431	401	264	Maize meal (white, roller)	52	ZMK	5	KG	12	2015	2760
27993	270	3431	401	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3600
27994	270	3429	402	67	Maize (white)	52	ZMK	5	KG	2	2016	2222.2199999999998
27995	270	3429	402	71	Rice (local)	52	ZMK	5	KG	2	2016	10000
27996	270	3429	402	73	Millet	52	ZMK	5	KG	2	2016	2400
27997	270	3429	402	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	10830
27998	270	3429	402	217	Cassava meal	52	ZMK	5	KG	2	2016	3190
27999	270	3429	402	262	Beans (dry)	52	ZMK	5	KG	2	2016	9750
28000	270	3429	402	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2620
28001	270	3429	402	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3020
28002	270	3427	403	67	Maize (white)	52	ZMK	5	KG	9	2011	893.66700000000003
28003	270	3428	404	67	Maize (white)	52	ZMK	5	KG	2	2016	1672.22000000000003
28004	270	3428	404	71	Rice (local)	52	ZMK	5	KG	2	2016	11000
28005	270	3428	404	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	11310
28006	270	3428	404	262	Beans (dry)	52	ZMK	5	KG	2	2016	14250
28007	270	3428	404	264	Maize meal (white, roller)	52	ZMK	5	KG	7	2014	2560
28008	270	3428	404	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3500
28009	270	3429	518	67	Maize (white)	52	ZMK	5	KG	2	2016	1944.44000000000005
28010	270	3429	518	71	Rice (local)	52	ZMK	5	KG	2	2016	9320
28011	270	3429	518	73	Millet	52	ZMK	5	KG	4	2015	3000
28012	270	3429	518	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	11870
28013	270	3429	518	217	Cassava meal	52	ZMK	5	KG	2	2016	2550
28014	270	3429	518	262	Beans (dry)	52	ZMK	5	KG	2	2016	9860
28015	270	3429	518	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2600
28016	270	3429	518	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3100
28017	270	3434	519	67	Maize (white)	52	ZMK	5	KG	2	2016	2677.7800000000002
28018	270	3434	519	71	Rice (local)	52	ZMK	5	KG	2	2016	10950
28019	270	3434	519	119	Groundnuts (shelled)	52	ZMK	5	KG	4	2015	10000
28020	270	3434	519	217	Cassava meal	52	ZMK	5	KG	2	2016	4980
28021	270	3434	519	262	Beans (dry)	52	ZMK	5	KG	2	2016	15000
28022	270	3434	519	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2600
28023	270	3434	519	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3200
28024	270	3426	520	65	Sorghum	52	ZMK	5	KG	2	2016	2500
28025	270	3426	520	67	Maize (white)	52	ZMK	5	KG	2	2016	2366.67000000000007
28026	270	3426	520	73	Millet	52	ZMK	5	KG	2	2016	3000
28027	270	3426	520	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	14520
28028	270	3426	520	217	Cassava meal	52	ZMK	5	KG	2	2016	4880
28029	270	3426	520	262	Beans (dry)	52	ZMK	5	KG	2	2016	10670
28030	270	3426	520	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2400
28031	270	3426	520	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3200
28032	270	3431	521	65	Sorghum	52	ZMK	5	KG	5	2015	4000
28033	270	3431	521	67	Maize (white)	52	ZMK	5	KG	2	2016	2000
28034	270	3431	521	71	Rice (local)	52	ZMK	5	KG	2	2016	11030
28035	270	3431	521	73	Millet	52	ZMK	5	KG	4	2015	4000
28036	270	3431	521	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	11790
28037	270	3431	521	217	Cassava meal	52	ZMK	5	KG	2	2016	9660
28038	270	3431	521	262	Beans (dry)	52	ZMK	5	KG	2	2016	14170
28039	270	3431	521	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2424.40000000000009
28040	270	3431	521	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3256
28041	270	3428	1428	67	Maize (white)	52	ZMK	5	KG	2	2016	1700
28042	270	3428	1428	71	Rice (local)	52	ZMK	5	KG	2	2016	11380
28043	270	3428	1428	119	Groundnuts (shelled)	52	ZMK	5	KG	4	2015	10200
28044	270	3428	1428	262	Beans (dry)	52	ZMK	5	KG	2	2016	13670
28045	270	3428	1428	264	Maize meal (white, roller)	52	ZMK	5	KG	11	2015	1666.67000000000007
28046	270	3428	1428	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3800
28047	270	3431	1429	67	Maize (white)	52	ZMK	5	KG	2	2016	1600
28048	270	3431	1429	71	Rice (local)	52	ZMK	5	KG	2	2016	11400
28049	270	3431	1429	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	14430
28050	270	3431	1429	262	Beans (dry)	52	ZMK	5	KG	2	2016	15390
28051	270	3431	1429	264	Maize meal (white, roller)	52	ZMK	5	KG	6	2015	2400
28052	270	3431	1429	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	4100
28053	270	3426	1430	67	Maize (white)	52	ZMK	5	KG	2	2016	1518
28054	270	3426	1430	71	Rice (local)	52	ZMK	5	KG	2	2016	10860
28055	270	3426	1430	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	13930
28056	270	3426	1430	262	Beans (dry)	52	ZMK	5	KG	2	2016	12400
28057	270	3426	1430	264	Maize meal (white, roller)	52	ZMK	5	KG	1	2016	2600
28058	270	3426	1430	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3300
28059	270	3429	1431	67	Maize (white)	52	ZMK	5	KG	2	2016	1600
28060	270	3429	1431	71	Rice (local)	52	ZMK	5	KG	2	2016	10000
28061	270	3429	1431	73	Millet	52	ZMK	5	KG	2	2016	2400
28062	270	3429	1431	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	7990
28063	270	3429	1431	217	Cassava meal	52	ZMK	5	KG	2	2016	2480
28064	270	3429	1431	262	Beans (dry)	52	ZMK	5	KG	2	2016	10620
28065	270	3429	1431	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	3000
28066	270	3429	1431	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	4000
28067	270	3427	1432	71	Rice (local)	52	ZMK	5	KG	2	2016	9000
28068	270	3427	1432	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	16300
28069	270	3427	1432	217	Cassava meal	52	ZMK	5	KG	10	2014	6000
28070	270	3427	1432	262	Beans (dry)	52	ZMK	5	KG	2	2016	13300
28071	270	3427	1432	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2329.19999999999982
28072	270	3427	1432	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3132
28073	270	3432	1433	67	Maize (white)	52	ZMK	5	KG	1	2016	2222.2199999999998
28074	270	3432	1433	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	11790
28075	270	3432	1433	262	Beans (dry)	52	ZMK	5	KG	2	2016	6320
28076	270	3432	1433	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	3100
28077	270	3432	1433	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3800
28078	270	3432	1434	67	Maize (white)	52	ZMK	5	KG	2	2016	2222.2199999999998
28079	270	3432	1434	73	Millet	52	ZMK	5	KG	4	2015	2400
28080	270	3432	1434	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	13390
28081	270	3432	1434	217	Cassava meal	52	ZMK	5	KG	2	2016	7110
28082	270	3432	1434	262	Beans (dry)	52	ZMK	5	KG	2	2016	12790
28083	270	3432	1434	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3700
28084	270	3430	1435	67	Maize (white)	52	ZMK	5	KG	2	2016	2222.2199999999998
28085	270	3430	1435	71	Rice (local)	52	ZMK	5	KG	2	2016	7690
28086	270	3430	1435	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	18590
28087	270	3430	1435	262	Beans (dry)	52	ZMK	5	KG	2	2016	14850
28088	270	3430	1435	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2420
28089	270	3430	1435	265	Maize meal (white, breakfast)	52	ZMK	5	KG	12	2015	3320
28090	270	3433	1436	67	Maize (white)	52	ZMK	5	KG	12	2015	1566.67000000000007
28091	270	3433	1436	71	Rice (local)	52	ZMK	5	KG	2	2016	11400
28092	270	3433	1436	119	Groundnuts (shelled)	52	ZMK	5	KG	4	2015	11110
28093	270	3433	1436	262	Beans (dry)	52	ZMK	5	KG	2	2016	14730
28094	270	3433	1436	264	Maize meal (white, roller)	52	ZMK	5	KG	11	2014	1880
28095	270	3433	1437	67	Maize (white)	52	ZMK	5	KG	2	2016	2500
28096	270	3433	1437	71	Rice (local)	52	ZMK	5	KG	2	2016	13000
28097	270	3433	1437	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	20830
28098	270	3433	1437	262	Beans (dry)	52	ZMK	5	KG	2	2016	12350
28099	270	3433	1437	264	Maize meal (white, roller)	52	ZMK	5	KG	1	2016	2400
28100	270	3433	1437	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3400
28101	270	3431	1438	67	Maize (white)	52	ZMK	5	KG	2	2016	1924.44000000000005
28102	270	3431	1438	71	Rice (local)	52	ZMK	5	KG	2	2016	11420
28103	270	3431	1438	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	13700
28104	270	3431	1438	217	Cassava meal	52	ZMK	5	KG	2	2016	7330
28105	270	3431	1438	262	Beans (dry)	52	ZMK	5	KG	2	2016	15150
28106	270	3431	1438	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3832.80000000000018
28107	270	3426	1439	67	Maize (white)	52	ZMK	5	KG	2	2016	2022.22000000000003
28108	270	3426	1439	71	Rice (local)	52	ZMK	5	KG	2	2016	13970
28109	270	3426	1439	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	16980
28110	270	3426	1439	217	Cassava meal	52	ZMK	5	KG	1	2014	1000
28111	270	3426	1439	262	Beans (dry)	52	ZMK	5	KG	2	2016	15940
28112	270	3426	1439	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2308
28113	270	3426	1439	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3100
28114	270	3430	1440	71	Rice (local)	52	ZMK	5	KG	2	2016	11610
28115	270	3430	1440	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	19420
28116	270	3430	1440	262	Beans (dry)	52	ZMK	5	KG	2	2016	14640
28117	270	3430	1440	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2155.59999999999991
28118	270	3430	1440	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3066.40000000000009
28119	270	3426	1441	67	Maize (white)	52	ZMK	5	KG	2	2016	2111.11000000000013
28120	270	3426	1441	71	Rice (local)	52	ZMK	5	KG	2	2016	13240
28121	270	3426	1441	73	Millet	52	ZMK	5	KG	2	2016	4500
28122	270	3426	1441	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	16220
28123	270	3426	1441	217	Cassava meal	52	ZMK	5	KG	2	2016	8330
28124	270	3426	1441	262	Beans (dry)	52	ZMK	5	KG	2	2016	13330
28125	270	3426	1441	264	Maize meal (white, roller)	52	ZMK	5	KG	1	2016	2200
28126	270	3426	1441	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3039.19999999999982
28127	270	3432	1442	67	Maize (white)	52	ZMK	5	KG	2	2016	2033.32999999999993
28128	270	3432	1442	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	9670
28129	270	3432	1442	262	Beans (dry)	52	ZMK	5	KG	2	2016	9000
28130	270	3433	1443	67	Maize (white)	52	ZMK	5	KG	1	2016	2100
28131	270	3433	1443	71	Rice (local)	52	ZMK	5	KG	1	2016	13890
28132	270	3433	1443	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	15780
28133	270	3433	1443	262	Beans (dry)	52	ZMK	5	KG	2	2016	18860
28134	270	3433	1443	264	Maize meal (white, roller)	52	ZMK	5	KG	12	2015	3400
28135	270	3433	1443	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3200
28136	270	3434	1445	67	Maize (white)	52	ZMK	5	KG	2	2016	2277.7800000000002
28137	270	3434	1445	71	Rice (local)	52	ZMK	5	KG	2	2016	11110
28138	270	3434	1445	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	12300
28139	270	3434	1445	217	Cassava meal	52	ZMK	5	KG	2	2016	5260
28140	270	3434	1445	262	Beans (dry)	52	ZMK	5	KG	2	2016	11670
28141	270	3434	1445	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2700
28142	270	3434	1445	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3400
28143	270	3430	1446	65	Sorghum	52	ZMK	5	KG	2	2016	8000
28144	270	3430	1446	67	Maize (white)	52	ZMK	5	KG	2	2016	2234.44000000000005
28145	270	3430	1446	71	Rice (local)	52	ZMK	5	KG	2	2016	11940
28146	270	3430	1446	73	Millet	52	ZMK	5	KG	2	2016	7900
28147	270	3430	1446	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	16040
28148	270	3430	1446	217	Cassava meal	52	ZMK	5	KG	2	2016	7640
28149	270	3430	1446	262	Beans (dry)	52	ZMK	5	KG	2	2016	15210
28150	270	3430	1446	264	Maize meal (white, roller)	52	ZMK	5	KG	1	2016	2247.59999999999991
28151	270	3430	1446	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3172.40000000000009
28152	270	3426	1447	67	Maize (white)	52	ZMK	5	KG	2	2016	1984.44000000000005
28153	270	3426	1447	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	13510
28154	270	3426	1447	262	Beans (dry)	52	ZMK	5	KG	2	2016	18890
28155	270	3426	1447	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3339.19999999999982
28156	270	3427	1448	67	Maize (white)	52	ZMK	5	KG	2	2016	2022.22000000000003
28157	270	3427	1448	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3500
28158	270	3429	1449	71	Rice (local)	52	ZMK	5	KG	2	2015	6796.71000000000004
28159	270	3432	1450	67	Maize (white)	52	ZMK	5	KG	2	2016	2222.2199999999998
28160	270	3432	1450	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	9060
28161	270	3432	1450	262	Beans (dry)	52	ZMK	5	KG	2	2016	9000
28162	270	3432	1450	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3800
28163	270	3432	1451	67	Maize (white)	52	ZMK	5	KG	2	2016	2133.32999999999993
28164	270	3432	1451	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	9090
28165	270	3432	1451	262	Beans (dry)	52	ZMK	5	KG	2	2016	13690
28166	270	3432	1451	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2280
28167	270	3432	1451	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3000
28168	270	3431	1452	67	Maize (white)	52	ZMK	5	KG	2	2016	2333.32999999999993
28169	270	3431	1452	71	Rice (local)	52	ZMK	5	KG	2	2016	14000
28170	270	3431	1452	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	15000
28171	270	3431	1452	217	Cassava meal	52	ZMK	5	KG	2	2016	4000
28172	270	3431	1452	262	Beans (dry)	52	ZMK	5	KG	2	2016	18510
28173	270	3431	1452	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3200
28174	270	3432	1453	67	Maize (white)	52	ZMK	5	KG	1	2016	2122.2199999999998
28175	270	3432	1453	73	Millet	52	ZMK	5	KG	2	2016	2400
28176	270	3432	1453	119	Groundnuts (shelled)	52	ZMK	5	KG	3	2015	11490
28177	270	3432	1453	262	Beans (dry)	52	ZMK	5	KG	3	2015	12500
28178	270	3432	1453	265	Maize meal (white, breakfast)	52	ZMK	5	KG	1	2016	3200
28179	270	3432	1454	67	Maize (white)	52	ZMK	5	KG	1	2016	2133.32999999999993
28180	270	3432	1454	119	Groundnuts (shelled)	52	ZMK	5	KG	4	2015	12500
28181	270	3432	1454	262	Beans (dry)	52	ZMK	5	KG	4	2015	12000
28182	270	3432	1454	264	Maize meal (white, roller)	52	ZMK	5	KG	1	2016	3200
28183	270	3432	1454	265	Maize meal (white, breakfast)	52	ZMK	5	KG	1	2016	3600
28184	270	3433	1455	71	Rice (local)	52	ZMK	5	KG	2	2016	11630
28185	270	3433	1455	119	Groundnuts (shelled)	52	ZMK	5	KG	4	2015	9520
28186	270	3433	1455	262	Beans (dry)	52	ZMK	5	KG	2	2016	19230
28187	270	3433	1455	265	Maize meal (white, breakfast)	52	ZMK	5	KG	8	2015	2880
28188	270	3427	1456	65	Sorghum	52	ZMK	5	KG	2	2016	6000
28189	270	3427	1456	67	Maize (white)	52	ZMK	5	KG	2	2016	2022.22000000000003
28190	270	3427	1456	71	Rice (local)	52	ZMK	5	KG	2	2016	12770
28191	270	3427	1456	73	Millet	52	ZMK	5	KG	2	2016	6000
28192	270	3427	1456	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	14950
28193	270	3427	1456	217	Cassava meal	52	ZMK	5	KG	2	2016	9000
28194	270	3427	1456	262	Beans (dry)	52	ZMK	5	KG	2	2016	11210
28195	270	3427	1456	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2258.80000000000018
28196	270	3427	1456	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3168
28197	270	3428	1457	67	Maize (white)	52	ZMK	5	KG	2	2016	1722.22000000000003
28198	270	3428	1457	119	Groundnuts (shelled)	52	ZMK	5	KG	3	2015	15620
28199	270	3428	1457	262	Beans (dry)	52	ZMK	5	KG	2	2016	14410
28200	270	3428	1457	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3300
28201	270	3434	1458	67	Maize (white)	52	ZMK	5	KG	2	2016	2577.7800000000002
28202	270	3434	1458	71	Rice (local)	52	ZMK	5	KG	2	2016	20290
28203	270	3434	1458	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	27270
28204	270	3434	1458	217	Cassava meal	52	ZMK	5	KG	2	2016	11280
28205	270	3434	1458	262	Beans (dry)	52	ZMK	5	KG	2	2016	20000
28206	270	3434	1458	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2700
28207	270	3434	1458	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3100
28208	270	3434	1459	67	Maize (white)	52	ZMK	5	KG	2	2016	2433.32999999999993
28209	270	3434	1459	71	Rice (local)	52	ZMK	5	KG	2	2016	15960
28210	270	3434	1459	262	Beans (dry)	52	ZMK	5	KG	2	2016	15180
28211	270	3434	1459	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2793.59999999999991
28212	270	3434	1459	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3200
28213	270	3433	1460	71	Rice (local)	52	ZMK	5	KG	2	2016	12000
28214	270	3433	1460	119	Groundnuts (shelled)	52	ZMK	5	KG	4	2015	19220
28215	270	3433	1460	262	Beans (dry)	52	ZMK	5	KG	2	2016	15000
28216	270	3433	1460	264	Maize meal (white, roller)	52	ZMK	5	KG	2	2016	2260
28217	270	3433	1460	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3060
28218	270	3431	1461	67	Maize (white)	52	ZMK	5	KG	2	2016	1666.67000000000007
28219	270	3431	1461	71	Rice (local)	52	ZMK	5	KG	2	2016	10700
28220	270	3431	1461	119	Groundnuts (shelled)	52	ZMK	5	KG	2	2016	16800
28221	270	3431	1461	217	Cassava meal	52	ZMK	5	KG	2	2016	3000
28222	270	3431	1461	262	Beans (dry)	52	ZMK	5	KG	2	2016	19000
28223	270	3431	1461	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3400
28224	270	3434	1462	67	Maize (white)	52	ZMK	5	KG	2	2016	2777.7800000000002
28225	270	3434	1462	71	Rice (local)	52	ZMK	5	KG	2	2016	9260
28226	270	3434	1462	119	Groundnuts (shelled)	52	ZMK	5	KG	4	2015	15000
28227	270	3434	1462	217	Cassava meal	52	ZMK	5	KG	2	2016	6380
28228	270	3434	1462	262	Beans (dry)	52	ZMK	5	KG	2	2016	16570
28229	270	3434	1462	264	Maize meal (white, roller)	52	ZMK	5	KG	1	2016	2948.80000000000018
28230	270	3434	1462	265	Maize meal (white, breakfast)	52	ZMK	5	KG	2	2016	3200
28231	270	3427	1840	265	Maize meal (white, breakfast)	52	ZMK	5	KG	12	2015	3600
28232	271	3436	708	50	Beans	28	USD	5	KG	2	2016	1.80000000000000004
28233	271	3436	708	51	Maize	28	USD	5	KG	2	2016	0.400000000000000022
28234	271	3436	708	65	Sorghum	28	USD	5	KG	2	2016	0.46000000000000002
28235	271	3436	708	73	Millet	28	USD	5	KG	2	2016	0.340000000000000024
28236	271	3436	708	84	Wheat	28	USD	5	KG	2	2016	0.569999999999999951
28237	271	3436	708	96	Oil (vegetable)	28	USD	15	L	2	2016	1.75
28238	271	3436	708	119	Groundnuts (shelled)	28	USD	5	KG	2	2016	0.910000000000000031
28239	271	3436	708	218	Cowpeas	28	USD	5	KG	2	2016	0.699999999999999956
28240	271	3436	708	264	Maize meal (white, roller)	28	USD	5	KG	2	2016	0.46000000000000002
28241	271	3439	709	51	Maize	28	USD	5	KG	5	2014	0.340000000000000024
28242	271	3440	710	51	Maize	28	USD	5	KG	5	2014	0.28999999999999998
28243	271	3439	711	51	Maize	28	USD	5	KG	12	2014	0.28999999999999998
28244	271	3440	712	51	Maize	28	USD	5	KG	7	2014	0.28999999999999998
28245	271	3438	713	51	Maize	28	USD	5	KG	5	2014	0.28999999999999998
28246	271	3435	715	50	Beans	28	USD	5	KG	2	2016	1.39999999999999991
28247	271	3435	715	51	Maize	28	USD	5	KG	2	2016	0.46000000000000002
28248	271	3435	715	65	Sorghum	28	USD	5	KG	2	2016	0.569999999999999951
28249	271	3435	715	73	Millet	28	USD	5	KG	6	2015	1.41999999999999993
28250	271	3435	715	84	Wheat	28	USD	5	KG	2	2016	0.46000000000000002
28251	271	3435	715	96	Oil (vegetable)	28	USD	15	L	2	2016	1.85000000000000009
28252	271	3435	715	119	Groundnuts (shelled)	28	USD	5	KG	2	2016	1.1399999999999999
28253	271	3435	715	218	Cowpeas	28	USD	5	KG	6	2015	0.75
28254	271	3435	715	264	Maize meal (white, roller)	28	USD	5	KG	2	2016	0.650000000000000022
28255	271	3442	716	50	Beans	28	USD	5	KG	2	2016	2.60000000000000009
28256	271	3442	716	51	Maize	28	USD	5	KG	1	2016	0.469999999999999973
28257	271	3442	716	65	Sorghum	28	USD	5	KG	1	2016	0.569999999999999951
28258	271	3442	716	84	Wheat	28	USD	5	KG	1	2016	0.46000000000000002
28259	271	3442	716	96	Oil (vegetable)	28	USD	15	L	2	2016	1.83000000000000007
28260	271	3442	716	119	Groundnuts (shelled)	28	USD	5	KG	1	2016	1.1399999999999999
28261	271	3442	716	264	Maize meal (white, roller)	28	USD	5	KG	2	2016	0.800000000000000044
28262	271	3443	717	51	Maize	28	USD	5	KG	5	2013	0.46000000000000002
28263	271	3442	718	51	Maize	28	USD	5	KG	9	2014	0.340000000000000024
28264	271	3441	719	51	Maize	28	USD	5	KG	10	2014	0.28999999999999998
28265	271	3441	720	51	Maize	28	USD	5	KG	11	2014	0.28999999999999998
28266	271	3441	721	51	Maize	28	USD	5	KG	5	2014	0.340000000000000024
28267	271	3444	722	50	Beans	28	USD	5	KG	2	2016	1
28268	271	3444	722	51	Maize	28	USD	5	KG	2	2016	0.5
28269	271	3444	722	65	Sorghum	28	USD	5	KG	2	2016	0.599999999999999978
28270	271	3444	722	96	Oil (vegetable)	28	USD	15	L	2	2016	1.75
28271	271	3444	722	119	Groundnuts (shelled)	28	USD	5	KG	2	2016	1
28272	271	3444	722	264	Maize meal (white, roller)	28	USD	5	KG	2	2016	0.599999999999999978
28273	271	3444	723	51	Maize	28	USD	5	KG	10	2014	0.28999999999999998
28274	271	3437	724	51	Maize	28	USD	5	KG	11	2014	0.340000000000000024
28275	271	3437	725	51	Maize	28	USD	5	KG	4	2014	0.340000000000000024
28276	271	3437	726	50	Beans	28	USD	5	KG	2	2016	1
28277	271	3437	726	51	Maize	28	USD	5	KG	2	2016	0.429999999999999993
28278	271	3437	726	96	Oil (vegetable)	28	USD	15	L	2	2016	1.5
28279	271	3437	726	264	Maize meal (white, roller)	28	USD	5	KG	2	2016	0.520000000000000018
28280	271	3437	727	51	Maize	28	USD	5	KG	5	2014	0.309999999999999998
28281	271	3441	728	51	Maize	28	USD	5	KG	5	2014	0.28999999999999998
28282	271	3443	729	50	Beans	28	USD	5	KG	2	2016	2.62000000000000011
28283	271	3443	729	51	Maize	28	USD	5	KG	1	2016	0.46000000000000002
28284	271	3443	729	65	Sorghum	28	USD	5	KG	1	2016	0.46000000000000002
28285	271	3443	729	84	Wheat	28	USD	5	KG	1	2016	0.46000000000000002
28286	271	3443	729	96	Oil (vegetable)	28	USD	15	L	2	2016	1.83000000000000007
28287	271	3443	729	119	Groundnuts (shelled)	28	USD	5	KG	1	2016	1.1399999999999999
28288	271	3443	729	264	Maize meal (white, roller)	28	USD	5	KG	2	2016	0.699999999999999956
28289	271	3442	730	51	Maize	28	USD	5	KG	2	2016	0.599999999999999978
28290	271	3442	730	65	Sorghum	28	USD	5	KG	2	2016	0.569999999999999951
28291	271	3442	730	96	Oil (vegetable)	28	USD	15	L	2	2016	1.80000000000000004
28292	271	3442	730	264	Maize meal (white, roller)	28	USD	5	KG	2	2016	0.699999999999999956
\.


--
-- Name: prices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: spalladino
--

SELECT pg_catalog.setval('prices_id_seq', 28292, true);


--
-- PostgreSQL database dump complete
--


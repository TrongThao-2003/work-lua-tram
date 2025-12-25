IncludeLib("ITEM")
--DinhHQ
--20110407: kh?ng cho s? d?ng l?nh b?i vi s?n ??o trong v??t ?i
Include("\\script\\vng_feature\\forbiditem\\vngforbidspecialitem.lua")

TB_XINNIAN_GIFE = {
	[908] = {	{	{	0,	11,	97,	1,	1,	1	},
					{	0,	11,	98,	1,	1,	1	},
					{	0,	11,	99,	1,	1,	1	},
					{	0,	11,	100,	1,	1,	1	},
					{	0,	11,	101,	1,	1,	1	},
					{	0,	11,	107,	1,	1,	1	},
					{	0,	11,	108,	1,	1,	1	},
					{	0,	11,	109,	1,	1,	1	},
					{	0,	11,	110,	1,	1,	1	},
					{	0,	11,	111,	1,	1,	1	},	},	"T?t c? thu?c t?nh ng? h?nh M?t n? b?n ??ng h?nh thi?u ni?n v? thanh ni?n",	0},
					
	[909] = {	{	{	0,	11,	97,	1,	1,	1	},
					{	0,	11,	98,	1,	1,	1	},
					{	0,	11,	99,	1,	1,	1	},
					{	0,	11,	100,	1,	1,	1	},
					{	0,	11,	101,	1,	1,	1	},
					{	0,	11,	107,	1,	1,	1	},
					{	0,	11,	108,	1,	1,	1	},
					{	0,	11,	109,	1,	1,	1	},
					{	0,	11,	110,	1,	1,	1	},
					{	0,	11,	111,	1,	1,	1	},	},	"M?t trong s? thu?c t?nh ng? h?nh ng?u nhi?n M?t n? b?n ??ng h?nh thi?u ni?n v? thanh ni?n",	0},
	
	[910] = {	{	6,	0,	1,	1,	0,	1	},	"M?t bao 'D??c ho?n'",	3,	1,	10},
	[911] = {	{	0,	0,	0,	10,	0,	1	},	"Huy?n Thi?t Ki?m (Ng? h?nh ng?u nhi?n) m?i th? m?t c?y",	5,	0,	4},
	[912] = {	{	0,	0,	1, 10,	0,	1	},	"??i Phong ?ao (Ng? h?nh ng?u nhi?n) m?i th? m?t c?y",	5,	0,	4},
	[913] = {	{	0,	0,	2,	10,	0,	1	},	"Kim C? B?ng (Ng? h?nh ng?u nhi?n) m?i th? m?t c?y",	5,	0,	4},
	[914] = {	{	0,	0,	3,	10,	0,	1	},	"Ph? Thi?n K?ch (Ng? h?nh ng?u nhi?n) m?i th? m?t c?y",	5,	0,	4},
	[915] = {	{	0,	0,	4,	10,	0,	1	},	"Ph? Thi?n Ch?y (Ng? h?nh ng?u nhi?n) m?i th? m?t c?y",	5,	0,	4},
	[916] = {	{	0,	1,	0,	10,	0,	1	},	"B? V??ng Ti?u (Ng? h?nh ng?u nhi?n) m?i th? m?t c?y",	5,	0,	4},
	[917] = {	{	0,	1,	1,	10,	0,	1	},	"T?y Nguy?t ?ao (Ng? h?nh ng?u nhi?n) m?i th? m?t c?y",	5,	0,	4},
	[918] = {	{	0,	1,	2,	10,	0,	1	},	"Kh?ng T??c Linh (Ng? h?nh ng?u nhi?n) m?i th? m?t m?n",	5,	0,	4},
	[919] = {	{	0,	8,	0,	10,	0,	1	},	"Long Ph?ng Huy?t Ng?c Tr?c (Ng? h?nh ng?u nhi?n) m?i th? m?t m?n",	5,	0,	4},
	[920] = {	{	0,	8,	1,	10,	0,	1	},	"Thi?n T?m H? Uy?n (Ng? h?nh ng?u nhi?n) m?i th? m?t m?n",	5,	0,	4},
	[921] = {	{	0,	7,	3,	10,	0,	1	},	"Th?ng Thi?n Ph?t Qu?n (Ng? h?nh ng?u nhi?n) m?i th? m?t m?n",	5,	0,	4},
	[922] = {	{	0,	7,	4,	10,	0,	1	},	"Y?m Nh?t Kh?i (Ng? h?nh ng?u nhi?n) m?i th? m?t m?n",	5,	0,	4},
	[923] = {	{	0,	6,	1,	10,	0,	1	},	"B?ch Kim y?u ??i (Ng? h?nh ng?u nhi?n) m?i th? m?t m?n",	5,	0,	4},
	[924] = {	{	0,	5,	1,	10,	0,	1	},	"Thi?n T?m Ngoa (Ng? h?nh ng?u nhi?n) m?i th? m?t m?n",	5,	0,	4},
	[925] = {	{	0,	5,	3,	10,	0,	1	},	"Phi Ph?ng Ngoa (Ng? h?nh ng?u nhi?n) m?i th? m?t m?n",	5,	0,	4},
	[926] = {	{	6,	1,	834,	2,	1,	1	},	"Kim Cang B?t ph? ??ng h?nh M?t t?ch c?p 2 ??n c?p 5, m?i th? m?t cu?n",	4,	2,	5},
	[927] = {	{	6,	1,	835,	2,	1,	1	},	"B?ch ??c B?t X?m ??ng h?nh M?t t?ch c?p 2 ??n c?p 5, m?i th? m?t cu?n",	4,	2,	5},
	[928] = {	{	6,	1,	836,	2,	1,	1	},	"B?ng Tuy?t S? Dung ??ng h?nh M?t t?ch c?p 2 ??n c?p 5, m?i th? m?t cu?n",	4,	2,	5},
	[929] = {	{	6,	1,	837,	2,	1,	1	},	"Ch?n H?a Kh?ng L?c ??ng h?nh M?t t?ch c?p 2 ??n c?p 5, m?i th? m?t cu?n",	4,	2,	5},
	[930] = {	{	6,	1,	838,	2,	1,	1	},	"L?i ??nh H? gi?p ??ng h?nh M?t t?ch c?p 2 ??n c?p 5, m?i th? m?t cu?n",	4,	2,	5},
	[931] = {	{	6,	1,	849,	1,	1,	1	},	"B?nh H?a Kh? Quy?t ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[932] = {	{	6,	1,	850,	1,	1,	1	},	"H? Kh?ng Thi?m ?nh ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[933] = {	{	6,	1,	851,	1,	1,	1	},	"H?i Th?n T?nh T?m ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[934] = {	{	6,	1,	852,	1,	1,	1	},	"V? Ni?m V? Kinh ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[935] = {	{	6,	1,	853,	1,	1,	1	},	"Ng? H?nh V? T??ng ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[936] = {	{	6,	1,	854,	1,	1,	1	},	"Di Kh? Phi?u Tung ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[937] = {	{	6,	1,	855,	1,	1,	1	},	"Hoa Phi ?i?p V? ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[938] = {	{	6,	1,	901,	1,	1,	1	},	"V? Nh?n V? Ng? ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[939] = {	{	6,	1,	859,	1,	1,	1	},	"T?nh Ng?o Tam ??ng ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[940] = {	{	6,	1,	860,	1,	1,	1	},	"?i?m Huy?t Ti?t M?ch ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[941] = {	{	6,	1,	861,	1,	1,	1	},	"V?n ??c B?t Ph?c ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[942] = {	{	6,	1,	862,	1,	1,	1	},	"Th?n Khinh Nh? Y?n ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[943] = {	{	6,	1,	863,	1,	1,	1	},	"Ng?ng ?m Quy Nguy?n ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[944] = {	{	6,	1,	864,	1,	1,	1	},	"D?ch C?t Kinh ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[945] = {	{	6,	1,	865,	1,	1,	1	},	"Th?c Th?n Thu?t ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[946] = {	{	6,	1,	866,	1,	1,	1	},	"Ho?n Th?n Thu?t ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[947] = {	{	6,	1,	867,	1,	1,	1	},	"Huy?n M?c ??nh Th?n Thu?t ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[948] = {	{	6,	1,	868,	1,	1,	1	},	"?ch Th? ?m D??ng ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[949] = {	{	6,	1,	869,	1,	1,	1	},	"An Ph? Chi Ng? ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[950] = {	{	6,	1,	870,	1,	1,	1	},	"Tam Sinh H?u H?nh ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[951] = {	{	6,	1,	871,	1,	1,	1	},	"Qu? M? Ma Ho?c ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[952] = {	{	6,	1,	872,	1,	1,	1	},	"?o?t M?nh Tri?n Nhi?u ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[953] = {	{	6,	1,	873,	1,	1,	1	},	"Y?u H? Tr?i ?nh ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[954] = {	{	6,	1,	874,	1,	1,	1	},	"Ho?c Th?n Lo?n T?m ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[955] = {	{	6,	1,	875,	1,	1,	1	},	"C? Th?n To?i ?nh ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[956] = {	{	6,	1,	876,	1,	1,	1	},	"T? Vong Ki B?n ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[957] = {	{	6,	1,	877,	1,	1,	1	},	"Th?m H?n Ni?m X??ng ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[958] = {	{	6,	1,	878,	1,	1,	1	},	"C?p H?n Ch? ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[959] = {	{	6,	1,	879,	1,	1,	1	},	"H?a T?y V? ? ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[960] = {	{	6,	1,	880,	1,	1,	1	},	"Dung C?t V? Tung ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[961] = {	{	6,	1,	882,	1,	1,	1	},	"?m ??c Chi Th? ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	[962] = {	{	6,	1,	883,	1,	1,	1	},	"Tam Ph?c Chi Kh? ??ng h?nh M?t t?ch c?p 1 ??n c?p 5, m?i th? m?t cu?n",	4,	1,	5},
	
	[963] = {	{	{	6,	1,	926,	1,	1,	1	},
					{	6,	1,	927,	1,	1,	1	},
					{	6,	1,	928,	1,	1,	1	},
					{	6,	1,	929,	1,	1,	1	},
					{	6,	1,	930,	1,	1,	1	},	},	"5 h?p ??ng h?nh M?t t?ch (K? n?ng kh?ng t?nh) ",	0},
					
	[964] = {	{	{	6,	1,	949,	1,	1,	1	},
					{	6,	1,	931,	1,	1,	1	},
					{	6,	1,	932,	1,	1,	1	},
					{	6,	1,	935,	1,	1,	1	},
					{	6,	1,	936,	1,	1,	1	},
					{	6,	1,	937,	1,	1,	1	},
					{	6,	1,	944,	1,	1,	1	},
					{	6,	1,	948,	1,	1,	1	},
					{	6,	1,	950,	1,	1,	1	},	},	"9 h?p ??ng h?nh M?t t?ch (K? n?ng th? gi?i) ",	0},
					
	[965] = {	{	{	6,	1,	933,	1,	1,	1	},
					{	6,	1,	934,	1,	1,	1	},
					{	6,	1,	951,	1,	1,	1	},
					{	6,	1,	952,	1,	1,	1	},
					{	6,	1,	956,	1,	1,	1	},	},	"5 h?p ??ng h?nh M?t t?ch (Kim) ",	0},
					
	[966] = {	{	{	6,	1,	939,	1,	1,	1	},
					{	6,	1,	940,	1,	1,	1	},
					{	6,	1,	958,	1,	1,	1	},
					{	6,	1,	961,	1,	1,	1	},	},	"4 h?p ??ng h?nh M?t t?ch (M?c) ",	0},
					
	[967] = {	{	{	6,	1,	943,	1,	1,	1	},
					{	6,	1,	946,	1,	1,	1	},
					{	6,	1,	955,	1,	1,	1	},
					{	6,	1,	957,	1,	1,	1	},	},	"4 h?p ??ng h?nh M?t t?ch (Th?y) ",	0},
					
	[968] = {	{	{	6,	1,	942,	1,	1,	1	},
					{	6,	1,	953,	1,	1,	1	},
					{	6,	1,	954,	1,	1,	1	},
					{	6,	1,	959,	1,	1,	1	},	},	"4 h?p ??ng h?nh M?t t?ch (H?a) ",	0},
					
	[969] = {	{	{	6,	1,	938,	1,	1,	1	},
					{	6,	1,	941,	1,	1,	1	},
					{	6,	1,	947,	1,	1,	1	},
					{	6,	1,	960,	1,	1,	1	},
					{	6,	1,	962,	1,	1,	1	},	},	"5 h?p ??ng h?nh M?t t?ch (Th?) ",	0},
					
	[970] = {	{	6,	1,	977,	1,	1,	1	},	"10 h?p k? n?ng ??i B?ch C?u ho?n", -1, 10},
	
	[971] = {	{	6,	1,	130,	1,	1,	1	},	"10 h?p ??i B?ch C?u ho?n", -1, 10},
	
	[972] = {	{	{	0,	11,	101,	1,	1,	1	},
					{	0,	11,	111,	1,	1,	1	},	},	"M?t n? Thi?u Ni?n Kim Phong, Thanh Ni?n Kim Phong m?i th? m?t c?i",	0},
	
	[973] = {	{	{	0,	11,	100,	1,	1,	1	},
					{	0,	11,	110,	1,	1,	1	},	},	"M?t n? Thi?u Ni?n H?i ???ng, Thanh Ni?n H?i ???ng m?i th? m?t c?i",	0},
					
	[974] = {	{	{	0,	11,	98,	1,	1,	1	},
					{	0,	11,	108,	1,	1,	1	},	},	"M?t n? Thi?u Ni?n Ti?u S??ng, Thanh Ni?n Ti?u S??ng m?i th? m?t c?i",	0},
					
	[975] = {	{	{	0,	11,	99,	1,	1,	1	},
					{	0,	11,	109,	1,	1,	1	},	},	"M?t n? Thi?u Ni?n H?a Nh?n, Thanh Ni?n H?a Nh?n m?i th? m?t c?i",	0},
					
	[976] = {	{	{	0,	11,	97,	1,	1,	1	},
					{	0,	11,	107,	1,	1,	1	},	},	"M?t n? Thi?u Ni?n L?i Ki?m, Thanh Ni?n L?i Ki?m m?i th? m?t c?i",	0},
					
	[995] = {	{	6,	1,	990,	1,	1,	1	},	"10 L?i T?c ho?n",	-1,	10},
	[996] = {	{	6,	1,	985,	1,	1,	1	},	"10 C?n Kh?n Na Di ph? ",	-1,	10},
	[997] = {	{	6,	1,	986,	1,	1,	1	},	"10 Di H?nh Ho?n ?nh ph? ",	-1,	10},
	[998] = {	{	6,	1,	982,	1,	1,	1	},	"10 Huy?n Thi?n H?m T?nh",	-1,	10},
	[999] = {	{	6,	1,	984,	1,	1,	1	},	"10 B?ng Phong H?m T?nh",	-1,	10},
	[1000] = {	{	6,	1,	988,	1,	1,	1	},	"10 'Kinh nghi?m' ph? (Cao c?p) ",	-1,	10},
	[1001] = {	{	6,	1,	993,	1,	1,	1	},	"10 L?i Th?n Ng?c",	-1,	10},
	[1002] = {	{	6,	1,	992,	1,	1,	1	},	"10 Huy?n B?ng Ng?c",	-1,	10},
	[1003] = {	{	6,	1,	979,	1,	1,	1	},	"10 B?ng S??ng Hi?u gi?c",	-1,	10},
	[1004] = {	{	6,	1,	980,	1,	1,	1	},	"10 B?o L?i Hi?u gi?c",	-1,	10},
	[1014] = {	{	6,	0,	1012,	1,	1,	1	},	"10 m?n qu? m?u xanh",	-1,	10},
	[1015] = {	{	6,	0,	1013,	1,	1,	1	},	"10 c?i hoa tuy?t",	-1,	10},
	[1018] = {	{	6,	0,	1017,	1,	1,	1	},	"10 b?ng hoa",	-1,	10},
	[1049] = {	{	6,	1,	1016,	1,	1,	1	},	"10 t?m thi?p Nh? ? ",	-1,	10},
	[1055] = {	{	6,	1,	1053,	1,	1,	1	},	"10 t?m thi?p m?u",	-1,	10},
	[1074] = {	{	6,	1,	402,	1,	1,	1	},	"10 c?i Th?n b? ??i h?ng bao",	-1,	10},
	[1075] = {	{	6,	1,	906,	1,	1,	1	},	"10 qu? Huy Ho?ng cao c?p",	-1,	10},
	[1137] = {	{	4,	967,	1,	1,	0,	0	},	"10 B?ng Th?ch K?t Tinh",	-1,	10},
	[1138] = {	{	4,	963,	1,	1,	0,	0	},	"10 C?c Hoa Th?ch",	-1,	10},
	[1139] = {	{	4,	968,	1,	1,	0,	0	},	"10 M?nh thi?n th?ch",	-1,	10},
	[1140] = {	{	4,	965,	1,	1,	0,	0	},	"10 B?ng Thi?m T?",	-1,	10},
	[1141] = {	{	4,	966,	1,	1,	0,	0	},	"10 K? Huy?t Th?ch",	-1,	10},
	[1142] = {	{	4,	964,	1,	1,	0,	0	},	"10 M? N?o",		-1,	10},
	[1143] = {	{	4,	969,	1,	1,	0,	0	},	"10 ?i?n Ho?ng Th?ch",	-1,	10},
	[1373] = {	{	6,	1,	74,	1,	1,	1	},	"5 B?ch C?u Ho?n",	-1,	5},
	[1374] = {	{	6,	1,	1372,	1,	1,	1	},	"5 B?ch C?u Ho?n k? n?ng",	-1,	5},
	[1665] = {	{	6,	1,	23,	1,	1,	1	},	"10 cu?n Thi?t La H?n",	-1,	10},
	[2355] = {	{	6,	1,	2348,	1,	1,	0	},	"5 Huy?n Thi?n Ch?y",	-1,	5},
	[2515] = {	{	6,	0,	1,	1,	1,	0	},	format("%d %s", 5,"Tr??ng M?nh ho?n"),	-1,	5},
	[2516] = {	{	6,	0,	2,	1,	1,	0	},	format("%d %s", 5,"Gia B?o ho?n"),	-1,	5},
	[2517] = {	{	6,	0,	3,	1,	1,	0	},	format("%d %s", 5,"??i L?c ho?n"),	-1,	5},
	[2518] = {	{	6,	0,	4,	1,	1,	0	},	format("%d %s", 5,"Cao Thi?m ho?n"),	-1,	5},
	[2519] = {	{	6,	0,	5,	1,	1,	0	},	format("%d %s", 5,"Cao Trung ho?n"),	-1,	5},
	[2520] = {	{	6,	0,	6,	1,	1,	0	},	format("%d %s", 5,"Phi T?c ho?n"),	-1,	5},
	[2521] = {	{	6,	0,	7,	1,	1,	0	},	format("%d %s", 5,"B?ng Ph?ng ho?n"),	-1,	5},
	[2522] = {	{	6,	0,	8,	1,	1,	0	},	format("%d %s", 5,"L?i Ph?ng ho?n"),	-1,	5},
	[2523] = {	{	6,	0,	9,	1,	1,	0	},	format("%d %s", 5,"H?a Ph?ng ho?n"),	-1,	5},
	[2524] = {	{	6,	0,	10,	1,	1,	0	},	format("%d %s", 5,"??c Ph?ng ho?n"),	-1,	5},
	[2525] = {	{	6,	1,	2432,	1,	1,	0	},	format("%d %s", 5,"L?nh b?i Vi S?n ??o"),	-1,	5},
}

function main(nItemIdx)
	_,_,detail = GetItemProp(nItemIdx)
	
	local strItemName = GetItemName(nItemIdx)
	if strItemName == "L?nh b?i vi s?n ??o l? bao" then
		if tbVNGForbidItem:IsForbidMap(strItemName, {tbVNGForbidItem.CHALLENGE_OF_TIME}) == 1 then
			return 1
		end
	end
	
	tbGift = TB_XINNIAN_GIFE[detail][1]
	if ( tbGift == nil ) then
		print("error xinnian gift "..GetItemProp(nItemIdx))
		return 1
	end
	
	if (TB_XINNIAN_GIFE[detail][3] == -1) then	--????4?????????????????????
		if (CalcFreeItemCellCount() < TB_XINNIAN_GIFE[detail][4]) then
			Msg2Player("Ch? tr?ng trong h?nh trang c?a b?n kh?ng ??");
			return 1;
		end;
		if (detail == 1075) then
			for i = 1, TB_XINNIAN_GIFE[detail][4] do
				local nItemID = AddItem(tbGift[1],	tbGift[2],	tbGift[3],	tbGift[4],	tbGift[5],	tbGift[6])
				ITEM_SetExpiredTime(nItemID, 10080);
				SyncItem(nItemID)
			end
			
		else
			for i = 1, TB_XINNIAN_GIFE[detail][4] do
				addGiftitem(tbGift[1],	tbGift[2],	tbGift[3],	tbGift[4],	tbGift[5],	tbGift[6])
			end
		end

	elseif (detail == 909) then	--????????
		ranitem = random( getn(tbGift) )
		addGiftitem(tbGift[ranitem][1],	tbGift[ranitem][2],	tbGift[ranitem][3],	tbGift[ranitem][4],	tbGift[ranitem][5],	tbGift[ranitem][6])
	
	elseif (TB_XINNIAN_GIFE[detail][3] == 0) then	--?????????
		for i = 1, getn(tbGift) do
			addGiftitem(tbGift[i][1],	tbGift[i][2],	tbGift[i][3],	tbGift[i][4],	tbGift[i][5],	tbGift[i][6])
		end

	elseif (TB_XINNIAN_GIFE[detail][3] == 3) then	--??3??????????????????????
		for i = TB_XINNIAN_GIFE[detail][4],	TB_XINNIAN_GIFE[detail][5] do
			addGiftitem(tbGift[1],	tbGift[2],	i,	tbGift[4],	tbGift[5],	tbGift[6])
		end

	elseif (TB_XINNIAN_GIFE[detail][3] == 4) then	--??4???????????????????
		for i = TB_XINNIAN_GIFE[detail][4], TB_XINNIAN_GIFE[detail][5] do
			addGiftitem(tbGift[1],	tbGift[2],	tbGift[3],	i,	tbGift[5],	tbGift[6])
		end

	elseif (TB_XINNIAN_GIFE[detail][3] == 5) then	--??5???????????????????
		for i = TB_XINNIAN_GIFE[detail][4],	TB_XINNIAN_GIFE[detail][5] do
			addGiftitem(tbGift[1],	tbGift[2],	tbGift[3],	tbGift[4],	i,	tbGift[6])
		end
	end
	Msg2Player("B?n nh?n ???c <color=yellow>"..TB_XINNIAN_GIFE[detail][2])
end

function addGiftitem(...)
	if ( arg.n == 6 ) then
		AddItem ( arg[1], arg[2], arg[3], arg[4], arg[5], arg[6] )
	elseif ( arg.n == 2 ) then
		AddGoldItem( arg[1], arg[2] )
	elseif ( arg.n == 1 ) then
		AddEventItem( arg[1] )
	else
		print("the table of gift is wrong!!!")
	end
end
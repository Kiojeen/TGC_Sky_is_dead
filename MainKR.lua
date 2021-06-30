--이 스크립트는 스카이: 빛의 아이들을 위해 제작된 무료 오픈소스 입니다
--좋은 코드나 값, 힌트, 아이디어가 있다면
--디코로 연락주세요 ExMachina#5142



ddd = "b21.06.30"
pshare = ''
umenu = true
fasthome = true
fastvalue = false
px = 0.0
py = 0.0
pz = 0.0
mdis = 6
mev = 0
resettick = -1
--less 0.5 max 2.0

crsleep = 1500
wrsleep = 500

pbase = 0x00
prange = {a = 0,b = -1}
--200C
poffsets = {
  sival = -1096122630,
  wlevel = 0x22400,
  positX = 0x1C968,
  positY = 0x1C96C,
  positZ = 0x1C970,
  bheight = 0x1A9DC,
  pose = 0x1FCB0,
  pwing = 0x223CC,
  ewing = 0x24008,
  eprop = 0x24024,
  famount = 0x25538,
  gesture = 0x2CD04,
  magic = 0x2B738,
  bsize = 0x25D38,
  uemote = -0x43D40,
  eflowers = 0xB20DD4,
  pshout = 0x22DD0,
  pdamage = 0x2244C,
  wwings = 0x4E042C,
  wobjs = 0x9EE884,
  gohome = 0x23C08,
  rhands = 0x00
  }

sarray = {}
candles = {}
flowers = {}
nodes = {}
spirits = {}
eoffsets = {
  wforce = 0x00,
  jforce = 0x00,
  sspeed = 0x00,
  cspeed = 0x00,
  graphic = 0x00,
  ground = 0x00,
  jump = 0x00,
  gravity = 0x00,
  slide = 0x00,
  world = 0x00,
  nworld = 0x00,
  nentity = 0x00,
  ncamera = 0x00,
  brighter = 0x00,
  gnode = 0x00,
  gframe = 0x00,
  gspirits = 0x00,
  pdesk = 0x00
}
mid = {
  {'작은키',1692428656},
  {'더 작은키',2142718166},
  {'큰키',891098028},
  {'더 큰키',-1879316162},
  {'발광',1097748727},
  {'재충전',1750685908},
  {'중력 감소',1860519737},
  {'드래곤 막기',1067647386},
  {'어둠이 되는것을 막기',383062578},
  {'비 막기',-1463943689},
  {'많은 양의 양초',-1727483534},
  {'비행 축복',-1362469224},
  {'어부바',1405645877},
  {'끌어안기',1677246236},
  {'워프',998754260},
  {'돌게소리',1725047129},
  {'해파리소리',-957441587},
  {'만타가오리소리',1814753890},
  {'랜턴',1319710173},
  {'테이블',256924066},
  {'하프',-1001892262},
  {'그네',1064080243},
  {'시소',-2095749161},
  {'티테이블',10058409},
  {'️투명우산',1167393926},
  {'지구의날 망토',2079599063},
  {'사무실직원 망토',540856305},
  {'유령 박쥐 망토',625581156},
  {'거미 망토',930203946},
  {'눈꽃 망토',-784831205},
  {'크리스마스 망토',1306675982},
  {'리듬의시즌 지동망토',-1623262339},
  {'꽃잎 망토',-6043825},
  {'빛 추적자의 시즌',1375571404},
  {'행복의날 망토', -445538750},
  {'꽃놀이의날 망토',162066154},
  {'바다의날 망토',329684861},
  {'꿈의시즌 최보망토',-308941587},
  {'꿈의시즌 망토',-1822337532},
  {'️무지개의날 망토', -195929339},
  {'️무지개의날 꽃', 2141511649},
  {'️무지개의날 귀걸이', -290700605},
  {'호박 모자',1046521292},
  {'마녀 모자',1983755432},
  {'행복 모자',2093744529},
 {'마루 모자',-2099997114},
 {'펠트 모자',-823266018},
 {'꽃놀이의날 헤어',373243257},
 {'꿈의시즌 헤어',1059767859},
 {'여우가면', 784922793},
 {'빨강토끼가면', 964659005},
 {'겨울 가면', -218615327},
 {'타우런 가면',-849020465},
 {'로제 가면',-938578505},
 {'행복의날 가면',-1636163586},
 {'꿈의시즌 새 가면',771982951},
 {'꿈의시즌 가면',144876107},
 {'용',1909998088},
 {'크리스마스 모자',-1409683913},
 {'연회의날 나비넥타이',8361886},
 {'귤 장식',-1616733323},
 {'바다의날 목걸이',-1938239955},
 {'️터키 옥 궤적',1318288330},
 {'️검정색 궤적',-176902809},
 {'️파랑색 궤적',-1951801352},
 {'️청록색 궤적',1918290563},
 {'️초록색 궤적',637646527},
 {'️퍼플핑크색 궤적',-1527316661},
 {'️오렌지색 궤적',1237283438},
 {'️보라색 궤적',470393304},
 {'️보라색 궤적',-1071076330},
 {'️빨간색 궤적',-1304862813},
 {'️노란색 궤적',-1354381164},
 {'️무지개색 궤적',147016038},
 {'pinwheel',2357329115},
  {'🆕Fox',2237536272},
 {'🆕Pants Sword',3799734077},
 {'🆕Scarf Cape',2207305370},
 {'🆕Asteroid Jacket',1402240423},
 
 {'마법 없음',0}
};
spiritlist = {
  {414084241,"Pointing"},
   {3666569351,"No"},
   {4249009249,"Hurry up"},
   {1466879858,"Yawn"},
   {64338276,"Butterfly"},
   {2540775602,"Bird"},
   {1568825369,"Candle up"},
   {2851084244,"Waving"},
   {3063270590,"Laughing"},
   {1060667581,"Applause"},
   {3881128326,"Wiping sweat"},
   {4182042971,"Crying"},
   {419578801,"Confused"},
   {1156673674,"Kneel down"},
   {1464190897,"Hide and seek"},
   {2381086145,"Stomp"},
   {3576552037,"Shy"},
   {3930381583,"Cold"},
   {1728053750,"Whale"},
   {3307167098,"Anchor back"},
   {1942389483,"Bow"},
   {3809307521,"Backflip"},
   {2395108553,"Hold your hands"},
   {2859830090,"Cheers"},
   {416637648,"Handstand"},
   {3768849824,"Manta calling"},
   {1999438929,"Salute"},
   {4155738138,"Sneaky"},
   {2886532097,"Brave"},
   {1060292445,"Surprised"},
   {3630339793,"Faint"},
   {2159324587,"Look around"},
   {2797886853,"Floating"},
   {2041153668,"Magic"},
   {2017461200,"Ghost manta calling"},
   {3576140497,"Standing Posture"},
   {3594096657,"Pray"}
}
windwallset = {
     {"CandleSpace", 4726487308484830694},
   {"Dawn", 4767182666960336740 },
    {"Prairie_Village", 4885521378999697401},
    {"DayHubCave", 4769030533679547514},
    {"Rain", 4814944809953808321},
    {"RainForest", 4834051251148619776},
    {"RainShelter", 4810601017446974458},

    {"RainMid", 4829954002675894547},
    {"RainEnd", 4817725702471155712},
    {"Rain_BaseCamp  ", 4843677694493622950},
    {"Sunset", -4560560199779603680},
    {"Sunset_Citadel", 4902590410129506426},
    {"SunsetEnd", 4792210659019202290},
    {"Sunset_YetiPark", -4379302222571855137},
    {"SunsetVillage", 4648938001794681213},
    {"SunsetColosseum", 4909629393377870248},
    {"DuskStart", 4793244457638695424},
    {"Dusk", 4803651955820274913},
    {"DuskGraveyard", 4807836432909636834},
    {"DuskOasis", 4845558260964967524},
    {"Dusk_CrabField", 4794390915414850800},
    {"DuskMid", 4830500777766158336},
    {"DuskEnd", 4855161876522205184},
    {"CandleSpaceEnd", 32706758321},
    {"Orbit", 32706758321}
}
cworld = {
   {"[안식처]CandleSpace", 'CandleSpace'},
   {"[여명]Dawn", 'Dawn'},
   {"[여명]DawnCave", 'DawnCave'},
   {"[시련]Dawn_TrialsWater", 'Dawn_TrialsWater'},
   {"[시련]Dawn_TrialsEarth", 'Dawn_TrialsEarth'},
   {"[시련]Dawn_TrialsAir", 'Dawn_TrialsAir'},
   {"[시련]Dawn_TrialsFire", 'Dawn_TrialsFire'},
    {"[초원]Prairie_ButterflyFields", 'Prairie_ButterflyFields'},
    {"[초원]Prairie_NestAndKeeper", 'Prairie_NestAndKeeper'},
    {"[초원]Prairie_Island", 'Prairie_Island'},
    {"[초원]Prairie_Cave", 'Prairie_Cave'},
    {"[초원]Prairie_Village", 'Prairie_Village'},
    {"[초원]DayHubCave", 'DayHubCave'},
    {"[초원]DayEnd", 'DayEnd'},
    {"[비숲]Rain", 'Rain'},
    {"[비숲]RainForest", 'RainForest'},
    {"[비숲]RainShelter", 'RainShelter'},
    {"[비숲]Rain_Cave", 'Rain_Cave'},
    {"[비숲]RainMid", 'RainMid'},
    {"[비숲]RainEnd", 'RainEnd'},
    {"[비숲]Rain_BaseCamp", 'Rain_BaseCamp'},
    {"[승계]Sunset", 'Sunset'},
    {"[승계]Sunset_Citadel", 'Sunset_Citadel'},
    {"[승계]Sunset_FlyRace", 'Sunset_FlyRace'},
    {"[승계]SunsetRace", 'SunsetRace'},
    {"[승계]SunsetEnd", 'SunsetEnd'},
    {"[승계]Sunset_YetiPark", 'Sunset_YetiPark'},
    {"[승계]SunsetVillage", 'SunsetVillage'},
    {"[승계]SunsetColosseum", 'SunsetColosseum'},
    {"[승계]SunsetEnd2", 'SunsetEnd2'},
    {"[황무지]DuskStart", 'DuskStart'},
    {"[황무지]Dusk", 'Dusk'},
    {"[황무지]DuskGraveyard", 'DuskGraveyard'},
    {"[황무지]DuskOasis", 'DuskOasis'},
    {"[황무지]Dusk_CrabField", 'Dusk_CrabField'},
    {"[황무지]DuskMid", 'DuskMid'},
    {"[황무지]DuskEnd", 'DuskEnd'},
    {"[지동]Night", 'Night'},
    {"[지동]Night2", 'Night2'},
    {"[지동]NightArchive", 'NightArchive'},
    {"사무실", 'TGCOffice'},
    {"에덴 첫번째", 'StormStart'},
    {"에덴 두번째", 'Storm'},
    {"[닌텐도] Nintendo_CandleSpace", 'Nintendo_CandleSpace'},
    {"⛔[다음시즌*밴 경고!*] Planet", 'NightDesert_Planets'},
    {"⚠️에덴 희생맵⚠️", 'StormEnd'},
    {"⚠️부활 과정 1⚠️", 'OrbitMid'},
    {"⚠️부활 과정 2⚠️", 'OrbitEnd'},
    {"⚠️천국?⚠️", 'CandleSpaceEnd'},
    {"⚠️부활⚠️", 'Credit'},
 }
 
 doors = {
   
 }

mslot = {
  'none',
  'none',
  'none',
  'none',
  'none',
  'none',
  'none',
  'none',
  'none'
}

pid = {
  {57978849, "풍차🏅"},
       {-677716449,"보라색 우산"},
       {-644161211,"투명우산"},
       {-1593950895, "랜턴🏮"},
       {992885953, "의자 💺"},
       {-1444947170,"크리스마스 의자💺"},
       {3580839943, "그네 ❤"},
       {3779226149, "모닥불 🔥"},
       {-1030495085, "시소 🔨"},
       {3634028466, "꽃 우산🌂"},
       {2574095143, "우산 ☔"},
       {3269660804, "기타 🎻"},
       {2352004821,"우쿠렐레 🎸"},
       {-1382855507, "비파🎸"},
       {396560731, "플룻🎶"},
       {1237767078, "팬 플룻 🎺"},
       {1889256860,"피아노🎹"},
       {3275797515,"겨울 피아노🎼"},
       {3280753494,"불꽃지팡이🎆"},
       {4246711693, "셰이커"},
       {4196378836, "데이져"},
       {900914909, "스틸 드럼"},
       {3499881140,"큰 드럼"},
       {2003040587,"작은 드럼"},
       {2671000446, "하프"},
       {399957901, "실로폰"},
       {1064146256, "원형 하프"},
       {1021011859, "고동  🎷"},
       {-1648375736, "바이올린🎻"},
       {2186944737,"선조의 항아리"},
       {2041015009,"선조의 주전자 "},
       {776794517,"선조의 창"},
       {-896102798,"코넷"},
       {1079120316,"책장"},
       {1994487329,"해먹"},
       {-1762117817,"토치"},
       {-1513173800,"텐트"},
       {-2094712299,"스포트라이트"},
       {1661108877,"틀"},
       {992885953,'[다음 시즌]장미','table_rose',0x00},
       {-1444947170,'[다음 시즌]스타램프','table_starlamp',0x6C0},
       {2035109393,"아무것도 안함"}
}

cpoint = {
  pr1 = {
    {96.95172882080078, 203.9423370361328, 272.4224853515625}, 
    {66.72240447998047, 198.46482849121094, 362.03570556640625}, 
    {-19.729448318481445, 196.543701171875, 319.23468017578125}
    
  },
  pr2 = {
    {245.62545776367188, 95.5485610961914, 221.84703063964844},
    {51.063480377197266, 1.082053542137146, 331.52166748046875}, 
    {101.43079376220703, 28.913820266723633, 333.3686218261719}, 
    {130.28009033203125, 8.608041763305664, 284.0380859375}, 
    {88.30374145507812, 22.063486099243164, 291.025634765625}, 
    {128.39881896972656, 2.812415361404419, 407.2574157714844}, 
  },
  fr1 = {
    {8.200207710266113, 95.40240478515625, -216.9573974609375}, 
    {10.919458389282227, 97.72982025146484, -178.7023162841797}, 
    {22.434154510498047, 97.86457061767578, -142.3035888671875}
  },
  fr2 = {
    {33.83924102783203, 108.33233642578125, -62.17718505859375}, 
    {95.2885513305664, 112.5270004272461, -99.4018783569336}, 
    {93.52252960205078, 110.70069122314453, -52.32523727416992}, 
    {35.76015090942383, 109.07188415527344, -32.329010009765625}, 
    {62.64570999145508, 96.57581329345703, 2.5483744144439697}, 
    {84.50806427001953, 105.29931640625, 26.362586975097656}, 
    {48.2465934753418, 103.63257598876953, 12.391707420349121}
  },
  fr3 = {
    {2.839021682739258, 86.61508178710938, -46.81080627441406}, 
    {-9.491637229919434, 83.67889404296875, -13.139968872070312}, 
    {-5.647504806518555, 87.60029602050781, 13.881937026977539}, 
    {7.8890228271484375, 88.57525634765625, 88.58280944824219}
  },
  fr4 = {
    {63.966339111328125, 79.49282836914062, -284.2691955566406}, 
    {0.7326644062995911, 121.19961547851562, -367.0590515136719}, 
    {-45.982337951660156, 132.8380584716797, -198.25119018554688}
  },
  fr5 = {
    {17.38182258605957, 146.5189971923828, 15.60563850402832}, 
    {81.17194366455078, 141.08465576171875, 120.81361389160156}, 
    {47.68941879272461, 144.47244262695312, 65.90519714355469}, 
    {115.50276947021484, 164.77035522460938, 158.94093322753906}, 
    {-6.182575702667236, 136.4398956298828, 200.41183471679688}, 
    {26.954795837402344, 139.68226623535156, 224.25071716308594}, 
    {-10.194414138793945, 134.5517120361328, 152.5101318359375}, 
    {-81.54685974121094, 135.01173400878906, 223.6342315673828}, 
    {-58.3707275390625, 136.15643310546875, 179.88563537597656}, 
    {-56.886383056640625, 135.4618377685547, 218.7360382080078}, 
    {-20.806842803955078, 134.6183624267578, 207.5647430419922}, 
    {-21.810287475585938, 134.55897521972656, 261.7059020996094}, 
    {-73.90713500976562, 147.9859619140625, 159.4910430908203}
  },
  fr6 = {
    {11.568278312683105, 110.44747161865234, -11.819001197814941}, 
    {-14.350753784179688, 104.80479431152344, 0.6991578936576843}, 
    {-0.7532340884208679, 107.81478118896484, 68.78583526611328}, 
    {2.1829042434692383, 106.96797180175781, 90.21467590332031}
  },
  va1 = {
    {-30.466176986694336, 147.114501953125, -151.39772033691406}, 
    {-17.43215560913086, 154.89381408691406, -126.94638061523438}
  },
  de1 = {
    {83.19461822509766, 0.8931258916854858, 313.50323486328125}, 
    {-29.68844985961914, 1.954253911972046, 238.90013122558594}, 
    {-69.21147918701172, 8.101288795471191, 171.30227661132812}, 
    {1.350915551185608, 1.1179736852645874, 299.5738830566406}, 
    {-59.2152214050293, 4.482473850250244, 224.3214874267578}, 
    {-90.4620132446289, 2.6760103702545166, 326.61895751953125}, 
    {44.365570068359375, 0.6282044649124146, 228.56680297851562}
  },
  de2 = {
    {77.69338989257812, 92.25956726074219, 260.7549133300781}, 
    {43.791255950927734, 90.14799499511719, 229.9110870361328}, 
    {53.92071533203125, 99.21656036376953, 152.45957946777344}, 
    {63.40105438232422, 66.34053039550781, -13.661370277404785}, 
    {44.300437927246094, 94.3846435546875, 130.56182861328125}, 
    {10.916092872619629, 76.6250228881836, -133.59512329101562}, 
    {-4.162625789642334, 89.4147720336914, -135.28839111328125}, 
    {49.96483612060547, 69.7237777709961, -62.57978820800781}, 
    {81.1445083618164, 64.3047866821289, -107.21367645263672}, 
    {70.5404052734375, 69.17701721191406, -156.1171112060547}, 
    {32.799076080322266, 69.72303009033203, -217.41574096679688}
  },
  de3 = {
    {98.68771362304688, 115.79803466796875, 468.6960754394531}, 
    {68.91381072998047, 109.1550521850586, 490.6760559082031}, 
    {47.52444839477539, 108.5938720703125, 513.4615478515625}, 
    {80.95787811279297, 108.51556396484375, 509.0512390136719}, 
    {296.867431640625, 116.74671936035156, 526.1262817382812}, 
    {310.94061279296875, 120.83760833740234, 556.564453125}, 
    {297.31475830078125, 115.4719009399414, 348.1332702636719}
  },
  de4 = {
    {-140.23443603515625, 1.2785651683807373, 421.68963623046875}, 
    {-180.7798614501953, 3.973724365234375, 484.90673828125}, 
    {-194.31446838378906, 0.8118993043899536, 400.9505920410156}, 
    {-168.3665771484375, 2.0468192100524902, 371.8758239746094}, 
    {-274.99176025390625, 12.156349182128906, 424.8158264160156}, 
    {-292.43408203125, 31.235795974731445, 403.9704895019531}
  },
  de5 = {
    {-48.612648010253906, 104.93779754638672, -77.65389251708984}, 
    {-215.27764892578125, 136.3376922607422, -164.43309020996094}, 
    {-249.95486450195312, 101.41854858398438, -190.11062622070312}, 
    {-210.87734985351562, 90.00242614746094, -321.1565246582031}, 
    {-247.11279296875, 84.56513214111328, -372.64276123046875}, 
    {-276.9136047363281, 85.47688293457031, -344.01361083984375}
  }
}

posits = {
  {map='CandleSpace',name='블랙아웃',x=800,y=0.6,z=0},
  {map='CandleSpace',name='스폰',x=1.3682793378829956,y=1.1504778861999512,z=-0.7198812365531921},
{map='Dawn',name='시즌맵',x=211.96453857421875,y=4.274348258972168,z=-63.84076690673828},
{map='Dawn',name='재단',x=154.19021606445312,y=103.16753387451172,z=-278.95806884765625},
{map='Dawn',name='무지개 다리',x=301.889892578125,y=413.0315246582031,z=-301.21563720703125},
{map='Dawn',name='구름언덕',x=402.95318603515625,y=115.7956314086914,z=-10.648039817810059},
{map='Prairie_Butterfly',name='시작부분 패스',x=93.07067108154297,y=150.75,z=-5.158041477203369},
{map='Prairie_Village',name='투명재단',x=96.71356964111328,y=175.35667419433594,z=265.9364929199219},
{map='Prairie_Island',name='시작부분 공중섬',x=244.09881591796875,y=95.16970825195312,z=221.4185791015625},
{map='Prairie_Island',name='폭포',x=494.17425537109375,y=321.3855285644531,z=393.63873291015625},
{map='Prairie_Island',name='섬 꼭대기',x=57.3979606628418,y=102.27421569824219,z=300.8200378417969},
{map='Prairie_Island',name='버섯동굴',x=90.91666412353516,y=2.906703472137451,z=293.2203063964844},
{map='Rain',name='시작부분 스킵',x=17.024648666381836,y=92.79985046386719,z=-225.68663024902344},
{map='Rain_Cave',name='출구',x=-65.55963134765625,y=210.6380157470703,z=-285.0746154785156},
{map='RainMid',name='출구',x=-17.595956802368164,y=182.86737060546875,z=400.8680114746094},
{map='Sunset',name='시작부분 스킵',x=181.40216064453125,y=49.21394348144531,z=-512.7560424804688},
{map='Sunset_Citadel',name='양작 시작지점',x=115.18697357177734,y=477.2147521972656,z=15.642013549804688},
{map='Sunset_Citadel',name='출구',x=199.33934020996094,y=491.9642028808594,z=-195.2884063720703},
{map='Sunset_FlyRace',name='레이스 끝부분',x=124.05903625488281,y=1045.8760986328125,z=-78.43795013427734},
{map='SunsetEnd2',name='파경',x=308.30621337890625,y=148.89456176757812,z=-775.3768920898438},
{map='DuskOasis',name='시작부분 스킵',x=141.16297912597656,y=120.97766876220703,z=351.2036437988281},
{map='DuskOasis',name='배 정착지',x=-47.61760330200195,y=141.75379943847656,z=170.869873046875},
{map='Night',name='2층',x=11.553918838500977,y=80.62894439697266,z=14.284697532653809},
{map='Night',name='3층',x=27.935970306396484,y=153.792236328125,z=-39.151798248291016},
{map='Night2',name='꼭대기',x=-0.18086150288581848,y=294.4930419921875,z=0.7263343930244446},
{map='Storm',name='출구',x=7,y=266,z=-250},
{map='StormStart',name='출구',x=-2,y=196,z=-19}
}

mlist = {}

hitarr = {
  {value = 0}
}

function indexof(a,b)
  for k,v in ipairs(a) do 
    if v == b then
      return k 
    end
  end
  return -1
end

function getadd(add,flag)
  local uu = {}
  uu[1] = {
    address = add,
    flags = flag
  }
  yy = gg.getValues(uu)
  return yy[1].value
end

function setadd(add,flag,val,bfreeze)
  local uu = {}
  uu[1] = {
    address = add,
    flags = flag,
    value = val,
    freeze = bfreeze
  }
  gg.setValues(uu)
  if bfreeze then 
    gg.addListItems(uu)
  else
    if indexof(sarray,uu[1].address) == -1
    then
      gg.removeListItems(uu)
    else
      gg.addListItems(uu)
    end
  end
end

function isfreeze(add)
  mlist = gg.getListItems()
  for i, v in next, mlist do
    if mlist[i].address == add then
      --print(mlist[1])
      return mlist[i].freeze
    end
  end
  return false
end

function addtostr(add,amount)
  mp = ''
  for i = 0, amount do
    mu = getadd(add + i,gg.TYPE_BYTE)
    if mu < 1 then break end
    mp = mp .. string.char(mu)
  end
  return mp
end

function fpbase()
  --methods for unexpected errors
  gg.clearResults()
  mm = {}
  nn = {}
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(poffsets.sival, gg.TYPE_DWORD,false,nil,prange.a,prange.b)
  ResultCount=gg.getResultCount()
  nn = gg.getResults(ResultCount)
  for sn4, sn5 in ipairs(nn) do
    if getadd(sn5.address - 0x4,gg.TYPE_DWORD) == 0 and getadd(sn5.address - 0x8,gg.TYPE_DWORD) == 0 and getadd(sn5.address + 0x8,gg.TYPE_DWORD) == 0 and getadd(sn5.address + 0x4,gg.TYPE_DWORD) ~= 0 then
      mm[1] = {
      address = sn5.address - poffsets.wlevel,
      flags = gg.TYPE_DWORD
      }
      if getadd(sn5.address - poffsets.wlevel,gg.TYPE_DWORD) > 0 and getadd(sn5.address - poffsets.wlevel,gg.TYPE_DWORD) < 1000 then
        pbase = sn5.address - poffsets.wlevel
        return
      end
      --break
  end
  end
  
  gg.clearResults()
  nn = {}
  mm = {}
  gg.toast('failed! trying again...')
  gg.clearResults()
  gg.searchNumber('h 00 00 A0 3F 00 00 00 00', gg.TYPE_BYTE,false,nil,prange.a,prange.b)
  gg.refineNumber(63)
  nn = gg.getResults(gg.getResultsCount())
  for k, v in ipairs(nn) do
      spnt1 = getadd(v.address - 0x22407,gg.TYPE_DWORD)
      spnt2 = getadd(v.address + 0x41,gg.TYPE_DWORD)
      spnt3 = getadd(v.address - 0x223F7,gg.TYPE_DWORD)
      if spnt1 == spnt2 and spnt3 == 371 then
        pbase = v.address - 0x22407
        return;
      end
  end
  
  gg.toast('failed! trying again...')
  nn = {}
  mm = 0
  gg.clearResults()
  gg.searchNumber(':device_capabilities',gg.TYPE_BYTE,false,nil,prange.a,prange.b)
  nn=gg.getResults(1)
  if getadd(nn[1].address - 0x58,gg.TYPE_DWORD) > 0 and getadd(nn[1].address - 0x58,gg.TYPE_DWORD) < 1000 then
    pbase = nn[1].address - 0x58
    return
  end
  
  gg.alert('플레이어를 찾을 수 없습니다!\n1. 프로세스가 스카이: 빛의 아이들로 선택되어 있는지 확인하세요.\n2. 안식처에서 스크립트를 다시 실행해주세요.\n3. 게임을 재시작 후 안식처에서 스크립트를 실행하세요.')
  os.exit()
end


function startup()
  nn = 0
  gg.toast('한글화 코드 로딩됨 : ' .. ddd .. ' by Kel')
  gg.clearResults()
  gg.setVisible(false)
  mm = gg.getRangesList('[anon:libc_malloc]')
  for i,v in ipairs(mm) do
    nn = mm[i]['end'] - mm[i].start
      if(nn < 260998272 and nn > 251998272) then
        prange.a = mm[i].start
        prange.b = mm[i]['end']
      end
  end
  fpbase()
  nn = 'Player : ' .. tostring(itoh(pbase)) .. ' ' .. getadd(pbase,gg.TYPE_DWORD) .. 'D'
  gg.toast(nn)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("3.5", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(1)
if gg.getResultsCount() ~= 0 then
  eoffsets.sspeed = mm[1].address
  eoffsets.cspeed = mm[1].address - 0x33254
  eoffsets.wforce = mm[1].address + 0x530
  eoffsets.jforce = mm[1].address + 0x638
end
gg.clearResults()

--setadd(eoffsets.graphic,gg.TYPE_FLOAT,1,false)
--gg.addListItems(nn)

gg.searchNumber("-0.01499999966", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(2)
gg.clearResults()
for sn4, sn5 in ipairs(mm) do
  nn[sn4] = {
    name = 'ground',
    address = sn5.address,
    flags = sn5.flags,
    value = sn5.value
  }
  eoffsets.ground = sn5.address
end
--gg.addListItems(nn)

gg.searchNumber("0.8", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(1)
gg.clearResults()
for sn4, sn5 in ipairs(mm) do
  nn[sn4] = {
    name = 'slide',
    address = sn5.address,
    flags = sn5.flags,
    value = sn5.value
  }
  eoffsets.slide = sn5.address
end
--gg.addListItems(nn)

gg.searchNumber("4.90000009537F;4.59999990463F;0.89999997616F;0.81999999285F::13", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(1)
gg.clearResults()
for sn4, sn5 in ipairs(mm) do
  nn[sn4] = {
    name = 'jump accelerate',
    address = sn5.address,
    flags = sn5.flags,
    value = sn5.value
  }
  eoffsets.jump = sn5.address
end
--gg.addListItems(nn)

gg.searchNumber("-3.16081619263", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(1)
gg.clearResults()
for sn4, sn5 in ipairs(mm) do
  nn[sn4] = {
    name = 'gravity',
    address = sn5.address,
    flags = sn5.flags,
    value = sn5.value
  }
  eoffsets.gravity = sn5.address
end
--gg.addListItems(nn)

mm = {}
nn = {}
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults()
nn[1] = {
    name = 'wlevel',
    address = pbase,
    flags = gg.TYPE_DWORD,
    value = getadd(pbase,gg.TYPE_DWORD)
  }
gg.addListItems(nn)
nn = {}
nn[1] = {
  name = 'posit X',
  address = pbase + poffsets.positX,
  flags = gg.TYPE_FLOAT
}
nn[2] = {
  name = 'posit Y',
  address = pbase + poffsets.positY,
  flags = gg.TYPE_FLOAT
}
nn[3] = {
  name = 'posit Z',
  address = pbase + poffsets.positZ,
  flags = gg.TYPE_FLOAT
}
nn[4] = {
  name = 'pwing',
  address = pbase + poffsets.pwing,
  flags = gg.TYPE_FLOAT
}
nn[5] = {
  name = 'ewing',
  address = pbase + poffsets.ewing,
  flags = gg.TYPE_DWORD
}
nn[6] = {
  name = 'eprop',
  address = pbase + poffsets.eprop,
  flags = gg.TYPE_DWORD
}
nn[7] = {
  name = 'mgk1',
  address = pbase + poffsets.magic,
  flags = gg.TYPE_DWORD
}
nn[8] = {
  name = 'mgk trigger',
  address = pbase + poffsets.magic + 0xC00,
  flags = gg.TYPE_DWORD
}
nn[9] = {
  name = 'bsize',
  address = pbase + poffsets.bsize,
  flags = gg.TYPE_FLOAT
}
nn[10] = {
  name = 'rhands',
  address = pbase + poffsets.rhands,
  flags = gg.TYPE_DWORD
}
gg.addListItems(nn)
nn = {}
nn = gg.getListItems()
for i, v in next, nn do
  table.insert(sarray,nn[i].address)
end

gg.clearResults()
nn = {}
mm = {}
gg.searchNumber(1487508559, gg.TYPE_DWORD,false,nil,prange.a,prange.b)
nn = gg.getResults(gg.getResultCount())
for i, v in ipairs(nn) do 
  mm[i] = {address = v.address +4,flags = 4}
end
mm = gg.getValues(mm)
for i, v in ipairs(mm) do
  if v.value == 11 then 
    eoffsets.world = v.address + 8
    break 
  end
end
if eoffsets.world == 0x00 then gg.toast('err') end
gg.addListItems(gg.getValues({{address = eoffsets.world, flags = 4}}))
--gg.setRanges(4)
gg.clearResults()
gg.searchNumber(17.60000038147,16,false,nil,prange.a,prange.b)
nn = 0x00
eoffsets.nentity = gg.getResults(gg.getResultCount())[1].address
nn = gg.getResults(gg.getResultCount())[1].address + 0x1D4
  for i=1,450 do
  table.insert(candles,{address=nn+(i-1)*448,flags=16,value=0,name='cc',freeze=false})
end
--B0700C
mm = {}
 for i=1,256 do
   mm[i]= {address = nn + poffsets.eflowers + ((i-1) * 8),flags = 16}
 end
 flowers = gg.getValues(mm)
 
 nn = {}
 mm = {}
 gg.clearResults()
gg.searchNumber(334569360,4)
eoffsets.nworld = gg.getResults(gg.getResultCount())[1].address + 0x364

--camera 2000f;2000f;1
--gg.clearResults()
--gg.searchNumber(0.16699999571,16)
--eoffsets.ncamera = gg.getResults(gg.getResultCount())[1].address + 0x18

--gg.addListItems(candles)
gg.clearResults()
gg.toast('로딩 완료')
setadd(pbase + poffsets.pdamage,gg.TYPE_DWORD,0,true)
end

function itoh(int)
  return string.format("%x",int)
end

function debg()
  nn = ''
  nn = nn .. tostring(itoh(pbase)) .. ' -- wingcount\n'
  nn = nn .. tostring(itoh(pbase + poffsets.positX)) .. ' position X\n'
  nn = nn .. tostring(itoh(pbase + poffsets.bheight)) .. ' height offset\n'
  nn = nn .. tostring(itoh(pbase + poffsets.pose)) .. ' pose 0 1 2 4\n'
  nn = nn .. tostring(itoh(pbase + poffsets.pwing)) .. ' wing energy\n'
  nn = nn .. tostring(itoh(pbase + poffsets.ewing)) .. ' equipped wing\n'
  nn = nn .. tostring(itoh(pbase + poffsets.famount)) .. ' firework amount\n'
  nn = nn .. tostring(itoh(pbase + poffsets.gesture)) .. ' gesture state\n'
  nn = nn .. tostring(itoh(pbase + poffsets.magic)) .. ' magics\n'
  nn = nn .. tostring(itoh(pbase + poffsets.bsize)) .. ' body size\n'
  nn = nn .. tostring(itoh(pbase + poffsets.uemote)) .. ' emote upgrades\n'
  nn = nn .. tostring(itoh(pbase + poffsets.pdamage)) .. ' player damage\n'
  nn = nn .. tostring(itoh(pbase + poffsets.pshout)) .. ' player shout\n'
  nn = nn .. tostring(itoh(eoffsets.nentity + poffsets.eflowers)) .. ' entity flowers\n'
  nn = nn .. tostring(itoh(eoffsets.nentity + poffsets.wwings)) .. ' entity wings\n'
  nn = nn .. tostring(itoh(eoffsets.world)) .. ' respawn world\n'
  nn = nn .. tostring(itoh(eoffsets.nworld)) .. ' current world\n'
  nn = nn .. tostring(itoh(eoffsets.ncamera)) .. ' player camera\n'
  print(nn)
end

--math
function pmove(dis)
  local x,y,z = getadd(pbase + poffsets.positX,gg.TYPE_FLOAT), getadd(pbase + poffsets.positY,gg.TYPE_FLOAT), getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT)
  local radin = getadd(pbase + poffsets.positZ + 0x18,gg.TYPE_FLOAT)
  
  local ax = dis * math.sin(radin)
  local az = dis * math.cos(radin)
  --gg.toast(radin)
  setposit(x + ax,y,z + az)
  gg.setVisible(false)
end

function uemote()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(':emote_upgrade',gg.TYPE_BYTE,false,nil,prange.a,prange.b)
  gg.processResume()
  revert=gg.getResults(10000,nil,nil,nil,nil,nil,nil,nil,nil)
  gg.editAll('0',gg.TYPE_BYTE)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  epoint = pbase + poffsets.uemote
  for i = 0,100,1 do 
    if getadd(epoint + (0x30 * i) - 0x4,gg.TYPE_DWORD) ~= 0 then
      setadd(epoint + (0x30 * i),gg.TYPE_DWORD,6,false)
      else
        break
    end
    
    if i >= 100 then break end
  end
  
end

function absflower()
  gg.setVisible(false)
  tmp = {}
  kj = 0
  mposit = {getadd(pbase + poffsets.positX,gg.TYPE_FLOAT)
    ,getadd(pbase + poffsets.positY,gg.TYPE_FLOAT)
    ,getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT)}
  for i = 1,492 do
    jj = eoffsets.nentity + poffsets.wobjs + (i-1)*0x3B0
    if getadd(jj + 0xC,gg.TYPE_FLOAT) == 1 then
    kj = kj + 1
    for j = 0, 2 do
      table.insert(tmp,{address = jj + j * 4,flags = gg.TYPE_FLOAT, value = mposit[j + 1]}) 
    end
    end
    --gg.addListItems(tmp[i])
  end
  gg.setValues(tmp)
  setposit(mposit[1],mposit[2] + 0.5,mposit[3])
  gg.toast('done : ' .. kj)
end


function abslight()
  ---1,309,381,888
  nn = 0
  for i = 1,12 do
    nn = getadd(eoffsets.nentity + poffsets.wwings + 0x120*(i-1),gg.TYPE_DWORD)
    if nn == 1 then
      setadd(eoffsets.nentity + poffsets.wwings + 0x120*(i-1),gg.TYPE_DWORD,4,false)
    end
    
  end
  gg.sleep(200)
  for i = 1,12 do
    setadd(eoffsets.nentity + poffsets.wwings + 0x120*(i-1),gg.TYPE_DWORD,8,false)
  end
end

function absorb()
  gg.setVisible(false)
  abslight()
  for i,v in pairs(candles) do
    v.value = 1.0
  end
  for i,v in pairs(flowers) do
    v.value = 0.0
  end
  gg.setValues(candles)
  gg.setValues(flowers)
  
  gg.clearResults()
  
  gg.searchNumber('-842203136',4,false,nil,prange.a,prange.b)
  nn = {}
  mm = gg.getResults(gg.getResultCount())
  local tmp={}
  for i,v in pairs(mm) do
    if getadd(v.address - 0xC,gg.TYPE_FLOAT) == 3.5 then
      table.insert(nn,{address = v.address - 0xC,flags = gg.TYPE_FLOAT, value = 9999.0})
    end
  end
  gg.setValues(nn)
  gg.clearResults()
end

function portal(str)
  gg.setVisible(false)
  hh = gg.getSpeed()
  setstr(eoffsets.world,24,str)
  gg.sleep(100)
  mm = 0
  mm = getadd(pbase,4)
  setadd(pbase,4,0,false)
  gg.setSpeed(10)
  gg.sleep(500)
  setadd(pbase,4,mm,false)
  gg.setSpeed(100)
  gg.sleep(1500)
  gg.setSpeed(hh)
  gg.sleep(1000)
  setstr(eoffsets.world,24,'CandleSpace')
  setadd(pbase + poffsets.pwing,gg.TYPE_FLOAT,14.0,false)
end

function teleb()
  a = {}
  b = {}
  for i,v in pairs(pworld) do
    table.insert(a,v[1])
  end
  c=gg.choice(a,nil,getmap())
  if x == nil then return; end
  for i,v in pairs(pworld[c]) do
    if type(v) == 'table' then
    table.insert(b,v[2])
    end
  end
  d=gg.choice(b,nil,getmap())
  if d == nil then return; end
  d = d + 1
  setposit(pworld[c][d][1][1],pworld[c][d][1][2],pworld[c][d][1][3])
  gg.setVisible(false)
end

function getmap()
  nn = ''
  for i = 0, 16 do
    mm = getadd(eoffsets.nworld + i,gg.TYPE_BYTE)
    if mm == 0 then
      break
    end
    nn = nn .. string.char(mm)
  end
  
  return nn
end

function getstr(add,range)
  nn = ''
  for i = 0, range do
    mm = getadd(add + i,gg.TYPE_BYTE)
    if mm > 0  then
      nn = nn .. string.char(mm)
    end
    
  end
  
  return nn
end

function pmagic(arr,id)
  --if id == 0 then mreset(); return; end
  nn = {}
  tgt = pbase + (poffsets.magic + (0x30 * (arr-1)))
  setadd(tgt,gg.TYPE_DWORD,id,false)
  --setadd(tgt + 0x8,gg.TYPE_DWORD,2139095040,false)
  setadd(tgt + 0x8,gg.TYPE_DWORD,-1600132692,false)
  setadd(tgt + 0x10,gg.TYPE_DWORD,1600132692,false)
  setadd(tgt + 0x18,gg.TYPE_DWORD,-1720562886,false)
  setadd(tgt + 0x1C,gg.TYPE_DWORD,-1806973714,false)
  setadd(tgt + 0x20,gg.TYPE_DWORD,1020395176,false)
  setadd(tgt + 0x24,gg.TYPE_DWORD,131004170,false)
  setadd(tgt + 0x28,gg.TYPE_DWORD,0,false)
  setadd(pbase + poffsets.magic + 0xC00,gg.TYPE_DWORD,12,true)
  --gg.toast(poffsets.magic + 0xC00)
  setadd(tgt + 0x28,gg.TYPE_DWORD,0,false)
end


function setposit(mx,my,mz)
  jh = {
    {
      address = pbase + poffsets.positX,
      flags = gg.TYPE_FLOAT,
      value = mx
    },
    {
      address = pbase + poffsets.positY,
      flags = gg.TYPE_FLOAT,
      value = my
    },
    {
      address = pbase + poffsets.positZ,
      flags = gg.TYPE_FLOAT,
      value = mz
    }
  }
  gg.setValues(jh)
end

function getpos()
 px = getadd(pbase + poffsets.positX,gg.TYPE_FLOAT)
 py = getadd(pbase + poffsets.positY,gg.TYPE_FLOAT)
 pz = getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT)
--print(px,py,pz)
gg.toast(tostring(px) .. " / " .. tostring(py) .. " / " .. tostring(pz))
end

function noclip()
gg.clearResults()
gg.setVisible(false)
gg.searchNumber('1F;0~~0;65,537D::9', gg.TYPE_FLOAT,false,nil,prange.a,prange.b)
gg.refineNumber('1.0', gg.TYPE_FLOAT)
if gg.getResultsCount() == 0 then 
  gg.toast('failed!')
  return;
end
bb = gg.getResults(gg.getResultsCount())
  for i,c in pairs(bb) do
    ee = {}
    ee[1] = {address = c.address, flags = c.flags, value = 0}
    ee[2] = {address = c.address - 0x4, flags = c.flags, value = 0}
    ee[3] = {address = c.address - 0xC, flags = c.flags, value = 0}
    ee[4] = {address = c.address - 0x10, flags = c.flags, value = 0}
    gg.setValues(ee)
  end
end

function relationships()
  nn = {}
  mm = {}
  gg.setVisible(false)
  addr = 0
  if gg.ANDROID_SDK_INT == 30 then
      gg.setRanges(-2080896)
    else
      gg.setRanges(4)
  end
    gg.clearResults()
    gg.searchNumber(':relationship_',1,false,nil,prange.a,prange.b)
    gg.refineNumber(114,1)
    nn = gg.getResults(5)
    for i =1, #nn do
      addr = nn[i].address
      gg.searchNumber('12884901889',32,false,gg.SIGN_EQUAL,addr-'10000',addr+'10000')
      if gg.getResultsCount() ~= 0 then
        print(gg.getResultsCount())
        break 
      end
    end
    mm = gg.getResults(gg.getResultsCount())
    gg.addListItems(mm)
    for i,v in pairs(mm) do
      mm[i].value = 0
    end
    gg.setValues(mm)
end

function inputstr()
    input=gg.prompt(
      {''},
      {[1]=''},
    	{[1]='text'})
    	if input == nil then
    	  return ''
    	  else
    	 return input[1]
    	end
end

function inputnum(def)
    input=gg.prompt({'Default : ' .. def}
    	, 	{[1]=def}
    	, 	{[1]='number'})
    	if input==nil then 	
    	    return def
    	else
    	    return input[1]
    	end
end

function setstr(add,range,str)
  nn = gg.bytes(str)
  hv = {}
  if #nn < range then
    mm = range - #nn
    for i = 1, mm do
      table.insert(nn,0)
    end
  end
  for i = 1, range do
    table.insert(hv,{address = add + (i - 1),flags = gg.TYPE_BYTE,value = nn[i]})
    --setadd(add + (i - 1),gg.TYPE_BYTE,nn[i],false)
  end
  gg.setValues(hv)
end

function changehit()
  --2089048596
  --1251050323
  gg.setVisible(false)
  gg.clearResults()
  if hitarr[1].value == 0 then
  gg.searchNumber('1251050323',gg.TYPE_DWORD,false,nil,prange.a,prange.b)
  ResultCount=gg.getResultCount()
    if ResultCount~=0 then
      hitarr=gg.getResults(ResultCount)
    else
      gg.toast('failed')
      return
    end
  end
  
  
  if hitarr[1].value ~= 2089048596 then
    for i, v in next, hitarr do
      hitarr[i].value = 2089048596
    end
    gg.toast('bubbles → hit 👊 ')
  else
    for i, v in next, hitarr do
      hitarr[i].value = 1251050323
    end
    gg.toast('hit 👊 → bubbles')
  end
  gg.setValues(hitarr)
  gg.clearResults()
end

function race(a)
  if a == 1 then
  setposit(88.07906341552734,1184.613525390625,396.5653381347656)
  gg.sleep(1000)
  setposit(-85.45684814453125,1175.94287109375,362.0528869628906)
  gg.sleep(1000)
  setposit(-178.68106079101562,1174.4202880859375,348.1898498535156)
  gg.sleep(1000)
  setposit(149,1020,-96)
  gg.sleep(10000)
  setposit(54,155,-138)
  else
    setposit(203.81,614.55,-457.57)
  gg.sleep(1000)
  setposit(217.54,609.19,-505.07)
  gg.sleep(1000)
  setposit(228.33,601.61,-522.44)
  gg.sleep(1000)
  setposit(256.2,586,-564.76)
  gg.sleep(10000)
  setposit(54,155,-138)
  end
  
end

function espam()
  if mslot[1] == 'none' then return; end
  adr = pbase + poffsets.magic + 0x28
  --gg.toast(tostring(isfreeze(adr)))
  if isfreeze(adr) then
    setadd(adr,gg.TYPE_DWORD,0,false)
  else
    setadd(adr,gg.TYPE_DWORD,0,true)
  end
end

function mtrigger()
  
  if mev == 1 then
    if getadd(pbase + poffsets.pshout,gg.TYPE_FLOAT) < 0.6 then
      pmove(mdis)
      setadd(pbase + poffsets.pshout,gg.TYPE_FLOAT,2.0,false)
    end
  end
  if mev == 2 then
    if getadd(pbase + poffsets.pose,gg.TYPE_DWORD) == 2 then
      pmove(mdis)
      setadd(pbase + poffsets.pose,gg.TYPE_DWORD,0,false)
    end
  end
  if mev == 3 then
    if getadd(pbase + poffsets.pose,gg.TYPE_DWORD) == 1 then
      pmove(mdis)
      setadd(pbase + poffsets.pose,gg.TYPE_DWORD,0,false)
    end
  end
end

function htrigger()
  if fastvalue then
    if getadd(pbase + poffsets.gohome,gg.TYPE_FLOAT) == 1 then
      gg.setSpeed(1)
      fastvalue = false
    end
  else
    if getadd(pbase + poffsets.gohome,gg.TYPE_FLOAT) ~= 1 then
      gg.setSpeed(100)
      fastvalue = true
    end
  end
  
end

function hcamera()
    if eoffsets.ncamera == 0x00 then
      --camera 2000f;2000f;1
      gg.setVisible(false)
      gg.clearResults()
      gg.searchNumber('h 00 00 FA 44 00 00 FA 44 00 00 80 3F',gg.TYPE_BYTE,false,nil,prange.a,prange.b)
      if gg.getResultCount() == 0 then return false end
      
      eoffsets.ncamera = gg.getResults(gg.getResultCount())[3].address + 0xA8
    gg.clearResults()
    end
    return true
end

--IQ10 Auto farm cus i'm lazy
function wingfarm(aa,bb)
  nyn = ''
  for i = aa, bb do
    nyn = getmap()
    portal(cworld[i][2])
    gg.sleep(wrsleep)
    if nyn == getmap() then
      gg.sleep(crsleep)
    end
    if nyn == getmap() then
      gg.sleep(crsleep)
    end
    abslight()
    gg.sleep(wrsleep * 0.4)
  end
  gg.toast('done')
end

function candlefarm(aa,bb)
  nyn = ''
  setadd(pbase + poffsets.pose,gg.TYPE_DWORD,0,true)
  gg.setSpeed(3)
  for i,v in pairs(candles) do
    v.value = 1.0
    v.freeze = true
  end
  gg.setValues(candles)
  gg.addListItems(candles)
  for i,v in pairs(flowers) do
    v.value = 0
    v.freeze = true
  end
  gg.setValues(flowers)
  gg.addListItems(flowers)
  
  for i = aa, bb do
    nyn = getmap()
    ntn = {6974}
    portal(cworld[i][2])
    gg.sleep(crsleep)
    if nyn == getmap() then
      gg.sleep(crsleep)
    end
    if nyn == getmap() then
      gg.sleep(crsleep)
    end
    nyn = getmap()
    if nyn == 'Prairie_Village' then
      ntn = cpoint.pr1
    elseif nyn == 'Prairie_Island' then
      ntn = cpoint.pr2
    elseif nyn == 'Rain' then
      ntn = cpoint.fr1
    elseif nyn == 'RainForest' then
      ntn = cpoint.fr2
    elseif nyn == 'RainShelter' then
      ntn = cpoint.fr3
    elseif nyn == 'Rain_Cave' then
      ntn = cpoint.fr4
    elseif nyn == 'RainMid' then
      ntn = cpoint.fr5
    elseif nyn == 'RainEnd' then
      ntn = cpoint.fr6
    elseif nyn == 'SunsetEnd2' then
      ntn = cpoint.va1
    elseif nyn == 'Dusk' then
      ntn = cpoint.de1
    elseif nyn == 'DuskGraveyard' then
      ntn = cpoint.de2
    elseif nyn == 'DuskOasis' then
      ntn = cpoint.de3
    elseif nyn == 'Dusk_CrabField' then
      ntn = cpoint.de4
    elseif nyn == 'DuskMid' then
      ntn = cpoint.de5
    end
    if ntn[1] == 6974 then
      absorb()
      gg.sleep(crsleep * 0.3)
      else
      gg.toast(nyn)
      for k,c in pairs(ntn) do
        setadd(pbase + poffsets.pwing,gg.TYPE_FLOAT,14,true)
        if nyn ~= getmap() then
          portal(nyn)
          gg.sleep(crsleep)
        end
        
        setposit(c[1],c[2],c[3])
        absorb()
      end
    end
    
  end
  gg.setSpeed(1)
  gg.toast('done')
  
  setadd(pbase + poffsets.pose,gg.TYPE_DWORD,0,false)
  gg.removeListItems(candles)
  gg.removeListItems(flowers)
end

function searchgl()
  gg.clearResults()
  gg.setRanges(4)
  gg.setVisible(false)
  gg.searchNumber(':glow_15',nil,false,nil,prange.a,prange.b)
  if gg.getResultsCount() == 0 then
   gg.toast('fail!')
  else
  eoffsets.brighter=gg.getResults(1)[1].address + 0x1F
  end
end

function telelist()
  kurr = {'🆙️현재 위치를 공유'}
  karr = {0}
  nun = getmap()
  for k,v in pairs(posits) do
    if nun == v.map then
      table.insert(karr,v)
      table.insert(kurr,v.name)
    end
  end
  xx=gg.choice(kurr,nil,nun)
  if xx == nil then
    return;
  end
  if xx == 1 then
    pshare = pshare .. '{map=\'' .. getmap() .. '\'$$name=\'' .. inputstr() .. '\'$$x=' .. getadd(pbase + poffsets.positX,gg.TYPE_FLOAT) .. '$$y=' .. getadd(pbase + poffsets.positY,gg.TYPE_FLOAT) .. '$$z=' .. getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT) .. '}$$\n'
    gg.copyText(pshare)
    else
    setposit(karr[xx].x,karr[xx].y,karr[xx].z)
  end
  gg.setVisible(false)
end


function getfriendnode()
  if eoffsets.gnode == 0x00 then
    gg.clearResults()
    gg.setRanges(4)
    gg.setVisible(false)
    gg.searchNumber(1601466469,gg.TYPE_DWORD,false,nil,prange.a,prange.b)
    if gg.getResultsCount() == 0 then
      gg.toast('fail!')
    else
      eoffsets.gnode=gg.getResults(1)[1].address
      for i = 0, 39 do
        nn = eoffsets.gnode + (0x2E0 * i)
        mm = nn - 0x18
        yy = addtostr(nn - 0x4,20)
        if string.find(yy,'accept_') then
        table.insert(nodes,{yy,mm,getadd(mm,gg.TYPE_DWORD)})
        end
      end
      --print(nodes)
    end
    gg.clearResults()
  end
  
end

function setdesk(str,add)
  if eoffsets.pdesk == 0x00 then
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber('h 22 55 69 4F 75 74 66 69 74 50 72 6F 70 43 68 61 69 72 00 00 00 00 00 00 14 74 61 62')
    gg.refineNumber(20)
    if gg.getResultsCount() == 0 then
      gg.toast('fail!')
      return;
    end
    eoffsets.pdesk = gg.getResults(1)[1].address + 0x1
  end
  setstr(eoffsets.pdesk + add,24,str)
end

function searchinfo()
  xc = ''
  gg.clearResults()
  gg.setRanges(4)
  gg.setVisible(false)
  gg.searchNumber(1937056379,gg.TYPE_DWORD)
  xc = getstr(gg.getResults(gg.getResultCount())[1].address, 1000)
  gg.copyText(xc)
end


function resetfriendnode()
  for i,v in ipairs(nodes) do
    setadd(nodes[i][2],gg.TYPE_BYTE,nodes[i][3],false)
  end
  gg.toast('node reset')
end

function setspirit(val)
  nfirst = false
  if eoffsets.gspirits == 0x00 then
    nfirst = true
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber('h D3 21 18 8F 00 00 00 00 12 6E 61 6D 65 5F 64 61 77 6E 00 00')
    dq = gg.getResults(gg.getResultsCount())
    if gg.getResultsCount() == 0 then
      gg.toast('fail!')
      return;
    end
    eoffsets.gspirits = dq[1].address
    gg.clearResults()
  end
  --spirits = {}
  for i = 0, 40 do
    mm = eoffsets.gspirits + (0x80 * i)
    if nfirst then
    table.insert(spirits,{getadd(mm,gg.TYPE_QWORD),getstr(mm + 0x9,20),mm})
    end
    setadd(mm,gg.TYPE_QWORD,val,false)
  end
  gg.toast('done')
  --print(eoffsets.gspirits)
end

function nowind()
  nn = 0x00
  gg.clearResults()
  gg.setRanges(4)
  gg.setVisible(false)
  nmp = getmap()
  for i,v in ipairs(windwallset) do
    if nmp == windwallset[i][1] then
      gg.searchNumber(windwallset[i][2],gg.TYPE_QWORD,false,nil,prange.a,prange.b)
      gg.toast('done')
      break
    end
  end
  if gg.getResultsCount() == 0 then
    gg.toast('fail!')
    return;
  end
  nn=gg.getResults(1)[1].address
  for i = 1, 14 do
    setadd(nn - (i * 0x4),gg.TYPE_FLOAT,0,false)
  end
  
end

--setstr(0x7C43439A33,13,'testing')
startup()
--gg.toast(getadd(0x12C400BC,gg.TYPE_DWORD))

gg.setVisible(false)
gg.showUiButton()

function domenu()
      m=gg.choice({'🎈날개'
      	,'🕯양초 긁어오기'
      	,'🚮오브젝트 긁어오기'
      	,'⬆️벽뚫기'
      	,'🌏텔레포트'
      	,'☸엔진 설정'
      	,'♿트롤'
      	,'💫주문'
      	,'🔝제스쳐 업글'
      	,'🏧소품 꺼내기'
      	,'⚠️노클립'
        ,'🔄자동양날작'
        ,'📽카메라 조절'
        ,'♥️친구 노드 수정'
        ,'⚠️실험기능'
      },nil,'')
      if m == 1 then
        nn = 0
        nn = getadd(pbase,gg.TYPE_DWORD)
        x=gg.choice({
        '날개 회복'
        ,'날개 설정'
        ,'날개빛 잠금'
      	,'날개 던지기'
      	,'⚠️모든 날개 폭파'
      	,'날개를 잃지 않게함'
      	,'투명날개'
      	,'오피스 날개'
      	,'닌텐도 빨강'
      	,'닌텐도 파랑'
      	},nil,'')
      	if x == 1 then
      	  setadd(pbase + poffsets.pwing,gg.TYPE_FLOAT,14.0,false)
      	end
      	if x == 2 then
      	  setadd(pbase,gg.TYPE_DWORD,inputnum(nn),false)
      	end
      	if x == 3 then
      	  adr = pbase + poffsets.pwing
          if isfreeze(adr) then
            setadd(adr,gg.TYPE_FLOAT,14,false)
            gg.toast('off')
          else
            setadd(adr,gg.TYPE_FLOAT,inputnum(14),true)
            gg.toast('on')
          end
      	end
    	  
      	if x == 4 then
      	  setadd(pbase + poffsets.pdamage,gg.TYPE_DWORD,inputnum(1),false)
      	end
      	if x == 5 then
      	  setadd(pbase + poffsets.pdamage,gg.TYPE_DWORD,nn - 1,false)
      	end
      	if x == 6 then
      	  adr = pbase + poffsets.pdamage
      	  if isfreeze(adr) then
            setadd(adr,gg.TYPE_DWORD,0,false)
            gg.toast('off')
          else
            setadd(adr,gg.TYPE_DWORD,0,true)
            gg.toast('on')
          end
      	end
      	if x == 7 then
          setadd(pbase + poffsets.ewing,gg.TYPE_DWORD,0,false)
          gg.toast('옷장에서 악기를 바꾸세요')
      	end
    	  if x == 8 then
          setadd(pbase + poffsets.ewing,gg.TYPE_DWORD,2219120716,false)
      	end
      	if x == 9 then
          setadd(pbase + poffsets.ewing,gg.TYPE_DWORD,320385458,false)
      	end
      	if x == 10 then
          setadd(pbase + poffsets.ewing,gg.TYPE_DWORD,496297629,false)
      	end
      	gg.setVisible(false)
      end
      if m == 2 then 
        abslight()
        absorb()
      end
      if m == 3 then 
        absflower()
      end
      if m == 4 then 
        pmove(mdis)
      end
      if m == 5 then 
        x=gg.choice({
        '➡️텔레포트'
      	,'⏩맵 변경'
      	,'🏠안식처 코드 변경'
      	,'⬇️현재 위치 저장'
      	,'⬆️저장한 위치로 이동' .. math.floor(px) .. ', ' .. math.floor(py) .. ', ' ..math.floor(pz)
      	,'위로 워프'
      	,'아래로 워프'
      	,'워프 거리 설정'
      	,'이벤트 워프 설정'
      	},nil,getmap())
      	if x == 1 then 
      	  telelist()
        end
      	if x == 2 then 
      	   y={}
        for i, v in ipairs(cworld) do
          table.insert(y,cworld[i][1])
        end
        table.insert(y,'⚠️직접입력')
         r=gg.choice(y,nil,'안식처로 이동시 해당 지역으로 이동합니다')
         if (r ~= nil) then 
           if r == #y then
            istr = inputstr()
            if istr ~= nil then
              portal(istr)
            end
             else
            portal(cworld[r][2])
            end
         end
      	end
      	if x == 3 then 
      	   y={}
        for i, v in ipairs(cworld) do
          table.insert(y,cworld[i][1])
        end
        table.insert(y,'⚠️직접입력')
         r=gg.choice(y,nil,'')
         if (r ~= nil) then 
           if r == #y then
            istr = inputstr()
            if istr ~= nil then
              setstr(eoffsets.world,24,istr)
            end
            else
              setstr(eoffsets.world,24,cworld[r][2])
            end
         end
      	end
      	if x == 4 then getpos() end
        if x == 5 then setposit(px, py, pz) end
      	if x == 6 then
          setposit(getadd(pbase + poffsets.positX,gg.TYPE_FLOAT), getadd(pbase + poffsets.positY,gg.TYPE_FLOAT) + mdis, getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT))
          gg.setVisible(false)
      	end
      if x == 7 then
          setposit(getadd(pbase + poffsets.positX,gg.TYPE_FLOAT), getadd(pbase + poffsets.positY,gg.TYPE_FLOAT) - mdis, getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT))
          gg.setVisible(false)
      end
      if x == 8 then
          mdis = inputnum(6)
      end
      if x == 9 then
          k=gg.choice({
        '비활성화'
      	,'삑삑이'
      	,'앉기'
      	,'편하게 앉기'
      	},nil,'해당 동작을 하면 정면 벽을 뚫음')
          if k == 1 then mev = 0 end
          if k == 2 then
            mev = 1 
            setadd(pbase + poffsets.pshout,gg.TYPE_FLOAT,2.0,false)
          end
          if k == 3 then mev = 2 end
          if k == 4 then mev = 3 end
        end
        if x == 10 then
          nnn = '{\"' .. getmap() .. '\",  {'
          for i = 0, 6 do
            nnn = nnn .. getadd(eoffsets.nworld + (i * 4),4) .. '; '
          end
          nnn = nnn .. '}},\n'
          gg.copyText(nnn)
        end
        
      end
      if m == 6 then
         x=gg.choice({
           '날개 빠르게 재충전',
           '날기 속도',
           '걷기 속도',
           '걷기 슬라이드 ',
           '점프 가속', 
           '점프 거리',
           '중력',
           '게임 프레임',
           'cBody 사이즈(클라이언트 영역)',
           '서있기 고정',
           '버섯과 초 자동 태우기',
           '투명벽 무력화',
           '집가기 시간 단축'
         },nil,'')
          if x == 1 then 
            if getadd(eoffsets.cspeed,gg.TYPE_FLOAT) >= 3.0 then
              setadd(eoffsets.cspeed,gg.TYPE_FLOAT,2.5,false)
              gg.toast('off')
            else
              setadd(eoffsets.cspeed,gg.TYPE_FLOAT,3.5,false)
              gg.toast('on')
            end
          end
         if x == 2 then 
           setadd(eoffsets.wforce,gg.TYPE_FLOAT,inputnum(1.0),false)
         end
        if x == 3 then 
           setadd(eoffsets.sspeed,gg.TYPE_FLOAT,inputnum(3.5),false)
        end
        if x == 4 then 
           if getadd(eoffsets.slide,gg.TYPE_FLOAT) >= 0.0 then
              setadd(eoffsets.slide,gg.TYPE_FLOAT,-1,false)
              gg.toast('on')
              else
              setadd(eoffsets.slide,gg.TYPE_FLOAT,0.8,false)
              gg.toast('off')
            end
        end
        if x == 5 then 
           setadd(eoffsets.jump,gg.TYPE_FLOAT,inputnum(4.9),false)
        end
        if x == 6 then 
           setadd(eoffsets.jforce,gg.TYPE_FLOAT,inputnum(1),false)
        end
        if x == 7 then 
           setadd(eoffsets.gravity,gg.TYPE_FLOAT,inputnum(-3.16081619263),false)
        end
        if x == 8 then 
          if eoffsets.gframe == 0x00 then
            gg.clearResults()
            gg.setRanges(4)
            gg.searchNumber("h 01 4D 61 6C 69 2D 47 37 32 00 00 00")
            if gg.getResultsCount() == 0 then
              gg.toast('failed!')
              else
              eoffsets.gframe = gg.getResults(1)[1].address + 0x118
            end
          end
          if eoffsets.gframe ~= 0x00 then
            setadd(eoffsets.gframe,gg.TYPE_FLOAT,inputnum(30),false)
          end
          
        end
        if x == 9 then 
           setadd(pbase + poffsets.bsize,gg.TYPE_FLOAT,inputnum(0.5),true)
        end
        if x == 10 then
          adr = pbase + poffsets.pose
          if isfreeze(adr) then
            setadd(adr,gg.TYPE_DWORD,0,false)
            gg.toast('off')
          else
            setadd(adr,gg.TYPE_DWORD,0,true)
            gg.toast('on')
          end
        end
        if x == 11 then
          if candles[1].freeze then
            for i,v in pairs(candles) do
              v.value = 0
              v.freeze = false
            end
            gg.setValues(candles)
            gg.removeListItems(candles)
            for i,v in pairs(flowers) do
              v.value = 1
              v.freeze = false
            end
            gg.setValues(flowers)
            gg.removeListItems(flowers)
            gg.toast('off')
          else
            for i,v in pairs(candles) do
              v.value = 1.0
              v.freeze = true
            end
            gg.setValues(candles)
            gg.addListItems(candles)
            for i,v in pairs(flowers) do
              v.value = 0
              v.freeze = true
            end
            gg.setValues(flowers)
            gg.addListItems(flowers)
            gg.toast('on')
          end
        end
        if x == 12 then
          nowind()
        end
        if x == 13 then
          if fasthome then
            fasthome = false
            gg.toast('off')
          else
            fasthome = true
            fastvalue = false
            gg.toast('on')
          end
          
        end
        
      end
        
      if m == 7 then
         x=gg.choice({
           '머머리 때리기'
           ,'눈뽕 주문'
           ,'무한 불꽃놀이'
           ,'몸 존나 빛나게함'
           ,'청록색으로 몸 빛나게함'
           ,'파랑색으로 몸 빛나게함'
           ,'검정색으로 몸 빛나게함'
         },nil,'')
       if x == nil then
         x = 0
       end
       
        if x == 1 then 
          changehit()
        end
        if x == 2 then 
          espam()
        end
        if x == 3 then
          adr = pbase + poffsets.famount
          if isfreeze(adr) then
            setadd(adr,gg.TYPE_DWORD,5,false)
          else
            setadd(adr,gg.TYPE_DWORD,5,true)
          end
        end
        
        if x > 3 and eoffsets.brighter == 0x00 then
          searchgl()
        end
        
        if x == 4 then
          if getadd(eoffsets.brighter,gg.TYPE_FLOAT) < 2 then
            setadd(eoffsets.brighter,gg.TYPE_FLOAT,40000,false)
            pmagic(8,1097748727)
          else
            setadd(eoffsets.brighter,gg.TYPE_FLOAT,1,false)
            pmagic(8,0)
          end
        end
        if x == 5 then
          if getadd(eoffsets.brighter,gg.TYPE_FLOAT) < 40001 then
            setadd(eoffsets.brighter,gg.TYPE_FLOAT,105000,false)
            pmagic(8,1097748727)
          else
            setadd(eoffsets.brighter,gg.TYPE_FLOAT,1,false)
            pmagic(8,0)
          end
        end
        if x == 6 then
          if getadd(eoffsets.brighter,gg.TYPE_FLOAT) < 100556 then
            setadd(eoffsets.brighter,gg.TYPE_FLOAT,1055555,false)
            pmagic(8,1097748727)
          else
            setadd(eoffsets.brighter,gg.TYPE_FLOAT,1,false)
            pmagic(8,0)
          end
        end
        if x == 7 then
          if getadd(eoffsets.brighter,gg.TYPE_FLOAT) < 1055556 then
            setadd(eoffsets.brighter,gg.TYPE_FLOAT,1000000000,false)
            pmagic(8,1097748727)
          else
            setadd(eoffsets.brighter,gg.TYPE_FLOAT,1,false)
            pmagic(8,0)
          end
        end
        gg.setVisible(false)
      end
      
      if m == 8 then
        y={}
        for i, v in ipairs(mid) do
          table.insert(y,mid[i][1])
        end
         x=gg.choice(y,nil,'')
         t=gg.choice(mslot,nil,'')
         if (x ~= nil and t ~= nil) then 
          mslot[t] = mid[x][1]
          pmagic(t,mid[x][2])
         end
      end
      if m == 9 then
        uemote()
      end
      if m == 10 then
         y={}
        for i, v in ipairs(pid) do
          table.insert(y,pid[i][2])
        end
         x=gg.choice(y,nil,'')
         if (x ~= nil) then 
           if pid[x][3] ~= nil then
            setdesk(pid[x][3],pid[x][4])
           end
           setadd(pbase + poffsets.eprop,gg.TYPE_DWORD,pid[x][1],false)
            gg.setVisible(false)
         end
      end
      if m == 11 then noclip() end
      if m == 12 then 
        x=gg.choice({
           '자동날작'
           ,'⚠️자동양작⚠️'
         },nil,'진행중에는 멈출수없음')
       if x == 1 then
         y=gg.choice({
           '모두'
           ,'여명'
           ,'햇초'
           ,'비숲'
           ,'승계'
           ,'황무지'
           ,'지동'
           ,'에덴'
         },nil,'This is cannot be stopped!')
          if y == 1 then
            wingfarm(2,42)
          end
          if y == 2 then
            wingfarm(2,7)
          end
          if y == 3 then
            wingfarm(8,14)
          end
          if y == 4 then
            wingfarm(15,21)
          end
          if y == 5 then
            wingfarm(22,30)
          end
          if y == 6 then
            wingfarm(32,37)
          end
          if y == 7 then
            wingfarm(38,40)
          end
          if y == 8 then
            wingfarm(42,43)
          end
       end
       
       if x == 2 then
         y=gg.choice({
           '모두'
           ,'여명'
           ,'햇초'
           ,'비숲'
           ,'승계'
           ,'황무지'
           ,'지동'
           ,'에덴'
         },nil,'진행중에는 멈출수없음')
          if y == 1 then
            candlefarm(2,42)
          end
          if y == 2 then
            candlefarm(2,7)
          end
          if y == 3 then
            candlefarm(8,14)
          end
          if y == 4 then
            candlefarm(15,21)
          end
          if y == 5 then
            candlefarm(22,30)
          end
          if y == 6 then
            candlefarm(31,37)
          end
          if y == 7 then
            candlefarm(38,41)
          end
          if y == 8 then
            candlefarm(42,43)
          end
       end
      
      end
      if m == 13 then
        if hcamera() then
          y=gg.choice({
           '가로 회전 잠금'
           ,'세로 회전 잠금'
           ,'시야 회전 잠금 '
           ,'자동 회전'
           ,'카메라 거리'
           ,'카메라 높이'
           ,'카메라 화각'
           ,'카메라 좌/우'
           ,'카메라 왼쪽 또는 오른쪽 고정'
         },nil,'')
        if y == 1 then
          nn = getadd(eoffsets.ncamera,gg.TYPE_FLOAT)
          if isfreeze(eoffsets.ncamera) then
            setadd(eoffsets.ncamera,gg.TYPE_FLOAT,nn,false)
            gg.toast('off')
          else
          setadd(eoffsets.ncamera,gg.TYPE_FLOAT,inputnum(nn*180/math.pi)*math.pi/180,true)
          gg.toast('on')
          end
        end
        if y == 2 then
          nn = getadd(eoffsets.ncamera + 0x4,gg.TYPE_FLOAT)
          if isfreeze(eoffsets.ncamera + 0x4) then
            setadd(eoffsets.ncamera + 0x4,gg.TYPE_FLOAT,nn,false)
            gg.toast('off')
          else
          setadd(eoffsets.ncamera + 0x4,gg.TYPE_FLOAT,inputnum(nn*180/math.pi)*math.pi/180,true)
          gg.toast('on')
          end
        end
        if y == 3 then
          nn = getadd(eoffsets.ncamera + 0x8,gg.TYPE_FLOAT)
          if isfreeze(eoffsets.ncamera + 0x8) then
            setadd(eoffsets.ncamera + 0x8,gg.TYPE_FLOAT,nn,false)
            gg.toast('off')
          else
          setadd(eoffsets.ncamera + 0x8,gg.TYPE_FLOAT,inputnum(nn*180/math.pi)*math.pi/180,true)
          gg.toast('on')
          end
        end
        if y == 4 then
          if isfreeze(eoffsets.ncamera+0x80) then
            setadd(eoffsets.ncamera + 0x80,gg.TYPE_DWORD,1,false)
            gg.toast('off')
          else
            setadd(eoffsets.ncamera + 0x80,gg.TYPE_DWORD,0,true)
            gg.toast('on')
          end
        end
        if y == 5 then
          setadd(eoffsets.ncamera - 0x8C,gg.TYPE_FLOAT,inputnum(getadd(eoffsets.ncamera - 0x8C,gg.TYPE_FLOAT)),false)
        end
        if y == 6 then
          if isfreeze(eoffsets.ncamera-0x5C) then
            setadd(eoffsets.ncamera - 0x5C,gg.TYPE_FLOAT,0.5,false)
            gg.toast('off')
          else
            setadd(eoffsets.ncamera - 0x5C,gg.TYPE_FLOAT,inputnum(getadd(eoffsets.ncamera - 0x5C,gg.TYPE_FLOAT)),true)
            gg.toast('on')
          end
        end
        if y == 7 then
          setadd(eoffsets.ncamera - 0x9C,gg.TYPE_FLOAT,inputnum(getadd(eoffsets.ncamera - 0x9C,gg.TYPE_FLOAT)),false)
        end
        if y == 8 then
          if isfreeze(eoffsets.ncamera-0x20) then
            setadd(eoffsets.ncamera - 0x20,gg.TYPE_FLOAT,0.5,false)
            gg.toast('off')
          else
            setadd(eoffsets.ncamera - 0x20,gg.TYPE_FLOAT,inputnum(getadd(eoffsets.ncamera - 0x20,gg.TYPE_FLOAT)),true)
            gg.toast('on')
          end
        end
        --0x394
        if y == 9 then
          z=gg.choice({
           '비활성'
           ,'왼쪽으로 고정'
           ,'오른쪽으로 고정'
         },nil,'')
          if z == 1 then
            setadd(eoffsets.ncamera - 0x394,gg.TYPE_DWORD,65536,false)
          end
          if z == 2 then
            setadd(eoffsets.ncamera - 0x394,gg.TYPE_DWORD,65536,true)
          end
          if z == 3 then
            setadd(eoffsets.ncamera - 0x394,gg.TYPE_DWORD,65537,true)
          end
        end
        else
          gg.toast('Hook camera failed!')
        end
        
      end
      if m == 14 then
        getfriendnode()
        y={}
        for i, v in ipairs(nodes) do
          table.insert(y,nodes[i][1])
        end
        table.insert(y,'Reset')
         x=gg.choice(y,nil,'')
         if (x ~= nil) then 
          if x == #y then
            resetfriendnode()
            else
            z = gg.choice({'노드를 손잡기 위에 배치',
              '노드를 맨 하단에 배치'},nil,'이동할 위치를 선택하세요')
              if z == 2 then
                setadd(nodes[x][2],gg.TYPE_DWORD,0,false)
              else
                setadd(nodes[x][2],gg.TYPE_DWORD,2,false)
              end
              resettick = 300
            end
           end
          gg.setVisible(false)
        
      end
      if m == 15 then
        x=gg.choice({'손 잡기',
          '손 놓기','정보','최종보상 언락','영혼 복구','오프셋'
        },nil,'경고! 실험중인 기능이며 팅길수 있음!')
        if x == 1 then
          df = getadd(pbase + poffsets.rhands,gg.TYPE_DWORD)
          setadd(pbase + poffsets.rhands,gg.TYPE_DWORD,df + 1,false)
        end
        if x == 2 then
          setadd(pbase + poffsets.rhands,gg.TYPE_DWORD,0,false)
        end
        if x == 3 then
          searchinfo()
        end
        if x == 4 then
          d = {}
          for k,v in pairs(spiritlist) do
            table.insert(d,v[2])
          end
          
          w = gg.choice(d,nil,'⚠️⚠️경고! 이 기능으로 계정이 영구정지 될 수 있음!!!⚠️⚠️')
          if w ~= nil then
            setspirit(spiritlist[w][1])
          end
          gg.setVisible(false)
        end
        if x == 5 then
          print(spirits)
          for k,v in pairs(spirits) do
            setadd(v[3],gg.TYPE_QWORD,v[1],false)
          end
          gg.setVisible(false)
        end
        if x == 6 then
          debg()
        end
      end
      
end

while true do
  if mev ~= 0 then
    mtrigger()
  end
  if fasthome then
    htrigger()
  end
  
  if resettick > -1 then
    resettick = resettick - 1 
    if resettick < 1 then
      resetfriendnode()
      resettick = -1
    end
  end
  
  if gg.isClickedUiButton() then
    domenu()
  end
  if gg.isVisible(true) then
    if umenu then
      domenu()
      umenu = false
    end
  else
    umenu = true
  end
   gg.sleep(100)
end

--That dead sky open source by Kel
--Do you have some good functions or codes?
--Tell me discord ExMachina#5142


px = 0.0
py = 0.0
pz = 0.0
mdis = 6
mev = 0
--less 0.5 max 2.0
ddd = "a21.06.04"

crsleep = 1000
wrsleep = 500

umenu = true
pbase = 0x00
--200C
poffsets = {
  sival = -1096122630,
  wlevel = 0x223E0,
  positX = 0x1C948,
  positY = 0x1C94C,
  positZ = 0x1C950,
  bheight = 0x1A9FC,
  pose = 0x1FC90,
  pwing = 0x223AC,
  ewing = 0x248A8,
  eprop = 0x248C4,
  famount = 0x25DD8,
  gesture = 0x2CD04,
  magic = 0x2BFC8,
  bsize = 0x25D38,
  uemote = -0x42540,
  eflowers = 0xB07014,
  pshout = 0x23670,
  pdamage = 0x2242C,
  wwings = 0x4CB76C
  }
sarray = {}
candles = {}
flowers = {}
eoffsets = {
  wforce = 0x00,
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
  ncamera = 0x00
}
mid = {
  {'Small',1692428656},
  {'Samller',2142718166},
  {'Big',891098028},
  {'Bigger',-1879316162},
  {'Glow',1097748727},
  {'Recharge',1750685908},
  {'Floating',1860519737},
  {'Anti Dragon',1067647386},
  {'Anti Darkness',383062578},
  {'Anti rain',-1463943689},
  {'A lot of candlelight',-1727483534},
  {'Flight Blessing',-1362469224},
  {'Friendship Back to Back',1405645877},
  {'Friendship Bear Hug',1677246236},
  {'Friendship Warp',998754260},
  {'Dark Crab Calling',1725047129},
  {'Jellyfish Calling',-957441587},
  {'Kunpeng Calling',1814753890},
  {'Lantern',1319710173},
  {'Table',256924066},
  {'Harp',-1001892262},
  {'Swing',1064080243},
  {'Seesaw',-2095749161},
  {'Tea table',10058409},
  {'🆕️Transparent Umbrella',1167393926},
  {'Green Bud Cloak',2079599063},
  {'TGC Cloak',540856305},
  {'Ghost Bat Cloak',625581156},
  {'Spider Silk Cloak',930203946},
  {'Snowflake Cloak',-784831205},
  {'Christmas Cloak',1306675982},
  {'White bird cloak',-1623262339},
  {'petal cloak',-6043825},
  {'chasing light bulb',1375571404},
  {'Cloak of Spring', -445538750},
  {'Sakura Cloak',162066154},
  {'Ocean Cloak',329684861},
  {'Dream Season Red Velvet Cloak',-308941587},
  {'Dream Season Graduation Cloak',-1822337532},
  {'🆕️Rainbow Cloak', -195929339},
  {'🆕️Rainbow Flower', 2141511649},
  {'🆕️Rainbow Tassel', -290700605},
  {'Pumpkin Hat',1046521292},
  {'Witche Hat',1983755432},
  {'Lion Dance Hat',2093744529},
 {'Double Maru Head',-2099997114},
 {'Felt Hat',-823266018},
 {'Sakura Hairstyle',373243257},
 {'Dream Season Hair',1059767859},
 {'White Fox Mask', 784922793},
 {'Red Rabbit Mask', 964659005},
 {'Winter Mask with Sharp Mouth', -218615327},
 {'Tauren Mask',-849020465},
 {'Rose Mask',-938578505},
 {'Spring Red Face Mask',-1636163586},
 {'Dream Season Peacock Mask',771982951},
 {'Dream Season Graduation Mask',144876107},
 {'Antler',1909998088},
 {'Christmas hat',-1409683913},
 {'banquet bow tie',8361886},
 {'Orange headgear',-1616733323},
 {'Ocean Necklace',-1938239955},
 {'🆕️turquoise tail',1318288330},
 {'🆕️black tail',-176902809},
 {'🆕️blue tail',-1951801352},
 {'🆕️Cyan tail',1918290563},
 {'🆕️Green tail',637646527},
 {'🆕️Purple pink tail',-1527316661},
 {'🆕️orange tail',1237283438},
 {'🆕️purple tail',470393304},
 {'🆕️purple tail',-1071076330},
 {'🆕️Red tail',-1304862813},
 {'🆕️Yellow tail',-1354381164},
 {'🆕️Rainbow trail',147016038},
 {'none',0}
};
--wip
pworld = {
 {
  '🏠Home',
 {{799,0, 0,1}, 'BLACKOUT'},
 {{1,0.8, -0.3,1}, 'Spawn'}
 },
 {
  '⛰️Dawn',
 {{298.0084,413.2, -283.4583740,2}, 'Rainbow 🌈'},
 {{298.0084,750, -283.4583740,2}, 'Mountain⛰️'},
 {{117.802,1.01815, -1733.989258,2}, 'Cutscene 🎬'},
 },
 {
  'Prairie',
 {{314.9281,235.156,162.17865,5}, 'Skip start🌴'},
 {{97.56925,174.577,265.333,4}, 'Ship🚢'},
 {{-151.3939,112.165,46.3114,8}, 'm🌴'},
 {{-529.2999,8.67, -213.8560,8}, 'Cutscene 🎬'}
 },
 {
  'Forest',
 {{-32.0974,206.97,0.0268,11}, '매화 더미 🎋'},
 {{47.8948,145.21,57.9777,13}, '비밀 나무의 바닥 ✨'},
 {{4.296319,8.977,501.940979,14}, 'Cutscene 🎬'}
 },
 {
  'Castle',
 {{314.911,173.497, -783.5396,20}, 'Chidori City🦋️'},
 {{-578, -0.12, -688,17}, '일몰 바다 💙️'},
 {{-478.85,1573.02,76.2785,17}, 'Valley Castle🏰'},
 {{-813.963,1547.047, -506.09,17}, '캐슬 클라우드 ☁️'},
 {{-469.838,1248.75, -43.666,17}, '웨딩 채플 💕'},
 {{-358.696,257.21,202.3735,47}, '황혼의 일몰 🌇️'},
 {{-84.724,5047.28, -842.015,21}, 'Ice Cream Mountain🍨'},
 {{-339.771,185.79,404.23,25}, '작은 구름 바다 ☁️'},
 {{-416.308,12.32,410.814,27}, 'Cutscene 🎬'}
 },
 {
  'Library',
 {{32.1839,347.2414,41.1838,31}, 'Lightning Bridge⚡'},
 {{-1.0442,195.0665,4.0625,31}, '왁스 박물관 🤶🏻'},
 {{68.9245,240.4048, -185.5069,31}, '선문 섬 🌓'},
 {{7009.4116,6922,9078.2361,30}, '푸른 지구 🌏'},
 {{2.78,35.64, -168.79,32}, '사무실 문 🌁'},
 {{38.2937,77.912, -8.9205,32}, 'Office top🏠'},
 {{7009.4116,6921.25,9078.2361,32}, '우주 정거장 🛰'}
 }
 }
cworld = {
   {"[Home]CandleSpace", {1684955459; 1884513644; 6644577; 0; 0; 0}},
   {"[Isle]Dawn", {1853317444; 0; 0; 0; 0; 0}},
   {"[Isle]DawnCave", {1853317444; 1702256963; 0; 0; 0; 0}},
   {"[Trial]Dawn_TrialsWater", {1853317444; 1769100383; 1467182177; 1919251553; 0; 0}},
   {"[Trial]Dawn_TrialsEarth", {1853317444; 1769100383; 1165192289; 1752461921; 0; 0}},
   {"[Trial]Dawn_TrialsAir", {1853317444; 1769100383; 1098083425; 29289; 0; 0}},
   {"[Trial]Dawn_TrialsFire", {1853317444;  1769100383;  1181969505;  6648425;  0;  0}},
    {"[Prairie]Prairie_ButterflyFields", {1767993936;  1600481650;  1953789250;  1818653285;  1701398137;  7562348}},
    {"[Prairie]Prairie_NestAndKeeper", {1767993936;  1600481650;  1953719630;  1264873025;  1701864805;  114}},
    {"[Prairie]Prairie_Island", {1767993936;  1600481650;  1634497353;  25710;  0;  0}},
    {"[Prairie]Prairie_Cave", {1767993936;  1600481650;  1702256963;  0;  0;  0}},
    {"[Prairie]Prairie_Village", {1767993936;  1600481650;  1819044182;  6645601;  0;  0}},
    {"[Prairie]DayHubCave", {1215914308;  1631806069;  25974;  0;  0;  0}},
    {"[Prairie]DayEnd", {1165582660;  25710;  0;  0;  0;  0}},
    {"[Forest]Rain", {1852399954;  0;  0;  0;  0;  0}},
    {"[Forest]RainForest", {1852399954;  1701998406;  29811;  0;  0;  0}},
    {"[Forest]RainShelter", {1852399954;  1818585171;  7497076;  0;  0;  0}},
    {"[Forest]Rain_Cave", {1852399954;  1986085727;  101;  0;  0;  0}},
    {"[Forest]RainMid", {1852399954;  6580557;  0;  0;  0;  0}},
    {"[Forest]RainEnd", {1852399954;  6581829;  0;  0;  0;  0}},
    {"[Forest]Rain_BaseCamp  ", {1852399954;1935753823;1835090789;112;0;0;0;}},
    {"[Valley]Sunset", {1936618835;  29797;  0;  0;  0;  0}},
    {"[Valley]Sunset_Citadel", {1936618835;  1130329189;  1684108393;  27749;  0;  0}},
    {"[Valley]Sunset_FlyRace", {1936618835;  1180660837;  1632794988;  25955;  0;  0}},
    {"[Valley]SunsetRace", {1936618835;  1632793701;  25955;  0;  0;  0}},
    {"[Valley]SunsetEnd", {1936618835;  1850045541;  100;  0;  0;  0}},
    {"[Valley]Sunset_YetiPark", {1936618835;  1499427941;  1349088357;  7041633;  0;  0}},
    {"[Valley]SunsetVillage", {1936618835;  1767273573;  1734437996;  101;  0;  0}},
    {"[Valley]SunsetColosseum", {1936618835;  1866691685;  1936945004;  7173477;  0;  0}},
    {"[Valley]SunsetEnd2", {1936618835;  1850045541;  12900;  0;  0;  0}},
    {"[Desert]DuskStart", {1802728772;  1918989395;  116;  0;  0;  0}},
    {"[Desert]Dusk", {1802728772;0;0;0;0;0;0;}},
    {"[Desert]DuskGraveyard", {1802728772;1986097735;1918990693;100;0;0;0;}},
    {"[Desert]DuskOasis", {1802728772;1769169231;115;0;0;0;0;}},
    {"[Desert]Dusk_CrabField", {1802728772;1634878303;1701398114;25708;0;0;0;}},
    {"[Desert]DuskMid", {1802728772;6580557;0;0;0;0;0;}},
    {"[Desert]DuskEnd", {1802728772;6581829;0;0;0;0;0;}},
    {"[Library]Night", {1751607630;116;0;0;0;0;0;}},
    {"[Library]Night2", {1751607630;12916;0;0;0;0;0;}},
    {"[Library]NightArchive", {1751607630;1668432244;1702259048;0;0;0;0;}},
    {"TGCOffice", {1329809236;1667851878;101;0;0;0;0;}},
    {"Eden entrance", {1919906899;  1635013485;  29810;  0;  0;  0}},
    {"Eden Second", {1919906899;  109;  0;  0;  0;  0}},
    {"[NEXT SEASON] Planet", {1751607630;1936016500; 1601466981; 1851878480; 7566437;0}},
    {"⚠️Eden sacrifice⚠️", {1919906899;  1684948333;  0;  0;  0;  0}},
    {"⚠️Rebirth Road 1⚠️", {1768059471;  1684622708;  0;  0;  0;  0}},
    {"⚠️Rebirth Road 2⚠️", {1768059471;  1684948340;  0;  0;  0;  0}},
    {"⚠️Heaven⚠️", {1684955459;  1884513644;  1164272481;  25710;  0;  0}},
    {"⚠️Rebirth⚠️", {1684369987;  7566441;  0;  0;  0;  0}},
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
  {57978849, "Windmill🏅"},
       {-677716449,"Purple Umbrella"},
       {-644161211,"Transparent Umbrella"},
       {-1593950895, "Lantern🏮"},
       {992885953, "bench 💺"},
       {-1444947170,"Christmas Bench💺"},
       {3580839943, "Swing ❤"},
       {3779226149, "Campfire 🔥"},
       {-1030495085, "Seesaw 🔨"},
       {3634028466, "Flower Umbrella🌂"},
       {2574095143, "Umbrella☔"},
       {3269660804, "Guitar🎻"},
       {2352004821,"Ukulele 🎸"},
       {-1382855507, "Pipa🎸"},
       {396560731, "Flute🎶"},
       {1237767078, "Pan flute 🎺"},
       {1889256860,"Piano🎹"},
       {3275797515,"White Piano🎼"},
       {3280753494,"Firework 🎆"},
       {4246711693, "Shaker"},
       {4196378836, "Daser"},
       {900914909, "Steel Drum"},
       {3499881140,"Big Quilt Drum"},
       {2003040587,"Small Double Drum"},
       {2671000446, "Harp"},
       {399957901, "Xiloph"},
       {1064146256, "Circle Harp"},
       {1021011859, "Horn 🎷"},
       {-1648375736, "Violin🎻"},
       {2186944737,"Ancestor Jar"},
       {2041015009,"Ancestral Kettle"},
       {776794517,"Ancestral Spear"},
       {-896102798,"Cornet"},
       {1079120316,"Bookcase"},
       {1994487329,"Hammock"},
       {-1762117817,"Torch"},
       {-1513173800,"Rain Shelter"},
       {-2094712299,"lantern?"},
       {1661108877,"A frame"},
       {2219120716,"TGC WING"},
       {1,"NO WING"},
       {2035109393,"Nothing"}
}

posits = {
  {'Home Zero point',0,0,0},
  {'Home BlackOut',800,0,0},
  {'Dawn CutScene',117.802,1.01815,-1733.989258},
  {'Prairie pass start',83.4, 149.0, -8.0},
  {'Prairie new map center',57.0, 103.0, 301.0},
  {'Forest pass start',18.0, 92.0, -231.0},
  {'Forest exit crave'},
  {'Prairie scene',-529.2999,8.67,-213.8560}
  ,{'Forest Scene',4.296319,8.977,501.940979}
  ,{'Dawn Scene',117.802,1.01815,-1733.989258}
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
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(':emote_upgrade',gg.TYPE_BYTE,false,gg.SIGN_EQUAL,0,-1,0)
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

function fpbase()
  --methods for unexpected errors
  gg.clearResults()
  mm = {}
  nn = {}
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(poffsets.sival, gg.TYPE_DWORD)
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
  gg.toast('failed! trying again...')
  nn = {}
  mm = 0
  gg.clearResults()
  gg.searchNumber(':device_capabilities',gg.TYPE_BYTE,false,gg.SIGN_EQUAL,0,-1,0)
  nn=gg.getResults(1)
  if getadd(nn[1].address - 0x58,gg.TYPE_DWORD) > 0 and getadd(nn[1].address - 0x58,gg.TYPE_DWORD) < 1000 then
    pbase = nn[1].address - 0x58
    return
  end
  
  nn = {}
  mm = {}
  gg.toast('failed! trying again...')
  gg.clearResults()
  gg.searchNumber("49D;0~300D;371D;43D::52", gg.TYPE_DWORD)
  gg.refineNumber("0~300", gg.TYPE_DWORD)
  ResultCount=gg.getResultCount()
  mm = gg.getResults(1,1)
  if ResultCount==0 or getadd(mm[1].address,gg.TYPE_DWORD) < -1 then
  gg.alert('Cannot find offset base!')
    os.exit()
    return;
  end
  pbase = mm[1].address
end


function startup()
  gg.toast('Code loaded version : ' .. ddd)
  gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("0.30426996946F;1.0F;1.0F;1.0F;0.5F::41", gg.TYPE_FLOAT)
gg.refineNumber(1, gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(2,1)
gg.clearResults()
for sn4, sn5 in ipairs(mm) do
  nn[sn4] = {
    name = 'wing force',
    address = sn5.address,
    flags = sn5.flags,
    value = sn5.value
  }
  eoffsets.wforce = sn5.address
end
--gg.addListItems(nn)

gg.searchNumber("3.5", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(1)
gg.clearResults()
for sn4, sn5 in ipairs(mm) do
  nn[sn4] = {
    name = 'step speed',
    address = sn5.address,
    flags = sn5.flags,
    value = sn5.value
  }
  eoffsets.sspeed = sn5.address
end
--gg.addListItems(nn)

gg.searchNumber("2.5", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(1)
gg.clearResults()
for sn4, sn5 in ipairs(mm) do
  nn[sn4] = {
    name = 'charge speed',
    address = sn5.address,
    flags = sn5.flags,
    value = sn5.value
  }
  eoffsets.cspeed = sn5.address
end
--gg.addListItems(nn)

gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,000.0F;0.05000000075F;-0.05000000075F::9", gg.TYPE_FLOAT)
mm = {}
nn = {}
mm = gg.getResults(1)
gg.clearResults()
for sn4, sn5 in ipairs(mm) do
  nn[sn4] = {
    name = 'graphic',
    address = sn5.address,
    flags = sn5.flags,
    value = sn5.value
  }
  eoffsets.graphic = sn5.address
end
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

fpbase()
mm = {}
nn = {}
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults()
for sn4, sn5 in ipairs(mm) do
  nn[sn4] = {
    name = 'wlevel',
    address = sn5.address,
    flags = sn5.flags,
    value = sn5.value
  }
  pbase = sn5.address
end
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
gg.addListItems(nn)
nn = {}
nn = gg.getListItems()
for i, v in next, nn do
  table.insert(sarray,nn[i].address)
end

gg.clearResults()
nn = {}
mm = {}
gg.searchNumber(1487508559, gg.TYPE_DWORD)
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
gg.searchNumber(17.60000038147,16)
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
gg.toast('loaded')
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
  nn = nn .. tostring(itoh(eoffsets.world)) .. ' respawn world\n'
  nn = nn .. tostring(itoh(eoffsets.nworld)) .. ' current world\n'
  print(nn)
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
  
  gg.searchNumber('-842203136',4)
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

function portal(arr)
  gg.setVisible(false)
  for i = 1, 6 do
    setadd(eoffsets.world + (4 * (i - 1)),4,arr[i],false)
  end
  gg.sleep(100)
  mm = 0
  mm = getadd(pbase,4)
  setadd(pbase,4,0,false)
  gg.setSpeed(10)
  gg.sleep(500)
  setadd(pbase,4,mm,false)
  gg.setSpeed(100)
  gg.sleep(1500)
  gg.setSpeed(1)
  gg.sleep(1000)
  nn = {}
  nn = {1684955459;1884513644;6644577;0;0;0}
  for i = 1, 6 do
    setadd(eoffsets.world + (4 * (i - 1)),4,nn[i],false)
  end
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
  for i = 0, 14 do
    nn = nn .. string.char(getadd(eoffsets.nworld + i,gg.TYPE_BYTE))
  end
  
  return nn
end

function pmagic(arr,id)
  --if id == 0 then mreset(); return; end
  nn = {}
  tgt = pbase + (poffsets.magic + (0x30 * (arr-1)))
  setadd(tgt,gg.TYPE_DWORD,id,false)
  setadd(tgt + 0x8,gg.TYPE_DWORD,2139095040,false)
  --setadd(tgt + 0x10,gg.TYPE_DWORD,1600132692,false)
  --setadd(tgt + 0x18,gg.TYPE_DWORD,-1720562886,false)
  --setadd(tgt + 0x1C,gg.TYPE_DWORD,-1806973714,false)
  --setadd(tgt + 0x20,gg.TYPE_DWORD,1020395176,false)
  --setadd(tgt + 0x24,gg.TYPE_DWORD,131004170,false)
  --setadd(tgt + 0x28,gg.TYPE_DWORD,0,false)
  setadd(pbase + poffsets.magic + 0xC00,gg.TYPE_DWORD,8,true)
  --gg.toast(poffsets.magic + 0xC00)
  setadd(tgt + 0x28,gg.TYPE_DWORD,0,false)
end


function setposit(mx,my,mz)
  setadd(pbase + poffsets.positX,gg.TYPE_FLOAT,mx,false)
  setadd(pbase + poffsets.positY,gg.TYPE_FLOAT,my,false)
  setadd(pbase + poffsets.positZ,gg.TYPE_FLOAT,mz,false)
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
gg.searchNumber('1.0f;1.0f;0.0f;1.0f;1.0f;9.18368975e-41f:25', gg.TYPE_FLOAT)
gg.refineNumber('1.0', gg.TYPE_FLOAT)
local m = gg.getResultsCount()
    if m == 0 then
        gg.toast("hook failed!")
    else
        local r = gg.getResults(m)
        gg.editAll('0.0', gg.TYPE_FLOAT)
        gg.toast("hook successed with " .. tostring(m) .. "values")
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
    gg.searchNumber(':relationship_',1)
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

function togglebool(bool)
    if bool == true then
        bool = false
    else
        bool = true
    end
    return bool
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

function changehit()
  --2089048596
  --1251050323
  gg.setVisible(false)
  gg.clearResults()
  if hitarr[1].value == 0 then
  gg.searchNumber('1251050323',gg.TYPE_DWORD)
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
  setposit(256.2,586,-564.76)--赛道终点传
  gg.sleep(10000)
  setposit(54,155,-138)
  end
  
end

function espam()
  if mslot[1] == 'none' then return; end
  tpoint = pbase + poffsets.magic + 0x28
  --gg.toast(tostring(isfreeze(tpoint)))
  if isfreeze(tpoint) then
    setadd(tpoint,gg.TYPE_DWORD,0,false)
  else
    setadd(tpoint,gg.TYPE_DWORD,0,true)
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

function wingfarm(aa,bb)
  for i = aa, bb do
    portal(cworld[i][2])
    gg.sleep(wrsleep)
    abslight()
    gg.sleep(wrsleep)
  end
  gg.toast('done')
end

function candlefarm(aa,bb)
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
    portal(cworld[i][2])
    gg.sleep(crsleep*1.5)
    absorb()
    gg.sleep(crsleep)
  end
  gg.setSpeed(1)
  gg.toast('done')
end

function CandleRun()
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
  
  local t1 = os.clock()
  for i = 0, 43 do
    if i == nil then return end
    if i == 1 then
      absorb() 
      gg.sleep(crsleep) 
      setposit(11.338,1.07,0.863)
      gg.sleep(crsleep) 
    end
    if i == 2 then 
      --abslight() 
      absorb() 
      gg.sleep(crsleep) 
      setposit(206,4.2,-74)
      gg.sleep(crsleep) 
    end
    if i == 3 then
      absorb()
      gg.sleep(crsleep)
      portal(cworld[8][2])
      gg.sleep(crsleep)
    end
    if i == 8 then
      absorb() 
      gg.sleep(crsleep) 
      setposit(-17.37,171.265,-2.61)
      gg.sleep(crsleep) 
    end
    if i == 9 then 
      absorb() 
      gg.sleep(crsleep) 
      setposit(-355,132,105)
      gg.sleep(crsleep) 
    end
    if i == 10 then
      --abslight()
      absorb()
      gg.sleep(crsleep)
      portal(cworld[11][2])
    end
    if i == 11 then
      absorb()
      gg.sleep(crsleep)
      setposit(242,200,229)
      gg.sleep(crsleep)
    end
    if i == 12 then 
      --abslight() 
      absorb() 
      gg.sleep(crsleep) 
      setposit(132.2,255.7,486.82) 
      gg.sleep(crsleep) 
    end
    if i == 14 then 
      absorb() 
      gg.sleep(crsleep) 
      setposit(-133,109,42) 
      gg.sleep(crsleep) 
    end
    if i == 15 then 
      --abslight() 
      absorb() 
      gg.sleep(crsleep) 
      setposit(29.4,98.7,-108.7)
      gg.sleep(crsleep) 
    end
    if i == 16 then
      --abslight() 
      absorb() 
      gg.sleep(crsleep) 
      setposit(-2,113,-52)--[[八先祖图传]]
      gg.sleep(crsleep) 
    end
    if i == 17 then 
      --abslight() 
      absorb() 
      gg.sleep(crsleep) 
      setposit(54.2,54,43.4)
      gg.sleep(crsleep) 
    end
    if i == 18 then 
      --abslight() 
      absorb() 
      gg.sleep(crsleep) 
      portal(cworld[19][2]) 
      gg.sleep(crsleep)--[[进水母图]] 
      gg.sleep(crsleep) 
    end
    if i == 19 then 
      --abslight() 
      absorb() 
      gg.sleep(crsleep) 
      portal(cworld[20][2])--[[雨林终点传]] 
      gg.sleep(crsleep) 
    end
    if i == 20 then 
      --abslight() 
      absorb() 
      gg.sleep(crsleep) 
      portal(cworld[21][2])--[[传往霞谷]] 
      gg.sleep(crsleep) 
    end
    if i == 21 then 
      absorb() 
      gg.sleep(crsleep) 
      setposit(206,58,-605)
      gg.sleep(crsleep) 
      gg.sleep(crsleep) 
    end
    if i == 22 then 
      absorb() 
      gg.sleep(crsleep) 
      setposit(204.7,492,-205)
      gg.sleep(crsleep)  
    end
    if i == 23 then 
      setposit(166.48,1187.5,397.97) 
      setadd(pbase + poffsets.pose,gg.TYPE_DWORD,2,false)
      absorb() 
      gg.setSpeed(5) 
      gg.sleep(6000) 
      race(1)
      gg.setSpeed(10) 
      gg.sleep(2000) 
      portal(cworld[24][2]) 
      gg.sleep(crsleep) 
      end
    if i == 24 then 
      setposit(163.96,935,662.45) 
      setadd(pbase + poffsets.pose,gg.TYPE_DWORD,2,false)
      gg.setSpeed(5) 
      gg.sleep(6000) 
      race(2)
      gg.setSpeed(10) 
      gg.sleep(2000) 
      absorb()
      gg.sleep(20000) 
      portal(cworld[26][2]) 
      gg.sleep(crsleep) 
    end
    if i == 26 then 
      absorb() 
      gg.sleep(crsleep) 
      portal(cworld[27][2]) 
      gg.sleep(crsleep) 
    end
    if i == 27 then 
      absorb() 
      gg.sleep(crsleep) 
      portal(cworld[28][2]) 
      gg.sleep(crsleep) 
    end
    if i == 28 then 
      absorb() 
      AbsorbLight() 
      gg.sleep(crsleep) 
      setposit(60.7,138,-292)
      gg.sleep(crsleep) 
    end
    if i == 29 then 
      --abslight() 
      absorb() 
      gg.sleep(crsleep) 
      portal(cworld[31][2]) 
      gg.sleep(crsleep)--[[传往暮土螃蟹岛]] 
      gg.sleep(crsleep) 
    end
    if i == 31 then 
      --abslight() 
      absorb() 
      gg.sleep(crsleep) 
      portal(cworld[32][2]) 
      gg.sleep(crsleep)--[[传方舟]] 
      gg.sleep(3000) 
    end
    if i == 32 then 
      --abslight() 
      absorb() 
      gg.sleep(crsleep) 
      portal(cworld[33][2]) 
      gg.sleep(crsleep)--[[传龙图]] 
      gg.sleep(3000) 
    end
    if i == 33 then 
      --abslight() 
      absorb() 
      gg.sleep(crsleep) 
      setposit(192.6,68,-73)--[[进沉船]] 
      gg.sleep(crsleep) 
    end
    if i == 34 then 
      --abslight() 
      absorb() 
      gg.sleep(crsleep) 
      setposit(-349.3,35,387.2)
      gg.sleep(crsleep) 
    end
    if i == 35 then 
      --abslight() 
      absorb() 
      gg.sleep(crsleep) 
      setposit(-289.5,93,-404)--[[终点门]]
      gg.sleep(crsleep) 
    end
    if i == 36 then 
      absorb() 
      gg.sleep(crsleep) 
      setposit(-2,208,-67)--[[传往禁阁]] 
      gg.sleep(crsleep) 
    end
    if i == 37 then 
      absorb() 
      gg.sleep(crsleep) 
      setposit(-42.6,38,-98.2)
      gg.sleep(crsleep) 
    end
    if i == 38 then 
      absorb() 
      gg.sleep(crsleep) 
      portal(cworld[40][2])--[[传办公室]] 
      gg.sleep(crsleep) 
    end
    if i == 39 then 
      absorb() 
      gg.sleep(crsleep) 
      portal(cworld[38][2])--[[传四楼]] 
      gg.sleep(crsleep) 
    end
    if i == 40 then 
      absorb() 
      gg.sleep(crsleep) 
      portal(cworld[43][2]) 
    end
    if i == 43 then 
      --abslight() 
      absorb() 
      gg.sleep(crsleep) 
      portal(cworld[13][2]) 
    end
    --AbsorbJinren1()
    gg.toast(string.format("time:%.2f\n", os.clock()-t1))
  end
end



startup()
--gg.toast(getadd(0x12C400BC,gg.TYPE_DWORD))

gg.setVisible(false)
gg.showUiButton()

function domenu()
      m=gg.choice({'🎈Wings'
      	,'🕯Get current candles'
      	,'⬇️Save pos'
      	,'⏩Load pos ' .. math.floor(px) .. ', ' .. math.floor(py) .. ', ' ..math.floor(pz)
      	,'⬆️Warp forward'
      	,'🌏Teleport'
      	,'☸Engine setting'
      	,'♿Troll'
      	,'💫Magik'
      	,'🔝Upgrade emote'
      	,'🏧Set props'
      	,'⚠️ENABLE NOCLIP'
        ,'🔄Auto Run'
      },nil,'')
      if m == 1 then
        nn = 0
        nn = getadd(pbase,gg.TYPE_DWORD)
        x=gg.choice({
        'Fill'
        ,'Set wings'
      	,'Explode num'
      	,'⚠️Explode All'
      	},nil,'')
      	if x == 1 then
      	  setadd(pbase + poffsets.pwing,gg.TYPE_FLOAT,14.0,false)
      	end
      	if x == 2 then
      	  setadd(pbase,gg.TYPE_DWORD,inputnum(nn),false)
      	end
      	if x == 3 then
      	  setadd(pbase + poffsets.pdamage,gg.TYPE_DWORD,inputnum(1),false)
      	end
      	if x == 4 then
      	  setadd(pbase + poffsets.pdamage,gg.TYPE_DWORD,nn - 1,false)
      	end
      end
      if m == 2 then 
        abslight()
        absorb()
      end
      if m == 3 then getpos() end
      if m == 4 then setposit(px, py, pz) end
      if m == 5 then 
        pmove(mdis)
      end
      if m == 6 then 
        x=gg.choice({
        '➡️Teleport'
      	,'⏩Change world'
      	,'Warp up'
      	,'Warp down'
      	,'Set warp distance'
      	,'Set warp event'
      	,'Export codes'
      	},nil,getmap())
      	if x == 1 then 
      	    k=gg.choice({
        '➡️ Prairie pass start'
      	,'➡️ Prairie New center'
      	,'➡️ Forest pass start'
      	,'➡️ Forest Crave Exit'
      	,'➡️ Valley pass start'
      	,'➡️ Pass Long Race'
      	,'➡️ Eden skip First'
      	,'➡️ Eden skip Second'
      	},nil,'')

      	  if k == 1 then setposit(83.4, 149.0, -8.0) end
      	  if k == 2 then setposit(57.0, 103.0, 301.0) end
          if k == 3 then setposit(18.0, 92.0, -231.0) end
          if k == 4 then setposit(-64.0, 210.0, -285.0) end
          if k == 5 then setposit(178.0, 50.0, -511.0) end
          if k == 6 then setposit(103.0, 1060.0, -74.0) end
          if k == 7 then setposit(-2.0, 196.0, -19.0) end
          if k == 8 then setposit(8.0, 267.0, -251.0) end
        end
      	if x == 2 then 
      	   y={}
        for i, v in ipairs(cworld) do
          table.insert(y,cworld[i][1])
        end
         x=gg.choice(y,nil,'')
         if (x ~= nil) then 
          portal(cworld[x][2])
         end
      	end
      	if x == 3 then
          setposit(getadd(pbase + poffsets.positX,gg.TYPE_FLOAT), getadd(pbase + poffsets.positY,gg.TYPE_FLOAT) + mdis, getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT))
          gg.setVisible(false)
      	end
      if x == 4 then
          setposit(getadd(pbase + poffsets.positX,gg.TYPE_FLOAT), getadd(pbase + poffsets.positY,gg.TYPE_FLOAT) - mdis, getadd(pbase + poffsets.positZ,gg.TYPE_FLOAT))
          gg.setVisible(false)
      end
      if x == 5 then
          mdis = inputnum(6)
      end
      if x == 6 then
          k=gg.choice({
        'Disable'
      	,'Shout'
      	,'Sit'
      	,'Sit 2'
      	},nil,'')
          if k == 1 then mev = 0 end
          if k == 2 then
            mev = 1 
            setadd(pbase + poffsets.pshout,gg.TYPE_FLOAT,2.0,false)
          end
          if k == 3 then mev = 2 end
          if k == 4 then mev = 3 end
        end
        if x == 7 then
          nnn = '{\"' .. getmap() .. '\",  {'
          for i = 0, 6 do
            nnn = nnn .. getadd(eoffsets.nworld + (i * 4),4) .. '; '
          end
          nnn = nnn .. '}},\n'
          gg.copyText(nnn)
        end
        
      end
      if m == 7 then
        debg()
         x=gg.choice({
           'Wing count',
           'Wing charge speed',
           'Wing fly force',
           'Wing Energy lock',
           'Walk step speed',
           'Walk force slide',
           'Jump accelerate ', 
           'Gravity',
           'cBody offest',
           'cBody size(Client)',
           'Keep standing',
           'Keep burn candles'
         },nil,'')
         if x == 1 then 
           setadd(pbase,gg.TYPE_DWORD,inputnum(130),false)
         end
          if x == 2 then 
            if getadd(eoffsets.cspeed,gg.TYPE_FLOAT) >= 3.0 then
              setadd(eoffsets.cspeed,gg.TYPE_FLOAT,2.5,false)
              gg.toast('off')
            else
              setadd(eoffsets.cspeed,gg.TYPE_FLOAT,3.5,false)
              gg.toast('on')
            end
          end
         if x == 3 then 
           setadd(eoffsets.wforce,gg.TYPE_FLOAT,inputnum(1.0),false)
         end
        if x == 4 then 
           setadd(pbase,gg.TYPE_DWORD,inputnum(99),false)
        end
        if x == 5 then 
           setadd(eoffsets.sspeed,gg.TYPE_FLOAT,inputnum(3.5),false)
        end
        if x == 6 then 
           if getadd(eoffsets.slide,gg.TYPE_FLOAT) >= 0.0 then
              setadd(eoffsets.slide,gg.TYPE_FLOAT,-1,false)
              gg.toast('on')
              else
              setadd(eoffsets.slide,gg.TYPE_FLOAT,0.8,false)
              gg.toast('off')
            end
        end
        if x == 7 then 
           setadd(eoffsets.jump,gg.TYPE_FLOAT,inputnum(4.9),false)
        end
        if x == 8 then 
           setadd(eoffsets.gravity,gg.TYPE_FLOAT,inputnum(-3.16081619263),false)
        end
        if x == 9 then 
           tpoint = pbase + poffsets.bheight
          if isfreeze(tpoint) then
            setadd(tpoint,gg.TYPE_DWORD,inputnum(0.86081619263),false)
            gg.toast('off')
          else
            setadd(tpoint,gg.TYPE_DWORD,inputnum(0.86081619263),true)
            gg.toast('on')
          end
        end
        if x == 10 then 
           setadd(pbase + poffsets.bsize,gg.TYPE_FLOAT,inputnum(0.5),true)
        end
        if x == 11 then
          tpoint = pbase + poffsets.pose
          if isfreeze(tpoint) then
            setadd(tpoint,gg.TYPE_DWORD,0,false)
            gg.toast('off')
          else
            setadd(tpoint,gg.TYPE_DWORD,0,true)
            gg.toast('on')
          end
        end
        if x == 12 then
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
        
      end
        
      if m == 8 then
         x=gg.choice({
           'Hit people xD'
           ,'Spam magic'
           ,'Infinity Firework'
           ,'Walking piano'
         },nil,'')
        if x == 1 then 
          changehit()
        end
        if x == 2 then 
          espam()
        end
        if x == 3 then
          tpoint = pbase + poffsets.famount
          if isfreeze(tpoint) then
            setadd(tpoint,gg.TYPE_DWORD,5,false)
          else
            setadd(tpoint,gg.TYPE_DWORD,5,true)
          end
        end
        if x == 4 then
          tpoint = pbase + poffsets.gesture
          if isfreeze(tpoint) then
            setadd(tpoint,gg.TYPE_DWORD,0,false)
          else
            setadd(tpoint,gg.TYPE_DWORD,0,true)
          end
        end
      end
      
      if m == 9 then
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
      if m == 10 then
        uemote()
      end
      if m == 11 then
         y={}
        for i, v in ipairs(pid) do
          table.insert(y,pid[i][2])
        end
         x=gg.choice(y,nil,'')
         if (x ~= nil) then 
           if pid[x][1] == 2219120716 or pid[x][1] == 1 then
             setadd(pbase + poffsets.ewing,gg.TYPE_DWORD,pid[x][1],false)
             else
            setadd(pbase + poffsets.eprop,gg.TYPE_DWORD,pid[x][1],false)
           end
         end
      end
      if m == 12 then noclip() end
      if m == 13 then 
        x=gg.choice({
           'Collect Wings'
           ,'⚠️Collect candles⚠️'
         },nil,'This is cannot be stopped!')
       if x == 1 then
         y=gg.choice({
           'All'
           ,'Dawn'
           ,'Prairie'
           ,'Forest'
           ,'Valley'
           ,'Desert'
           ,'Library'
           ,'Eden'
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
           'All'
           ,'Dawn'
           ,'Prairie'
           ,'Forest'
           ,'Valley'
           ,'Desert'
           ,'Library'
           ,'Eden'
         },nil,'This is unstable! cannot be stopped!')
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
end

while true do
  if mev ~= 0 then
    mtrigger()
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

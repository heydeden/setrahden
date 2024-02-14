gg.setVisible(false)
gg.alert("GM Team \n \nDMG = DAMAGE \nCT = COOLDOWN TIME \nS = SKILL \nA = ARTS \nTA =TRUE ARTS \nSA = SUPER ARTS")




function Main()
menu = gg.choice({
'SUNRAKU ASCEND',
'PSYGER ASCEND',
'coming soon',
'coming soon',
------ MORE OPTIONS CAN BE ADDED LIKE THIS ------
'EXIT'},
nil,'UNIT MENU')
if menu == 1 then sunraku() end
if menu == 2 then psyger() end
if menu == 3 then a3() end
if menu == 4 then a4() end
                             ------ MORE OPTIONS CAN BE ADDED LIKE THIS ------
if menu == 5 then Exit() end
XGCK=-1
end


--sunraku menu
on = "[❎]"
off = "[✅]"
suranku_HA = on
suranku_HB = on
suranku_HC = on
suranku_HD = on

function sunraku()
  menu_sunraku = gg.choice({
    suranku_HA .. "SKILL DMG",
    suranku_HB .. "GAGUE MAX AFTER SKILL USED",
    suranku_HC .. "HIGH EVASION",
    suranku_HD .. "coming soon",
	------ MORE OPTIONS CAN BE ADDED LIKE THIS ------
    "BACK"},
    nil,
    "SUNRAKU MENU")
    if menu_sunraku == 5 then 
HOME()
  elseif menu_sunraku == nil then
  elseif menu_sunraku == 1 then
    if suranku_HA == on then
       suranku_HA1(on)
	  suranku_HA = off
	  gg.toast("On")
	else
	  suranku_HA2(off)
	  suranku_HA = on
	  gg.toast("Off")
	end
  elseif menu_sunraku == 2 then
    if suranku_HB == on then
       suranku_HB1(on)
	  suranku_HB = off
	  gg.toast("On")
	else
	  suranku_HB2(off)
	  suranku_HB = on
	  gg.toast("Off")
	end
elseif menu_sunraku == 3 then
    if suranku_HC == on then
       suranku_HC1(on)
	  suranku_HC = off
	  gg.toast("On")
	else
	  suranku_HC2(off)
	  suranku_HC = on
	  gg.toast("Off")
	end
elseif menu_sunraku == 4 then
    if suranku_HD == on then
       suranku_HD1(on)
	  suranku_HD = off
	  gg.toast("On")
	else
	  suranku_HD2(off)
	  suranku_HD = on
	  gg.toast("Off")
	end
   end
   ------ MORE OPTIONS CAN BE ADDED LIKE THIS ------
  XGCK=-1
end


--sunraku dmg
function suranku_HA1(on)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("h C4 09 00 00 F4 01 00 00 64 00 00 00 01 00 00 00 01 00 00 00 00 00 00 00 4C 04 00 00", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("h FF 93 35 77 F4 01 00 00 64 00 00 00 01 00 00 00 01 00 00 00 00 00 00 00 4C 04 00 00", gg.TYPE_BYTE)
gg.clearResults()
gg.alert('Activated')
end

--sunraku dmg
function suranku_HA2(off)
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.clearResults()
gg.searchNumber("h FF 93 35 77 F4 01 00 00 64 00 00 00 01 00 00 00 01 00 00 00 00 00 00 00 4C 04 00 00", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("h C4 09 00 00 F4 01 00 00 64 00 00 00 01 00 00 00 01 00 00 00 00 00 00 00 4C 04 00 00", gg.TYPE_BYTE)
gg.clearResults()
gg.alert('De-Activated')
end

--suranku skill gague max
function suranku_HB1(on)
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.clearResults()
gg.searchNumber("h 8C 97 A4 00 00 00 00 00 01 00 00 00 01 00 00 00 1E 00 00 00", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("h 8C 97 A4 00 00 00 00 00 01 00 00 00 01 00 00 00 2C 01 00 00", gg.TYPE_BYTE)
gg.clearResults()
gg.alert('Activated')
end

--suranku skill gague max
function suranku_HB2(off)
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.clearResults()
gg.searchNumber("h 8C 97 A4 00 00 00 00 00 01 00 00 00 01 00 00 00 2C 01 00 00", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("h 8C 97 A4 00 00 00 00 00 01 00 00 00 01 00 00 00 1E 00 00 00", gg.TYPE_BYTE)
gg.clearResults()
gg.alert('De-Activated')
end

--suranku change skill to evasion
function suranku_HC1(on)
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.clearResults()
gg.searchNumber("h 8C 97 A4 00", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("h F8 CE 9C 00", gg.TYPE_BYTE)
gg.clearResults()
--suranku high evasion 11 detik
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.clearResults()
gg.searchNumber("h F8 CE 9C 00 00 00 00 00 01 00 00 00 03 00 00 00 14 00 00 00", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("h F8 CE 9C 00 00 00 00 00 01 00 00 00 0B 00 00 00 FF 93 35 77", gg.TYPE_BYTE)
gg.clearResults()
gg.alert('Activated')
end

function suranku_HC2(off)
--suranku evasion awal
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.clearResults()
gg.searchNumber("h F8 CE 9C 00 00 00 00 00 01 00 00 00 0B 00 00 00 FF 93 35 77", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("h F8 CE 9C 00 00 00 00 00 01 00 00 00 03 00 00 00 14 00 00 00", gg.TYPE_BYTE)
gg.clearResults()
--suranku skill awal
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.clearResults()
gg.searchNumber("h F8 CE 9C 00", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("h 8C 97 A4 00", gg.TYPE_BYTE)
gg.clearResults()
gg.alert('De-Activated')
end

function suranku_HD1(on)
gg.alert('coming soon Activated')
end

function suranku_HD2(off)
gg.alert('coming soon De-Activated')
end


function HOME()
kele0=1
Main()
end





---------SUB-MENUS HACK B , HACK C, HACK D CAN ALSO BE MADE LIKE HACK A BY MAKING gg.multichoice LIKE function a1()-------------

--psyger menu
on = "[❎]"
off = "[✅]"
psyger_HA = on
psyger_HB = on
psyger_HC = on
psyger_HD = on

function psyger()
  menu_sunraku = gg.choice({
    psyger_HA .. "SKILL DMG",
    psyger_HB .. "coming soon",
    psyger_HC .. "coming soon",
    psyger_HD .. "coming soon",
	------ MORE OPTIONS CAN BE ADDED LIKE THIS ------
    "BACK"},
    nil,
    "PSYGER MENU")
    if menu_sunraku == 5 then 
HOME()
  elseif menu_sunraku == nil then
  elseif menu_sunraku == 1 then
    if psyger_HA == on then
       psyger_HA1(on)
	  psyger_HA = off
	  gg.toast("On")
	else
	  psyger_HA2(off)
	  psyger_HA = on
	  gg.toast("Off")
	end
  elseif menu_sunraku == 2 then
    if psyger_HB == on then
       psyger_HB1(on)
	  psyger_HB = off
	  gg.toast("On")
	else
	  psyger_HB2(off)
	  psyger_HB = on
	  gg.toast("Off")
	end
elseif menu_sunraku == 3 then
    if psyger_HC == on then
       psyger_HC1(on)
	  psyger_HC = off
	  gg.toast("On")
	else
	  psyger_HC2(off)
	  psyger_HC = on
	  gg.toast("Off")
	end
elseif menu_sunraku == 4 then
    if psyger_HD == on then
       psyger_HD1(on)
	  psyger_HD = off
	  gg.toast("On")
	else
	  psyger_HD2(off)
	  psyger_HD = on
	  gg.toast("Off")
	end
   end
   ------ MORE OPTIONS CAN BE ADDED LIKE THIS ------
  XGCK=-1
end


--psyger dmg
function psyger_HA1(on)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("h 88 13 00 00 F4 01 00 00 64 00 00 00 04 00 00 00 01 00 00 00 00 00 00 00 78 05 00 00", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("h FF 93 35 77 F4 01 00 00 64 00 00 00 04 00 00 00 01 00 00 00 00 00 00 00 78 05 00 00", gg.TYPE_BYTE)
gg.clearResults()
gg.alert('Activated')
end

--psyger dmg
function psyger_HA2(off)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("h FF 93 35 77 F4 01 00 00 64 00 00 00 04 00 00 00 01 00 00 00 00 00 00 00 78 05 00 00", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("h 88 13 00 00 F4 01 00 00 64 00 00 00 04 00 00 00 01 00 00 00 00 00 00 00 78 05 00 00", gg.TYPE_BYTE)
gg.clearResults()
gg.alert('De-Activated')
end

function psyger_HB1(on)
gg.alert('coming soon Activated')
end

function psyger_HB2(off)
gg.alert('coming soon De-Activated')
end

function psyger_HC1(on)
gg.alert('coming soon Activated')
end

function psyger_HC2(off)
gg.alert('coming soon De-Activated')
end

function psyger_HD1(on)
gg.alert('coming soon Activated')
end

function psyger_HD2(off)
gg.alert('coming soon De-Activated')
end


function HOME()
kele0=1
Main()
end

function Exit()
print("THANKS FOR USING")
os.exit()
end


















cs = 'Oof'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end



function UI()
gg.showUiButton()
while true do
if gg.isClickedUiButton() then
start()
end
end
end



function stopClose()
while true do
mainMenu()
gg.setVisible(false)
while gg.isVisible() == false do
gg.killProcess()
end
end
end
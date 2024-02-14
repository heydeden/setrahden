gg.setVisible(false)
gg.alert("THIS SCRIPT BY GM TEAM")

function Main()
local t = gg.multiChoice({
'[LB Unit] Edram',
'[LB Unit] Vitz',
'[LB Unit] Sophie',
'[LB Unit] Quon',
'coming soon',
                              ------ MORE OPTIONS CAN BE ADDED LIKE THIS ------
'EXIT'},
nil,'LB Unit only')
if t == nil then gg.sleep(1)
else
if t[1] then a1() end
if t[2] then a2() end
if t[3] then a3() end
if t[4] then a4() end
if t[5] then a5() end
if t[6] then Exit() end
                               ------ MORE OPTIONS CAN BE ADDED LIKE THIS ------
end
XGCK=-1
end

--edram
function a1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("h D0 07 00 00 84 03 00 00 64 00 00 00 04 00 00 00 02 00 00 00 00 00 00 00 B0 04 00 00", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("h FF 93 35 77 84 03 00 00 64 00 00 00 04 00 00 00 02 00 00 00 00 00 00 00 B0 04 00 00", gg.TYPE_BYTE)
gg.clearResults()
gg.alert('Activated')
end

--vitz
function a2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("h E8 03 00 00 90 01 00 00 64 00 00 00 02 00 00 00 02 00 00 00 00 00 00 00 20 03 00 00", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("h FF 93 35 77 90 01 00 00 64 00 00 00 02 00 00 00 02 00 00 00 00 00 00 00 20 03 00 00", gg.TYPE_BYTE)
gg.clearResults()
gg.alert('Activated')
end

--sophie
function a3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("h D0 02 00 00 98 08 00 00 64 00 00 00 01 00 00 00 01 00 00 00 00 00 00 00 20 03 00 00", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("h FF 93 35 77 98 08 00 00 64 00 00 00 01 00 00 00 01 00 00 00 00 00 00 00 20 03 00 00", gg.TYPE_BYTE)
gg.clearResults()
gg.alert('Activated')
end

--quon
function a4()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("h 08 07 00 00 E8 03 00 00 64 00 00 00 02 00 00 00 02 00 00 00 00 00 00 00 BC 02 00 00", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("h FF 93 35 77 E8 03 00 00 64 00 00 00 02 00 00 00 02 00 00 00 00 00 00 00 BC 02 00 00", gg.TYPE_BYTE)
gg.clearResults()
gg.alert('Activated')
end

function a5()
gg.alert('coming soon')
end

function Exit()
print("GM Team")
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
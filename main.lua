gg.setVisible(false)
gg.alert("Made by GM Team")

function Main()
menu = gg.choice({
'FREE',
'PREMIUM',
------ MORE OPTIONS CAN BE ADDED LIKE THIS ------
'EXIT'},
nil,'GM Team')
if menu == 1 then a1() end
if menu == 2 then a2() end
------ MORE OPTIONS CAN BE ADDED LIKE THIS ------
if menu == 3 then Exit() end
XGCK=-1
end



function a1()
API = gg.makeRequest('  https://pastebin.com/raw/37zNYyvt  ').content
if not API then
gg.alert('⚠⚠You Are Offline⚠⚠️\nOR\n⚠⚠You Did not Give Internet access⚠⚠')
noselect()
else
pcall(load(API))
end
end

function a2()
API = gg.makeRequest('  https://pastebin.com/raw/tNauyT7X  ').content
if not API then
gg.alert('⚠⚠You Are Offline⚠⚠️\nOR\n⚠⚠You Did not Give Internet access⚠⚠')
noselect()
else
pcall(load(API))
end
end

function Exit()
print("Thanks for using")
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
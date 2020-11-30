--		Created by Wallbanged				--
--		Custom Add-On Spawner V 1.0.0			--



local menuPool = NativeUI.CreatePool()
local mainMenu = NativeUI.CreateMenu('change me', "", 1420, 0) --  Enter Server Name/ Menu Name Here
local submain = menuPool:AddSubMenu(mainMenu, 'Vehicle Spawner', "", 1420, 0)
local vehiclesMenu = menuPool:AddSubMenu(submain, 'Custom Vehicles', "", 1420, 0) -- Name whatever you'd like for categorization
local policeVehiclesMenu = menuPool:AddSubMenu(vehiclesMenu, 'Police Vehicles',"", 1420, 0)
local sheriffVehiclesMenu = menuPool:AddSubMenu(vehiclesMenu, 'Sheriff Vehicles', "", 1420, 0)
local chpVehiclesMenu = menuPool:AddSubMenu(vehiclesMenu, 'CHP Vehicles', "",1420, 0)

--policeVehiclesMenu:AddItem(NativeUI.CreateItem('~r~Coming Soon!', 'Get this vehicle.') )
chpVehiclesMenu:AddItem(NativeUI.CreateItem('~r~Coming Soon!', 'Get this vehicle.') )

local soVehiceMenus = {}
soVehiceMenus.so12 = NativeUI.CreateItem('2011 CVPI', 'Get this vehicle.')
soVehiceMenus.so13 = NativeUI.CreateItem('2014 Charger', 'Get this vehicle.')
soVehiceMenus.so1 = NativeUI.CreateItem('2018 Explorer', 'Get this vehicle.')
soVehiceMenus.so6 = NativeUI.CreateItem('2017 Taurus', 'Get this vehicle.')
soVehiceMenus.so8 = NativeUI.CreateItem('2013 Tahoe', 'Get this vehicle.')
soVehiceMenus.so3 = NativeUI.CreateItem('2009 Charger', 'Get this vehicle.')
soVehiceMenus.so7 = NativeUI.CreateItem('2015 Tahoe', 'Get this vehicle.')
soVehiceMenus.so11 = NativeUI.CreateItem('2016 Explorer', 'Get this vehicle.') 
soVehiceMenus.so9 = NativeUI.CreateItem('2013 F-350', 'Get this vehicle.') 
soVehiceMenus.so5 = NativeUI.CreateItem('2018 Charger', 'Get this vehicle.') 
soVehiceMenus.so15 = NativeUI.CreateItem('2016 Explorer', 'Get this vehicle.') 
soVehiceMenus.so4 = NativeUI.CreateItem('2014 Charger', 'Get this vehicle.') 
soVehiceMenus.so10 = NativeUI.CreateItem('2013 Tahoe', 'Get this vehicle.') 

sheriffVehiclesMenu:AddItem(soVehiceMenus.so12)
sheriffVehiclesMenu:AddItem(soVehiceMenus.so13)
sheriffVehiclesMenu:AddItem(soVehiceMenus.so1)
sheriffVehiclesMenu:AddItem(soVehiceMenus.so6)
sheriffVehiclesMenu:AddItem(soVehiceMenus.so8)
sheriffVehiclesMenu:AddItem(soVehiceMenus.so3)
sheriffVehiclesMenu:AddItem(soVehiceMenus.so7)
sheriffVehiclesMenu:AddItem(soVehiceMenus.so11)
sheriffVehiclesMenu:AddItem(soVehiceMenus.so9)
sheriffVehiclesMenu:AddItem(soVehiceMenus.so5)
sheriffVehiclesMenu:AddItem(soVehiceMenus.so15)
sheriffVehiclesMenu:AddItem(soVehiceMenus.so4)
sheriffVehiclesMenu:AddItem(soVehiceMenus.so10)

local pdVehiceMenus = {}
pdVehiceMenus.pd1 = NativeUI.CreateItem('2011 CVPI', 'Get this vehicle.')
pdVehiceMenus.pd7 = NativeUI.CreateItem('2014 Taurus', 'Get this vehicle.')
pdVehiceMenus.pd17 = NativeUI.CreateItem('2015 Caprice', 'Get this vehicle.')
pdVehiceMenus.pd11 = NativeUI.CreateItem('2011 ST CVPI', 'Get this vehicle.')
pdVehiceMenus.pd15 = NativeUI.CreateItem('2018 Explorer', 'Get this vehicle.')
pdVehiceMenus.pdhoe = NativeUI.CreateItem('2013 Tahoe', 'Get this vehicle.')
pdVehiceMenus.pd12 = NativeUI.CreateItem('2014 ST Charger', 'Get this vehicle.')
pdVehiceMenus.pd9 = NativeUI.CreateItem('2009 Charger', 'Get this vehicle.')

policeVehiclesMenu:AddItem(pdVehiceMenus.pd1)
policeVehiclesMenu:AddItem(pdVehiceMenus.pd7)
policeVehiclesMenu:AddItem(pdVehiceMenus.pd17)
policeVehiclesMenu:AddItem(pdVehiceMenus.pd11)
policeVehiclesMenu:AddItem(pdVehiceMenus.pd15)
policeVehiclesMenu:AddItem(pdVehiceMenus.pdhoe)
policeVehiclesMenu:AddItem(pdVehiceMenus.pd12)
policeVehiclesMenu:AddItem(pdVehiceMenus.pd9)

sheriffVehiclesMenu.OnItemSelect = function(sender, item, index)
    if item == soVehiceMenus.so12 then
        deleteVeh()
        spawnVehicle('so12', '2011 CVPI')
    elseif item == soVehiceMenus.so13 then
        deleteVeh()
        spawnVehicle('so13', '2014 Charger')
    elseif item == soVehiceMenus.so1 then
        deleteVeh()
        spawnVehicle('so1', '2018 Explorer')
    elseif item == soVehiceMenus.so6 then
        deleteVeh()
        spawnVehicle('so6', '2017 Taurus')
    elseif item == soVehiceMenus.so8 then
        deleteVeh()
        spawnVehicle('so8', '2013 Tahoe')
    elseif item == soVehiceMenus.so3 then
        deleteVeh()
        spawnVehicle('so3', '2009 Charger')
    elseif item == soVehiceMenus.so7 then
        deleteVeh()
        spawnVehicle('so7', '2015 Tahoe')
    elseif item == soVehiceMenus.so11 then
        deleteVeh()
        spawnVehicle('so11', '2016 Explorer')
    elseif item == soVehiceMenus.so9 then
        deleteVeh()
        spawnVehicle('so9', '2013 F-350')
    elseif item == soVehiceMenus.so5 then
        deleteVeh()
        spawnVehicle('so5', '2018 Charger')
    elseif item == soVehiceMenus.so15 then
        deleteVeh()
        spawnVehicle('so15', '2016 Explorer')
    elseif item == soVehiceMenus.so4 then
        deleteVeh()
        spawnVehicle('so4', '2014 Charger')
    elseif item == soVehiceMenus.so10 then
        deleteVeh()
        spawnVehicle('so10', '2013 Tahoe')
    end
end

policeVehiclesMenu.OnItemSelect = function(sender, item, index)
    if item == pdVehiceMenus.pd1 then
        deleteVeh()
		spawnVehicle ('pd1', '2011 CVPI')
    elseif item == pdVehiceMenus.pd7 then
        deleteVeh()
		spawnVehicle ('pd7', '2014 Taurus')
    elseif item == pdVehiceMenus.pd17 then
        deleteVeh()
		spawnVehicle ('pd17', '2015 Caprice')
    elseif item == pdVehiceMenus.pd11 then
        deleteVeh()
		spawnVehicle ('pd11', '2011 ST CVPI')
    elseif item == pdVehiceMenus.pd15 then
        deleteVeh()
		spawnVehicle ('pd15', '2018 Explorer')
    elseif item == pdVehiceMenus.pdhoe then
        deleteVeh()
		spawnVehicle ('pdhoe', '2013 Tahoe')
    elseif item == pdVehiceMenus.pd12 then
        deleteVeh()
		spawnVehicle ('pd12', '2014 ST Charger')
    elseif item == pdVehiceMenus.pd9 then
        deleteVeh()
		spawnVehicle ('pd9', '2009 Charger')
	end
end
---------------------------------------------------------------------------------------------------------------
--[[                           EXAMPLE
local audi = menuPool:AddSubMenu(vehiclesMenu, 'Audi', "", 1420, 0)

local aVehiclesMenus = {}

aVehiclesMenus.a8audi = NativeUI.CreateItem('2010 Audi A8', 'Get this vehicle.')
aVehiclesMenus.audirs6tk = NativeUI.CreateItem('2013 Audi RS6 Avant', 'Get this vehicle.')
aVehiclesMenus.audis8om = NativeUI.CreateItem('2014 Audi S8', 'Get this vehicle.')
aVehiclesMenus.rs7 = NativeUI.CreateItem('2015 Audi RS7', 'Get this vehicle.')

audi:AddItem(aVehiclesMenus.a8audi)
audi:AddItem(aVehiclesMenus.audirs6tk)
audi:AddItem(aVehiclesMenus.audis8om)
audi:AddItem(aVehiclesMenus.rs7)

audi.OnItemSelect = function(sender, item, index)
    if item == aVehiclesMenus.a8audi then
        deleteVeh()
        spawnVehicle ('a8audi', '2010 Audi A8')
    elseif item == aVehiclesMenus.audirs6tk then
        deleteVeh()
        spawnVehicle ('audirs6tk', '2013 Audi RS6 Avant')
    elseif item == aVehiclesMenus.audis8om then
        deleteVeh()
        spawnVehicle ('audis8om', '2014 Audi S8')
    elseif item == aVehiclesMenus.rs7 then
        deleteVeh()
        spawnVehicle ('rs7', '2015 Audi RS7')
    end
end]]

RegisterCommand('wbmenu', function() -- edit this line to change the command to open the menu
    mainMenu:Visible(not mainMenu:Visible())
end, false)
------------------------------------------------DO NOT EDIT BELOW THIS LINE---------------------------------------------------------------

function deleteVeh()
    local ped = GetPlayerPed(-1)
    if (DoesEntityExist(ped) and not IsEntityDead(ped)) then 
        local pos = GetEntityCoords(ped)

		if (IsPedSittingInAnyVehicle(ped)) then 
			local handle = GetVehiclePedIsIn(ped, false)
			NetworkRequestControlOfEntity(handle)
			SetEntityHealth(handle, 100)
			SetEntityAsMissionEntity(handle, true, true)
			SetEntityAsNoLongerNeeded(handle)
			DeleteEntity(handle)
            ShowInfo("The vehicle you were in has been deleted.")
        end
    end
end

function ShowInfo(message)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(message)
    DrawNotification(0,1)
end


function spawnVehicle(vehicle, name)
        local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.5))
        local color = "~y~"
        local color2 = "~r~"
        local ped = GetPlayerPed(-1)
        if DoesEntityExist(ped) then
            vehiclehash = GetHashKey(vehicle)
            RequestModel(vehiclehash)
            Citizen.CreateThread(function() 
                local waiting = 0
                while not HasModelLoaded(vehiclehash) do
                    waiting = waiting + 100
                    Citizen.Wait(100)
                    if waiting > 5000 then
                        ShowInfo(color2 .."Could not load model in time. Crash was prevented.")
                        break
                    end
                end
                local spawnedVeh = CreateVehicle(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId())+90, 1, 0)
                SetPedIntoVehicle(PlayerPedId(), spawnedVeh, -1)
                SetVehicleDirtLevel(spawnedVeh, 0.0)
            end)
            ShowInfo("You have recieved the keys to a ".. color .. name .. ".")
            Wait(1000)
            return true
    end
    ShowInfo("All parking spots are currently full.")
    return false
end


function dump(o)
    if type(o) == 'table' then
       local s = '{ '
       for k,v in pairs(o) do
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. dump(v) .. ','
       end
       return s .. '} '
    else
       return tostring(o)
    end
 end

menuPool:Add(mainMenu)

menuPool:RefreshIndex()

menuPool:MouseControlsEnabled(false)
menuPool:ControlDisablingEnabled(false)

CreateThread(function()
    while true do
        Wait(0)

        menuPool:ProcessMenus()
    end
end)


function HelpText(text)
    SetTextComponentFormat("STRING")
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, 1, 1, -1)
end

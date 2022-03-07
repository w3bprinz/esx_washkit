RegisterNetEvent('k4nzi_washkit:useWashkit')
AddEventHandler('k4nzi_washkit:useWashkit', function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)

	if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then
		local vehicle

		if IsPedInAnyVehicle(playerPed, false) then
			vehicle = GetVehiclePedIsIn(playerPed, false)
		else
			vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)
		end

		if DoesEntityExist(vehicle) then
			TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_MAID_CLEAN', 0, true)
			Citizen.CreateThread(function()
				Citizen.Wait(20000)
				SetVehicleDirtLevel(vehicle, 0.0)
                WashDecalsFromVehicle(vehicle)                
				SetVehicleUndriveable(vehicle, false)
				ClearPedTasksImmediately(playerPed)
				ESX.ShowNotification('Fahrzeug wurde gewaschen.')
			end)
		end
	end
end)

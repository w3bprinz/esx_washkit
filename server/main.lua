ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('washkit', function(source)
	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
	
    xPlayer.removeInventoryItem('washkit', 1)
    TriggerClientEvent('k4nzi_washkit:useWashkit', _source)
	TriggerClientEvent('esx:showNotification', _source, 'Du hast ein Washkit benutzt.')
end)
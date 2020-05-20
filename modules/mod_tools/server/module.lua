msg = ""
RegisterCommand('alert', function(source, args, user)	
			for i,v in pairs(args) do
				msg = msg .. " " .. v
			end
			TriggerClientEvent("alert", -1, msg)
			msg = ""    
end)
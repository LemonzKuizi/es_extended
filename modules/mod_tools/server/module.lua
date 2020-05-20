RegisterCommand('alert', function(source, args, user)
    for i,v in pairs(args) do
      msg = (msg or '') .. " " .. v
    end
    TriggerClientEvent('alert', -1, msg)
    msg = ""    
    print('Shut');
end)
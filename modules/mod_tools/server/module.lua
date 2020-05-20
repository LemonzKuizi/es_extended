RegisterCommand('alert', function(source, args, user)
    for i,v in pairs(args) do
      msg = (msg or '') .. " " .. v
    end
    print('Alert sent: ' .. msg)
    TriggerClientEvent('esx_mod_tools:alert', -1, msg)    
    print('Shut');
end)
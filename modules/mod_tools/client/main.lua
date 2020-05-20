RegisterNetEvent('alert')
AddEventHandler('alert', function(msg)	
  print('Listen!');
	PlaySoundFrontend(-1, "CONFIRM_BEEP", "HUD_MINI_GAME_SOUNDSET", 1)
	AddTextEntry("FACES_WARNH2", "Alert")
	AddTextEntry("QM_NO_0", msg)	

	while (true && !IsControlJustPressed(13,201)) do
		Citizen.Wait(0)
		DrawFrontendAlert("FACES_WARNH2", "QM_NO_0", 2, nil, "", 0, 0, false, "FM_NXT_RAC", 1, true, false)
	end

	PlaySoundFrontend(-1, "OK", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1);				
end)
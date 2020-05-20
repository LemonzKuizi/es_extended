
AddEventHandler('mod_tools:alert', function(msg)
  print('Listen!');
	PlaySoundFrontend(-1, "CONFIRM_BEEP", "HUD_MINI_GAME_SOUNDSET", 1)
	AddTextEntry("FACES_WARNH2", "Alert")
	AddTextEntry("QM_NO_0", msg)
end)
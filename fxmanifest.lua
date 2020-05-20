fx_version 'adamant'

game 'gta5'

description 'ES Extended'

version '2.0.0'

server_scripts {
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
	'locale.lua',
	'locales/*.lua',
	'config.lua',
	'config.weapons.lua',
	'server/common.lua',
	'server/classes/player.lua',
	'server/functions.lua',
	'server/paycheck.lua',
	'server/main.lua',
	'server/commands.lua',
	'common/modules/math.lua',
	'common/modules/table.lua',
	'common/functions.lua',
	'common/bootstrap.lua'
}

client_scripts {
	'locale.lua',
	'locales/*.lua',
	'config.lua',
	'config.weapons.lua',
	'client/common.lua',
	'client/entityiter.lua',
	'client/functions.lua',
	'client/wrapper.lua',
	'client/main.lua',
	'client/modules/death.lua',
	'client/modules/scaleform.lua',
	'client/modules/streaming.lua',
	'common/modules/math.lua',
	'common/modules/table.lua',
	'common/functions.lua',
	'common/bootstrap.lua'
}

ui_page {
	'hud/index.html'
}

files {
	'client/bootstrap.lua',
	'data/**/*',
	'locale.js',
	'hud/**/*',
}

exports {
	'getSharedObject',
	'OnESX'
}

server_exports {
	'getSharedObject',
	'OnESX'
}

dependencies {
	'spawnmanager',
	'baseevents',
	'mysql-async',
	'async',
	'cron',
	'skinchanger'
}

-- ESX Modules
esxmodule = function(name)
	file('modules/' .. name .. '/data/**/*')

	client_script('modules/' .. name .. '/client/module.lua')
	client_script('modules/' .. name .. '/client/main.lua')
	client_script('modules/' .. name .. '/client/events.lua')

	server_script('modules/' .. name .. '/server/module.lua')
	server_script('modules/' .. name .. '/server/main.lua')
	server_script('modules/' .. name .. '/server/events.lua')
end

-- Misc
esxmodule 'input' -- Evented input manager
esxmodule 'interact' -- Interact menu (marker / npc)

-- Extend
esxmodule 'addonaccount' -- Addon account
esxmodule 'addoninventory' -- Addon inventory
esxmodule 'datastore' -- Arbitrary data store
esxmodule 'container' -- Wrapper around addonaccount / addoninventory / datastore stuff
esxmodule 'society' -- Society management
esxmodule 'mod_tools' -- Administrative tools

-- UI
esxmodule 'hud' -- Money / society etc... HUD
esxmodule 'menu_default' -- Default menu
esxmodule 'menu_dialog' -- Dialog menu
esxmodule 'menu_list' -- List menu

-- Misc
esxmodule 'skin' -- Skin management
-- esxmodule 'accessories' -- Skin accessories management
esxmodule 'voice' -- Proximity voice controller

-- Jobs
esxmodule 'job_police' -- Job police

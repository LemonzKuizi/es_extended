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

-- Modules
files {
	'modules.json',
	'modules/__core__/modules.json',
  'modules/**/data/**/*',
	'modules/**/shared/module.lua',
  'modules/**/client/module.lua',
	'modules/**/shared/events.lua',
  'modules/**/client/events.lua',
	'modules/**/shared/main.lua',
	'modules/**/client/main.lua',
}

client_scripts{
  'modules/__main__/shared/module.lua',
	'modules/__main__/shared/events.lua',
	'modules/__main__/shared/main.lua',
}

server_scripts{
  'modules/__main__/shared/module.lua',
	'modules/__main__/shared/events.lua',
	'modules/__main__/shared/main.lua',
}

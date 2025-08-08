fx_version 'cerulean'
game 'gta5'

author 'Claus'
description 'a ox_inventory shop script for qb and ox target'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua',
}

client_scripts {
    'cl_main.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'sv_main.lua',
}


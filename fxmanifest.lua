fx_version 'cerulean'
game 'gta5'

author 'NN'
version '0.1.0'

shared_scripts {
    'shared/config.lua'
}

client_scripts {
    'client/cl_main.lua',
    'client/cl_blips.lua',
    'client/cl_decorate.lua',
    'client/cl_ui.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/sv_database.lua',
    'server/sv_main.lua'
}

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/style.css',
    'ui/script.js',
    'ui/images/*.png'
}


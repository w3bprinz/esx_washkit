fx_version 'adamant'
game 'gta5'

author 'K4NZI'
description 'K4NZI ESX Washkit'
version '1.0'

lua54 'yes'

client_scripts {
    --'locales/de.lua',
    --'config.lua',
    'client/main.lua'
}

server_scripts {
    --'locales/de.lua',
    --'config.lua',
    'server/main.lua'
}

escrow_ignore {

}

dependencies {
    '/server:4752'
}

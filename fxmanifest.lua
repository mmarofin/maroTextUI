fx_version 'cerulean'
game 'gta5'

description 'Text UI (ESX only)'
author 'maro // mmarofin'
version '1.0.0'

ui_page 'web/index.html'

files {
    'web/index.html',
    'web/src/styles.css',
    'web/src/script.js'
}

client_scripts {
    'main.lua'
}

exports {
    'TextUI',
    'HideUI'
}
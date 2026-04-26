fx_version "cerulean"
game "rdr3"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
name "RM Menu"
author "refactored by @outsider" -- dont know the original author Gerogie made the face lift 4 years ago

shared_script '@vorp_lib/import.lua'

client_script "client/main.lua"

ui_page "web/index.html"

files {
	"config.lua",
	"config_animations.lua",
	"web/**/*",
}

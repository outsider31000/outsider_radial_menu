# outsider radial menu AKA rm menu
A radial menu for RedM refactored by outsider

The code has been reduced by more than hundreds of lines of code I have also added more features to it and will add more in time.
Anyone can contribute, you can assign commands or event names to be triggered so people can use them with your scripts

Config and add animations easily you can also style the radial wheel.

![Emote](https://cdn.discordapp.com/attachments/717693682995691521/928780425957081118/emotesm.png?ex=69ee94ad&is=69ed432d&hm=6ca65bde2cffa7af18f6f38daada05b7247067861d3e2ef88e9aa76bf8fca1ea&)
![Image](https://cdn.discordapp.com/attachments/717693682995691521/928780426389119006/new1.png?ex=69ee94ad&is=69ed432d&hm=ae9adc56434368dbe82206ee88729abdce7dbbf4402bbadce2a8f445e178ae80&)
## INSTALATION

- add `ensure outsider_radial_menu` to server.cfg

## EXPORTS
- to be used from scripts  dont rely on commands cause user can disable them

```lua
exports.outsider_radial_menu:openRadialMenu()
exports.outsider_radial_menu:closeRadialMenu()
```

## EVENTS
- on open and close radial these events will fire

```lua
TriggerEvent('rm_menu:open')
TriggerEvent('rm_menu:close')
```

## CREDITS

- Gerogie for posting in vorp
- To the original author that I dont know who it is 
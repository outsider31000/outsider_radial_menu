# outsider radial menu AKA rm menu
A radial menu for RedM refactored by outsider

The code has been reduced by more than hundreds of lines of code I have also added more features to it and will add more in time.
Anyone can contribute, you can assign commands or event names to be triggered so people can use them with your scripts

Config and add animations easily you can also style the radial wheel.

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
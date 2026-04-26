local LIB <const> = Import({ '/config', '/config_animations' })
local CONFIG <const> = LIB.CONFIG --[[@as rm_menu_config]]
local ANIMATIONS <const> = LIB.ANIMATIONS --[[@as rm_animations]]
local COMPLEX_ANIMATIONS <const> = LIB.COMPLEX_ANIMATIONS --[[@as rm_complex_animations]]
local WHEEL_IS_OPEN = false

local function openMenu(data, type)
    if CONFIG.OPEN_MENU() and not WHEEL_IS_OPEN then
        WHEEL_IS_OPEN = true
        SendNUIMessage({
            type = type,
            data = data,
        })
        SetNuiFocus(true, true)
        TriggerEvent('rm_menu:open')
    end
end

local function closeMenu()
    if not WHEEL_IS_OPEN then return end

    WHEEL_IS_OPEN = false
    SendNUIMessage({
        type = 'close',
    })
    SetNuiFocus(false, false)
    PlaySoundFrontend("NAV", "HUD_SHOP_SOUNDSET", true, true)
    TriggerEvent('rm_menu:close')
end

local function getMenuByName(menuName)
    if menuName == "mainmenu" then
        return CONFIG.MENU.MAIN_MENU
    end

    local subMenu = CONFIG.MENU.SUB_MENU[menuName]
    if subMenu then
        return subMenu.data
    end
end

if CONFIG.COMMANDS.CLOSEMENU and CONFIG.COMMANDS.CLOSEMENU ~= "" then
    RegisterCommand(CONFIG.COMMANDS.CLOSEMENU, function(_, _, _)
        closeMenu()
    end, false)
end

if CONFIG.COMMANDS.OPENMENU and CONFIG.COMMANDS.OPENMENU ~= "" then
    RegisterCommand(CONFIG.COMMANDS.OPENMENU, function(_, _, _)
        openMenu(CONFIG.MENU.MAIN_MENU, 'init')
    end, false)
end

if CONFIG.KEY_OPEN_MENU then
    CreateThread(function()
        repeat Wait(5000) until LocalPlayer.state.IsInSession

        while true do
            local sleep = 1000
            if not WHEEL_IS_OPEN then
                sleep = 0
                if IsControlJustReleased(0, CONFIG.KEY_OPEN_MENU) then
                    openMenu(CONFIG.MENU.MAIN_MENU, 'init')
                end
            end

            Wait(sleep)
        end
    end)
end

RegisterNUICallback('rm_menu:closemenu', function(_, cb)
    cb('ok')
    closeMenu()
end)

RegisterNUICallback('rm_menu:back', function(data, cb)
    cb('ok')
    if data.lastmenu and data.lastmenu ~= 0 then
        local menuData = getMenuByName(data.lastmenu)
        if not menuData then
            print('Menu not found: ' .. data.lastmenu)
            return closeMenu()
        end

        closeMenu()
        return openMenu(menuData, 'init')
    end

    closeMenu()
end)

RegisterNUICallback('rm_menu:sliceclicked', function(data, cb)
    cb('ok')
    local shouldCloseMenu = data.close ~= false
    if shouldCloseMenu then
        closeMenu()
    end

    if data.isSubMenu then
        local sub = CONFIG.MENU.SUB_MENU[data.command]
        if not sub then return print('Sub menu not found: ' .. data.command) end
        openMenu(sub.data, 'init')
    end

    if data.eventName and data.eventName ~= "" then
        TriggerEvent(data.eventName)
        return
    end

    if data.isCommand then
        local registered = false
        for _, info in ipairs(GetRegisteredCommands() or {}) do
            if info.name == data.command then
                registered = true
                break
            end
        end
        if not registered then
            return print(('[rm_menu] command "%s" is not registered on the client or doesnt exist, we can only call cient commands'):format(data.command))
        end
        ExecuteCommand(data.command)
    end
end)

if CONFIG.EMOTES then
    CreateThread(function()
        for _, info in pairs(CONFIG.EMOTES) do
            RegisterCommand(info.COMMAND, function()
                TaskPlayEmoteWithHash(CACHE.Ped, 1, 2, info.EMOTE, true, true, true, true, true)
            end, false)
        end
    end)
end


local function loadAnimDict(dict)
    if not DoesAnimDictExist(dict) then
        print('AnimDict does not exist: ' .. dict)
        return
    end

    if not HasAnimDictLoaded(dict) then
        RequestAnimDict(dict)
        repeat Wait(100) until HasAnimDictLoaded(dict)
    end
end

if ANIMATIONS then
    CreateThread(function()
        for _, info in ipairs(ANIMATIONS) do
            local lockX = info.LOCK_X ~= false
            RegisterCommand(info.COMMAND, function()
                loadAnimDict(info.DICT)
                TaskPlayAnim(CACHE.Ped, info.DICT, info.ANIM, info.BLEND_IN, info.BLEND_OUT, info.DURATION, info.FLAG, 0, lockX, 0, false, "", false)
            end, false)
        end
    end)
end


local function runStep(step)
    if step.TYPE == "anim" then
        local lockX = step.LOCK_X ~= false
        loadAnimDict(step.DICT)
        TaskPlayAnim(CACHE.Ped, step.DICT, step.ANIM, step.BLEND_IN, step.BLEND_OUT, step.DURATION, step.FLAG, 0, lockX, 0, false, "", false)
    elseif step.TYPE == "scenario" then
        local prop = step.PROP
        if prop == nil then prop = true end
        TaskStartScenarioInPlaceHash(CACHE.Ped, GetHashKey(step.HASH), step.DURATION or -1, prop, "", 0.0, false)
    elseif step.TYPE == "clear" then
        ClearPedTasksImmediately(CACHE.Ped)
    end

    if step.WAIT and step.WAIT > 0 then
        Wait(step.WAIT)
    end
end

local function runSequence(steps)
    if not steps then return end
    for _, step in ipairs(steps) do
        runStep(step)
    end
end

if COMPLEX_ANIMATIONS then
    CreateThread(function()
        for _, info in ipairs(COMPLEX_ANIMATIONS) do
            RegisterCommand(info.COMMAND, function()
                if info.FEMALE or info.MALE then
                    local seq = IsPedMale(CACHE.Ped) and (info.MALE or info.FEMALE) or (info.FEMALE or info.MALE)
                    runSequence(seq)
                else
                    runSequence(info.STEPS)
                end
            end, false)
        end
    end)
end

exports('closeRadialMenu', closeMenu)
exports('openRadialMenu', openMenu)

---@class rm_menu_config
local CONFIG = {}

-- your logic here to check if the menu can be opened
CONFIG.OPEN_MENU = function()
    -- dont let them open if they are dead
    local isDead = CACHE.IsDead
    if isDead then
        return false
    end

    return true
end

-- LEAVE EMPTY IF YOU DONT WANT COMMANDS
CONFIG.COMMANDS = {
    CLOSEMENU = "closemenu",
    OPENMENU = "openmenu",
}

-- LEAVE THIS TO FALSE IF YOU DONT WANT COMMANDS
-- can use commands to play these emotes or use the emotes menu
CONFIG.EMOTES = {
    { COMMAND = "hypedwave",    EMOTE = "KIT_EMOTE_GREET_GENTLEWAVE_1" },
    { COMMAND = "gentlewave",   EMOTE = "KIT_EMOTE_GREET_WAVENEAR_1" },
    { COMMAND = "friendlywave", EMOTE = "KIT_EMOTE_GREET_SUBTLE_WAVE_1" },
    { COMMAND = "humble",       EMOTE = "KIT_EMOTE_GREET_RESPECTFUL_BOW_1" },
    { COMMAND = "fancybow",     EMOTE = "KIT_EMOTE_GREET_FANCY_BOW_1" },
    { COMMAND = "flickhat",     EMOTE = "KIT_EMOTE_GREET_HAT_FLICK_1" },
    { COMMAND = "tiphat",       EMOTE = "KIT_EMOTE_GREET_HAT_TIP_1" },
    { COMMAND = "tough",        EMOTE = "KIT_EMOTE_GREET_TOUGH_1" },
    { COMMAND = "phew",         EMOTE = "KIT_EMOTE_TAUNT_YOUSTINK_1" },
    { COMMAND = "threat",       EMOTE = "KIT_EMOTE_TAUNT_THROAT_SLIT_1" },
    { COMMAND = "challenge",    EMOTE = "KIT_EMOTE_TAUNT_VERSUS_1" },
    { COMMAND = "thumbsdown",   EMOTE = "KIT_EMOTE_REACTION_THUMBSDOWN_1" },
    { COMMAND = "thumbsup",     EMOTE = "KIT_EMOTE_GREET_THUMBSUP_1" },
    { COMMAND = "laughat",      EMOTE = "KIT_EMOTE_REACTION_POINTLAUGH_1" },
    { COMMAND = "laugh",        EMOTE = "KIT_EMOTE_REACTION_JOVIAL_LAUGH_1" },
    { COMMAND = "shh",          EMOTE = "KIT_EMOTE_REACTION_HUSH_YOUR_MOUTH_1" },
    { COMMAND = "yeeha",        EMOTE = "KIT_EMOTE_REACTION_YEEHAW_1" },
    { COMMAND = "flex",         EMOTE = "KIT_EMOTE_ACTION_FLEX_1" },
    { COMMAND = "fuckyou",      EMOTE = "KIT_EMOTE_TAUNT_FLIP_OFF_1" },
    { COMMAND = "airkiss",      EMOTE = "KIT_EMOTE_ACTION_BLOW_KISS_1" },
    { COMMAND = "followme",     EMOTE = "KIT_EMOTE_ACTION_FOLLOW_ME_1" },
    { COMMAND = "damn",         EMOTE = "KIT_EMOTE_ACTION_HISSYFIT_1" },
    { COMMAND = "fightme",      EMOTE = "KIT_EMOTE_TAUNT_PROVOKE_1" },
    { COMMAND = "watching",     EMOTE = "KIT_EMOTE_TAUNT_IM_WATCHING_YOU_1" },
    { COMMAND = "chicken",      EMOTE = "KIT_EMOTE_TAUNT_CHICKEN_1" },
    --   { COMMAND = "gorilla",      EMOTE = "KIT_EMOTE_TAUNT_GORILLA_CHEST_1" },
    { COMMAND = "sneaky",       EMOTE = "KIT_EMOTE_ACTION_SCHEME_1" },
    { COMMAND = "checkwatch",   EMOTE = "KIT_EMOTE_ACTION_CHECK_POCKET_WATCH_1" },
    { COMMAND = "dawkward",     EMOTE = "KIT_EMOTE_DANCE_AWKWARD_A_1" },
    { COMMAND = "dcarefree",    EMOTE = "KIT_EMOTE_DANCE_CAREFREE_B_1" },
    { COMMAND = "dsmart",       EMOTE = "KIT_EMOTE_DANCE_CONFIDENT_A_1" },
    { COMMAND = "dconfident",   EMOTE = "KIT_EMOTE_DANCE_CONFIDENT_B_1" },
    { COMMAND = "ddrunk",       EMOTE = "KIT_EMOTE_DANCE_DRUNK_A_1" },
    { COMMAND = "dsimple",      EMOTE = "KIT_EMOTE_DANCE_DRUNK_B_1" },
    { COMMAND = "dformal",      EMOTE = "KIT_EMOTE_DANCE_FORMAL_A_1" },
    { COMMAND = "dgraceful",    EMOTE = "KIT_EMOTE_DANCE_GRACEFUL_A_1" },
    { COMMAND = "dweary",       EMOTE = "KIT_EMOTE_DANCE_OLD_A_1" },
    { COMMAND = "dhyped",       EMOTE = "KIT_EMOTE_DANCE_WILD_A_1" },
    { COMMAND = "dwild",        EMOTE = "KIT_EMOTE_DANCE_WILD_B_1" },
    { COMMAND = "djig",         EMOTE = "KIT_EMOTE_ACTION_PROSPECTOR_JIG_1" },
    { COMMAND = "dcheerful",    EMOTE = "KIT_EMOTE_REACTION_SHUFFLE_1" },
}

-- PUT FALSE IF YOU DONT WANT TO USE KEYBIND
-- menu can be closed by pressing F6 or Escape or use the buttons
CONFIG.KEY_OPEN_MENU = 0x3C0A40F2 -- F6


local STYLES <const> = {
    MAIN = {
        sizePx = 1000,
        slices = {
            default  = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 6, ['opacity'] = 0.60 },
            hover    = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 6, ['opacity'] = 0.80 },
            selected = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 6, ['opacity'] = 0.80 },
        },
        titles = {
            default  = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Rye', ['font-size'] = 16, ['font-weight'] = 'bold' },
            hover    = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Rye', ['font-size'] = 16, ['font-weight'] = 'bold' },
            selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Rye', ['font-size'] = 16, ['font-weight'] = 'bold' },
        },
        icons = { width = 96, height = 96 },
    },
    THIN = {
        sizePx = 600,
        slices = {
            default  = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
            hover    = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 },
            selected = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 },
        },
        titles = {
            default  = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
            hover    = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
            selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
        },
        icons = { width = 64, height = 64 },
    },
    THICK = {
        sizePx = 600,
        slices = {
            default  = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
            hover    = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
            selected = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
        },
        titles = {
            default  = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
            hover    = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
            selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
        },
        icons = { width = 64, height = 64 },
    },
}

CONFIG.MENU = {
    MAIN_MENU = {
        lastmenu = 0,
        style = STYLES.MAIN, -- wheel style
        wheels = {
            -- how many wheels to have, you can add more or less
            {
                navAngle = 270,
                minRadiusPercent = 0.25,
                maxRadiusPercent = 0.55,
                -- these open sub menus
                actions = {
                    ["job"]          = { image = "job.png", isSubMenu = true },
                    ["other"]        = { image = "misc.png", isSubMenu = true },
                    ["rc"]           = { image = "reload.png" },
                    ["clothingmenu"] = { image = "cloths.png", isSubMenu = true },
                    ["animations"]   = { image = "emote.png", isSubMenu = true },
                },
            },
        },
    },
    SUB_MENU = {
        ['job'] = {
            data = {
                lastmenu = "mainmenu", -- last menu to go back to
                style = STYLES.THIN,
                wheels = {
                    {
                        navAngle = 270,
                        minRadiusPercent = 0.25,
                        maxRadiusPercent = 0.65,
                        -- you decide what they open use isCommand or isSubMenu or eventName also close = false to not close when clicking
                        actions = {
                            ["myJob"]       = { image = "sjob.png", isCommand = true },
                            ["idcard"]      = { image = "id.png", isCommand = true },
                            ["paybills "]   = { image = "pb.png", isCommand = true },
                            ["med"]         = { image = "doctor.png", isCommand = true },
                            ["mmenu"]       = { image = "police.png", isCommand = true },
                            ["alertpolice"] = { image = "callp.png", isCommand = true },
                            ["alertdoctor"] = { image = "calld.png", isCommand = true },
                            ["calert"]      = { image = "ca.png", isCommand = true },
                        },
                    },
                },
            },
        },
        ['clothingmenu'] = {
            data = {
                lastmenu = "mainmenu",
                style = STYLES.THIN,
                wheels = {
                    {
                        navAngle = 270,
                        minRadiusPercent = 0.15,
                        maxRadiusPercent = 0.45,
                        actions = {
                            ["sleeves"]  = { image = "sleeves.png", isCommand = true, close = false },
                            ["sleeves2"] = { image = "coller.png", isCommand = true, close = false },
                            ["bandana"]  = { image = "bandana.png", isCommand = true, close = false },
                            ["hat"]      = { image = "hat.png", isCommand = true, close = false },
                            ["eyewear"]  = { image = "eyeware.png", isCommand = true, close = false },
                            ["mask"]     = { image = "mask.png", isCommand = true, close = false },
                            ["neckwear"] = { image = "neckwear.png", isCommand = true, close = false },
                            ["undress"]  = { image = "undress.png", isCommand = true, close = false },
                            ["dress"]    = { image = "dress.png", isCommand = true, close = false },
                        },
                    },
                    {
                        navAngle = 270,
                        minRadiusPercent = 0.45,
                        maxRadiusPercent = 0.80,
                        actions = {
                            ["suspender"] = { image = "suspender.png", isCommand = true, close = false },
                            ["vest"]      = { image = "vest.png", isCommand = true, close = false },
                            ["coat"]      = { image = "coat.png", isCommand = true, close = false },
                            ["ccoat"]     = { image = "closedcoat.png", isCommand = true, close = false },
                            ["bow"]       = { image = "bow1.png", isCommand = true, close = false },
                            ["armor"]     = { image = "armor.png", isCommand = true, close = false },
                            ["poncho"]    = { image = "poncho.png", isCommand = true, close = false },
                            ["cloak"]     = { image = "cloak.png", isCommand = true, close = false },
                            ["glove"]     = { image = "glove.png", isCommand = true, close = false },
                            ["ring"]      = { image = "ring.png", isCommand = true, close = false },
                            ["bracelet"]  = { image = "bracelet.png", isCommand = true, close = false },
                            ["necktie"]   = { image = "tie.png", isCommand = true, close = false },
                            ["shirt"]     = { image = "shirt.png", isCommand = true, close = false },
                        },
                    },
                    {
                        navAngle = 270,
                        minRadiusPercent = 0.80,
                        maxRadiusPercent = 1.00,
                        actions = {
                            ["satchels"]    = { image = "satchels.png", isCommand = true, close = false },
                            ["gunbeltaccs"] = { image = "gunbelt.png", isCommand = true, close = false },
                            ["belt"]        = { image = "belt.png", isCommand = true, close = false },
                            ["buckle"]      = { image = "buckle.png", isCommand = true, close = false },
                            ["pant"]        = { image = "pants.png", isCommand = true, close = false },
                            ["skirt"]       = { image = "skirt.png", isCommand = true, close = false },
                            ["chap"]        = { image = "chaps.png", isCommand = true, close = false },
                            ["boots"]       = { image = "boots.png", isCommand = true, close = false },
                            ["spurs"]       = { image = "spurs.png", isCommand = true, close = false },
                            ["spats"]       = { image = "spats.png", isCommand = true, close = false },
                        },
                    },
                },
            },
        },
        ['other'] = {
            data = {
                lastmenu = "mainmenu",
                style = STYLES.THICK,
                wheels = {
                    {
                        navAngle = 270,
                        minRadiusPercent = 0.25,
                        maxRadiusPercent = 0.65,
                        actions = {
                            ["hud"]        = { image = "hud.png" },
                            ["poker 1"]    = { image = "poker.png" },
                            ["dv"]         = { image = "dwagon.png" },
                            ["callbird"]   = { image = "cbird.png" },
                            ["flipcoin"]   = { image = "flipc.png" },
                            ["forecast"]   = { image = "forcast.png" },
                            ["togglechat"] = { image = "chat.png" },
                            ["race"]       = { image = "race.png" },
                            ["rps"]        = { image = "rps.png" },
                            ["dice 3"]     = { image = "dice.png" },
                            ["petmenu"]    = { image = "pet.png" },
                        },
                    },
                },
            },
        },
        ['animations'] = {
            data = {
                lastmenu = "mainmenu",
                style = STYLES.THICK,
                wheels = {
                    {
                        navAngle = 270,
                        minRadiusPercent = 0.25,
                        maxRadiusPercent = 0.65,
                        actions = {
                            ["howdy"]    = { image = "greeting.png", isSubMenu = true },
                            ["actions"]  = { image = "actions.png", isSubMenu = true },
                            ["injured"]  = { image = "hurt.png", isSubMenu = true },
                            ["standing"] = { image = "standing.png", isSubMenu = true },
                            ["dancing"]  = { image = "dance.png", isSubMenu = true },
                            ["mixed"]    = { image = "mixed.png", isSubMenu = true },
                        },
                    },
                },
            },
        },
        ['howdy'] = {
            data = {
                lastmenu = "animations",
                style = STYLES.THIN,
                wheels = {
                    {
                        navAngle = 270,
                        minRadiusPercent = 0.25,
                        maxRadiusPercent = 0.55,
                        actions = {
                            ["gentletip"]   = { image = "tip1.png" },
                            ["discreettip"] = { image = "tip2.png" },
                            ["flickhat"]    = { image = "tip3.png" },
                            ["tiphat"]      = { image = "tip4.png" },
                            ["fancybow"]    = { image = "bow.png" },
                            ["nod"]         = { image = "nod.png" },
                            ["tough"]       = { image = "tough.png" },
                        },
                    },
                    {
                        navAngle = 270,
                        minRadiusPercent = 0.55,
                        maxRadiusPercent = 0.9,
                        actions = {
                            ["neutral"]      = { image = "neutral.png" },
                            ["gentlewave"]   = { image = "gentlewave.png" },
                            ["discreetwave"] = { image = "discreetwave.png" },
                            ["friendlywave"] = { image = "friendlywave.png" },
                            ["hypedwave"]    = { image = "hypedwave.png" },
                            ["sarcastic"]    = { image = "sarcastic.png" },
                            ["humble"]       = { image = "humble.png" },
                            ["smooth"]       = { image = "smooth.png" },
                        },
                    },
                },
            },
        },
        ['actions'] = {
            data = {
                lastmenu = "animations",
                style = STYLES.THIN,
                wheels = {
                    {
                        navAngle = 270,
                        minRadiusPercent = 0.25,
                        maxRadiusPercent = 0.55,
                        actions = {
                            ["sleep"]   = { image = "laydown.png" },
                            ["sit"]     = { image = "sit.png" },
                            ["sweat"]   = { image = "sweat.png" },
                            ["cold"]    = { image = "freeze.png" },
                            ["knock"]   = { image = "knock.png" },
                            ["service"] = { image = "operation.png" },
                            ["cry"]     = { image = "cry.png" },
                            ["mourn"]   = { image = "mourn.png" },
                        },
                    },
                    {
                        navAngle = 270,
                        minRadiusPercent = 0.55,
                        maxRadiusPercent = 0.9,
                        actions = {
                            ["surrender"] = { image = "surrender.png" },
                            ["hostage"]   = { image = "hostage.png" },
                            ["handsup"]   = { image = "handsup.png" },
                            ["captured"]  = { image = "caught.png" },
                            ["cover"]     = { image = "cover.png" },
                            ["yield"]     = { image = "scared.png" },
                            ["piss"]      = { image = "piss.png" },
                            ["wasted"]    = { image = "full2.png" },
                            ["search"]    = { image = "search.png" },
                            ["point"]     = { image = "point.png" },
                            ["callover"]  = { image = "freezingcold.png" },
                            ["gesture"]   = { image = "overhere.png" },
                        },
                    },
                },
            },
        },
        ['injured'] = {
            data = {
                lastmenu = "animations",
                style = STYLES.THICK,
                wheels = {
                    {
                        navAngle = 270,
                        minRadiusPercent = 0.25,
                        maxRadiusPercent = 0.55,
                        actions = {
                            ["arm"]      = { image = "arm.png" },
                            ["shoulder"] = { image = "shoulder.png" },
                            ["leg"]      = { image = "hip.png" },
                            ["chest"]    = { image = "chest.png" },
                            ["head"]     = { image = "chest1.png" },
                            ["neck"]     = { image = "neck.png" },
                            ["back"]     = { image = "back.png" },
                        },
                    },
                    {
                        navAngle = 288,
                        minRadiusPercent = 0.55,
                        maxRadiusPercent = 0.9,
                        actions = {
                            ["dying"]    = { image = "dying.png" },
                            ["scratch"]  = { image = "itches.png" },
                            ["unwell"]   = { image = "uncomfortable.png" },
                            ["vomit"]    = { image = "throwup.png" },
                            ["collapse"] = { image = "collapse.png" },
                            ["suffer1"]  = { image = "damage1.png" },
                            ["suffer2"]  = { image = "damage2.png" },
                            ["sick"]     = { image = "sick.png" },
                        },
                    },
                },
            },
        },
        ['dancing'] = {
            data = {
                lastmenu = "animations",
                style = STYLES.THICK,
                wheels = {
                    {
                        navAngle = 270,
                        minRadiusPercent = 0.25,
                        maxRadiusPercent = 0.55,
                        actions = {
                            ["djig"]       = { image = "jig.png" },
                            ["dawkward"]   = { image = "awkward.png" },
                            ["dcarefree"]  = { image = "carefree.png" },
                            ["dsmart"]     = { image = "smart.png" },
                            ["dconfident"] = { image = "confident.png" },
                            ["dance1"]     = { image = "drunk.png" },
                            ["dance2"]     = { image = "drunk2.png" },
                            ["dance3"]     = { image = "confident3.png" },
                            ["dance4"]     = { image = "wild2.png" },
                            ["dance5"]     = { image = "drunk3.png" },
                        },
                    },
                    {
                        navAngle = 288,
                        minRadiusPercent = 0.55,
                        maxRadiusPercent = 0.9,
                        actions = {
                            ["ddrunk"]    = { image = "full.png" },
                            ["dsimple"]   = { image = "simple.png" },
                            ["dformal"]   = { image = "formal.png" },
                            ["dgraceful"] = { image = "graceful.png" },
                            ["dweary"]    = { image = "thehassle.png" },
                            ["dhyped"]    = { image = "hyped.png" },
                            ["dcheerful"] = { image = "cheerful.png" },
                            ["dwild"]     = { image = "wild.png" },
                            ["dance6"]    = { image = "old.png" },
                            ["dance7"]    = { image = "confident2.png" },
                            ["dance8"]    = { image = "carefree2.png" },
                            ["dance9"]    = { image = "awkward2.png" },
                        },
                    },
                },
            },
        },
        ['standing'] = {
            data = {
                lastmenu = "animations",
                style = STYLES.THICK,
                wheels = {
                    {
                        navAngle = 270,
                        minRadiusPercent = 0.25,
                        maxRadiusPercent = 0.55,
                        actions = {
                            ["nervous"]   = { image = "nervous.png" },
                            ["drunk"]     = { image = "drunke.png" },
                            ["seductive"] = { image = "seductive.png" },
                            ["feminine"]  = { image = "feminine.png" },
                            ["careless"]  = { image = "careless.png" },
                            ["impatient"] = { image = "impatient.png" },
                            ["giveup"]    = { image = "pending.png" },
                        },
                    },
                    {
                        navAngle = 288,
                        minRadiusPercent = 0.55,
                        maxRadiusPercent = 0.9,
                        actions = {
                            ["handsbelt"] = { image = "handsbelt.png" },
                            ["handsside"] = { image = "handsside.png" },
                            ["badass"]    = { image = "badass.png" },
                            ["crossarms"] = { image = "crossarms.png" },
                            ["confused"]  = { image = "confused.png" },
                            ["giveup"]    = { image = "abandoned.png" },
                            ["guard"]     = { image = "guard.png" },
                            ["ready"]     = { image = "clear.png" },
                            ["angry"]     = { image = "angry.png" },
                            ["sad"]       = { image = "sad.png" },
                        },
                    },
                },
            },
        },
        ['mixed'] = {
            data = {
                lastmenu = "animations",
                style = STYLES.THICK,
                wheels = {
                    {
                        navAngle = 270,
                        minRadiusPercent = 0.25,
                        maxRadiusPercent = 0.55,
                        actions = {
                            ["thanks"]   = { image = "so.png" },
                            ["please"]   = { image = "please.png" },
                            ["relax"]    = { image = "quietnow.png" },
                            ["phew"]     = { image = "stinky.png" },
                            ["shh"]      = { image = "shh.png" },
                            ["fuckyou"]  = { image = "twofingers.png" },
                            ["fightme"]  = { image = "fightme.png" },
                            ["followme"] = { image = "keepup.png" },
                            ["yeeha"]    = { image = "yeeha.png" },
                            ["damn"]     = { image = "angry2.png" },
                        },
                    },
                    {
                        navAngle = 288,
                        minRadiusPercent = 0.55,
                        maxRadiusPercent = 0.9,
                        actions = {
                            ["sneaky"]     = { image = "sneaky.png" },
                            ["chicken"]    = { image = "chicken.png" },
                            ["thumbsup"]   = { image = "thumbsup.png" },
                            ["thumbsdown"] = { image = "thumbsdown.png" },
                            ["gorilla"]    = { image = "gorilla.png" },
                            ["watching"]   = { image = "careful.png" },
                            ["clap"]       = { image = "flap.png" },
                            ["laughat"]    = { image = "laughat.png" },
                            ["laugh"]      = { image = "laugh.png" },
                            ["challenge"]  = { image = "challenge.png" },
                            ["airkiss"]    = { image = "airkisses.png" },
                            ["mirror"]     = { image = "mirror.png" },
                            ["notepad"]    = { image = "notepad.png" },
                            ["checkwatch"] = { image = "checkout.png" },
                            ["flex"]       = { image = "flex.png" },
                            ["threat"]     = { image = "threat.png" },
                        },
                    },
                },
            },
        },
    },
}


return {
    CONFIG = CONFIG,
}

---@class rm_animations
local ANIMATIONS <const> = {
    {
        COMMAND = "gentletip",
        DICT = "mech_loco_m@character@dutch@fancy@unarmed@idle@_variations",
        ANIM = "idle_b",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 2500,
        FLAG = 31
    },
    {
        COMMAND = "neutral",
        DICT = "mech_loco_m@character@nicholas_timmins@normal@unarmed@idle@variations@big_wave",
        ANIM = "idle",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 3000,
        FLAG = 31
    },
    {
        COMMAND = "discreettip",
        DICT = "mech_loco_m@character@arthur@fidgets@hat@normal@unarmed@normal@left_hand",
        ANIM = "hat_lhand_b",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 1500,
        FLAG = 31
    },
    {
        COMMAND = "sarcastic",
        DICT = "ai_gestures@gen_female@standing@silent",
        ANIM = "silent_neutral_wave_r_001",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 1500,
        FLAG = 31
    },
    {
        COMMAND = "discreetwave",
        DICT = "ai_gestures@gen_female@standing@silent",
        ANIM = "silent_flirty_greet_r_001",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 1500,
        FLAG = 31
    },
    {
        COMMAND = "smooth",
        DICT = "ai_gestures@arthur@standing@speaker@rt_hand",
        ANIM = "greet_cocky_l_003",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 1000,
        FLAG = 31
    },
    {
        COMMAND = "nod",
        DICT = "ai_gestures@gen_female@standing@silent",
        ANIM = "silent_neutral_greet_f_002",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 1500,
        FLAG = 31
    },
    {
        COMMAND = "point",
        DICT = "script_common@other@unapproved",
        ANIM = "loop_0",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 30
    },
    {
        COMMAND = "cry",
        DICT = "script_common@other@unapproved",
        ANIM = "cry_loop",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 1
    },
    {
        COMMAND = "wasted",
        DICT = "script_re@crashed_wagon",
        ANIM = "male_drunk_action",
        BLEND_IN = 1.0,
        BLEND_OUT = 1.0,
        DURATION = 9999999999,
        FLAG = 1
    },
    {
        COMMAND = "captured",
        DICT = "script_proc@robberies@unapproved",
        ANIM = "stand_prisoner_cell_idle_a",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 1
    },
    {
        COMMAND = "cover",
        DICT = "script_common@other@unapproved",
        ANIM = "windowwasher_shot_reaction",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 2
    },
    {
        COMMAND = "search",
        DICT = "script_common@other@unapproved",
        ANIM = "guard_patrol@idle_e",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 1
    },
    {
        COMMAND = "sweat",
        DICT = "mech_loco_m@generic@fidgets@hot",
        ANIM = "both_hands_fanning_02",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 999999999,
        FLAG = 31
    },
    {
        COMMAND = "cold",
        DICT = "script_re@lost_man",
        ANIM = "idle",
        BLEND_IN = 1.0,
        BLEND_OUT = 1.0,
        DURATION = 999999999,
        FLAG = 31
    },

    -- Injured
    {
        COMMAND = "arm",
        DICT = "mech_loco_m@generic@injured@unarmed@right_arm@idle",
        ANIM = "idle",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 31
    },
    {
        COMMAND = "shoulder",
        DICT = "mech_loco_m@character@arthur@injured@left_shoulder@unarmed@idle",
        ANIM = "idle",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999,
        FLAG = 31
    },
    {
        COMMAND = "leg",
        DICT = "mech_loco_m@generic@injured@unarmed@left_leg@idle",
        ANIM = "idle",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 31
    },
    {
        COMMAND = "chest",
        DICT = "mech_loco_m@generic@injured@unarmed@chest@idle",
        ANIM = "idle",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 31
    },
    {
        COMMAND = "head",
        DICT = "mech_loco_m@generic@injured@unarmed@head@idle",
        ANIM = "idle",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 31
    },
    {
        COMMAND = "neck",
        DICT = "mech_loco_m@generic@injured@unarmed@critical_neck_right@idle",
        ANIM = "idle",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 1
    },
    {
        COMMAND = "back",
        DICT = "mech_loco_m@generic@injured@unarmed@critical_back@idle",
        ANIM = "idle",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 1
    },
    {
        COMMAND = "sick",
        DICT = "amb_wander@upperbody_idles@sick@both_arms@male_a@idle_a",
        ANIM = "idle_c",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 31
    },
    {
        COMMAND = "unwell",
        DICT = "script_story@fin2@ig@ig2_chase_cleet",
        ANIM = "civilian_injured_loop_a_civilian",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999,
        FLAG = 1
    },
    {
        COMMAND = "scratch",
        DICT = "mech_loco_m@generic@special@unarmed@itchy@idle",
        ANIM = "idle_intro",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 31
    },
    {
        COMMAND = "vomit",
        DICT = "amb_misc@world_human_vomit@male_a@idle_b",
        ANIM = "idle_f",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 99999999,
        FLAG = 1
    },
    {
        COMMAND = "collapse",
        DICT = "script_story@gua2@ig@ig_walkcollapse",
        ANIM = "gua2_collapse_rf",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 1
    },
    {
        COMMAND = "suffer1",
        DICT = "mech_loco_m@generic@injured@unarmed@critical_ground@idle@_variations@d",
        ANIM = "idle",
        BLEND_IN = 9.0,
        BLEND_OUT = 9.0,
        DURATION = 9999999999,
        FLAG = 1
    },
    {
        COMMAND = "suffer2",
        DICT = "mech_loco_m@generic@injured@unarmed@critical_ground@idle@_variations@e",
        ANIM = "idle",
        BLEND_IN = 9.0,
        BLEND_OUT = 9.0,
        DURATION = 9999999999,
        FLAG = 1
    },

    -- Standing
    {
        COMMAND = "nervous",
        DICT = "script_rc@rmyr4@unapproved@scared",
        ANIM = "idle",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 31
    },
    {
        COMMAND = "guard",
        DICT = "script_common@other@unapproved",
        ANIM = "stand_guard@idle_a",
        BLEND_IN = 1.0,
        BLEND_OUT = 1.0,
        DURATION = 9999999999,
        FLAG = 1
    },
    {
        COMMAND = "hyped",
        DICT = "script_common@other@unapproved",
        ANIM = "protest_female_idle_c",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 1
    },
    {
        COMMAND = "seductive",
        DICT = "amb_work@world_human_whore@female_a@wip_base",
        ANIM = "wip_base",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 1
    },
    {
        COMMAND = "confused",
        DICT = "script_common@other@unapproved",
        ANIM = "security_look_around@idle_c",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 1
    },
    {
        COMMAND = "giveup",
        DICT = "script_common@other@unapproved",
        ANIM = "idle_d",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 1
    },
    {
        COMMAND = "waiting",
        DICT = "script_common@other@unapproved",
        ANIM = "door_deal_wait_buyer",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 9999999999,
        FLAG = 1
    },
    {
        COMMAND = "crossarms",
        DICT = "mech_skin@buck@butcher",
        ANIM = "trans_to_stoic_butcher",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 999999999,
        FLAG = 30
    },
    {
        COMMAND = "handsside",
        DICT = "script_amb@stores@store_waist_stern_guy",
        ANIM = "base",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 999999999,
        FLAG = 31
    },
    {
        COMMAND = "impatient",
        DICT = "amb_misc@world_human_waiting_impatient@male_d@idle_b",
        ANIM = "idle_d",
        BLEND_IN = 1.0,
        BLEND_OUT = 1.0,
        DURATION = 999999999,
        FLAG = 1
    },
    {
        COMMAND = "drunk",
        DICT = "mech_loco_m@generic@drunk@unarmed@idle_moderate_drunk",
        ANIM = "idle",
        BLEND_IN = 1.0,
        BLEND_OUT = 1.0,
        DURATION = 999999999,
        FLAG = 1
    },
    {
        COMMAND = "ready",
        DICT = "ai_react@react_look_layers@base_emotions@brave",
        ANIM = "direct",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 999999999,
        FLAG = 1
    },
    {
        COMMAND = "angry",
        DICT = "ai_react@react_look_layers@base_emotions@angry",
        ANIM = "direct",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 999999999,
        FLAG = 1
    },
    {
        COMMAND = "sad",
        DICT = "mech_loco_m@generic@emotion@unarmed@sad@idle",
        ANIM = "idle",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 999999999,
        FLAG = 1
    },

    -- Dancing (LOCK_X = false so the player can move freely while dancing)
    {
        COMMAND = "dance1",
        DICT = "amb_misc@world_human_drunk_dancing@male@male_b@idle_a",
        ANIM = "idle_b",
        BLEND_IN = 2.0,
        BLEND_OUT = 2.0,
        DURATION = -1,
        FLAG = 1,
        LOCK_X = false
    },
    {
        COMMAND = "dance2",
        DICT = "script_mp@emotes@dance@drunk@b@male@unarmed@full",
        ANIM = "fullbody",
        BLEND_IN = 2.0,
        BLEND_OUT = 2.0,
        DURATION = -1,
        FLAG = 1,
        LOCK_X = false
    },
    {
        COMMAND = "dance3",
        DICT = "script_mp@emotes@dance@confident@b@male@unarmed@full",
        ANIM = "fullbody",
        BLEND_IN = 2.0,
        BLEND_OUT = 2.0,
        DURATION = -1,
        FLAG = 1,
        LOCK_X = false
    },
    {
        COMMAND = "dance4",
        DICT = "script_mp@emotes@dance@wild@b@male@unarmed@full",
        ANIM = "fullbody",
        BLEND_IN = 2.0,
        BLEND_OUT = 2.0,
        DURATION = -1,
        FLAG = 1,
        LOCK_X = false
    },
    {
        COMMAND = "dance5",
        DICT = "script_mp@emotes@dance@drunk@a@male@unarmed@full",
        ANIM = "fullbody",
        BLEND_IN = 2.0,
        BLEND_OUT = 2.0,
        DURATION = -1,
        FLAG = 1,
        LOCK_X = false
    },
    {
        COMMAND = "dance6",
        DICT = "script_mp@emotes@dance@old@a@male@unarmed@full",
        ANIM = "fullbody",
        BLEND_IN = 2.0,
        BLEND_OUT = 2.0,
        DURATION = -1,
        FLAG = 1,
        LOCK_X = false
    },
    {
        COMMAND = "dance7",
        DICT = "script_mp@emotes@dance@confident@b@male@unarmed@full",
        ANIM = "fullbody",
        BLEND_IN = 2.0,
        BLEND_OUT = 2.0,
        DURATION = -1,
        FLAG = 1,
        LOCK_X = false
    },
    {
        COMMAND = "dance8",
        DICT = "script_mp@emotes@dance@carefree@a@male@unarmed@full",
        ANIM = "fullbody",
        BLEND_IN = 2.0,
        BLEND_OUT = 2.0,
        DURATION = -1,
        FLAG = 1,
        LOCK_X = false
    },
    {
        COMMAND = "dance9",
        DICT = "script_mp@emotes@dance@awkward@a@male@unarmed@full",
        ANIM = "fullbody",
        BLEND_IN = 2.0,
        BLEND_OUT = 2.0,
        DURATION = -1,
        FLAG = 1,
        LOCK_X = false
    },
    {
        COMMAND = "thanks",
        DICT = "script_common@thank@female@unapproved",
        ANIM = "thank_c",
        BLEND_IN = 1.0,
        BLEND_OUT = 1.0,
        DURATION = 6000,
        FLAG = 1
    },
    {
        COMMAND = "please",
        DICT = "script_re@lost_man",
        ANIM = "i_made_it_thanks_again",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 2800,
        FLAG = 1
    },
    {
        COMMAND = "relax",
        DICT = "mech_loco_m@character@arthur@calming@unarmed@idle",
        ANIM = "idle",
        BLEND_IN = 1.0,
        BLEND_OUT = -1.0,
        DURATION = 999999999,
        FLAG = 1
    },
}

---@class rm_complex_animations
local COMPLEX_ANIMATIONS = {
    {
        COMMAND = "sleep",
        FEMALE = {
            { TYPE = "anim", DICT = "amb_rest@prop_human_sleep_leanto_tent@front@female_a@stand_enter", ANIM = "enter_front_lf",             BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1, WAIT = 11000 },
            { TYPE = "anim", DICT = "amb_rest@prop_human_sleep_leanto_tent@front@female_a@trans",       ANIM = "a_trans_sleep_ground_arm_a", BLEND_IN = 8.0, BLEND_OUT = -8.0, DURATION = 9999999999, FLAG = 1, WAIT = 18000 },
            { TYPE = "anim", DICT = "amb_rest@world_human_sleep_ground@arm@female_a@idle_a",            ANIM = "idle_c",                     BLEND_IN = 8.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1 },
        },
        MALE = {
            { TYPE = "anim", DICT = "amb_rest@world_human_sleep_ground@arm@player_temp@enter", ANIM = "enter_right", BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1, WAIT = 18000 },
            { TYPE = "anim", DICT = "amb_rest@world_human_sleep_ground@arm@male_b@idle_c",     ANIM = "idle_g",      BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1 },
        },
    },
    {
        COMMAND = "sit",
        FEMALE = {
            { TYPE = "anim", DICT = "amb_rest@prop_human_sleep_leanto_tent@front@female_a@stand_enter", ANIM = "enter_front_lf", BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1, WAIT = 11500 },
            { TYPE = "anim", DICT = "amb_rest@prop_human_sleep_leanto_tent@left@female_a@base",         ANIM = "base",           BLEND_IN = 8.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1 },
        },
        MALE = {
            { TYPE = "anim", DICT = "amb_camp@world_camp_jack_es_fire_sit_ground@male_a@stand_enter", ANIM = "enter_back_lf", BLEND_IN = 8.0, BLEND_OUT = -8.0, DURATION = 9999999999, FLAG = 1, WAIT = 8800 },
            { TYPE = "anim", DICT = "amb_camp@world_camp_jack_es_fire_sit_ground@male_a@idle_d",      ANIM = "idle_j",        BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1 },
        },
    },
    {
        COMMAND = "hostage",
        STEPS = {
            { TYPE = "anim", DICT = "mini_hostage", ANIM = "gped_host_knl_pre", BLEND_IN = 1.0, BLEND_OUT = -8.0, DURATION = 9999999999, FLAG = 1, WAIT = 3500 },
            { TYPE = "anim", DICT = "mini_hostage", ANIM = "gped_host_knl_idl", BLEND_IN = 8.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1 },
        },
    },
    {
        COMMAND = "surrender",
        STEPS = {
            { TYPE = "anim", DICT = "mech_busted@unapproved", ANIM = "idle_2_hands_up", BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1, WAIT = 4000 },
            { TYPE = "anim", DICT = "mech_busted@unapproved", ANIM = "idle_b",          BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1 },
        },
    },
    {
        COMMAND = "handsup",
        FEMALE = {
            { TYPE = "anim", DICT = "mech_loco_f@generic@reaction@handsup@unarmed@normal", ANIM = "loop", BLEND_IN = 1.0, BLEND_OUT = 1.0, DURATION = 9999999999, FLAG = 31 },
        },
        MALE = {
            { TYPE = "anim", DICT = "mech_loco_m@generic@reaction@handsup@unarmed@tough", ANIM = "loop", BLEND_IN = 1.0, BLEND_OUT = 1.0, DURATION = 9999999999, FLAG = 31 },
        },
    },
    {
        COMMAND = "mourn",
        STEPS = {
            { TYPE = "anim", DICT = "script_common@other@unapproved",                                     ANIM = "hostage_fallstoknees", BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1, WAIT = 1400 },
            { TYPE = "anim", DICT = "script_proc@robberies@shop@rhodes@gunsmith@inside_basement_reshoot", ANIM = "cry_loop_captor",      BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1 },
        },
    },
    {
        COMMAND = "callover",
        FEMALE = {
            { TYPE = "anim", DICT = "script_common@wave@female@unapproved", ANIM = "wave_b", BLEND_IN = 1.0, BLEND_OUT = 1.0, DURATION = 5500, FLAG = 1 },
        },
        MALE = {
            { TYPE = "anim", DICT = "script_common@wave@male@unapproved", ANIM = "wave_idle_c", BLEND_IN = 1.0, BLEND_OUT = 1.0, DURATION = 6000, FLAG = 1 },
        },
    },
    {
        COMMAND = "gesture",
        FEMALE = {
            { TYPE = "anim", DICT = "script_common@wave@female@unapproved", ANIM = "wave_a", BLEND_IN = 1.0, BLEND_OUT = 1.0, DURATION = 4000, FLAG = 1 },
        },
        MALE = {
            { TYPE = "anim", DICT = "script_common@wave@male@unapproved", ANIM = "wave_idle_d", BLEND_IN = 1.0, BLEND_OUT = 1.0, DURATION = 3000, FLAG = 1 },
        },
    },
    {
        COMMAND = "yield",
        STEPS = {
            { TYPE = "anim", DICT = "script_common@crowd_control@unapproved@a@intro",       ANIM = "intro_ped_d", BLEND_IN = 1.0, BLEND_OUT = 1.0,  DURATION = 3000,       FLAG = 1, WAIT = 3000 },
            { TYPE = "anim", DICT = "script_common@crowd_control@unapproved@a@ped_d@cower", ANIM = "cower",       BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1 },
        },
    },
    {
        COMMAND = "service",
        STEPS = {
            { TYPE = "anim", DICT = "script_common@service_bell@unapproved", ANIM = "enter", BLEND_IN = 1.0, BLEND_OUT = -8.0, DURATION = 9999999999, FLAG = 1, WAIT = 800 },
            { TYPE = "anim", DICT = "script_common@service_bell@unapproved", ANIM = "base",  BLEND_IN = 8.0, BLEND_OUT = 1.0,  DURATION = 2000,       FLAG = 1 },
        },
    },
    {
        COMMAND = "knock",
        FEMALE = {
            { TYPE = "anim", DICT = "amb_misc@world_human_door_knock@male_a@idle_c", ANIM = "idle_h", BLEND_IN = 1.0, BLEND_OUT = 1.0, DURATION = 9999999999, FLAG = 1 },
        },
        MALE = {
            { TYPE = "anim", DICT = "amb_misc@world_human_door_knock@male_a@idle_c", ANIM = "idle_g", BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1 },
        },
    },
    {
        COMMAND = "piss",
        FEMALE = {
            { TYPE = "anim", DICT = "ai_gestures@arthur@standing@speaker", ANIM = "embarassed_nod_f_001", BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 2000, FLAG = 1 },
        },
        MALE = {
            { TYPE = "scenario", HASH = "world_human_pee", DURATION = 9999999999, PROP = true },
        },
    },
    {
        COMMAND = "dying",
        STEPS = {
            { TYPE = "anim", DICT = "amb_misc@world_human_indian_sick_dying@male@male_b@enter",  ANIM = "enter",  BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1, WAIT = 7000 },
            { TYPE = "anim", DICT = "amb_misc@world_human_indian_sick_dying@male@male_a@idle_a", ANIM = "idle_c", BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1 },
        },
    },
    {
        COMMAND = "feminine",
        STEPS = {
            { TYPE = "anim", DICT = "mech_loco_f@character@karen@normal@unarmed@idle", ANIM = "idle_intro", BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 1000,     FLAG = 1, WAIT = 1000 },
            { TYPE = "anim", DICT = "mech_loco_f@character@karen@normal@unarmed@idle", ANIM = "idle",       BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 99999999, FLAG = 1 },
        },
    },
    {
        COMMAND = "careless",
        FEMALE = {
            { TYPE = "anim", DICT = "mech_loco_f@character@abigail@normal@unarmed@idle@_variations@a", ANIM = "idle", BLEND_IN = 1.0, BLEND_OUT = 1.0, DURATION = 9999999999, FLAG = 1 },
        },
        MALE = {
            { TYPE = "anim", DICT = "script_common@other@unapproved", ANIM = "drug_dealer_idle_d", BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1 },
        },
    },
    {
        COMMAND = "handsbelt",
        STEPS = {
            { TYPE = "anim", DICT = "mech_loco_m@character@arthur@casual@unarmed@normal_to_casual", ANIM = "idle_transition", BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 2500,       FLAG = 1, WAIT = 2500 },
            { TYPE = "anim", DICT = "mech_loco@generic@spectator@b@streamed_idles",                 ANIM = "idle_c",          BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 9999999999, FLAG = 1 },
        },
    },
    {
        COMMAND = "badass",
        FEMALE = {
            { TYPE = "anim", DICT = "amb_rest@world_human_badass@male_a@idle_b", ANIM = "idle_f", BLEND_IN = 1.0, BLEND_OUT = 1.0, DURATION = 5500,       FLAG = 1, WAIT = 5500 },
            { TYPE = "anim", DICT = "amb_rest@world_human_badass@male_a@idle_a", ANIM = "idle_a", BLEND_IN = 1.0, BLEND_OUT = 1.0, DURATION = 9999999999, FLAG = 1 },
        },
        MALE = {
            { TYPE = "anim",     DICT = "amb_rest@world_human_badass@male_a@idle_b", ANIM = "idle_f", BLEND_IN = 1.0, BLEND_OUT = 1.0, DURATION = 6000, FLAG = 1, WAIT = 6000 },
            { TYPE = "clear" },
            { TYPE = "scenario", HASH = "WORLD_HUMAN_BADASS",                        DURATION = -1,   PROP = false },
        },
    },
    {
        COMMAND = "notepad",
        STEPS = {
            { TYPE = "scenario", HASH = "world_human_write_notebook", DURATION = 9999999999, PROP = true },
        },
    },
    {
        COMMAND = "mirror",
        STEPS = {
            { TYPE = "clear" },
            { TYPE = "scenario", HASH = "WORLD_HUMAN_POCKET_MIRROR", DURATION = -1, PROP = false },
        },
    },
    {
        COMMAND = "clap",
        FEMALE = {
            { TYPE = "anim", DICT = "ai_gestures@gen_female@standing@silent@script", ANIM = "silent_clap_f_001", BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 999999999, FLAG = 1 },
        },
        MALE = {
            { TYPE = "anim", DICT = "ai_gestures@gen_male@standing@silent@script", ANIM = "silent_clap_m_001", BLEND_IN = 1.0, BLEND_OUT = -1.0, DURATION = 999999999, FLAG = 1 },
        },
    },
}

return {
    ANIMATIONS = ANIMATIONS,
    COMPLEX_ANIMATIONS = COMPLEX_ANIMATIONS,
}

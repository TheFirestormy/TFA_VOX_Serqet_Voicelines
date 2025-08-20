TFAVOX_Models = TFAVOX_Models or {}
local model = "models/pm/sekt_pm.mdl" --<< REPLACE THIS WITH YOUR TARGET MODEL, USE FORWARD SLASHES

--[[CONVENIENCE FUNCTIONS, DO NOT EDIT FROM THIS POINT UNTIL CLEAR ]]--

local tmptbl = string.Split(model,"/")
local mdlprefix = tmptbl[#tmptbl] or model
mdlprefix = string.Replace(mdlprefix,".mdl","")
if model == "models/player/player.mdl" then return end

--[[CLEAR]]--

--[[
--To give VOX sound paths, I recommend TFAVOX_GenerateSound.
--TFAVOX_GenerateSound( mdlprefix, "sound_event_here", { "path/to/sound1.wav", "path/to/sound2.wav", "path/to/sound3.wav" }
--You may have as many sounds as you want in the GenerateSound table ^^
--Please have at least one.

--If you insist on doing things manually, ['sound'] can be a TABLE | { "sound1.wav", "sound2.wav", "sound3.wav" } | or a STRING  | "snd" |
--Manual sounds require soundscripts.

--TFA VOX will now automatically calculate delays.
--If you need to manually override, feed ['delay'] with a TABLE | {min,max} | or a NUMBER | 999 |
]]--

TFAVOX_Models[model] = {
	['main'] = {--subtable id
		['crithit'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "crithit", { "serqet/hit_h11.ogg", "serqet/hit_h2.ogg", "serqet/hit_h3.ogg", "serqet/hit_h4.ogg"} )
		},
		['death'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "death", { "serqet/death.ogg"} )
		},
		['spawn'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spawn", { "serqet/get.ogg", "serqet/choose.ogg", "serqet/choose2.ogg", } )
		},
		['pickup'] = {
			['delay']= 7,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "pickup", { "serqet/equip.ogg" } )
		},
	},
	['murder'] = {
		['generic'] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdgener", { "serqet/ko1.ogg", "serqet/ko2.ogg", } )
		}
	},
	['damage'] = {
		[HITGROUP_GENERIC] = {
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_GENERIC", { "serqet/hit_l1.ogg", "serqet/hit_l2.ogg", "serqet/hit_l3.ogg", "serqet/hit_l4.ogg" } )
		}
	},
	['callouts'] = {
	    ['chat'] = { -- callout classname in these quotes
			['name'] = "Chat",--Callout friendly name ( what you see in the wheel )
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "chat", { "serqet/pro1.ogg", "serqet/pro2.ogg", "serqet/pro3.ogg", "serqet/relax.ogg", "serqet/idle2.ogg", "serqet/talk1.ogg", "serqet/talk2.ogg", "serqet/talk4.ogg", "serqet/talk5.ogg", "serqet/greet.ogg", "serqet/greet_1.ogg", "serqet/greet_2.ogg", "serqet/greet_3.ogg" } ) -- done
		},
		['taunt'] = { -- callout classname in these quotes
			['name'] = "Taunt",--Callout friendly name ( what you see in the wheel )
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "taunt", { "serqet/down.ogg", "serqet/battle2.ogg", "serqet/battle4.ogg" } )
		},
		['Introduce'] = { -- callout classname in these quotes
			['name'] = "Introduce",--Callout friendly name ( what you see in the wheel )
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Introduce", { "serqet/get.ogg", } )
		},
		['move forward'] = { -- callout classname in these quotes
			['name'] = "Move forward",--Callout friendly name ( what you see in the wheel )
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "move forward", { "serqet/core.ogg", } )
		},
		['Idle'] = { -- callout classname in these quotes
			['name'] = "Idle",--Callout friendly name ( what you see in the wheel )
			['delay']= nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Idle", { "serqet/idle2.ogg", } )
		}
	}
}
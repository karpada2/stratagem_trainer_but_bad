extends Node

<<<<<<< HEAD
var stratagems: Dictionary = {
	"sentries": {
		"machine gun": [DOWN, RIGHT, UP, LEFT]
		}
	}
=======
var sentries: Dictionary = {
	"hmg emplacement" : [inputs.DOWN, inputs.UP, inputs.LEFT, inputs.RIGHT, inputs.RIGHT, inputs.LEFT],
	"shield generator relay" : [inputs.DOWN, inputs.DOWN, inputs.LEFT, inputs.RIGHT, inputs.LEFT, inputs.RIGHT],
	"tesla tower" : [inputs.DOWN, inputs.UP, inputs.RIGHT, inputs.UP, inputs.LEFT, inputs.RIGHT],
	"anti-personnel minefield" : [inputs.DOWN, inputs.LEFT, inputs.DOWN, inputs.UP, inputs.RIGHT],
	"incendiary mines" : [inputs.DOWN, inputs.LEFT, inputs.LEFT, inputs.DOWN],
	"machine gun sentry" : [inputs.DOWN, inputs.UP, inputs.RIGHT, inputs.RIGHT, inputs.UP],
	"gatling sentry" : [inputs.DOWN, inputs.UP, inputs.RIGHT, inputs.LEFT],
	"mortar sentry" : [inputs.DOWN, inputs.UP, inputs.RIGHT, inputs.RIGHT, inputs.DOWN],
	"autocannon sentry" : [inputs.DOWN, inputs.UP, inputs.RIGHT, inputs.UP, inputs.LEFT, inputs.UP],
	"rocket sentry" : [inputs.DOWN, inputs.UP, inputs.RIGHT, inputs.RIGHT, inputs.LEFT],
	"ems mortar sentry" : [inputs.DOWN, inputs.UP, inputs.RIGHT, inputs.DOWN, inputs.RIGHT],
	"anti-tank mines" : [inputs.DOWN, inputs.LEFT, inputs.UP, inputs.UP]
}

var support_weapons: Dictionary = {
	"machine gun" : [inputs.DOWN, inputs.LEFT, inputs.DOWN, inputs.UP, inputs.RIGHT],
	"anti-material rifle" : [inputs.DOWN, inputs.LEFT, inputs.RIGHT, inputs.UP, inputs.DOWN],
	"stalwart" : [inputs.DOWN, inputs.LEFT, inputs.DOWN, inputs.UP, inputs.UP, inputs.LEFT],
	"expendable anti-tank" : [inputs.DOWN, inputs.DOWN, inputs.LEFT, inputs.UP, inputs.RIGHT],
	"recoilless rifle" : [inputs.DOWN, inputs.LEFT, inputs.RIGHT, inputs.RIGHT, inputs.LEFT],
	"flamethrower" : [inputs.DOWN, inputs.LEFT, inputs.UP, inputs.DOWN, inputs.UP],
	"autocannon" : [inputs.DOWN, inputs.LEFT, inputs.DOWN, inputs.UP, inputs.UP, inputs.RIGHT],
	"railgun" : [inputs.DOWN, inputs.RIGHT, inputs.DOWN, inputs.UP, inputs.LEFT, inputs.RIGHT],
	"spear" : [inputs.DOWN, inputs.DOWN, inputs.UP, inputs.DOWN, inputs.DOWN],
	"grenade launcher" : [inputs.DOWN, inputs.LEFT, inputs.UP, inputs.LEFT, inputs.DOWN],
	"laser cannon" : [inputs.DOWN, inputs.LEFT, inputs.DOWN, inputs.UP, inputs.LEFT],
	"arc thrower" : [inputs.DOWN, inputs.RIGHT, inputs.DOWN, inputs.UP, inputs.LEFT, inputs.LEFT],
	"commando" : [inputs.DOWN, inputs.LEFT, inputs.UP, inputs.DOWN, inputs.RIGHT],
	"sterilizer" : [inputs.DOWN, inputs.LEFT, inputs.UP, inputs.DOWN, inputs.LEFT]
}

var backpacks: Dictionary = {
	"supply pack" : [inputs.DOWN, inputs.LEFT, inputs.DOWN, inputs.UP, inputs.UP, inputs.DOWN],
	"guard dog rover" : [inputs.DOWN, inputs.UP, inputs.LEFT, inputs.UP, inputs.RIGHT, inputs.RIGHT],
	"ballistic shield backpack" : [inputs.DOWN, inputs.LEFT, inputs.DOWN, inputs.DOWN, inputs.UP, inputs.LEFT],
	"shield generator pack" : [inputs.DOWN, inputs.UP, inputs.LEFT, inputs.RIGHT, inputs.LEFT, inputs.RIGHT],
	"guard dog" : [inputs.DOWN, inputs.UP, inputs.LEFT, inputs.UP, inputs.RIGHT, inputs.DOWN],
	"guard dog dog breath" : [inputs.DOWN, inputs.UP, inputs.LEFT, inputs.UP, inputs.RIGHT, inputs.UP]
}

var orbitals: Dictionary = {
	"orbital gatling barrage" : [inputs.RIGHT, inputs.DOWN, inputs.LEFT, inputs.UP, inputs.UP],
	"orbital airburst strike" : [inputs.RIGHT, inputs.RIGHT, inputs.RIGHT],
	"orbital 120mm he barrage" : [inputs.RIGHT, inputs.RIGHT, inputs.DOWN, inputs.LEFT, inputs.RIGHT, inputs.DOWN],
	"orbital 380mm he barrage" : [inputs.RIGHT, inputs.DOWN, inputs.UP, inputs.UP, inputs.LEFT, inputs.DOWN, inputs.DOWN],
	"orbital walking barrage" : [inputs.RIGHT, inputs.DOWN, inputs.RIGHT, inputs.DOWN, inputs.RIGHT, inputs.DOWN],
	"orbital laser strike" : [inputs.RIGHT, inputs.DOWN, inputs.UP, inputs.RIGHT, inputs.DOWN],
	"orbital railcannon strike" : [inputs.RIGHT, inputs.UP, inputs.DOWN, inputs.DOWN, inputs.RIGHT],
	"orbital precision strike" : [inputs.RIGHT, inputs.RIGHT, inputs.UP],
	"orbital gas strike" : [inputs.RIGHT, inputs.RIGHT, inputs.DOWN, inputs.RIGHT],
	"orbital ems strike" : [inputs.RIGHT, inputs.RIGHT, inputs.LEFT, inputs.DOWN],
	"orbital smoke strike" : [inputs.RIGHT, inputs.RIGHT, inputs.DOWN, inputs.UP],
	"orbital napalm barrage" : [inputs.RIGHT, inputs.RIGHT, inputs.DOWN, inputs.LEFT, inputs.RIGHT, inputs.UP]
}

var eagles: Dictionary = {
	"eagle rearm" : [inputs.UP, inputs.UP, inputs.LEFT, inputs.UP, inputs.RIGHT],
	"eagle strafing run" : [inputs.UP, inputs.RIGHT, inputs.RIGHT],
	"eagle airstrike" : [inputs.UP, inputs.RIGHT, inputs.DOWN, inputs.RIGHT],
	"eagle cluster bomb" : [inputs.UP, inputs.RIGHT, inputs.DOWN, inputs.DOWN, inputs.RIGHT],
	"eagle napalm airstrike" : [inputs.UP, inputs.RIGHT, inputs.DOWN, inputs.UP],
	"eagle smoke strike" : [inputs.UP, inputs.RIGHT, inputs.UP, inputs.DOWN],
	"eagle 110mm rocket pods" : [inputs.UP, inputs.RIGHT, inputs.UP, inputs.LEFT],
	"eagle 500kg bomb" : [inputs.UP, inputs.RIGHT, inputs.DOWN, inputs.DOWN, inputs.DOWN]
}

var exosuits: Dictionary = {
	"patriot exosuit" : [inputs.LEFT, inputs.DOWN, inputs.RIGHT, inputs.UP, inputs.LEFT, inputs.DOWN, inputs.DOWN],
	"emancipator exosuit" : [inputs.LEFT, inputs.DOWN, inputs.RIGHT, inputs.UP, inputs.LEFT, inputs.DOWN, inputs.UP]
}

var misc: Dictionary = {
	"sos beacon" : [inputs.UP, inputs.DOWN, inputs.RIGHT, inputs.UP],
	"reinforce" : [inputs.UP, inputs.DOWN, inputs.RIGHT, inputs.LEFT, inputs.UP],
	"upload data" : [inputs.LEFT, inputs.RIGHT, inputs.UP, inputs.UP, inputs.UP],
	"hellbomb" : [inputs.DOWN, inputs.UP, inputs.LEFT, inputs.DOWN, inputs.UP, inputs.RIGHT, inputs.DOWN, inputs.UP],
	"resupply" : [inputs.DOWN, inputs.DOWN, inputs.UP, inputs.RIGHT],
	"seaf artillery" : [inputs.RIGHT, inputs.UP, inputs.UP, inputs.DOWN],
	"global illumination flare" : [inputs.RIGHT, inputs.RIGHT, inputs.LEFT, inputs.LEFT]
}
>>>>>>> a92ccf8 (added all stratagems with codes to stratagems.gd)

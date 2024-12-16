extends Node

var sentries: Dictionary = {
	"tesla tower" : preload("res://assets/sprites/stratagem_icons/sentries/tesla tower.svg"),
	"shield generator relay" : preload("res://assets/sprites/stratagem_icons/sentries/shield generator relay.svg"),
	"rocket sentry" : preload("res://assets/sprites/stratagem_icons/sentries/rocket sentry.svg"),
	"mortar sentry" : preload("res://assets/sprites/stratagem_icons/sentries/mortar sentry.svg"),
	"machine gun sentry" : preload("res://assets/sprites/stratagem_icons/sentries/machine gun sentry.svg"),
	"incendiary mines" : preload("res://assets/sprites/stratagem_icons/sentries/incendiary mines.svg"),
	"hmg emplacement" : preload("res://assets/sprites/stratagem_icons/sentries/hmg emplacement.svg"),
	"gatling sentry" : preload("res://assets/sprites/stratagem_icons/sentries/gatling sentry.svg"),
	"flame sentry" : preload("res://assets/sprites/stratagem_icons/sentries/flame sentry.svg"),
	"ems mortar sentry" : preload("res://assets/sprites/stratagem_icons/sentries/ems mortar sentry.svg"),
	"autocannon sentry" : preload("res://assets/sprites/stratagem_icons/sentries/autocannon sentry.svg"),
	"anti-tank mines" : preload("res://assets/sprites/stratagem_icons/sentries/anti-tank mines.svg"),
	"anti-tank emplacement" : preload("res://assets/sprites/stratagem_icons/sentries/anti-tank emplacement.svg"),
	"anti-personnel minefield" : preload("res://assets/sprites/stratagem_icons/sentries/anti-personnel minefield.svg")
}


var support_weapons: Dictionary = {
	"sterilizer" : preload("res://assets/sprites/stratagem_icons/support_weapons/sterilizer.svg"),
	"stalwart" : preload("res://assets/sprites/stratagem_icons/support_weapons/stalwart.svg"),
	"spear" : preload("res://assets/sprites/stratagem_icons/support_weapons/spear.svg"),
	"recoilless rifle" : preload("res://assets/sprites/stratagem_icons/support_weapons/recoilless rifle.svg"),
	"railgun" : preload("res://assets/sprites/stratagem_icons/support_weapons/railgun.svg"),
	"quasar cannon" : preload("res://assets/sprites/stratagem_icons/support_weapons/quasar cannon.svg"),
	"machine gun" : preload("res://assets/sprites/stratagem_icons/support_weapons/machine gun.svg"),
	"laser cannon" : preload("res://assets/sprites/stratagem_icons/support_weapons/laser cannon.svg"),
	"heavy machine gun" : preload("res://assets/sprites/stratagem_icons/support_weapons/heavy machine gun.svg"),
	"grenade launcher" : preload("res://assets/sprites/stratagem_icons/support_weapons/grenade launcher.svg"),
	"flamethrower" : preload("res://assets/sprites/stratagem_icons/support_weapons/flamethrower.svg"),
	"expendable anti-tank" : preload("res://assets/sprites/stratagem_icons/support_weapons/expendable anti-tank.svg"),
	"commando" : preload("res://assets/sprites/stratagem_icons/support_weapons/commando.svg"),
	"autocannon" : preload("res://assets/sprites/stratagem_icons/support_weapons/autocannon.svg"),
	"arc thrower" : preload("res://assets/sprites/stratagem_icons/support_weapons/arc thrower.svg"),
	"anti-materiel rifle" : preload("res://assets/sprites/stratagem_icons/support_weapons/anti-materiel rifle.svg"),
	"airburst rocket launcher" : preload("res://assets/sprites/stratagem_icons/support_weapons/airburst rocket launcher.svg")
}


var backpacks: Dictionary = {
	"supply pack" : preload("res://assets/sprites/stratagem_icons/backpacks/supply pack.svg"),
	"shield generator pack" : preload("res://assets/sprites/stratagem_icons/backpacks/shield generator pack.svg"),
	"jump pack" : preload("res://assets/sprites/stratagem_icons/backpacks/jump pack.svg"),
	"guard dog" : preload("res://assets/sprites/stratagem_icons/backpacks/guard dog.svg"),
	"guard dog rover" : preload("res://assets/sprites/stratagem_icons/backpacks/guard dog rover.svg"),
	"guard dog dog breath" : preload("res://assets/sprites/stratagem_icons/backpacks/guard dog dog breath.svg"),
	"directional shield" : preload("res://assets/sprites/stratagem_icons/backpacks/directional shield.svg"),
	"ballistic shield backpack" : preload("res://assets/sprites/stratagem_icons/backpacks/ballistic shield backpack.svg")
}


var orbitals: Dictionary = {
	"orbital walking barrage" : preload("res://assets/sprites/stratagem_icons/orbitals/orbital walking barrage.svg"),
	"orbital smoke strike" : preload("res://assets/sprites/stratagem_icons/orbitals/orbital smoke strike.svg"),
	"orbital railcannon strike" : preload("res://assets/sprites/stratagem_icons/orbitals/orbital railcannon strike.svg"),
	"orbital precision strike" : preload("res://assets/sprites/stratagem_icons/orbitals/orbital precision strike.svg"),
	"orbital napalm barrage" : preload("res://assets/sprites/stratagem_icons/orbitals/orbital napalm barrage.svg"),
	"orbital laser" : preload("res://assets/sprites/stratagem_icons/orbitals/orbital laser.svg"),
	"orbital gatling barrage" : preload("res://assets/sprites/stratagem_icons/orbitals/orbital gatling barrage.svg"),
	"orbital gas strike" : preload("res://assets/sprites/stratagem_icons/orbitals/orbital gas strike.svg"),
	"orbital ems strike" : preload("res://assets/sprites/stratagem_icons/orbitals/orbital ems strike.svg"),
	"orbital airburst strike" : preload("res://assets/sprites/stratagem_icons/orbitals/orbital airburst strike.svg"),
	"orbital 380mm he barrage" : preload("res://assets/sprites/stratagem_icons/orbitals/orbital 380mm he barrage.svg"),
	"orbital 120mm he barrage" : preload("res://assets/sprites/stratagem_icons/orbitals/orbital 120mm he barrage.svg")
}


var eagles: Dictionary = {
	"eagle strafing run" : preload("res://assets/sprites/stratagem_icons/eagles/eagle strafing run.svg"),
	"eagle smoke strike" : preload("res://assets/sprites/stratagem_icons/eagles/eagle smoke strike.svg"),
	"eagle napalm airstrike" : preload("res://assets/sprites/stratagem_icons/eagles/eagle napalm airstrike.svg"),
	"eagle cluster bomb" : preload("res://assets/sprites/stratagem_icons/eagles/eagle cluster bomb.svg"),
	"eagle airstrike" : preload("res://assets/sprites/stratagem_icons/eagles/eagle airstrike.svg"),
	"eagle 500kg bomb" : preload("res://assets/sprites/stratagem_icons/eagles/eagle 500kg bomb.svg"),
	"eagle 110mm rocket pods" : preload("res://assets/sprites/stratagem_icons/eagles/eagle 110mm rocket pods.svg")
}


var exosuits: Dictionary = {
	"patriot exosuit" : preload("res://assets/sprites/stratagem_icons/exosuits/patriot exosuit.svg"),
	"emancipator exosuit" : preload("res://assets/sprites/stratagem_icons/exosuits/emancipator exosuit.svg")
}


var misc: Dictionary = {
	"upload data" : preload("res://assets/sprites/stratagem_icons/misc/upload data.svg"),
	"sos beacon" : preload("res://assets/sprites/stratagem_icons/misc/sos beacon.svg"),
	"seaf artillery" : preload("res://assets/sprites/stratagem_icons/misc/seaf artillery.svg"),
	"resupply" : preload("res://assets/sprites/stratagem_icons/misc/resupply.svg"),
	"reinforce" : preload("res://assets/sprites/stratagem_icons/misc/reinforce.svg"),
	"orbital illumination flare" : preload("res://assets/sprites/stratagem_icons/misc/orbital illumination flare.svg"),
	"hellbomb" : preload("res://assets/sprites/stratagem_icons/misc/hellbomb.svg"),
	"eagle rearm" : preload("res://assets/sprites/stratagem_icons/misc/eagle rearm.svg"),
	"sssd delivery" : preload("res://assets/sprites/stratagem_icons/misc/sssd delivery.svg")
}

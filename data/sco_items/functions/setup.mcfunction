#>sco_items:setup
#@within tag/function load

scoreboard objectives add lightning_hammer_holding_time dummy
scoreboard objectives add crows_sorrow_cooldown dummy
scoreboard objectives add crows_sorrow_count dummy
scoreboard objectives add breake_shield_hit custom:damage_blocked_by_shield
scoreboard objectives add using_damage_time.chest dummy
scoreboard objectives add hidden_cover.time dummy
scoreboard objectives add sneak_moving custom:crouch_one_cm
scoreboard objectives add moving custom:walk_one_cm
scoreboard objectives add trigger_death deathCount
scoreboard objectives add cure_arrow dummy
scoreboard objectives add corpse_daemon.cooldown dummy
scoreboard objectives add sco_items.configs dummy

#>
#@internal
#declare storage sco_items:data

#>
#@within sco_items:**
#declare tag item_function.

#>
#@wihtin sco_items:item_functions/lightning_hammer/**
    #declare score_holder #lightning_hammer.charge_time
    #declare score_holder #lightning_hammer.set_cooltime
scoreboard players set #lightning_hammer.charge_time sco_items.configs 40
scoreboard players set #lightning_hammer.set_cooltime sco_items.configs -80


#>
#@wihtin sco_items:item_functions/corpse_daemon/**
    #declare score_holder #corpse_daemon.set_cooltime
    #declare score_holder #corpse_daemon.stop_effect_time
scoreboard players set #corpse_daemon.set_cooltime sco_items.configs 160
scoreboard players set #corpse_daemon.stop_effect_time sco_items.configs 40
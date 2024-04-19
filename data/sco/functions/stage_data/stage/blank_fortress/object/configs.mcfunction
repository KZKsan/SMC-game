#>sco:stage_data/stage/blank_fortress/object/configs
#@within sco:stage_data/stage/blank_fortress/reset

#>
# cannon
#@within sco:stage_data/stage/blank_fortress/object/cannon/**
#@private
    #declare score_holder #blank_fortress.cannon.cooltime
    #declare score_holder #blank_fortress.cannon.require_fuel

scoreboard players set #blank_fortress.cannon.cooltime stage_object.configs 900
scoreboard players set #blank_fortress.cannon.require_fuel stage_object.configs 5


#>
# thunder
#@within sco:stage_data/stage/blank_fortress/object/thunder/**
#@private
    #declare score_holder #blank_fortress.thunder.cooltime
    #declare score_holder #blank_fortress.thunder.require_fuel

scoreboard players set #blank_fortress.thunder.cooltime stage_object.configs 1200
scoreboard players set #blank_fortress.thunder.require_fuel stage_object.configs 4


#>
# power_bullet
#@within sco:stage_data/stage/blank_fortress/object/power_bullet/**
#@private
    #declare score_holder #blank_fortress.power_bullet.cooltime
    #declare score_holder #blank_fortress.power_bullet.require_fuel

scoreboard players set #blank_fortress.power_bullet.cooltime stage_object.configs 900
scoreboard players set #blank_fortress.power_bullet.require_fuel stage_object.configs 6


#>
# shield
#@within sco:stage_data/stage/blank_fortress/object/shield/**
#@private
    #declare score_holder #blank_fortress.shield.cooltime
    #declare score_holder #blank_fortress.shield.require_fuel

scoreboard players set #blank_fortress.shield.cooltime stage_object.configs 1200
scoreboard players set #blank_fortress.shield.require_fuel stage_object.configs 3


#>
# boost
#@within sco:stage_data/stage/blank_fortress/object/boost/**
#@private
    #declare score_holder #blank_fortress.boost.cooltime
    #declare score_holder #blank_fortress.boost.require_fuel

scoreboard players set #blank_fortress.boost.cooltime stage_object.configs 1200
scoreboard players set #blank_fortress.boost.require_fuel stage_object.configs 3


#>
# pickup_coal
#@within sco:stage_data/stage/blank_fortress/object/pickup_coal/**
#@private
    #declare score_holder #blank_fortress.pickup_coal.cooltime

scoreboard players set #blank_fortress.pickup_coal.cooltime stage_object.configs 500
#>sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/
#@within sco:stage_data/stage/blank_fortress/gimmick
execute unless data storage sco:data rule{friendlyfire:false} run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/friendlyfire_on
execute if data storage sco:data rule{friendlyfire:false} run function sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/hit/friendlyfire_off